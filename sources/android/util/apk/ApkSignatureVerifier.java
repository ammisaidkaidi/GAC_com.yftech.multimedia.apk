package android.util.apk;

import android.content.pm.PackageParser;
import android.content.pm.Signature;
import android.os.Trace;
import android.security.keymaster.KeymasterDefs;
import android.util.apk.ApkSignatureSchemeV3Verifier;
import android.util.jar.StrictJarFile;
import com.android.internal.util.ArrayUtils;
import java.io.IOException;
import java.io.InputStream;
import java.security.DigestException;
import java.security.GeneralSecurityException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicReference;
import java.util.zip.ZipEntry;
import libcore.io.IoUtils;

/* loaded from: /home/user/work/dex/classes2.dex */
public class ApkSignatureVerifier {
    private static final AtomicReference<byte[]> sBuffer = new AtomicReference<>();

    public static PackageParser.SigningDetails verify(String str, @PackageParser.SigningDetails.SignatureSchemeVersion int i) throws PackageParser.PackageParserException {
        int[] iArr;
        if (i > 3) {
            throw new PackageParser.PackageParserException(-103, "No signature found in package of version " + i + " or newer for package " + str);
        }
        Trace.traceBegin(262144L, "verifyV3");
        try {
            try {
                ApkSignatureSchemeV3Verifier.VerifiedSigner verify = ApkSignatureSchemeV3Verifier.verify(str);
                Signature[] convertToSignatures = convertToSignatures(new Certificate[][]{verify.certs});
                Signature[] signatureArr = null;
                if (verify.por != null) {
                    signatureArr = new Signature[verify.por.certs.size()];
                    iArr = new int[verify.por.flagsList.size()];
                    for (int i2 = 0; i2 < signatureArr.length; i2++) {
                        signatureArr[i2] = new Signature(verify.por.certs.get(i2).getEncoded());
                        iArr[i2] = verify.por.flagsList.get(i2).intValue();
                    }
                } else {
                    iArr = null;
                }
                PackageParser.SigningDetails signingDetails = new PackageParser.SigningDetails(convertToSignatures, 3, signatureArr, iArr);
                Trace.traceEnd(262144L);
                return signingDetails;
            } catch (SignatureNotFoundException e) {
                if (i >= 3) {
                    throw new PackageParser.PackageParserException(-103, "No APK Signature Scheme v3 signature in package " + str, e);
                }
                Trace.traceEnd(262144L);
                if (i > 2) {
                    throw new PackageParser.PackageParserException(-103, "No signature found in package of version " + i + " or newer for package " + str);
                }
                Trace.traceBegin(262144L, "verifyV2");
                try {
                    try {
                        PackageParser.SigningDetails signingDetails2 = new PackageParser.SigningDetails(convertToSignatures(ApkSignatureSchemeV2Verifier.verify(str)), 2);
                        Trace.traceEnd(262144L);
                        return signingDetails2;
                    } catch (Throwable th) {
                        Trace.traceEnd(262144L);
                        throw th;
                    }
                } catch (SignatureNotFoundException e2) {
                    if (i >= 2) {
                        throw new PackageParser.PackageParserException(-103, "No APK Signature Scheme v2 signature in package " + str, e2);
                    }
                    Trace.traceEnd(262144L);
                    if (i > 1) {
                        throw new PackageParser.PackageParserException(-103, "No signature found in package of version " + i + " or newer for package " + str);
                    }
                    return verifyV1Signature(str, true);
                } catch (Exception e3) {
                    throw new PackageParser.PackageParserException(-103, "Failed to collect certificates from " + str + " using APK Signature Scheme v2", e3);
                }
            } catch (Exception e4) {
                throw new PackageParser.PackageParserException(-103, "Failed to collect certificates from " + str + " using APK Signature Scheme v3", e4);
            }
        } catch (Throwable th2) {
            Trace.traceEnd(262144L);
            throw th2;
        }
    }

