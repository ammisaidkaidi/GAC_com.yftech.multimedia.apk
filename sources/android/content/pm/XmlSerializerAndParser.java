package android.content.pm;

import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: /home/user/work/dex/classes.dex */
public interface XmlSerializerAndParser<T> {
    T createFromXml(XmlPullParser xmlPullParser) throws IOException, XmlPullParserException;

    void writeAsXml(T t, XmlSerializer xmlSerializer) throws IOException;
}
