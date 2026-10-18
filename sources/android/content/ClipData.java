package android.content;

import android.content.res.AssetFileDescriptor;
import android.graphics.Bitmap;
import android.net.Uri;
import android.net.wifi.WifiEnterpriseConfig;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.StrictMode;
import android.text.Html;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.style.URLSpan;
import android.util.Log;
import android.util.proto.ProtoOutputStream;
import com.android.internal.util.ArrayUtils;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;
import libcore.io.IoUtils;

/* loaded from: /home/user/work/dex/classes.dex */
public class ClipData implements Parcelable {
    final ClipDescription mClipDescription;
    final Bitmap mIcon;
    final ArrayList<Item> mItems;
    static final String[] MIMETYPES_TEXT_PLAIN = {ClipDescription.MIMETYPE_TEXT_PLAIN};
    static final String[] MIMETYPES_TEXT_HTML = {ClipDescription.MIMETYPE_TEXT_HTML};
    static final String[] MIMETYPES_TEXT_URILIST = {ClipDescription.MIMETYPE_TEXT_URILIST};
    static final String[] MIMETYPES_TEXT_INTENT = {ClipDescription.MIMETYPE_TEXT_INTENT};
    public static final Parcelable.Creator<ClipData> CREATOR = new Parcelable.Creator<ClipData>() { // from class: android.content.ClipData.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ClipData createFromParcel(Parcel parcel) {
            return new ClipData(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ClipData[] newArray(int i) {
            return new ClipData[i];
        }
    };

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class Item {
        final String mHtmlText;
        final Intent mIntent;
        final CharSequence mText;
        Uri mUri;

        public Item(Item item) {
            this.mText = item.mText;
            this.mHtmlText = item.mHtmlText;
            this.mIntent = item.mIntent;
            this.mUri = item.mUri;
        }

        public Item(CharSequence charSequence) {
            this.mText = charSequence;
            this.mHtmlText = null;
            this.mIntent = null;
            this.mUri = null;
        }

        public Item(CharSequence charSequence, String str) {
            this.mText = charSequence;
            this.mHtmlText = str;
            this.mIntent = null;
            this.mUri = null;
        }

        public Item(Intent intent) {
            this.mText = null;
            this.mHtmlText = null;
            this.mIntent = intent;
            this.mUri = null;
        }

        public Item(Uri uri) {
            this.mText = null;
            this.mHtmlText = null;
            this.mIntent = null;
            this.mUri = uri;
        }

        public Item(CharSequence charSequence, Intent intent, Uri uri) {
            this.mText = charSequence;
            this.mHtmlText = null;
            this.mIntent = intent;
            this.mUri = uri;
        }

        public Item(CharSequence charSequence, String str, Intent intent, Uri uri) {
            if (str != null && charSequence == null) {
                throw new IllegalArgumentException("Plain text must be supplied if HTML text is supplied");
            }
            this.mText = charSequence;
            this.mHtmlText = str;
            this.mIntent = intent;
            this.mUri = uri;
        }

        public CharSequence getText() {
            return this.mText;
        }

        public String getHtmlText() {
            return this.mHtmlText;
        }

        public Intent getIntent() {
            return this.mIntent;
        }

        public Uri getUri() {
            return this.mUri;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:12:0x0087  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x002c A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Type inference failed for: r0v1, types: [android.net.Uri] */
        /* JADX WARN: Type inference failed for: r0v2 */
        /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.AutoCloseable] */
        /* JADX WARN: Type inference failed for: r0v5 */
        /* JADX WARN: Type inference failed for: r0v7 */
        /* JADX WARN: Type inference failed for: r0v8, types: [java.lang.AutoCloseable] */
        /* JADX WARN: Type inference failed for: r0v9, types: [java.io.FileInputStream, java.lang.AutoCloseable, java.io.InputStream] */
        /* JADX WARN: Type inference failed for: r1v10 */
        /* JADX WARN: Type inference failed for: r1v15 */
        /* JADX WARN: Type inference failed for: r1v16 */
        /* JADX WARN: Type inference failed for: r1v3 */
        /* JADX WARN: Type inference failed for: r1v4, types: [java.lang.AutoCloseable] */
        /* JADX WARN: Type inference failed for: r1v5 */
        /* JADX WARN: Type inference failed for: r1v6 */
        /* JADX WARN: Type inference failed for: r6v4, types: [android.content.ContentResolver] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public CharSequence coerceToText(Context context) {
            String str;
            AssetFileDescriptor assetFileDescriptor;
            ?? r1;
            Throwable th;
            InputStreamReader inputStreamReader;
            IOException e;
            CharSequence text = getText();
            if (text != null) {
                return text;
            }
            ?? uri = getUri();
            if (uri == 0) {
                Intent intent = getIntent();
                return intent != null ? intent.toUri(1) : "";
            }
            try {
                try {
                    try {
                        str = "text/*";
                        assetFileDescriptor = context.getContentResolver().openTypedAssetFileDescriptor(uri, "text/*", null);
                        r1 = str;
                    } catch (Throwable th2) {
                        uri = 0;
                        r1 = 0;
                        th = th2;
                        assetFileDescriptor = null;
                        IoUtils.closeQuietly(assetFileDescriptor);
                        IoUtils.closeQuietly((AutoCloseable) uri);
                        IoUtils.closeQuietly((AutoCloseable) r1);
                        throw th;
                    }
                } catch (FileNotFoundException | RuntimeException unused) {
                    assetFileDescriptor = null;
                    r1 = str;
                    if (assetFileDescriptor == null) {
                    }
                } catch (SecurityException e2) {
                    str = "ClipData";
                    Log.w("ClipData", "Failure opening stream", e2);
                    assetFileDescriptor = null;
                    r1 = str;
                    if (assetFileDescriptor == null) {
                    }
                }
                if (assetFileDescriptor == null) {
                    IoUtils.closeQuietly(assetFileDescriptor);
                    IoUtils.closeQuietly((AutoCloseable) null);
                    IoUtils.closeQuietly((AutoCloseable) null);
                    String scheme = uri.getScheme();
                    return ("content".equals(scheme) || ContentResolver.SCHEME_ANDROID_RESOURCE.equals(scheme) || ContentResolver.SCHEME_FILE.equals(scheme)) ? "" : uri.toString();
                }
                try {
                    uri = assetFileDescriptor.createInputStream();
                } catch (IOException e3) {
                    inputStreamReader = null;
                    e = e3;
                    uri = 0;
                } catch (Throwable th3) {
                    r1 = 0;
                    th = th3;
                    uri = 0;
                }
                try {
                    inputStreamReader = new InputStreamReader((InputStream) uri, "UTF-8");
                    try {
                        StringBuilder sb = new StringBuilder(128);
                        char[] cArr = new char[8192];
                        while (true) {
                            int read = inputStreamReader.read(cArr);
                            if (read <= 0) {
                                String sb2 = sb.toString();
                                IoUtils.closeQuietly(assetFileDescriptor);
                                IoUtils.closeQuietly((AutoCloseable) uri);
                                IoUtils.closeQuietly(inputStreamReader);
                                return sb2;
                            }
                            sb.append(cArr, 0, read);
                        }
                    } catch (IOException e4) {
                        e = e4;
                        Log.w("ClipData", "Failure loading text", e);
                        String iOException = e.toString();
                        IoUtils.closeQuietly(assetFileDescriptor);
                        IoUtils.closeQuietly((AutoCloseable) uri);
                        IoUtils.closeQuietly(inputStreamReader);
                        return iOException;
                    }
                } catch (IOException e5) {
                    inputStreamReader = null;
                    e = e5;
                } catch (Throwable th4) {
                    r1 = 0;
                    th = th4;
                    IoUtils.closeQuietly(assetFileDescriptor);
                    IoUtils.closeQuietly((AutoCloseable) uri);
                    IoUtils.closeQuietly((AutoCloseable) r1);
                    throw th;
                }
            } catch (Throwable th5) {
                th = th5;
            }
        }

        public CharSequence coerceToStyledText(Context context) {
            CharSequence text = getText();
            if (text instanceof Spanned) {
                return text;
            }
            String htmlText = getHtmlText();
            if (htmlText != null) {
                try {
                    Spanned fromHtml = Html.fromHtml(htmlText);
                    if (fromHtml != null) {
                        return fromHtml;
                    }
                } catch (RuntimeException unused) {
                }
            }
            return text != null ? text : coerceToHtmlOrStyledText(context, true);
        }

        public String coerceToHtmlText(Context context) {
            String htmlText = getHtmlText();
            if (htmlText != null) {
                return htmlText;
            }
            CharSequence text = getText();
            if (text != null) {
                if (text instanceof Spanned) {
                    return Html.toHtml((Spanned) text);
                }
                return Html.escapeHtml(text);
            }
            CharSequence coerceToHtmlOrStyledText = coerceToHtmlOrStyledText(context, false);
            if (coerceToHtmlOrStyledText != null) {
                return coerceToHtmlOrStyledText.toString();
            }
            return null;
        }

        /* JADX WARN: Code restructure failed: missing block: B:107:0x00d8, code lost:
        
            if (r12 == null) goto L75;
         */
        /* JADX WARN: Code restructure failed: missing block: B:91:0x00c7, code lost:
        
            if (r12 == null) goto L75;
         */
        /* JADX WARN: Code restructure failed: missing block: B:93:0x00c9, code lost:
        
            r12.close();
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:114:0x0118 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Type inference failed for: r12v0, types: [android.content.Context] */
        /* JADX WARN: Type inference failed for: r12v10 */
        /* JADX WARN: Type inference failed for: r12v9, types: [java.io.FileInputStream] */
        /* JADX WARN: Type inference failed for: r1v5, types: [android.text.Spanned] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        private CharSequence coerceToHtmlOrStyledText(Context context, boolean z) {
            String[] strArr;
            boolean z2;
            boolean z3;
            SecurityException e;
            FileInputStream fileInputStream;
            if (this.mUri == null) {
                return this.mIntent != null ? z ? uriToStyledText(this.mIntent.toUri(1)) : uriToHtml(this.mIntent.toUri(1)) : "";
            }
            FileInputStream fileInputStream2 = null;
            try {
                strArr = context.getContentResolver().getStreamTypes(this.mUri, "text/*");
            } catch (SecurityException unused) {
                strArr = null;
            }
            if (strArr != null) {
                z2 = false;
                z3 = false;
                for (String str : strArr) {
                    if (ClipDescription.MIMETYPE_TEXT_HTML.equals(str)) {
                        z2 = true;
                    } else if (str.startsWith("text/")) {
                        z3 = true;
                    }
                }
            } else {
                z2 = false;
                z3 = false;
            }
            if (z2 || z3) {
                try {
                    try {
                        try {
                            fileInputStream = context.getContentResolver().openTypedAssetFileDescriptor(this.mUri, z2 ? ClipDescription.MIMETYPE_TEXT_HTML : ClipDescription.MIMETYPE_TEXT_PLAIN, null).createInputStream();
                            try {
                                InputStreamReader inputStreamReader = new InputStreamReader(fileInputStream, "UTF-8");
                                StringBuilder sb = new StringBuilder(128);
                                char[] cArr = new char[8192];
                                while (true) {
                                    int read = inputStreamReader.read(cArr);
                                    if (read <= 0) {
                                        break;
                                    }
                                    sb.append(cArr, 0, read);
                                }
                                String sb2 = sb.toString();
                                if (!z2) {
                                    if (z) {
                                        if (fileInputStream != null) {
                                            try {
                                                fileInputStream.close();
                                            } catch (IOException unused2) {
                                            }
                                        }
                                        return sb2;
                                    }
                                    String escapeHtml = Html.escapeHtml(sb2);
                                    if (fileInputStream != null) {
                                        try {
                                            fileInputStream.close();
                                        } catch (IOException unused3) {
                                        }
                                    }
                                    return escapeHtml;
                                }
                                if (!z) {
                                    String str2 = sb2.toString();
                                    if (fileInputStream != null) {
                                        try {
                                            fileInputStream.close();
                                        } catch (IOException unused4) {
                                        }
                                    }
                                    return str2;
                                }
                                try {
                                    ?? fromHtml = Html.fromHtml(sb2);
                                    if (fromHtml != 0) {
                                        sb2 = fromHtml;
                                    }
                                    if (fileInputStream != null) {
                                        try {
                                            fileInputStream.close();
                                        } catch (IOException unused5) {
                                        }
                                    }
                                    return sb2;
                                } catch (RuntimeException unused6) {
                                    if (fileInputStream != null) {
                                        try {
                                            fileInputStream.close();
                                        } catch (IOException unused7) {
                                        }
                                    }
                                    return sb2;
                                }
                            } catch (FileNotFoundException unused8) {
                            } catch (IOException e2) {
                                e = e2;
                                fileInputStream2 = fileInputStream;
                                Log.w("ClipData", "Failure loading text", e);
                                String escapeHtml2 = Html.escapeHtml(e.toString());
                                if (fileInputStream2 != null) {
                                    try {
                                        fileInputStream2.close();
                                    } catch (IOException unused9) {
                                    }
                                }
                                return escapeHtml2;
                            } catch (SecurityException e3) {
                                e = e3;
                                Log.w("ClipData", "Failure opening stream", e);
                            }
                        } catch (Throwable th) {
                            th = th;
                            context = 0;
                            if (context != 0) {
                                try {
                                    context.close();
                                } catch (IOException unused10) {
                                }
                            }
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        if (context != 0) {
                        }
                        throw th;
                    }
                } catch (FileNotFoundException unused11) {
                    fileInputStream = null;
                } catch (IOException e4) {
                    e = e4;
                } catch (SecurityException e5) {
                    e = e5;
                    fileInputStream = null;
                }
            }
            String scheme = this.mUri.getScheme();
            return ("content".equals(scheme) || ContentResolver.SCHEME_ANDROID_RESOURCE.equals(scheme) || ContentResolver.SCHEME_FILE.equals(scheme)) ? "" : z ? uriToStyledText(this.mUri.toString()) : uriToHtml(this.mUri.toString());
        }

        private String uriToHtml(String str) {
            StringBuilder sb = new StringBuilder(256);
            sb.append("<a href=\"");
            sb.append(Html.escapeHtml(str));
            sb.append("\">");
            sb.append(Html.escapeHtml(str));
            sb.append("</a>");
            return sb.toString();
        }

        private CharSequence uriToStyledText(String str) {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            spannableStringBuilder.append((CharSequence) str);
            spannableStringBuilder.setSpan(new URLSpan(str), 0, spannableStringBuilder.length(), 33);
            return spannableStringBuilder;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(128);
            sb.append("ClipData.Item { ");
            toShortString(sb);
            sb.append(" }");
            return sb.toString();
        }

        public void toShortString(StringBuilder sb) {
            if (this.mHtmlText != null) {
                sb.append("H:");
                sb.append(this.mHtmlText);
                return;
            }
            if (this.mText != null) {
                sb.append("T:");
                sb.append(this.mText);
            } else if (this.mUri != null) {
                sb.append("U:");
                sb.append(this.mUri);
            } else if (this.mIntent != null) {
                sb.append("I:");
                this.mIntent.toShortString(sb, true, true, true, true);
            } else {
                sb.append(WifiEnterpriseConfig.EMPTY_VALUE);
            }
        }

        public void toShortSummaryString(StringBuilder sb) {
            if (this.mHtmlText != null) {
                sb.append("HTML");
                return;
            }
            if (this.mText != null) {
                sb.append("TEXT");
                return;
            }
            if (this.mUri != null) {
                sb.append("U:");
                sb.append(this.mUri);
            } else if (this.mIntent != null) {
                sb.append("I:");
                this.mIntent.toShortString(sb, true, true, true, true);
            } else {
                sb.append(WifiEnterpriseConfig.EMPTY_VALUE);
            }
        }

        public void writeToProto(ProtoOutputStream protoOutputStream, long j) {
            long start = protoOutputStream.start(j);
            if (this.mHtmlText != null) {
                protoOutputStream.write(1138166333441L, this.mHtmlText);
            } else if (this.mText != null) {
                protoOutputStream.write(1138166333442L, this.mText.toString());
            } else if (this.mUri != null) {
                protoOutputStream.write(1138166333443L, this.mUri.toString());
            } else if (this.mIntent != null) {
                this.mIntent.writeToProto(protoOutputStream, 1146756268036L, true, true, true, true);
            } else {
                protoOutputStream.write(1133871366149L, true);
            }
            protoOutputStream.end(start);
        }
    }

    public ClipData(CharSequence charSequence, String[] strArr, Item item) {
        this.mClipDescription = new ClipDescription(charSequence, strArr);
        if (item == null) {
            throw new NullPointerException("item is null");
        }
        this.mIcon = null;
        this.mItems = new ArrayList<>();
        this.mItems.add(item);
    }

    public ClipData(ClipDescription clipDescription, Item item) {
        this.mClipDescription = clipDescription;
        if (item == null) {
            throw new NullPointerException("item is null");
        }
        this.mIcon = null;
        this.mItems = new ArrayList<>();
        this.mItems.add(item);
    }

    public ClipData(ClipDescription clipDescription, ArrayList<Item> arrayList) {
        this.mClipDescription = clipDescription;
        if (arrayList == null) {
            throw new NullPointerException("item is null");
        }
        this.mIcon = null;
        this.mItems = arrayList;
    }

    public ClipData(ClipData clipData) {
        this.mClipDescription = clipData.mClipDescription;
        this.mIcon = clipData.mIcon;
        this.mItems = new ArrayList<>(clipData.mItems);
    }

    public static ClipData newPlainText(CharSequence charSequence, CharSequence charSequence2) {
        return new ClipData(charSequence, MIMETYPES_TEXT_PLAIN, new Item(charSequence2));
    }

    public static ClipData newHtmlText(CharSequence charSequence, CharSequence charSequence2, String str) {
        return new ClipData(charSequence, MIMETYPES_TEXT_HTML, new Item(charSequence2, str));
    }

    public static ClipData newIntent(CharSequence charSequence, Intent intent) {
        return new ClipData(charSequence, MIMETYPES_TEXT_INTENT, new Item(intent));
    }

    public static ClipData newUri(ContentResolver contentResolver, CharSequence charSequence, Uri uri) {
        return new ClipData(charSequence, getMimeTypes(contentResolver, uri), new Item(uri));
    }

    private static String[] getMimeTypes(ContentResolver contentResolver, Uri uri) {
        String[] strArr;
        if ("content".equals(uri.getScheme())) {
            String type = contentResolver.getType(uri);
            strArr = contentResolver.getStreamTypes(uri, "*/*");
            if (type != null) {
                if (strArr == null) {
                    strArr = new String[]{type};
                } else if (!ArrayUtils.contains(strArr, type)) {
                    String[] strArr2 = new String[strArr.length + 1];
                    strArr2[0] = type;
                    System.arraycopy(strArr, 0, strArr2, 1, strArr.length);
                    strArr = strArr2;
                }
            }
        } else {
            strArr = null;
        }
        return strArr == null ? MIMETYPES_TEXT_URILIST : strArr;
    }