    private static PackageParser.SigningDetails verifyV1Signature(String str, boolean z) throws PackageParser.PackageParserException {
        StrictJarFile strictJarFile;
        try {
            try {
                Trace.traceBegin(262144L, "strictJarFileCtor");
                strictJarFile = new StrictJarFile(str, true, z);
            } catch (Throwable th) {
                th = th;
                strictJarFile = null;
            }
        } catch (IOException | RuntimeException e) {
            e = e;
        } catch (GeneralSecurityException e2) {
            e = e2;
        }
        try {
            try {
                ArrayList<ZipEntry> arrayList = new ArrayList();
                ZipEntry findEntry = strictJarFile.findEntry("AndroidManifest.xml");
                if (findEntry == null) {
                    throw new PackageParser.PackageParserException(KeymasterDefs.KM_ERROR_VERSION_MISMATCH, "Package " + str + " has no manifest");
                }
                Certificate[][] loadCertificates = loadCertificates(strictJarFile, findEntry);
                if (ArrayUtils.isEmpty(loadCertificates)) {
                    throw new PackageParser.PackageParserException(-103, "Package " + str + " has no certificates at entry AndroidManifest.xml");
                }
                Signature[] convertToSignatures = convertToSignatures(loadCertificates);
                if (z) {
                    Iterator<ZipEntry> it = strictJarFile.iterator();
                    while (it.hasNext()) {
                        ZipEntry next = it.next();
                        if (!next.isDirectory()) {
                            String name = next.getName();
                            if (!name.startsWith("META-INF/") && !name.equals("AndroidManifest.xml")) {
                                arrayList.add(next);
                            }
                        }
                    }
                    for (ZipEntry zipEntry : arrayList) {
                        Certificate[][] loadCertificates2 = loadCertificates(strictJarFile, zipEntry);
                        if (ArrayUtils.isEmpty(loadCertificates2)) {
                            throw new PackageParser.PackageParserException(-103, "Package " + str + " has no certificates at entry " + zipEntry.getName());
                        }
                        if (!Signature.areExactMatch(convertToSignatures, convertToSignatures(loadCertificates2))) {
                            throw new PackageParser.PackageParserException(-104, "Package " + str + " has mismatched certificates at entry " + zipEntry.getName());
                        }
                    }
                }
                PackageParser.SigningDetails signingDetails = new PackageParser.SigningDetails(convertToSignatures, 1);
                Trace.traceEnd(262144L);
                closeQuietly(strictJarFile);
                return signingDetails;
            } catch (IOException | RuntimeException e3) {
                e = e3;
                throw new PackageParser.PackageParserException(-103, "Failed to collect certificates from " + str, e);
            }
        } catch (GeneralSecurityException e4) {
            e = e4;
            throw new PackageParser.PackageParserException(-105, "Failed to collect certificates from " + str, e);
        } catch (Throwable th2) {
            th = th2;
            Trace.traceEnd(262144L);
            closeQuietly(strictJarFile);
            throw th;
        }
    }

    private static Certificate[][] loadCertificates(StrictJarFile strictJarFile, ZipEntry zipEntry) throws PackageParser.PackageParserException {
        Throwable e;
        try {
            try {
                InputStream inputStream = strictJarFile.getInputStream(zipEntry);
                try {
                    readFullyIgnoringContents(inputStream);
                    Certificate[][] certificateChains = strictJarFile.getCertificateChains(zipEntry);
                    IoUtils.closeQuietly(inputStream);
                    return certificateChains;
                } catch (IOException | RuntimeException e2) {
                    e = e2;
                    throw new PackageParser.PackageParserException(-102, "Failed reading " + zipEntry.getName() + " in " + strictJarFile, e);
                }
            } catch (Throwable th) {
                th = th;
                IoUtils.closeQuietly((AutoCloseable) null);
                throw th;
            }
        } catch (IOException | RuntimeException e3) {
            e = e3;
        } catch (Throwable th2) {
            th = th2;
            IoUtils.closeQuietly((AutoCloseable) null);
            throw th;
        }
    }

    private static void readFullyIgnoringContents(InputStream inputStream) throws IOException {
        byte[] andSet = sBuffer.getAndSet(null);
        if (andSet == null) {
            andSet = new byte[4096];
        }
        do {
        } while (inputStream.read(andSet, 0, andSet.length) != -1);
        sBuffer.set(andSet);
    }

    public static Signature[] convertToSignatures(Certificate[][] certificateArr) throws CertificateEncodingException {
        Signature[] signatureArr = new Signature[certificateArr.length];
        for (int i = 0; i < certificateArr.length; i++) {
            signatureArr[i] = new Signature(certificateArr[i]);
        }
        return signatureArr;
    }

    private static void closeQuietly(StrictJarFile strictJarFile) {
        if (strictJarFile != null) {
            try {
                strictJarFile.close();
            } catch (Exception unused) {
            }
        }
    }

