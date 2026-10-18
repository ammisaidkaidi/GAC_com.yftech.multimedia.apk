package android.net.wifi.hotspot2;

import android.net.wifi.hotspot2.omadm.PpsMoParser;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import android.util.Pair;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.LineNumberReader;
import java.nio.charset.StandardCharsets;
import java.security.GeneralSecurityException;
import java.security.KeyStore;
import java.security.PrivateKey;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: /home/user/work/dex/classes.dex */
public final class ConfigParser {
    private static final String BOUNDARY = "boundary=";
    private static final String CONTENT_TRANSFER_ENCODING = "Content-Transfer-Encoding";
    private static final String CONTENT_TYPE = "Content-Type";
    private static final String ENCODING_BASE64 = "base64";
    private static final String TAG = "ConfigParser";
    private static final String TYPE_CA_CERT = "application/x-x509-ca-cert";
    private static final String TYPE_MULTIPART_MIXED = "multipart/mixed";
    private static final String TYPE_PASSPOINT_PROFILE = "application/x-passpoint-profile";
    private static final String TYPE_PKCS12 = "application/x-pkcs12";
    private static final String TYPE_WIFI_CONFIG = "application/x-wifi-config";

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class MimePart {
        public byte[] data;
        public boolean isLast;
        public String type;

        private MimePart() {
            this.type = null;
            this.data = null;
            this.isLast = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class MimeHeader {
        public String boundary;
        public String contentType;
        public String encodingType;

        private MimeHeader() {
            this.contentType = null;
            this.boundary = null;
            this.encodingType = null;
        }
    }

    public static PasspointConfiguration parsePasspointConfig(String str, byte[] bArr) {
        if (!TextUtils.equals(str, TYPE_WIFI_CONFIG)) {
            Log.e(TAG, "Unexpected MIME type: " + str);
            return null;
        }
        try {
            return createPasspointConfig(parseMimeMultipartMessage(new LineNumberReader(new InputStreamReader(new ByteArrayInputStream(Base64.decode(new String(bArr, StandardCharsets.ISO_8859_1), 0)), StandardCharsets.ISO_8859_1))));
        } catch (IOException | IllegalArgumentException e) {
            Log.e(TAG, "Failed to parse installation file: " + e.getMessage());
            return null;
        }
    }

    private static PasspointConfiguration createPasspointConfig(Map<String, byte[]> map) throws IOException {
        byte[] bArr = map.get(TYPE_PASSPOINT_PROFILE);
        if (bArr == null) {
            throw new IOException("Missing Passpoint Profile");
        }
        PasspointConfiguration parseMoText = PpsMoParser.parseMoText(new String(bArr));
        if (parseMoText == null) {
            throw new IOException("Failed to parse Passpoint profile");
        }
        if (parseMoText.getCredential() == null) {
            throw new IOException("Passpoint profile missing credential");
        }
        byte[] bArr2 = map.get(TYPE_CA_CERT);
        if (bArr2 != null) {
            try {
                parseMoText.getCredential().setCaCertificate(parseCACert(bArr2));
            } catch (CertificateException unused) {
                throw new IOException("Failed to parse CA Certificate");
            }
        }
        byte[] bArr3 = map.get(TYPE_PKCS12);
        if (bArr3 != null) {
            try {
                Pair<PrivateKey, List<X509Certificate>> parsePkcs12 = parsePkcs12(bArr3);
                parseMoText.getCredential().setClientPrivateKey((PrivateKey) parsePkcs12.first);
                parseMoText.getCredential().setClientCertificateChain((X509Certificate[]) ((List) parsePkcs12.second).toArray(new X509Certificate[((List) parsePkcs12.second).size()]));
            } catch (IOException | GeneralSecurityException unused2) {
                throw new IOException("Failed to parse PCKS12 string");
            }
        }
        return parseMoText;
    }

    private static Map<String, byte[]> parseMimeMultipartMessage(LineNumberReader lineNumberReader) throws IOException {
        String readLine;
        MimePart parseMimePart;
        MimeHeader parseHeaders = parseHeaders(lineNumberReader);
        if (!TextUtils.equals(parseHeaders.contentType, TYPE_MULTIPART_MIXED)) {
            throw new IOException("Invalid content type: " + parseHeaders.contentType);
        }
        if (TextUtils.isEmpty(parseHeaders.boundary)) {
            throw new IOException("Missing boundary string");
        }
        if (!TextUtils.equals(parseHeaders.encodingType, ENCODING_BASE64)) {
            throw new IOException("Unexpected encoding: " + parseHeaders.encodingType);
        }
        do {
            readLine = lineNumberReader.readLine();
            if (readLine == null) {
                throw new IOException("Unexpected EOF before first boundary @ " + lineNumberReader.getLineNumber());
            }
        } while (!readLine.equals("--" + parseHeaders.boundary));
        HashMap hashMap = new HashMap();
        do {
            parseMimePart = parseMimePart(lineNumberReader, parseHeaders.boundary);
            hashMap.put(parseMimePart.type, parseMimePart.data);
        } while (!parseMimePart.isLast);
        return hashMap;
    }

    private static MimePart parseMimePart(LineNumberReader lineNumberReader, String str) throws IOException {
        MimeHeader parseHeaders = parseHeaders(lineNumberReader);
        if (!TextUtils.equals(parseHeaders.encodingType, ENCODING_BASE64)) {
            throw new IOException("Unexpected encoding type: " + parseHeaders.encodingType);
        }
        if (!TextUtils.equals(parseHeaders.contentType, TYPE_PASSPOINT_PROFILE) && !TextUtils.equals(parseHeaders.contentType, TYPE_CA_CERT) && !TextUtils.equals(parseHeaders.contentType, TYPE_PKCS12)) {
            throw new IOException("Unexpected content type: " + parseHeaders.contentType);
        }
        StringBuilder sb = new StringBuilder();
        String str2 = "--" + str;
        String str3 = str2 + "--";
        while (true) {
            String readLine = lineNumberReader.readLine();
            if (readLine == null) {
                throw new IOException("Unexpected EOF file in body @ " + lineNumberReader.getLineNumber());
            }
            if (readLine.startsWith(str2)) {
                boolean equals = readLine.equals(str3);
                MimePart mimePart = new MimePart();
                mimePart.type = parseHeaders.contentType;
                mimePart.data = Base64.decode(sb.toString(), 0);
                mimePart.isLast = equals;
                return mimePart;
            }
            sb.append(readLine);
        }
    }

    private static MimeHeader parseHeaders(LineNumberReader lineNumberReader) throws IOException {
        MimeHeader mimeHeader = new MimeHeader();
        for (Map.Entry<String, String> entry : readHeaders(lineNumberReader).entrySet()) {
            String key = entry.getKey();
            char c = 65535;
            int hashCode = key.hashCode();
            if (hashCode != 747297921) {
                if (hashCode == 949037134 && key.equals(CONTENT_TYPE)) {
                    c = 0;
                }
            } else if (key.equals(CONTENT_TRANSFER_ENCODING)) {
                c = 1;
            }
            switch (c) {
                case 0:
                    Pair<String, String> parseContentType = parseContentType(entry.getValue());
                    mimeHeader.contentType = (String) parseContentType.first;
                    mimeHeader.boundary = (String) parseContentType.second;
                    break;
                case 1:
                    mimeHeader.encodingType = entry.getValue();
                    break;
                default:
                    Log.d(TAG, "Ignore header: " + entry.getKey());
                    break;
            }
        }
        return mimeHeader;
    }

    private static Pair<String, String> parseContentType(String str) throws IOException {
        String[] split = str.split(";");
        if (split.length < 1) {
            throw new IOException("Invalid Content-Type: " + str);
        }
        String trim = split[0].trim();
        String str2 = null;
        for (int i = 1; i < split.length; i++) {
            String trim2 = split[i].trim();
            if (trim2.startsWith(BOUNDARY)) {
                str2 = trim2.substring(BOUNDARY.length());
                if (str2.length() > 1 && str2.startsWith("\"") && str2.endsWith("\"")) {
                    str2 = str2.substring(1, str2.length() - 1);
                }
            } else {
                Log.d(TAG, "Ignore Content-Type attribute: " + split[i]);
            }
        }
        return new Pair<>(trim, str2);
    }

    private static Map<String, String> readHeaders(LineNumberReader lineNumberReader) throws IOException {
        HashMap hashMap = new HashMap();
        String str = null;
        StringBuilder sb = null;
        while (true) {
            String readLine = lineNumberReader.readLine();
            if (readLine == null) {
                throw new IOException("Missing line @ " + lineNumberReader.getLineNumber());
            }
            if (readLine.length() == 0 || readLine.trim().length() == 0) {
                break;
            }
            int indexOf = readLine.indexOf(58);
            if (indexOf < 0) {
                if (sb != null) {
                    sb.append(' ');
                    sb.append(readLine.trim());
                } else {
                    throw new IOException("Bad header line: '" + readLine + "' @ " + lineNumberReader.getLineNumber());
                }
            } else {
                if (Character.isWhitespace(readLine.charAt(0))) {
                    throw new IOException("Illegal blank prefix in header line '" + readLine + "' @ " + lineNumberReader.getLineNumber());
                }
                if (str != null) {
                    hashMap.put(str, sb.toString());
                }
                str = readLine.substring(0, indexOf).trim();
                sb = new StringBuilder();
                sb.append(readLine.substring(indexOf + 1).trim());
            }
        }
        if (str != null) {
            hashMap.put(str, sb.toString());
        }
        return hashMap;
    }

    private static X509Certificate parseCACert(byte[] bArr) throws CertificateException {
        return (X509Certificate) CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(bArr));
    }

    private static Pair<PrivateKey, List<X509Certificate>> parsePkcs12(byte[] bArr) throws GeneralSecurityException, IOException {
        KeyStore keyStore = KeyStore.getInstance("PKCS12");
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        keyStore.load(byteArrayInputStream, new char[0]);
        byteArrayInputStream.close();
        if (keyStore.size() != 1) {
            throw new IOException("Unexpected key size: " + keyStore.size());
        }
        String nextElement = keyStore.aliases().nextElement();
        if (nextElement == null) {
            throw new IOException("No alias found");
        }
        ArrayList arrayList = null;
        PrivateKey privateKey = (PrivateKey) keyStore.getKey(nextElement, null);
        Certificate[] certificateChain = keyStore.getCertificateChain(nextElement);
        if (certificateChain != null) {
            arrayList = new ArrayList();
            for (Certificate certificate : certificateChain) {
                if (!(certificate instanceof X509Certificate)) {
                    throw new IOException("Unexpceted certificate type: " + certificate.getClass());
                }
                arrayList.add((X509Certificate) certificate);
            }
        }
        return new Pair<>(privateKey, arrayList);
    }
}