    public static ClipData newRawUri(CharSequence charSequence, Uri uri) {
        return new ClipData(charSequence, MIMETYPES_TEXT_URILIST, new Item(uri));
    }

    public ClipDescription getDescription() {
        return this.mClipDescription;
    }

    public void addItem(Item item) {
        if (item == null) {
            throw new NullPointerException("item is null");
        }
        this.mItems.add(item);
    }

    @Deprecated
    public void addItem(Item item, ContentResolver contentResolver) {
        addItem(contentResolver, item);
    }

    public void addItem(ContentResolver contentResolver, Item item) {
        addItem(item);
        if (item.getHtmlText() != null) {
            this.mClipDescription.addMimeTypes(MIMETYPES_TEXT_HTML);
        } else if (item.getText() != null) {
            this.mClipDescription.addMimeTypes(MIMETYPES_TEXT_PLAIN);
        }
        if (item.getIntent() != null) {
            this.mClipDescription.addMimeTypes(MIMETYPES_TEXT_INTENT);
        }
        if (item.getUri() != null) {
            this.mClipDescription.addMimeTypes(getMimeTypes(contentResolver, item.getUri()));
        }
    }

    public Bitmap getIcon() {
        return this.mIcon;
    }

    public int getItemCount() {
        return this.mItems.size();
    }