    public static PackageParser.SigningDetails plsCertsNoVerifyOnlyCerts(String str, int i) throws PackageParser.PackageParserException {
        int[] iArr;
        if (i > 3) {
            throw new PackageParser.PackageParserException(-103, "No signature found in package of version " + i + " or newer for package " + str);
        }
        Trace.traceBegin(262144L, "certsOnlyV3");
        try {
            try {
                ApkSignatureSchemeV3Verifier.VerifiedSigner plsCertsNoVerifyOnlyCerts = ApkSignatureSchemeV3Verifier.plsCertsNoVerifyOnlyCerts(str);
                Signature[] convertToSignatures = convertToSignatures(new Certificate[][]{plsCertsNoVerifyOnlyCerts.certs});
                Signature[] signatureArr = null;
                if (plsCertsNoVerifyOnlyCerts.por != null) {
                    signatureArr = new Signature[plsCertsNoVerifyOnlyCerts.por.certs.size()];
                    iArr = new int[plsCertsNoVerifyOnlyCerts.por.flagsList.size()];
                    for (int i2 = 0; i2 < signatureArr.length; i2++) {
                        signatureArr[i2] = new Signature(plsCertsNoVerifyOnlyCerts.por.certs.get(i2).getEncoded());
                        iArr[i2] = plsCertsNoVerifyOnlyCerts.por.flagsList.get(i2).intValue();
                    }
                } else {
                    iArr = null;
                }
                PackageParser.SigningDetails signingDetails = new PackageParser.SigningDetails(convertToSignatures, 3, signatureArr, iArr);
                Trace.traceEnd(262144L);
                return signingDetails;
            } catch (SignatureNotFoundException e) {
                if (i >= 3) {
                    throw new PackageParser.PackageParserException(-103, "No APK Signature Scheme v3 signature in package " + str, e);
                }
                Trace.traceEnd(262144L);
                if (i > 2) {
                    throw new PackageParser.PackageParserException(-103, "No signature found in package of version " + i + " or newer for package " + str);
                }
                Trace.traceBegin(262144L, "certsOnlyV2");
                try {
                    try {
                        PackageParser.SigningDetails signingDetails2 = new PackageParser.SigningDetails(convertToSignatures(ApkSignatureSchemeV2Verifier.plsCertsNoVerifyOnlyCerts(str)), 2);
                        Trace.traceEnd(262144L);
                        return signingDetails2;
                    } catch (Throwable th) {
                        Trace.traceEnd(262144L);
                        throw th;
                    }
                } catch (SignatureNotFoundException e2) {
                    if (i >= 2) {
                        throw new PackageParser.PackageParserException(-103, "No APK Signature Scheme v2 signature in package " + str, e2);
                    }
                    Trace.traceEnd(262144L);
                    if (i > 1) {
                        throw new PackageParser.PackageParserException(-103, "No signature found in package of version " + i + " or newer for package " + str);
                    }
                    return verifyV1Signature(str, false);
                } catch (Exception e3) {
                    throw new PackageParser.PackageParserException(-103, "Failed to collect certificates from " + str + " using APK Signature Scheme v2", e3);
                }
            } catch (Exception e4) {
                throw new PackageParser.PackageParserException(-103, "Failed to collect certificates from " + str + " using APK Signature Scheme v3", e4);
            }
        } catch (Throwable th2) {
            Trace.traceEnd(262144L);
            throw th2;
        }
    }

    public static byte[] getVerityRootHash(String str) throws IOException, SignatureNotFoundException, SecurityException {
        try {
            return ApkSignatureSchemeV3Verifier.getVerityRootHash(str);
        } catch (SignatureNotFoundException unused) {
            return ApkSignatureSchemeV2Verifier.getVerityRootHash(str);
        }
    }

    public static byte[] generateApkVerity(String str, ByteBufferFactory byteBufferFactory) throws IOException, SignatureNotFoundException, SecurityException, DigestException, NoSuchAlgorithmException {
        try {
            return ApkSignatureSchemeV3Verifier.generateApkVerity(str, byteBufferFactory);
        } catch (SignatureNotFoundException unused) {
            return ApkSignatureSchemeV2Verifier.generateApkVerity(str, byteBufferFactory);
        }
    }

    public static byte[] generateFsverityRootHash(String str) throws NoSuchAlgorithmException, DigestException, IOException {
        try {
            try {
                return ApkSignatureSchemeV3Verifier.generateFsverityRootHash(str);
            } catch (SignatureNotFoundException unused) {
                return ApkSignatureSchemeV2Verifier.generateFsverityRootHash(str);
            }
        } catch (SignatureNotFoundException unused2) {
            return null;
        }
    }

    /* loaded from: /home/user/work/dex/classes2.dex */
    public static class Result {
        public final Certificate[][] certs;
        public final int signatureSchemeVersion;
        public final Signature[] sigs;

        public Result(Certificate[][] certificateArr, Signature[] signatureArr, int i) {
            this.certs = certificateArr;
            this.sigs = signatureArr;
            this.signatureSchemeVersion = i;
        }
    }
}
