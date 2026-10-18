.class public Landroid/privacy/internal/rappor/RapporEncoder;
.super Ljava/lang/Object;
.source "RapporEncoder.java"

# interfaces
.implements Landroid/privacy/DifferentialPrivacyEncoder;


# static fields
.field private static final INSECURE_SECRET:[B

.field private static final sSecureRandom:Ljava/security/SecureRandom;


# instance fields
.field private final mConfig:Landroid/privacy/internal/rappor/RapporConfig;

.field private final mEncoder:Lcom/google/android/rappor/Encoder;

.field private final mIsSecure:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x30

    .line 40
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Landroid/privacy/internal/rappor/RapporEncoder;->INSECURE_SECRET:[B

    .line 54
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Landroid/privacy/internal/rappor/RapporEncoder;->sSecureRandom:Ljava/security/SecureRandom;

    return-void

    nop

    :array_0
    .array-data 1
        -0x29t
        0x68t
        -0x67t
        -0x6dt
        -0x6ct
        0x13t
        0x53t
        0x54t
        -0x2t
        -0x30t
        0x7et
        0x54t
        -0x2t
        -0x30t
        0x7et
        0x54t
        -0x29t
        0x68t
        -0x67t
        -0x6dt
        -0x6ct
        0x13t
        0x53t
        0x54t
        -0x2t
        -0x30t
        0x7et
        0x54t
        -0x2t
        -0x30t
        0x7et
        0x54t
        -0x29t
        0x68t
        -0x67t
        -0x6dt
        -0x6ct
        0x13t
        0x53t
        0x54t
        -0x2t
        -0x30t
        0x7et
        0x54t
        -0x2t
        -0x30t
        0x7et
        0x54t
    .end array-data
.end method

.method private constructor <init>(Landroid/privacy/internal/rappor/RapporConfig;Z[B)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 64
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object v1, v0, Landroid/privacy/internal/rappor/RapporEncoder;->mConfig:Landroid/privacy/internal/rappor/RapporConfig;

    .line 66
    iput-boolean v2, v0, Landroid/privacy/internal/rappor/RapporEncoder;->mIsSecure:Z

    if-eqz v2, :cond_0

    .line 70
    sget-object v2, Landroid/privacy/internal/rappor/RapporEncoder;->sSecureRandom:Ljava/security/SecureRandom;

    move-object/from16 v8, p3

    move-object v5, v2

    goto :goto_0

    .line 73
    :cond_0
    new-instance v2, Ljava/util/Random;

    iget-object v3, v1, Landroid/privacy/internal/rappor/RapporConfig;->mEncoderId:Ljava/lang/String;

    invoke-direct {v0, v3}, Landroid/privacy/internal/rappor/RapporEncoder;->getInsecureSeed(Ljava/lang/String;)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Random;-><init>(J)V

    .line 74
    sget-object v3, Landroid/privacy/internal/rappor/RapporEncoder;->INSECURE_SECRET:[B

    move-object v5, v2

    move-object v8, v3

    .line 76
    :goto_0
    new-instance v2, Lcom/google/android/rappor/Encoder;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v9, v1, Landroid/privacy/internal/rappor/RapporConfig;->mEncoderId:Ljava/lang/String;

    iget v10, v1, Landroid/privacy/internal/rappor/RapporConfig;->mNumBits:I

    iget-wide v11, v1, Landroid/privacy/internal/rappor/RapporConfig;->mProbabilityF:D

    iget-wide v13, v1, Landroid/privacy/internal/rappor/RapporConfig;->mProbabilityP:D

    iget-wide v3, v1, Landroid/privacy/internal/rappor/RapporConfig;->mProbabilityQ:D

    iget v15, v1, Landroid/privacy/internal/rappor/RapporConfig;->mNumCohorts:I

    iget v1, v1, Landroid/privacy/internal/rappor/RapporConfig;->mNumBloomHashes:I

    move-wide/from16 v16, v3

    move-object v4, v2

    move v3, v15

    move-wide/from16 v15, v16

    move/from16 v17, v3

    move/from16 v18, v1

    invoke-direct/range {v4 .. v18}, Lcom/google/android/rappor/Encoder;-><init>(Ljava/util/Random;Ljava/security/MessageDigest;Ljava/security/MessageDigest;[BLjava/lang/String;IDDDII)V

    iput-object v2, v0, Landroid/privacy/internal/rappor/RapporEncoder;->mEncoder:Lcom/google/android/rappor/Encoder;

    return-void
.end method

.method public static createEncoder(Landroid/privacy/internal/rappor/RapporConfig;[B)Landroid/privacy/internal/rappor/RapporEncoder;
    .locals 2

    .line 101
    new-instance v0, Landroid/privacy/internal/rappor/RapporEncoder;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p1}, Landroid/privacy/internal/rappor/RapporEncoder;-><init>(Landroid/privacy/internal/rappor/RapporConfig;Z[B)V

    return-object v0
.end method

.method public static createInsecureEncoderForTest(Landroid/privacy/internal/rappor/RapporConfig;)Landroid/privacy/internal/rappor/RapporEncoder;
    .locals 3

    .line 112
    new-instance v0, Landroid/privacy/internal/rappor/RapporEncoder;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Landroid/privacy/internal/rappor/RapporEncoder;-><init>(Landroid/privacy/internal/rappor/RapporConfig;Z[B)V

    return-object v0
.end method

.method private getInsecureSeed(Ljava/lang/String;)J
    .locals 1

    :try_start_0
    const-string p0, "SHA-256"

    .line 84
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    .line 85
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 86
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    .line 89
    :catch_0
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "Unable generate insecure seed"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method


# virtual methods
.method public encodeBits([B)[B
    .locals 0

    .line 127
    iget-object p0, p0, Landroid/privacy/internal/rappor/RapporEncoder;->mEncoder:Lcom/google/android/rappor/Encoder;

    invoke-virtual {p0, p1}, Lcom/google/android/rappor/Encoder;->encodeBits([B)[B

    move-result-object p0

    return-object p0
.end method

.method public encodeBoolean(Z)[B
    .locals 0

    .line 122
    iget-object p0, p0, Landroid/privacy/internal/rappor/RapporEncoder;->mEncoder:Lcom/google/android/rappor/Encoder;

    invoke-virtual {p0, p1}, Lcom/google/android/rappor/Encoder;->encodeBoolean(Z)[B

    move-result-object p0

    return-object p0
.end method

.method public encodeString(Ljava/lang/String;)[B
    .locals 0

    .line 117
    iget-object p0, p0, Landroid/privacy/internal/rappor/RapporEncoder;->mEncoder:Lcom/google/android/rappor/Encoder;

    invoke-virtual {p0, p1}, Lcom/google/android/rappor/Encoder;->encodeString(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getConfig()Landroid/privacy/DifferentialPrivacyConfig;
    .locals 0

    .line 37
    invoke-virtual {p0}, Landroid/privacy/internal/rappor/RapporEncoder;->getConfig()Landroid/privacy/internal/rappor/RapporConfig;

    move-result-object p0

    return-object p0
.end method

.method public getConfig()Landroid/privacy/internal/rappor/RapporConfig;
    .locals 0

    .line 132
    iget-object p0, p0, Landroid/privacy/internal/rappor/RapporEncoder;->mConfig:Landroid/privacy/internal/rappor/RapporConfig;

    return-object p0
.end method

.method public isInsecureEncoderForTest()Z
    .locals 0

    .line 137
    iget-boolean p0, p0, Landroid/privacy/internal/rappor/RapporEncoder;->mIsSecure:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