    public Item getItemAt(int i) {
        return this.mItems.get(i);
    }

    public void setItemAt(int i, Item item) {
        this.mItems.set(i, item);
    }

    public void prepareToLeaveProcess(boolean z) {
        prepareToLeaveProcess(z, 1);
    }

    public void prepareToLeaveProcess(boolean z, int i) {
        int size = this.mItems.size();
        for (int i2 = 0; i2 < size; i2++) {
            Item item = this.mItems.get(i2);
            if (item.mIntent != null) {
                item.mIntent.prepareToLeaveProcess(z);
            }
            if (item.mUri != null && z) {
                if (StrictMode.vmFileUriExposureEnabled()) {
                    item.mUri.checkFileUriExposed("ClipData.Item.getUri()");
                }
                if (StrictMode.vmContentUriWithoutPermissionEnabled()) {
                    item.mUri.checkContentUriWithoutPermission("ClipData.Item.getUri()", i);
                }
            }
        }
    }

    public void prepareToEnterProcess() {
        int size = this.mItems.size();
        for (int i = 0; i < size; i++) {
            Item item = this.mItems.get(i);
            if (item.mIntent != null) {
                item.mIntent.prepareToEnterProcess();
            }
        }
    }

    public void fixUris(int i) {
        int size = this.mItems.size();
        for (int i2 = 0; i2 < size; i2++) {
            Item item = this.mItems.get(i2);
            if (item.mIntent != null) {
                item.mIntent.fixUris(i);
            }
            if (item.mUri != null) {
                item.mUri = ContentProvider.maybeAddUserId(item.mUri, i);
            }
        }
    }

