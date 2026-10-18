package android.util.jar;

import android.security.keystore.KeyProperties;
import android.util.jar.StrictJarManifest;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.charset.StandardCharsets;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Base64;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.StringTokenizer;
import java.util.jar.Attributes;
import sun.security.jca.Providers;
import sun.security.pkcs.PKCS7;
import sun.security.pkcs.SignerInfo;

/* loaded from: /home/user/work/dex/classes2.dex */
class StrictJarVerifier {
    private static final String[] DIGEST_ALGORITHMS = {KeyProperties.DIGEST_SHA512, KeyProperties.DIGEST_SHA384, KeyProperties.DIGEST_SHA256, "SHA1"};
    private static final String SF_ATTRIBUTE_ANDROID_APK_SIGNED_NAME = "X-Android-APK-Signed";
    private final String jarName;
    private final int mainAttributesEnd;
    private final StrictJarManifest manifest;
    private final HashMap<String, byte[]> metaEntries;
    private final boolean signatureSchemeRollbackProtectionsEnforced;
    private final Hashtable<String, HashMap<String, Attributes>> signatures = new Hashtable<>(5);
    private final Hashtable<String, Certificate[]> certificates = new Hashtable<>(5);
    private final Hashtable<String, Certificate[][]> verifiedEntries = new Hashtable<>();

    /* loaded from: /home/user/work/dex/classes2.dex */
    static class VerifierEntry extends OutputStream {
        private final Certificate[][] certChains;
        private final MessageDigest digest;
        private final byte[] hash;
        private final String name;
        private final Hashtable<String, Certificate[][]> verifiedEntries;

        VerifierEntry(String str, MessageDigest messageDigest, byte[] bArr, Certificate[][] certificateArr, Hashtable<String, Certificate[][]> hashtable) {
            this.name = str;
            this.digest = messageDigest;
            this.hash = bArr;
            this.certChains = certificateArr;
            this.verifiedEntries = hashtable;
        }

