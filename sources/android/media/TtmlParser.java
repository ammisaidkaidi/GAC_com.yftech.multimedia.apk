package android.media;

import android.net.wifi.WifiEnterpriseConfig;
import android.text.TextUtils;
import android.util.Log;
import java.io.IOException;
import java.io.StringReader;
import java.util.LinkedList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

/* compiled from: TtmlRenderer.java */
/* loaded from: /home/user/work/dex/classes.dex */
class TtmlParser {
    private static final int DEFAULT_FRAMERATE = 30;
    private static final int DEFAULT_SUBFRAMERATE = 1;
    private static final int DEFAULT_TICKRATE = 1;
    static final String TAG = "TtmlParser";
    private long mCurrentRunId;
    private final TtmlNodeListener mListener;
    private XmlPullParser mParser;

    public TtmlParser(TtmlNodeListener ttmlNodeListener) {
        this.mListener = ttmlNodeListener;
    }

    public void parse(String str, long j) throws XmlPullParserException, IOException {
        this.mParser = null;
        this.mCurrentRunId = j;
        loadParser(str);
        parseTtml();
    }

    private void loadParser(String str) throws XmlPullParserException {
        XmlPullParserFactory newInstance = XmlPullParserFactory.newInstance();
        newInstance.setNamespaceAware(false);
        this.mParser = newInstance.newPullParser();
        this.mParser.setInput(new StringReader(str));
    }

    private void extractAttribute(XmlPullParser xmlPullParser, int i, StringBuilder sb) {
        sb.append(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
        sb.append(xmlPullParser.getAttributeName(i));
        sb.append("=\"");
        sb.append(xmlPullParser.getAttributeValue(i));
        sb.append("\"");
    }

    private void parseTtml() throws XmlPullParserException, IOException {
        LinkedList linkedList = new LinkedList();
        boolean z = true;
        int i = 0;
        while (!isEndOfDoc()) {
            int eventType = this.mParser.getEventType();
            TtmlNode ttmlNode = (TtmlNode) linkedList.peekLast();
            if (z) {
                if (eventType == 2) {
                    if (!isSupportedTag(this.mParser.getName())) {
                        Log.w(TAG, "Unsupported tag " + this.mParser.getName() + " is ignored.");
                        i++;
                        z = false;
                    } else {
                        TtmlNode parseNode = parseNode(ttmlNode);
                        linkedList.addLast(parseNode);
                        if (ttmlNode != null) {
                            ttmlNode.mChildren.add(parseNode);
                        }
                    }
                } else if (eventType == 4) {
                    String applyDefaultSpacePolicy = TtmlUtils.applyDefaultSpacePolicy(this.mParser.getText());
                    if (!TextUtils.isEmpty(applyDefaultSpacePolicy)) {
                        ttmlNode.mChildren.add(new TtmlNode(TtmlUtils.PCDATA, "", applyDefaultSpacePolicy, 0L, Long.MAX_VALUE, ttmlNode, this.mCurrentRunId));
                    }
                } else if (eventType == 3) {
                    if (this.mParser.getName().equals(TtmlUtils.TAG_P)) {
                        this.mListener.onTtmlNodeParsed((TtmlNode) linkedList.getLast());
                    } else if (this.mParser.getName().equals(TtmlUtils.TAG_TT)) {
                        this.mListener.onRootNodeParsed((TtmlNode) linkedList.getLast());
                    }
                    linkedList.removeLast();
                }
            } else if (eventType == 2) {
                i++;
            } else if (eventType == 3 && i - 1 == 0) {
                z = true;
            }
            this.mParser.next();
        }
    }

    private TtmlNode parseNode(TtmlNode ttmlNode) throws XmlPullParserException, IOException {
        long j;
        if (this.mParser.getEventType() != 2) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        long j2 = 0;
        long j3 = Long.MAX_VALUE;
        long j4 = 0;
        for (int i = 0; i < this.mParser.getAttributeCount(); i++) {
            String attributeName = this.mParser.getAttributeName(i);
            String attributeValue = this.mParser.getAttributeValue(i);
            String replaceFirst = attributeName.replaceFirst("^.*:", "");
            if (replaceFirst.equals(TtmlUtils.ATTR_BEGIN)) {
                j2 = TtmlUtils.parseTimeExpression(attributeValue, 30, 1, 1);
            } else if (replaceFirst.equals(TtmlUtils.ATTR_END)) {
                j3 = TtmlUtils.parseTimeExpression(attributeValue, 30, 1, 1);
            } else if (replaceFirst.equals(TtmlUtils.ATTR_DURATION)) {
                j4 = TtmlUtils.parseTimeExpression(attributeValue, 30, 1, 1);
            } else {
                extractAttribute(this.mParser, i, sb);
            }
        }
        if (ttmlNode != null) {
            j2 += ttmlNode.mStartTimeMs;
            j = Long.MAX_VALUE;
            if (j3 != Long.MAX_VALUE) {
                j3 += ttmlNode.mStartTimeMs;
            }
        } else {
            j = Long.MAX_VALUE;
        }
        long j5 = j2;
        if (j4 > 0) {
            if (j3 != j) {
                Log.e(TAG, "'dur' and 'end' attributes are defined at the same time.'end' value is ignored.");
            }
            j3 = j5 + j4;
        }
        return new TtmlNode(this.mParser.getName(), sb.toString(), null, j5, (ttmlNode == null || j3 != j || ttmlNode.mEndTimeMs == j || j3 <= ttmlNode.mEndTimeMs) ? j3 : ttmlNode.mEndTimeMs, ttmlNode, this.mCurrentRunId);
    }

    private boolean isEndOfDoc() throws XmlPullParserException {
        return this.mParser.getEventType() == 1;
    }

    private static boolean isSupportedTag(String str) {
        return str.equals(TtmlUtils.TAG_TT) || str.equals(TtmlUtils.TAG_HEAD) || str.equals(TtmlUtils.TAG_BODY) || str.equals(TtmlUtils.TAG_DIV) || str.equals(TtmlUtils.TAG_P) || str.equals(TtmlUtils.TAG_SPAN) || str.equals(TtmlUtils.TAG_BR) || str.equals(TtmlUtils.TAG_STYLE) || str.equals(TtmlUtils.TAG_STYLING) || str.equals(TtmlUtils.TAG_LAYOUT) || str.equals(TtmlUtils.TAG_REGION) || str.equals(TtmlUtils.TAG_METADATA) || str.equals(TtmlUtils.TAG_SMPTE_IMAGE) || str.equals(TtmlUtils.TAG_SMPTE_DATA) || str.equals(TtmlUtils.TAG_SMPTE_INFORMATION);
    }
}