    public void fixUrisLight(int i) {
        Uri data;
        int size = this.mItems.size();
        for (int i2 = 0; i2 < size; i2++) {
            Item item = this.mItems.get(i2);
            if (item.mIntent != null && (data = item.mIntent.getData()) != null) {
                item.mIntent.setData(ContentProvider.maybeAddUserId(data, i));
            }
            if (item.mUri != null) {
                item.mUri = ContentProvider.maybeAddUserId(item.mUri, i);
            }
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("ClipData { ");
        toShortString(sb);
        sb.append(" }");
        return sb.toString();
    }

    public void toShortString(StringBuilder sb) {
        boolean shortString = this.mClipDescription != null ? true ^ this.mClipDescription.toShortString(sb) : true;
        if (this.mIcon != null) {
            if (!shortString) {
                sb.append(' ');
            }
            sb.append("I:");
            sb.append(this.mIcon.getWidth());
            sb.append('x');
            sb.append(this.mIcon.getHeight());
            shortString = false;
        }
        int i = 0;
        while (i < this.mItems.size()) {
            if (!shortString) {
                sb.append(' ');
            }
            sb.append('{');
            this.mItems.get(i).toShortString(sb);
            sb.append('}');
            i++;
            shortString = false;
        }
    }

    public void toShortStringShortItems(StringBuilder sb, boolean z) {
        if (this.mItems.size() > 0) {
            if (!z) {
                sb.append(' ');
            }
            this.mItems.get(0).toShortString(sb);
            if (this.mItems.size() > 1) {
                sb.append(" ...");
            }
        }
    }

    public void writeToProto(ProtoOutputStream protoOutputStream, long j) {
        long start = protoOutputStream.start(j);
        if (this.mClipDescription != null) {
            this.mClipDescription.writeToProto(protoOutputStream, 1146756268033L);
        }
        if (this.mIcon != null) {
            long start2 = protoOutputStream.start(1146756268034L);
            protoOutputStream.write(1120986464257L, this.mIcon.getWidth());
            protoOutputStream.write(1120986464258L, this.mIcon.getHeight());
            protoOutputStream.end(start2);
        }
        for (int i = 0; i < this.mItems.size(); i++) {
            this.mItems.get(i).writeToProto(protoOutputStream, ClipDataProto.ITEMS);
        }
        protoOutputStream.end(start);
    }

    public void collectUris(List<Uri> list) {
        for (int i = 0; i < this.mItems.size(); i++) {
            Item itemAt = getItemAt(i);
            if (itemAt.getUri() != null) {
                list.add(itemAt.getUri());
            }
            Intent intent = itemAt.getIntent();
            if (intent != null) {
                if (intent.getData() != null) {
                    list.add(intent.getData());
                }
                if (intent.getClipData() != null) {
                    intent.getClipData().collectUris(list);
                }
            }
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        this.mClipDescription.writeToParcel(parcel, i);
        if (this.mIcon != null) {
            parcel.writeInt(1);
            this.mIcon.writeToParcel(parcel, i);
        } else {
            parcel.writeInt(0);
        }
        int size = this.mItems.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            Item item = this.mItems.get(i2);
            TextUtils.writeToParcel(item.mText, parcel, i);
            parcel.writeString(item.mHtmlText);
            if (item.mIntent != null) {
                parcel.writeInt(1);
                item.mIntent.writeToParcel(parcel, i);
            } else {
                parcel.writeInt(0);
            }
            if (item.mUri != null) {
                parcel.writeInt(1);
                item.mUri.writeToParcel(parcel, i);
            } else {
                parcel.writeInt(0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ClipData(Parcel parcel) {
        this.mClipDescription = new ClipDescription(parcel);
        if (parcel.readInt() != 0) {
            this.mIcon = Bitmap.CREATOR.createFromParcel(parcel);
        } else {
            this.mIcon = null;
        }
        this.mItems = new ArrayList<>();
        int readInt = parcel.readInt();
        for (int i = 0; i < readInt; i++) {
            this.mItems.add(new Item((CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel), parcel.readString(), parcel.readInt() != 0 ? Intent.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? Uri.CREATOR.createFromParcel(parcel) : null));
        }
    }
}