        @Override // java.io.OutputStream
        public void write(int i) {
            this.digest.update((byte) i);
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr, int i, int i2) {
            this.digest.update(bArr, i, i2);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void verify() {
            if (!StrictJarVerifier.verifyMessageDigest(this.digest.digest(), this.hash)) {
                throw StrictJarVerifier.invalidDigest("META-INF/MANIFEST.MF", this.name, this.name);
            }
            this.verifiedEntries.put(this.name, this.certChains);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static SecurityException invalidDigest(String str, String str2, String str3) {
        throw new SecurityException(str + " has invalid digest for " + str2 + " in " + str3);
    }

    private static SecurityException failedVerification(String str, String str2) {
        throw new SecurityException(str + " failed verification of " + str2);
    }

    private static SecurityException failedVerification(String str, String str2, Throwable th) {
        throw new SecurityException(str + " failed verification of " + str2, th);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public StrictJarVerifier(String str, StrictJarManifest strictJarManifest, HashMap<String, byte[]> hashMap, boolean z) {
        this.jarName = str;
        this.manifest = strictJarManifest;
        this.metaEntries = hashMap;
        this.mainAttributesEnd = strictJarManifest.getMainAttributesEnd();
        this.signatureSchemeRollbackProtectionsEnforced = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public VerifierEntry initEntry(String str) {
        Attributes attributes;
        if (this.manifest == null || this.signatures.isEmpty() || (attributes = this.manifest.getAttributes(str)) == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, HashMap<String, Attributes>> entry : this.signatures.entrySet()) {
            if (entry.getValue().get(str) != null) {
                Certificate[] certificateArr = this.certificates.get(entry.getKey());
                if (certificateArr != null) {
                    arrayList.add(certificateArr);
                }
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        Certificate[][] certificateArr2 = (Certificate[][]) arrayList.toArray(new Certificate[arrayList.size()]);
        for (int i = 0; i < DIGEST_ALGORITHMS.length; i++) {
            String str2 = DIGEST_ALGORITHMS[i];
            String value = attributes.getValue(str2 + "-Digest");
            if (value != null) {
                try {
                    return new VerifierEntry(str, MessageDigest.getInstance(str2), value.getBytes(StandardCharsets.ISO_8859_1), certificateArr2, this.verifiedEntries);
                } catch (NoSuchAlgorithmException unused) {
                    continue;
                }
            }
        }
        return null;
    }

    void addMetaEntry(String str, byte[] bArr) {
        this.metaEntries.put(str.toUpperCase(Locale.US), bArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized boolean readCertificates() {
        if (this.metaEntries.isEmpty()) {
            return false;
        }
        Iterator<String> it = this.metaEntries.keySet().iterator();
        while (it.hasNext()) {
            String next = it.next();
            if (next.endsWith(".DSA") || next.endsWith(".RSA") || next.endsWith(".EC")) {
                verifyCertificate(next);
                it.remove();
            }
        }
        return true;
    }

    static Certificate[] verifyBytes(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        Object obj;
        Object obj2 = null;
        try {
            try {
                obj = Providers.startJarVerification();
            } catch (IOException e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
            obj = obj2;
        }
        try {
            PKCS7 pkcs7 = new PKCS7(bArr);
            SignerInfo[] verify = pkcs7.verify(bArr2);
            if (verify == null || verify.length == 0) {
                throw new GeneralSecurityException("Failed to verify signature: no verified SignerInfos");
            }
            ArrayList certificateChain = verify[0].getCertificateChain(pkcs7);
            if (certificateChain == null) {
                throw new GeneralSecurityException("Failed to find verified SignerInfo certificate chain");
            }
            if (certificateChain.isEmpty()) {
                throw new GeneralSecurityException("Verified SignerInfo certificate chain is emtpy");
            }
            Certificate[] certificateArr = (Certificate[]) certificateChain.toArray(new X509Certificate[certificateChain.size()]);
            Providers.stopJarVerification(obj);
            return certificateArr;
        } catch (IOException e2) {
            e = e2;
            obj2 = obj;
            throw new GeneralSecurityException("IO exception verifying jar cert", e);
        } catch (Throwable th2) {
            th = th2;
            Providers.stopJarVerification(obj);
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0093 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void verifyCertificate(String str) {
        byte[] bArr;
        String value;
        boolean z;
        boolean z2;
        int parseInt;
        StringBuilder sb = new StringBuilder();
        boolean z3 = false;
        sb.append(str.substring(0, str.lastIndexOf(46)));
        sb.append(".SF");
        String sb2 = sb.toString();
        byte[] bArr2 = this.metaEntries.get(sb2);
        if (bArr2 == null || (bArr = this.metaEntries.get("META-INF/MANIFEST.MF")) == null) {
            return;
        }
        try {
            Certificate[] verifyBytes = verifyBytes(this.metaEntries.get(str), bArr2);
            if (verifyBytes != null) {
                this.certificates.put(sb2, verifyBytes);
            }
            Attributes attributes = new Attributes();
            HashMap<String, Attributes> hashMap = new HashMap<>();
            try {
                new StrictJarManifestReader(bArr2, attributes).readEntries(hashMap, null);
                if (this.signatureSchemeRollbackProtectionsEnforced && (value = attributes.getValue(SF_ATTRIBUTE_ANDROID_APK_SIGNED_NAME)) != null) {
                    StringTokenizer stringTokenizer = new StringTokenizer(value, ",");
                    while (true) {
                        if (!stringTokenizer.hasMoreTokens()) {
                            String trim = stringTokenizer.nextToken().trim();
                            if (!trim.isEmpty()) {
                                try {
                                    parseInt = Integer.parseInt(trim);
                                } catch (Exception unused) {
                                }
                                if (parseInt != 2) {
                                    if (parseInt == 3) {
                                        z = false;
                                        z2 = true;
                                        break;
                                    }
                                } else {
                                    z2 = false;
                                    z = true;
                                    break;
                                }
                            }
                            if (!stringTokenizer.hasMoreTokens()) {
                                z = false;
                                z2 = false;
                                break;
                            }
                        }
                    }
                    if (z) {
                        throw new SecurityException(sb2 + " indicates " + this.jarName + " is signed using APK Signature Scheme v2, but no such signature was found. Signature stripped?");
                    }
                    if (z2) {
                        throw new SecurityException(sb2 + " indicates " + this.jarName + " is signed using APK Signature Scheme v3, but no such signature was found. Signature stripped?");
                    }
                }
                if (attributes.get(Attributes.Name.SIGNATURE_VERSION) == null) {
                    return;
                }
                String value2 = attributes.getValue("Created-By");
                if (value2 != null && value2.indexOf("signtool") != -1) {
                    z3 = true;
                }
                if (this.mainAttributesEnd > 0 && !z3 && !verify(attributes, "-Digest-Manifest-Main-Attributes", bArr, 0, this.mainAttributesEnd, false, true)) {
                    throw failedVerification(this.jarName, sb2);
                }
                if (!verify(attributes, z3 ? "-Digest" : "-Digest-Manifest", bArr, 0, bArr.length, false, false)) {
                    for (Map.Entry<String, Attributes> entry : hashMap.entrySet()) {
                        StrictJarManifest.Chunk chunk = this.manifest.getChunk(entry.getKey());
                        if (chunk == null) {
                            return;
                        }
                        if (!verify(entry.getValue(), "-Digest", bArr, chunk.start, chunk.end, z3, false)) {
                            throw invalidDigest(sb2, entry.getKey(), this.jarName);
                        }
                    }
                }
                this.metaEntries.put(sb2, null);
                this.signatures.put(sb2, hashMap);
            } catch (IOException unused2) {
            }
        } catch (GeneralSecurityException e) {
            throw failedVerification(this.jarName, sb2, e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isSignedJar() {
        return this.certificates.size() > 0;
    }

    private boolean verify(Attributes attributes, String str, byte[] bArr, int i, int i2, boolean z, boolean z2) {
        for (int i3 = 0; i3 < DIGEST_ALGORITHMS.length; i3++) {
            String str2 = DIGEST_ALGORITHMS[i3];
            String value = attributes.getValue(str2 + str);
            if (value != null) {
                try {
                    MessageDigest messageDigest = MessageDigest.getInstance(str2);
                    if (z) {
                        int i4 = i2 - 1;
                        if (bArr[i4] == 10 && bArr[i2 - 2] == 10) {
                            messageDigest.update(bArr, i, i4 - i);
                            return verifyMessageDigest(messageDigest.digest(), value.getBytes(StandardCharsets.ISO_8859_1));
                        }
                    }
                    messageDigest.update(bArr, i, i2 - i);
                    return verifyMessageDigest(messageDigest.digest(), value.getBytes(StandardCharsets.ISO_8859_1));
                } catch (NoSuchAlgorithmException unused) {
                }
            }
        }
        return z2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean verifyMessageDigest(byte[] bArr, byte[] bArr2) {
        try {
            return MessageDigest.isEqual(bArr, Base64.getDecoder().decode(bArr2));
        } catch (IllegalArgumentException unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Certificate[][] getCertificateChains(String str) {
        return this.verifiedEntries.get(str);
    }

    void removeMetaEntries() {
        this.metaEntries.clear();
    }
}
