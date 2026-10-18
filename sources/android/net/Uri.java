package android.net;

import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.wifi.WifiEnterpriseConfig;
import android.os.Environment;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.StrictMode;
import android.util.Log;
import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.RandomAccess;
import java.util.Set;
import libcore.net.UriCodec;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class Uri implements Parcelable, Comparable<Uri> {
    private static final String DEFAULT_ENCODING = "UTF-8";
    private static final String LOG = "Uri";
    private static final int NOT_CALCULATED = -2;
    private static final int NOT_FOUND = -1;
    private static final String NOT_HIERARCHICAL = "This isn't a hierarchical URI.";
    private static final int NULL_TYPE_ID = 0;
    private static final String NOT_CACHED = new String("NOT CACHED");
    public static final Uri EMPTY = new HierarchicalUri(null, Part.NULL, PathPart.EMPTY, Part.NULL, Part.NULL);
    public static final Parcelable.Creator<Uri> CREATOR = new Parcelable.Creator<Uri>() { // from class: android.net.Uri.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Uri createFromParcel(Parcel parcel) {
            int readInt = parcel.readInt();
            switch (readInt) {
                case 0:
                    return null;
                case 1:
                    return StringUri.readFrom(parcel);
                case 2:
                    return OpaqueUri.readFrom(parcel);
                case 3:
                    return HierarchicalUri.readFrom(parcel);
                default:
                    throw new IllegalArgumentException("Unknown URI type: " + readInt);
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Uri[] newArray(int i) {
            return new Uri[i];
        }
    };
    private static final char[] HEX_DIGITS = "0123456789ABCDEF".toCharArray();

    public abstract Builder buildUpon();

    public abstract String getAuthority();

    public abstract String getEncodedAuthority();

    public abstract String getEncodedFragment();

    public abstract String getEncodedPath();

    public abstract String getEncodedQuery();

    public abstract String getEncodedSchemeSpecificPart();

    public abstract String getEncodedUserInfo();

    public abstract String getFragment();

    public abstract String getHost();

    public abstract String getLastPathSegment();

    public abstract String getPath();

    public abstract List<String> getPathSegments();

    public abstract int getPort();

    public abstract String getQuery();

    public abstract String getScheme();

    public abstract String getSchemeSpecificPart();

    public abstract String getUserInfo();

    public abstract boolean isHierarchical();

    public abstract boolean isRelative();

    public abstract String toString();

    private Uri() {
    }

    public boolean isOpaque() {
        return !isHierarchical();
    }

    public boolean isAbsolute() {
        return !isRelative();
    }

    public boolean equals(Object obj) {
        if (obj instanceof Uri) {
            return toString().equals(((Uri) obj).toString());
        }
        return false;
    }

    public int hashCode() {
        return toString().hashCode();
    }

    @Override // java.lang.Comparable
    public int compareTo(Uri uri) {
        return toString().compareTo(uri.toString());
    }

    public String toSafeString() {
        String scheme = getScheme();
        String schemeSpecificPart = getSchemeSpecificPart();
        if (scheme != null) {
            if (scheme.equalsIgnoreCase("tel") || scheme.equalsIgnoreCase(Context.SIP_SERVICE) || scheme.equalsIgnoreCase("sms") || scheme.equalsIgnoreCase("smsto") || scheme.equalsIgnoreCase("mailto") || scheme.equalsIgnoreCase(Context.NFC_SERVICE)) {
                StringBuilder sb = new StringBuilder(64);
                sb.append(scheme);
                sb.append(':');
                if (schemeSpecificPart != null) {
                    for (int i = 0; i < schemeSpecificPart.length(); i++) {
                        char charAt = schemeSpecificPart.charAt(i);
                        if (charAt == '-' || charAt == '@' || charAt == '.') {
                            sb.append(charAt);
                        } else {
                            sb.append('x');
                        }
                    }
                }
                return sb.toString();
            }
            if (scheme.equalsIgnoreCase(IntentFilter.SCHEME_HTTP) || scheme.equalsIgnoreCase(IntentFilter.SCHEME_HTTPS) || scheme.equalsIgnoreCase("ftp")) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("//");
                sb2.append(getHost() != null ? getHost() : "");
                sb2.append(getPort() != -1 ? ":" + getPort() : "");
                sb2.append("/...");
                schemeSpecificPart = sb2.toString();
            }
        }
        StringBuilder sb3 = new StringBuilder(64);
        if (scheme != null) {
            sb3.append(scheme);
            sb3.append(':');
        }
        if (schemeSpecificPart != null) {
            sb3.append(schemeSpecificPart);
        }
        return sb3.toString();
    }

    public static Uri parse(String str) {
        return new StringUri(str);
    }

    public static Uri fromFile(File file) {
        if (file == null) {
            throw new NullPointerException(ContentResolver.SCHEME_FILE);
        }
        return new HierarchicalUri(ContentResolver.SCHEME_FILE, Part.EMPTY, PathPart.fromDecoded(file.getAbsolutePath()), Part.NULL, Part.NULL);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class StringUri extends AbstractHierarchicalUri {
        static final int TYPE_ID = 1;
        private Part authority;
        private volatile int cachedFsi;
        private volatile int cachedSsi;
        private Part fragment;
        private PathPart path;
        private Part query;
        private volatile String scheme;
        private Part ssp;
        private final String uriString;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        private StringUri(String str) {
            super();
            this.cachedSsi = -2;
            this.cachedFsi = -2;
            this.scheme = Uri.NOT_CACHED;
            if (str == null) {
                throw new NullPointerException("uriString");
            }
            this.uriString = str;
        }

        static Uri readFrom(Parcel parcel) {
            return new StringUri(parcel.readString());
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(1);
            parcel.writeString(this.uriString);
        }

        private int findSchemeSeparator() {
            if (this.cachedSsi == -2) {
                int indexOf = this.uriString.indexOf(58);
                this.cachedSsi = indexOf;
                return indexOf;
            }
            return this.cachedSsi;
        }

        private int findFragmentSeparator() {
            if (this.cachedFsi == -2) {
                int indexOf = this.uriString.indexOf(35, findSchemeSeparator());
                this.cachedFsi = indexOf;
                return indexOf;
            }
            return this.cachedFsi;
        }

        @Override // android.net.Uri
        public boolean isHierarchical() {
            int findSchemeSeparator = findSchemeSeparator();
            if (findSchemeSeparator == -1) {
                return true;
            }
            int i = findSchemeSeparator + 1;
            return this.uriString.length() != i && this.uriString.charAt(i) == '/';
        }

        @Override // android.net.Uri
        public boolean isRelative() {
            return findSchemeSeparator() == -1;
        }

        @Override // android.net.Uri
        public String getScheme() {
            if (this.scheme != Uri.NOT_CACHED) {
                return this.scheme;
            }
            String parseScheme = parseScheme();
            this.scheme = parseScheme;
            return parseScheme;
        }

        private String parseScheme() {
            int findSchemeSeparator = findSchemeSeparator();
            if (findSchemeSeparator == -1) {
                return null;
            }
            return this.uriString.substring(0, findSchemeSeparator);
        }

        private Part getSsp() {
            if (this.ssp != null) {
                return this.ssp;
            }
            Part fromEncoded = Part.fromEncoded(parseSsp());
            this.ssp = fromEncoded;
            return fromEncoded;
        }

        @Override // android.net.Uri
        public String getEncodedSchemeSpecificPart() {
            return getSsp().getEncoded();
        }

        @Override // android.net.Uri
        public String getSchemeSpecificPart() {
            return getSsp().getDecoded();
        }

        private String parseSsp() {
            int findSchemeSeparator = findSchemeSeparator();
            int findFragmentSeparator = findFragmentSeparator();
            if (findFragmentSeparator == -1) {
                return this.uriString.substring(findSchemeSeparator + 1);
            }
            return this.uriString.substring(findSchemeSeparator + 1, findFragmentSeparator);
        }

        private Part getAuthorityPart() {
            if (this.authority == null) {
                Part fromEncoded = Part.fromEncoded(parseAuthority(this.uriString, findSchemeSeparator()));
                this.authority = fromEncoded;
                return fromEncoded;
            }
            return this.authority;
        }

        @Override // android.net.Uri
        public String getEncodedAuthority() {
            return getAuthorityPart().getEncoded();
        }

        @Override // android.net.Uri
        public String getAuthority() {
            return getAuthorityPart().getDecoded();
        }

        private PathPart getPathPart() {
            if (this.path == null) {
                PathPart fromEncoded = PathPart.fromEncoded(parsePath());
                this.path = fromEncoded;
                return fromEncoded;
            }
            return this.path;
        }

        @Override // android.net.Uri
        public String getPath() {
            return getPathPart().getDecoded();
        }

        @Override // android.net.Uri
        public String getEncodedPath() {
            return getPathPart().getEncoded();
        }

        @Override // android.net.Uri
        public List<String> getPathSegments() {
            return getPathPart().getPathSegments();
        }

        private String parsePath() {
            String str = this.uriString;
            int findSchemeSeparator = findSchemeSeparator();
            if (findSchemeSeparator > -1) {
                int i = findSchemeSeparator + 1;
                if ((i == str.length()) || str.charAt(i) != '/') {
                    return null;
                }
            }
            return parsePath(str, findSchemeSeparator);
        }

        private Part getQueryPart() {
            if (this.query != null) {
                return this.query;
            }
            Part fromEncoded = Part.fromEncoded(parseQuery());
            this.query = fromEncoded;
            return fromEncoded;
        }

        @Override // android.net.Uri
        public String getEncodedQuery() {
            return getQueryPart().getEncoded();
        }

        private String parseQuery() {
            int indexOf = this.uriString.indexOf(63, findSchemeSeparator());
            if (indexOf == -1) {
                return null;
            }
            int findFragmentSeparator = findFragmentSeparator();
            if (findFragmentSeparator == -1) {
                return this.uriString.substring(indexOf + 1);
            }
            if (findFragmentSeparator < indexOf) {
                return null;
            }
            return this.uriString.substring(indexOf + 1, findFragmentSeparator);
        }

        @Override // android.net.Uri
        public String getQuery() {
            return getQueryPart().getDecoded();
        }

        private Part getFragmentPart() {
            if (this.fragment != null) {
                return this.fragment;
            }
            Part fromEncoded = Part.fromEncoded(parseFragment());
            this.fragment = fromEncoded;
            return fromEncoded;
        }

        @Override // android.net.Uri
        public String getEncodedFragment() {
            return getFragmentPart().getEncoded();
        }

        private String parseFragment() {
            int findFragmentSeparator = findFragmentSeparator();
            if (findFragmentSeparator == -1) {
                return null;
            }
            return this.uriString.substring(findFragmentSeparator + 1);
        }

        @Override // android.net.Uri
        public String getFragment() {
            return getFragmentPart().getDecoded();
        }

        @Override // android.net.Uri
        public String toString() {
            return this.uriString;
        }

        static String parseAuthority(String str, int i) {
            int length = str.length();
            int i2 = i + 2;
            if (length <= i2 || str.charAt(i + 1) != '/' || str.charAt(i2) != '/') {
                return null;
            }
            int i3 = i + 3;
            int i4 = i3;
            while (i4 < length) {
                char charAt = str.charAt(i4);
                if (charAt == '#' || charAt == '/' || charAt == '?' || charAt == '\\') {
                    break;
                }
                i4++;
            }
            return str.substring(i3, i4);
        }

        static String parsePath(String str, int i) {
            int i2;
            int length = str.length();
            int i3 = i + 2;
            if (length > i3 && str.charAt(i + 1) == '/' && str.charAt(i3) == '/') {
                i2 = i + 3;
                while (i2 < length) {
                    char charAt = str.charAt(i2);
                    if (charAt == '#') {
                        return "";
                    }
                    if (charAt == '/') {
                        break;
                    }
                    if (charAt == '?') {
                        return "";
                    }
                    if (charAt == '\\') {
                        break;
                    }
                    i2++;
                }
            } else {
                i2 = i + 1;
            }
            int i4 = i2;
            while (i4 < length) {
                char charAt2 = str.charAt(i4);
                if (charAt2 == '#' || charAt2 == '?') {
                    break;
                }
                i4++;
            }
            return str.substring(i2, i4);
        }

        @Override // android.net.Uri
        public Builder buildUpon() {
            if (isHierarchical()) {
                return new Builder().scheme(getScheme()).authority(getAuthorityPart()).path(getPathPart()).query(getQueryPart()).fragment(getFragmentPart());
            }
            return new Builder().scheme(getScheme()).opaquePart(getSsp()).fragment(getFragmentPart());
        }
    }

    public static Uri fromParts(String str, String str2, String str3) {
        if (str == null) {
            throw new NullPointerException("scheme");
        }
        if (str2 == null) {
            throw new NullPointerException("ssp");
        }
        return new OpaqueUri(str, Part.fromDecoded(str2), Part.fromDecoded(str3));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class OpaqueUri extends Uri {
        static final int TYPE_ID = 2;
        private volatile String cachedString;
        private final Part fragment;
        private final String scheme;
        private final Part ssp;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.net.Uri
        public String getAuthority() {
            return null;
        }

        @Override // android.net.Uri
        public String getEncodedAuthority() {
            return null;
        }

        @Override // android.net.Uri
        public String getEncodedPath() {
            return null;
        }

        @Override // android.net.Uri
        public String getEncodedQuery() {
            return null;
        }

        @Override // android.net.Uri
        public String getEncodedUserInfo() {
            return null;
        }

        @Override // android.net.Uri
        public String getHost() {
            return null;
        }

        @Override // android.net.Uri
        public String getLastPathSegment() {
            return null;
        }

        @Override // android.net.Uri
        public String getPath() {
            return null;
        }

        @Override // android.net.Uri
        public int getPort() {
            return -1;
        }

        @Override // android.net.Uri
        public String getQuery() {
            return null;
        }

        @Override // android.net.Uri
        public String getUserInfo() {
            return null;
        }

        @Override // android.net.Uri
        public boolean isHierarchical() {
            return false;
        }

        private OpaqueUri(String str, Part part, Part part2) {
            super();
            this.cachedString = Uri.NOT_CACHED;
            this.scheme = str;
            this.ssp = part;
            this.fragment = part2 == null ? Part.NULL : part2;
        }

        static Uri readFrom(Parcel parcel) {
            return new OpaqueUri(parcel.readString(), Part.readFrom(parcel), Part.readFrom(parcel));
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(2);
            parcel.writeString(this.scheme);
            this.ssp.writeTo(parcel);
            this.fragment.writeTo(parcel);
        }

        @Override // android.net.Uri
        public boolean isRelative() {
            return this.scheme == null;
        }

        @Override // android.net.Uri
        public String getScheme() {
            return this.scheme;
        }

        @Override // android.net.Uri
        public String getEncodedSchemeSpecificPart() {
            return this.ssp.getEncoded();
        }

        @Override // android.net.Uri
        public String getSchemeSpecificPart() {
            return this.ssp.getDecoded();
        }

        @Override // android.net.Uri
        public String getFragment() {
            return this.fragment.getDecoded();
        }

        @Override // android.net.Uri
        public String getEncodedFragment() {
            return this.fragment.getEncoded();
        }

        @Override // android.net.Uri
        public List<String> getPathSegments() {
            return Collections.emptyList();
        }

        @Override // android.net.Uri
        public String toString() {
            if (this.cachedString != Uri.NOT_CACHED) {
                return this.cachedString;
            }
            StringBuilder sb = new StringBuilder();
            sb.append(this.scheme);
            sb.append(':');
            sb.append(getEncodedSchemeSpecificPart());
            if (!this.fragment.isEmpty()) {
                sb.append('#');
                sb.append(this.fragment.getEncoded());
            }
            String sb2 = sb.toString();
            this.cachedString = sb2;
            return sb2;
        }

        @Override // android.net.Uri
        public Builder buildUpon() {
            return new Builder().scheme(this.scheme).opaquePart(this.ssp).fragment(this.fragment);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class PathSegments extends AbstractList<String> implements RandomAccess {
        static final PathSegments EMPTY = new PathSegments(null, 0);
        final String[] segments;
        final int size;

        PathSegments(String[] strArr, int i) {
            this.segments = strArr;
            this.size = i;
        }

        @Override // java.util.AbstractList, java.util.List
        public String get(int i) {
            if (i >= this.size) {
                throw new IndexOutOfBoundsException();
            }
            return this.segments[i];
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.size;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class PathSegmentsBuilder {
        String[] segments;
        int size = 0;

        PathSegmentsBuilder() {
        }

        void add(String str) {
            if (this.segments == null) {
                this.segments = new String[4];
            } else if (this.size + 1 == this.segments.length) {
                String[] strArr = new String[this.segments.length * 2];
                System.arraycopy(this.segments, 0, strArr, 0, this.segments.length);
                this.segments = strArr;
            }
            String[] strArr2 = this.segments;
            int i = this.size;
            this.size = i + 1;
            strArr2[i] = str;
        }

        PathSegments build() {
            if (this.segments == null) {
                return PathSegments.EMPTY;
            }
            try {
                return new PathSegments(this.segments, this.size);
            } finally {
                this.segments = null;
            }
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private static abstract class AbstractHierarchicalUri extends Uri {
        private volatile String host;
        private volatile int port;
        private Part userInfo;

        private AbstractHierarchicalUri() {
            super();
            this.host = Uri.NOT_CACHED;
            this.port = -2;
        }

        @Override // android.net.Uri
        public String getLastPathSegment() {
            List<String> pathSegments = getPathSegments();
            int size = pathSegments.size();
            if (size == 0) {
                return null;
            }
            return pathSegments.get(size - 1);
        }

        private Part getUserInfoPart() {
            if (this.userInfo != null) {
                return this.userInfo;
            }
            Part fromEncoded = Part.fromEncoded(parseUserInfo());
            this.userInfo = fromEncoded;
            return fromEncoded;
        }

        @Override // android.net.Uri
        public final String getEncodedUserInfo() {
            return getUserInfoPart().getEncoded();
        }

        private String parseUserInfo() {
            int lastIndexOf;
            String encodedAuthority = getEncodedAuthority();
            if (encodedAuthority == null || (lastIndexOf = encodedAuthority.lastIndexOf(64)) == -1) {
                return null;
            }
            return encodedAuthority.substring(0, lastIndexOf);
        }

        @Override // android.net.Uri
        public String getUserInfo() {
            return getUserInfoPart().getDecoded();
        }

        @Override // android.net.Uri
        public String getHost() {
            if (this.host != Uri.NOT_CACHED) {
                return this.host;
            }
            String parseHost = parseHost();
            this.host = parseHost;
            return parseHost;
        }

        private String parseHost() {
            String substring;
            String encodedAuthority = getEncodedAuthority();
            if (encodedAuthority == null) {
                return null;
            }
            int lastIndexOf = encodedAuthority.lastIndexOf(64);
            int indexOf = encodedAuthority.indexOf(58, lastIndexOf);
            if (indexOf == -1) {
                substring = encodedAuthority.substring(lastIndexOf + 1);
            } else {
                substring = encodedAuthority.substring(lastIndexOf + 1, indexOf);
            }
            return decode(substring);
        }

        @Override // android.net.Uri
        public int getPort() {
            if (this.port == -2) {
                int parsePort = parsePort();
                this.port = parsePort;
                return parsePort;
            }
            return this.port;
        }

        private int parsePort() {
            int indexOf;
            String encodedAuthority = getEncodedAuthority();
            if (encodedAuthority == null || (indexOf = encodedAuthority.indexOf(58, encodedAuthority.lastIndexOf(64))) == -1) {
                return -1;
            }
            try {
                return Integer.parseInt(decode(encodedAuthority.substring(indexOf + 1)));
            } catch (NumberFormatException e) {
                Log.w(Uri.LOG, "Error parsing port string.", e);
                return -1;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class HierarchicalUri extends AbstractHierarchicalUri {
        static final int TYPE_ID = 3;
        private final Part authority;
        private final Part fragment;
        private final PathPart path;
        private final Part query;
        private final String scheme;
        private Part ssp;
        private volatile String uriString;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.net.Uri
        public boolean isHierarchical() {
            return true;
        }

        private HierarchicalUri(String str, Part part, PathPart pathPart, Part part2, Part part3) {
            super();
            this.uriString = Uri.NOT_CACHED;
            this.scheme = str;
            this.authority = Part.nonNull(part);
            this.path = pathPart == null ? PathPart.NULL : pathPart;
            this.query = Part.nonNull(part2);
            this.fragment = Part.nonNull(part3);
        }

        static Uri readFrom(Parcel parcel) {
            return new HierarchicalUri(parcel.readString(), Part.readFrom(parcel), PathPart.readFrom(parcel), Part.readFrom(parcel), Part.readFrom(parcel));
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(3);
            parcel.writeString(this.scheme);
            this.authority.writeTo(parcel);
            this.path.writeTo(parcel);
            this.query.writeTo(parcel);
            this.fragment.writeTo(parcel);
        }

        @Override // android.net.Uri
        public boolean isRelative() {
            return this.scheme == null;
        }

        @Override // android.net.Uri
        public String getScheme() {
            return this.scheme;
        }

        private Part getSsp() {
            if (this.ssp != null) {
                return this.ssp;
            }
            Part fromEncoded = Part.fromEncoded(makeSchemeSpecificPart());
            this.ssp = fromEncoded;
            return fromEncoded;
        }

        @Override // android.net.Uri
        public String getEncodedSchemeSpecificPart() {
            return getSsp().getEncoded();
        }

        @Override // android.net.Uri
        public String getSchemeSpecificPart() {
            return getSsp().getDecoded();
        }

        private String makeSchemeSpecificPart() {
            StringBuilder sb = new StringBuilder();
            appendSspTo(sb);
            return sb.toString();
        }

        private void appendSspTo(StringBuilder sb) {
            String encoded = this.authority.getEncoded();
            if (encoded != null) {
                sb.append("//");
                sb.append(encoded);
            }
            String encoded2 = this.path.getEncoded();
            if (encoded2 != null) {
                sb.append(encoded2);
            }
            if (this.query.isEmpty()) {
                return;
            }
            sb.append('?');
            sb.append(this.query.getEncoded());
        }

        @Override // android.net.Uri
        public String getAuthority() {
            return this.authority.getDecoded();
        }

        @Override // android.net.Uri
        public String getEncodedAuthority() {
            return this.authority.getEncoded();
        }

        @Override // android.net.Uri
        public String getEncodedPath() {
            return this.path.getEncoded();
        }

        @Override // android.net.Uri
        public String getPath() {
            return this.path.getDecoded();
        }

        @Override // android.net.Uri
        public String getQuery() {
            return this.query.getDecoded();
        }

        @Override // android.net.Uri
        public String getEncodedQuery() {
            return this.query.getEncoded();
        }

        @Override // android.net.Uri
        public String getFragment() {
            return this.fragment.getDecoded();
        }

        @Override // android.net.Uri
        public String getEncodedFragment() {
            return this.fragment.getEncoded();
        }

        @Override // android.net.Uri
        public List<String> getPathSegments() {
            return this.path.getPathSegments();
        }

        @Override // android.net.Uri
        public String toString() {
            if (this.uriString != Uri.NOT_CACHED) {
                return this.uriString;
            }
            String makeUriString = makeUriString();
            this.uriString = makeUriString;
            return makeUriString;
        }

        private String makeUriString() {
            StringBuilder sb = new StringBuilder();
            if (this.scheme != null) {
                sb.append(this.scheme);
                sb.append(':');
            }
            appendSspTo(sb);
            if (!this.fragment.isEmpty()) {
                sb.append('#');
                sb.append(this.fragment.getEncoded());
            }
            return sb.toString();
        }

        @Override // android.net.Uri
        public Builder buildUpon() {
            return new Builder().scheme(this.scheme).authority(this.authority).path(this.path).query(this.query).fragment(this.fragment);
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class Builder {
        private Part authority;
        private Part fragment;
        private Part opaquePart;
        private PathPart path;
        private Part query;
        private String scheme;

        public Builder scheme(String str) {
            this.scheme = str;
            return this;
        }

        Builder opaquePart(Part part) {
            this.opaquePart = part;
            return this;
        }

        public Builder opaquePart(String str) {
            return opaquePart(Part.fromDecoded(str));
        }

        public Builder encodedOpaquePart(String str) {
            return opaquePart(Part.fromEncoded(str));
        }

        Builder authority(Part part) {
            this.opaquePart = null;
            this.authority = part;
            return this;
        }

        public Builder authority(String str) {
            return authority(Part.fromDecoded(str));
        }

        public Builder encodedAuthority(String str) {
            return authority(Part.fromEncoded(str));
        }

        Builder path(PathPart pathPart) {
            this.opaquePart = null;
            this.path = pathPart;
            return this;
        }

        public Builder path(String str) {
            return path(PathPart.fromDecoded(str));
        }

        public Builder encodedPath(String str) {
            return path(PathPart.fromEncoded(str));
        }

        public Builder appendPath(String str) {
            return path(PathPart.appendDecodedSegment(this.path, str));
        }

        public Builder appendEncodedPath(String str) {
            return path(PathPart.appendEncodedSegment(this.path, str));
        }

        Builder query(Part part) {
            this.opaquePart = null;
            this.query = part;
            return this;
        }

        public Builder query(String str) {
            return query(Part.fromDecoded(str));
        }

        public Builder encodedQuery(String str) {
            return query(Part.fromEncoded(str));
        }

        Builder fragment(Part part) {
            this.fragment = part;
            return this;
        }

        public Builder fragment(String str) {
            return fragment(Part.fromDecoded(str));
        }

        public Builder encodedFragment(String str) {
            return fragment(Part.fromEncoded(str));
        }

        public Builder appendQueryParameter(String str, String str2) {
            this.opaquePart = null;
            String str3 = Uri.encode(str, null) + "=" + Uri.encode(str2, null);
            if (this.query == null) {
                this.query = Part.fromEncoded(str3);
                return this;
            }
            String encoded = this.query.getEncoded();
            if (encoded == null || encoded.length() == 0) {
                this.query = Part.fromEncoded(str3);
            } else {
                this.query = Part.fromEncoded(encoded + "&" + str3);
            }
            return this;
        }

        public Builder clearQuery() {
            return query((Part) null);
        }

        public Uri build() {
            if (this.opaquePart != null) {
                if (this.scheme == null) {
                    throw new UnsupportedOperationException("An opaque URI must have a scheme.");
                }
                return new OpaqueUri(this.scheme, this.opaquePart, this.fragment);
            }
            PathPart pathPart = this.path;
            if (pathPart == null || pathPart == PathPart.NULL) {
                pathPart = PathPart.EMPTY;
            } else if (hasSchemeOrAuthority()) {
                pathPart = PathPart.makeAbsolute(pathPart);
            }
            return new HierarchicalUri(this.scheme, this.authority, pathPart, this.query, this.fragment);
        }

        private boolean hasSchemeOrAuthority() {
            return (this.scheme == null && (this.authority == null || this.authority == Part.NULL)) ? false : true;
        }

        public String toString() {
            return build().toString();
        }
    }

    public Set<String> getQueryParameterNames() {
        if (isOpaque()) {
            throw new UnsupportedOperationException(NOT_HIERARCHICAL);
        }
        String encodedQuery = getEncodedQuery();
        if (encodedQuery == null) {
            return Collections.emptySet();
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        int i = 0;
        do {
            int indexOf = encodedQuery.indexOf(38, i);
            if (indexOf == -1) {
                indexOf = encodedQuery.length();
            }
            int indexOf2 = encodedQuery.indexOf(61, i);
            if (indexOf2 > indexOf || indexOf2 == -1) {
                indexOf2 = indexOf;
            }
            linkedHashSet.add(decode(encodedQuery.substring(i, indexOf2)));
            i = indexOf + 1;
        } while (i < encodedQuery.length());
        return Collections.unmodifiableSet(linkedHashSet);
    }

    public List<String> getQueryParameters(String str) {
        if (isOpaque()) {
            throw new UnsupportedOperationException(NOT_HIERARCHICAL);
        }
        if (str == null) {
            throw new NullPointerException("key");
        }
        String encodedQuery = getEncodedQuery();
        if (encodedQuery == null) {
            return Collections.emptyList();
        }
        try {
            String encode = URLEncoder.encode(str, DEFAULT_ENCODING);
            ArrayList arrayList = new ArrayList();
            int i = 0;
            while (true) {
                int indexOf = encodedQuery.indexOf(38, i);
                int length = indexOf != -1 ? indexOf : encodedQuery.length();
                int indexOf2 = encodedQuery.indexOf(61, i);
                if (indexOf2 > length || indexOf2 == -1) {
                    indexOf2 = length;
                }
                if (indexOf2 - i == encode.length() && encodedQuery.regionMatches(i, encode, 0, encode.length())) {
                    if (indexOf2 == length) {
                        arrayList.add("");
                    } else {
                        arrayList.add(decode(encodedQuery.substring(indexOf2 + 1, length)));
                    }
                }
                if (indexOf == -1) {
                    return Collections.unmodifiableList(arrayList);
                }
                i = indexOf + 1;
            }
        } catch (UnsupportedEncodingException e) {
            throw new AssertionError(e);
        }
    }

    public String getQueryParameter(String str) {
        if (isOpaque()) {
            throw new UnsupportedOperationException(NOT_HIERARCHICAL);
        }
        if (str == null) {
            throw new NullPointerException("key");
        }
        String encodedQuery = getEncodedQuery();
        if (encodedQuery == null) {
            return null;
        }
        String encode = encode(str, null);
        int length = encodedQuery.length();
        int i = 0;
        while (true) {
            int indexOf = encodedQuery.indexOf(38, i);
            int i2 = indexOf != -1 ? indexOf : length;
            int indexOf2 = encodedQuery.indexOf(61, i);
            if (indexOf2 > i2 || indexOf2 == -1) {
                indexOf2 = i2;
            }
            if (indexOf2 - i == encode.length() && encodedQuery.regionMatches(i, encode, 0, encode.length())) {
                return indexOf2 == i2 ? "" : UriCodec.decode(encodedQuery.substring(indexOf2 + 1, i2), true, StandardCharsets.UTF_8, false);
            }
            if (indexOf == -1) {
                return null;
            }
            i = indexOf + 1;
        }
    }

    public boolean getBooleanQueryParameter(String str, boolean z) {
        String queryParameter = getQueryParameter(str);
        if (queryParameter == null) {
            return z;
        }
        String lowerCase = queryParameter.toLowerCase(Locale.ROOT);
        return ("false".equals(lowerCase) || WifiEnterpriseConfig.ENGINE_DISABLE.equals(lowerCase)) ? false : true;
    }

    public Uri normalizeScheme() {
        String scheme = getScheme();
        if (scheme == null) {
            return this;
        }
        String lowerCase = scheme.toLowerCase(Locale.ROOT);
        return scheme.equals(lowerCase) ? this : buildUpon().scheme(lowerCase).build();
    }

    public static void writeToParcel(Parcel parcel, Uri uri) {
        if (uri == null) {
            parcel.writeInt(0);
        } else {
            uri.writeToParcel(parcel, 0);
        }
    }

    public static String encode(String str) {
        return encode(str, null);
    }

    public static String encode(String str, String str2) {
        if (str == null) {
            return null;
        }
        int length = str.length();
        StringBuilder sb = null;
        int i = 0;
        while (i < length) {
            int i2 = i;
            while (i2 < length && isAllowed(str.charAt(i2), str2)) {
                i2++;
            }
            if (i2 == length) {
                if (i == 0) {
                    return str;
                }
                sb.append((CharSequence) str, i, length);
                return sb.toString();
            }
            if (sb == null) {
                sb = new StringBuilder();
            }
            if (i2 > i) {
                sb.append((CharSequence) str, i, i2);
            }
            i = i2 + 1;
            while (i < length && !isAllowed(str.charAt(i), str2)) {
                i++;
            }
            try {
                byte[] bytes = str.substring(i2, i).getBytes(DEFAULT_ENCODING);
                int length2 = bytes.length;
                for (int i3 = 0; i3 < length2; i3++) {
                    sb.append('%');
                    sb.append(HEX_DIGITS[(bytes[i3] & 240) >> 4]);
                    sb.append(HEX_DIGITS[bytes[i3] & 15]);
                }
            } catch (UnsupportedEncodingException e) {
                throw new AssertionError(e);
            }
        }
        return sb == null ? str : sb.toString();
    }

    private static boolean isAllowed(char c, String str) {
        return (c >= 'A' && c <= 'Z') || (c >= 'a' && c <= 'z') || !((c < '0' || c > '9') && "_-!.~'()*".indexOf(c) == -1 && (str == null || str.indexOf(c) == -1));
    }

    public static String decode(String str) {
        if (str == null) {
            return null;
        }
        return UriCodec.decode(str, false, StandardCharsets.UTF_8, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class AbstractPart {
        volatile String decoded;
        volatile String encoded;

        abstract String getEncoded();

        /* loaded from: /home/user/work/dex/classes.dex */
        static class Representation {
            static final int BOTH = 0;
            static final int DECODED = 2;
            static final int ENCODED = 1;

            Representation() {
            }
        }

        AbstractPart(String str, String str2) {
            this.encoded = str;
            this.decoded = str2;
        }

        final String getDecoded() {
            if (this.decoded != Uri.NOT_CACHED) {
                return this.decoded;
            }
            String decode = Uri.decode(this.encoded);
            this.decoded = decode;
            return decode;
        }

        final void writeTo(Parcel parcel) {
            boolean z = this.encoded != Uri.NOT_CACHED;
            boolean z2 = this.decoded != Uri.NOT_CACHED;
            if (z && z2) {
                parcel.writeInt(0);
                parcel.writeString(this.encoded);
                parcel.writeString(this.decoded);
            } else if (z) {
                parcel.writeInt(1);
                parcel.writeString(this.encoded);
            } else {
                if (z2) {
                    parcel.writeInt(2);
                    parcel.writeString(this.decoded);
                    return;
                }
                throw new IllegalArgumentException("Neither encoded nor decoded");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class Part extends AbstractPart {
        static final Part NULL = new EmptyPart(null);
        static final Part EMPTY = new EmptyPart("");

        boolean isEmpty() {
            return false;
        }

        private Part(String str, String str2) {
            super(str, str2);
        }

        @Override // android.net.Uri.AbstractPart
        String getEncoded() {
            if (this.encoded != Uri.NOT_CACHED) {
                return this.encoded;
            }
            String encode = Uri.encode(this.decoded);
            this.encoded = encode;
            return encode;
        }

        static Part readFrom(Parcel parcel) {
            int readInt = parcel.readInt();
            switch (readInt) {
                case 0:
                    return from(parcel.readString(), parcel.readString());
                case 1:
                    return fromEncoded(parcel.readString());
                case 2:
                    return fromDecoded(parcel.readString());
                default:
                    throw new IllegalArgumentException("Unknown representation: " + readInt);
            }
        }

        static Part nonNull(Part part) {
            return part == null ? NULL : part;
        }

        static Part fromEncoded(String str) {
            return from(str, Uri.NOT_CACHED);
        }

        static Part fromDecoded(String str) {
            return from(Uri.NOT_CACHED, str);
        }

        static Part from(String str, String str2) {
            if (str == null) {
                return NULL;
            }
            if (str.length() == 0) {
                return EMPTY;
            }
            if (str2 == null) {
                return NULL;
            }
            if (str2.length() == 0) {
                return EMPTY;
            }
            return new Part(str, str2);
        }

        /* loaded from: /home/user/work/dex/classes.dex */
        private static class EmptyPart extends Part {
            @Override // android.net.Uri.Part
            boolean isEmpty() {
                return true;
            }

            public EmptyPart(String str) {
                super(str, str);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class PathPart extends AbstractPart {
        private PathSegments pathSegments;
        static final PathPart NULL = new PathPart(null, null);
        static final PathPart EMPTY = new PathPart("", "");

        private PathPart(String str, String str2) {
            super(str, str2);
        }

        @Override // android.net.Uri.AbstractPart
        String getEncoded() {
            if (this.encoded != Uri.NOT_CACHED) {
                return this.encoded;
            }
            String encode = Uri.encode(this.decoded, "/");
            this.encoded = encode;
            return encode;
        }

        PathSegments getPathSegments() {
            if (this.pathSegments != null) {
                return this.pathSegments;
            }
            String encoded = getEncoded();
            if (encoded == null) {
                PathSegments pathSegments = PathSegments.EMPTY;
                this.pathSegments = pathSegments;
                return pathSegments;
            }
            PathSegmentsBuilder pathSegmentsBuilder = new PathSegmentsBuilder();
            int i = 0;
            while (true) {
                int indexOf = encoded.indexOf(47, i);
                if (indexOf <= -1) {
                    break;
                }
                if (i < indexOf) {
                    pathSegmentsBuilder.add(Uri.decode(encoded.substring(i, indexOf)));
                }
                i = indexOf + 1;
            }
            if (i < encoded.length()) {
                pathSegmentsBuilder.add(Uri.decode(encoded.substring(i)));
            }
            PathSegments build = pathSegmentsBuilder.build();
            this.pathSegments = build;
            return build;
        }

        static PathPart appendEncodedSegment(PathPart pathPart, String str) {
            String str2;
            if (pathPart == null) {
                return fromEncoded("/" + str);
            }
            String encoded = pathPart.getEncoded();
            if (encoded == null) {
                encoded = "";
            }
            int length = encoded.length();
            if (length == 0) {
                str2 = "/" + str;
            } else if (encoded.charAt(length - 1) == '/') {
                str2 = encoded + str;
            } else {
                str2 = encoded + "/" + str;
            }
            return fromEncoded(str2);
        }

        static PathPart appendDecodedSegment(PathPart pathPart, String str) {
            return appendEncodedSegment(pathPart, Uri.encode(str));
        }

        static PathPart readFrom(Parcel parcel) {
            int readInt = parcel.readInt();
            switch (readInt) {
                case 0:
                    return from(parcel.readString(), parcel.readString());
                case 1:
                    return fromEncoded(parcel.readString());
                case 2:
                    return fromDecoded(parcel.readString());
                default:
                    throw new IllegalArgumentException("Bad representation: " + readInt);
            }
        }

        static PathPart fromEncoded(String str) {
            return from(str, Uri.NOT_CACHED);
        }

        static PathPart fromDecoded(String str) {
            return from(Uri.NOT_CACHED, str);
        }

        static PathPart from(String str, String str2) {
            if (str == null) {
                return NULL;
            }
            if (str.length() == 0) {
                return EMPTY;
            }
            return new PathPart(str, str2);
        }

        static PathPart makeAbsolute(PathPart pathPart) {
            String str;
            String str2;
            boolean z = pathPart.encoded != Uri.NOT_CACHED;
            String str3 = z ? pathPart.encoded : pathPart.decoded;
            if (str3 == null || str3.length() == 0 || str3.startsWith("/")) {
                return pathPart;
            }
            if (!z) {
                str = Uri.NOT_CACHED;
            } else {
                str = "/" + pathPart.encoded;
            }
            if (!(pathPart.decoded != Uri.NOT_CACHED)) {
                str2 = Uri.NOT_CACHED;
            } else {
                str2 = "/" + pathPart.decoded;
            }
            return new PathPart(str, str2);
        }
    }

    public static Uri withAppendedPath(Uri uri, String str) {
        return uri.buildUpon().appendEncodedPath(str).build();
    }

    public Uri getCanonicalUri() {
        if (!ContentResolver.SCHEME_FILE.equals(getScheme())) {
            return this;
        }
        try {
            String canonicalPath = new File(getPath()).getCanonicalPath();
            if (Environment.isExternalStorageEmulated()) {
                String file = Environment.getLegacyExternalStorageDirectory().toString();
                if (canonicalPath.startsWith(file)) {
                    return fromFile(new File(Environment.getExternalStorageDirectory().toString(), canonicalPath.substring(file.length() + 1)));
                }
            }
            return fromFile(new File(canonicalPath));
        } catch (IOException unused) {
            return this;
        }
    }

    public void checkFileUriExposed(String str) {
        if (!ContentResolver.SCHEME_FILE.equals(getScheme()) || getPath() == null || getPath().startsWith("/system/")) {
            return;
        }
        StrictMode.onFileUriExposed(this, str);
    }

    public void checkContentUriWithoutPermission(String str, int i) {
        if (!"content".equals(getScheme()) || Intent.isAccessUriMode(i)) {
            return;
        }
        StrictMode.onContentUriWithoutPermission(this, str);
    }

    public boolean isPathPrefixMatch(Uri uri) {
        if (!Objects.equals(getScheme(), uri.getScheme()) || !Objects.equals(getAuthority(), uri.getAuthority())) {
            return false;
        }
        List<String> pathSegments = getPathSegments();
        List<String> pathSegments2 = uri.getPathSegments();
        int size = pathSegments2.size();
        if (pathSegments.size() < size) {
            return false;
        }
        for (int i = 0; i < size; i++) {
            if (!Objects.equals(pathSegments.get(i), pathSegments2.get(i))) {
                return false;
            }
        }
        return true;
    }
}
