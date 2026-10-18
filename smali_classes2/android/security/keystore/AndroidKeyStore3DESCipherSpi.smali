.class public Landroid/security/keystore/AndroidKeyStore3DESCipherSpi;
.super Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;
.source "AndroidKeyStore3DESCipherSpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore/AndroidKeyStore3DESCipherSpi$CBC;,
        Landroid/security/keystore/AndroidKeyStore3DESCipherSpi$ECB;
    }
.end annotation


# static fields
.field private static final BLOCK_SIZE_BYTES:I = 0x8


# instance fields
.field private mIv:[B

.field private mIvHasBeenUsed:Z

.field private final mIvRequired:Z

.field private final mKeymasterBlockMode:I

.field private final mKeymasterPadding:I


# direct methods
.method constructor <init>(IIZ)V
    .locals 0

    .line 57
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;-><init>()V

    .line 58
    iput p1, p0, Landroid/security/keystore/AndroidKeyStore3DESCipherSpi;->mKeymasterBlockMode:I

    .line 59
    iput p2, p0, Landroid/security/keystore/AndroidKeyStore3DESCipherSpi;->mKeymasterPadding:I

    .line 60
    iput-boolean p3, p0, Landroid/security/keystore/AndroidKeyStore3DESCipherSpi;->mIvRequired:Z

    return-void
.end method


# virtual methods
.method protected addAlgorithmSpecificParametersToBegin(Landroid/security/keymaster/KeymasterArguments;)V
    .locals 2

    .line 252
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStore3DESCipherSpi;->isEncrypting()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/security/keystore/AndroidKeyStore3DESCipherSpi;->mIvRequired:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/security/keystore/AndroidKeyStore3DESCipherSpi;->mIvHasBeenUsed:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 254
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "IV has already been used. Reusing IV in encryption mode violates security best practices."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const v0, 0x10000002

    const/16 v1, 0x21

    .line 259
    invoke-virtual {p1, v0, v1}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    const v0, 0x20000004

    .line 260
    iget v1, p0, Landroid/security/keystore/AndroidKeyStore3DESCipherSpi;->mKeymasterBlockMode:I

    invoke-virtual {p1, v0, v1}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    const v0, 0x20000006

    .line 261
    iget v1, p0, Landroid/security/keystore/AndroidKeyStore3DESCipherSpi;->mKeymasterPadding:I

    invoke-virtual {p1, v0, v1}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    .line 262
    iget-boolean v0, p0, Landroid/security/keystore/AndroidKeyStore3DESCipherSpi;->mIvRequired:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStore3DESCipherSpi;->mIv:[B

    if-eqz v0, :cond_2

    const v0, -0x6ffffc17

    .line 263
    iget-object p0, p0, Landroid/security/keystore/AndroidKeyStore3DESCipherSpi;->mIv:[B

    invoke-virtual {p1, v0, p0}, Landroid/security/keymaster/KeymasterArguments;->addBytes(I[B)V

    :cond_2
    return-void
.end method

.method protected engineGetBlockSize()I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method protected final engineGetIV()[B
    .locals 0

    .line 125
    iget-object p0, p0, Landroid/security/keystore/AndroidKeyStore3DESCipherSpi;->mIv:[B

    invoke-static {p0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([B)[B

    move-result-object p0

    return-object p0
.end method

.method protected engineGetOutputSize(I)I
    .locals 0

    add-int/lit8 p1, p1, 0x18

    return p1
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 2

    .line 130
    iget-boolean v0, p0, Landroid/security/keystore/AndroidKeyStore3DESCipherSpi;->mIvRequired:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 133
    :cond_0
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStore3DESCipherSpi;->mIv:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStore3DESCipherSpi;->mIv:[B

    array-length v0, v0

    if-lez v0, :cond_1

    :try_start_0
    const-string v0, "DESede"

    .line 135
    invoke-static {v0}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    .line 136
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    iget-object p0, p0, Landroid/security/keystore/AndroidKeyStore3DESCipherSpi;->mIv:[B

    invoke-direct {v1, p0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 142
    new-instance v0, Ljava/security/ProviderException;

    const-string v1, "Failed to initialize 3DES AlgorithmParameters with an IV"

    invoke-direct {v0, v1, p0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    .line 139
    new-instance v0, Ljava/security/ProviderException;

    const-string v1, "Failed to obtain 3DES AlgorithmParameters"

    invoke-direct {v0, v1, p0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    return-object v1
.end method

.method public bridge synthetic finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 40
    invoke-super {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->finalize()V

    return-void
.end method

.method protected final getAdditionalEntropyAmountForBegin()I
    .locals 1

    .line 237
    iget-boolean v0, p0, Landroid/security/keystore/AndroidKeyStore3DESCipherSpi;->mIvRequired:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStore3DESCipherSpi;->mIv:[B

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStore3DESCipherSpi;->isEncrypting()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x8

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected getAdditionalEntropyAmountForFinish()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected initAlgorithmSpecificParameters()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 152
    iget-boolean v0, p0, Landroid/security/keystore/AndroidKeyStore3DESCipherSpi;->mIvRequired:Z

    if-nez v0, :cond_0

    return-void

    .line 157
    :cond_0
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStore3DESCipherSpi;->isEncrypting()Z

    move-result p0

    if-eqz p0, :cond_1

    return-void

    .line 158
    :cond_1
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string v0, "IV required when decrypting. Use IvParameterSpec or AlgorithmParameters to provide it."

    invoke-direct {p0, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected initAlgorithmSpecificParameters(Ljava/security/AlgorithmParameters;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 194
    iget-boolean v0, p0, Landroid/security/keystore/AndroidKeyStore3DESCipherSpi;->mIvRequired:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    return-void

    .line 196
    :cond_0
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported parameters: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    if-nez p1, :cond_3

    .line 203
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStore3DESCipherSpi;->isEncrypting()Z

    move-result p0

    if-eqz p0, :cond_2

    return-void

    .line 205
    :cond_2
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "IV required when decrypting. Use IvParameterSpec or AlgorithmParameters to provide it."

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    const-string v0, "DESede"

    .line 211
    invoke-virtual {p1}, Ljava/security/AlgorithmParameters;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 219
    :try_start_0
    const-class v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p1, v0}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    check-cast v0, Ljavax/crypto/spec/IvParameterSpec;
    :try_end_0
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    invoke-virtual {v0}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object p1

    iput-object p1, p0, Landroid/security/keystore/AndroidKeyStore3DESCipherSpi;->mIv:[B

    .line 230
    iget-object p0, p0, Landroid/security/keystore/AndroidKeyStore3DESCipherSpi;->mIv:[B

    if-eqz p0, :cond_4

    return-void

    .line 231
    :cond_4
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "Null IV in AlgorithmParameters"

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception v0

    .line 221
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStore3DESCipherSpi;->isEncrypting()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 p1, 0x0

    .line 226
    iput-object p1, p0, Landroid/security/keystore/AndroidKeyStore3DESCipherSpi;->mIv:[B

    return-void

    .line 223
    :cond_5
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IV required when decrypting, but not found in parameters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    .line 212
    :cond_6
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported AlgorithmParameters algorithm: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {p1}, Ljava/security/AlgorithmParameters;->getAlgorithm()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Supported: DESede"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected initAlgorithmSpecificParameters(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 166
    iget-boolean v0, p0, Landroid/security/keystore/AndroidKeyStore3DESCipherSpi;->mIvRequired:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    return-void

    .line 168
    :cond_0
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported parameters: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    if-nez p1, :cond_3

    .line 175
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStore3DESCipherSpi;->isEncrypting()Z

    move-result p0

    if-eqz p0, :cond_2

    return-void

    .line 177
    :cond_2
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "IvParameterSpec must be provided when decrypting"

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 182
    :cond_3
    instance-of v0, p1, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v0, :cond_5

    .line 185
    check-cast p1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p1}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object p1

    iput-object p1, p0, Landroid/security/keystore/AndroidKeyStore3DESCipherSpi;->mIv:[B

    .line 186
    iget-object p0, p0, Landroid/security/keystore/AndroidKeyStore3DESCipherSpi;->mIv:[B

    if-eqz p0, :cond_4

    return-void

    .line 187
    :cond_4
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "Null IV in IvParameterSpec"

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 183
    :cond_5
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "Only IvParameterSpec supported"

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected initKey(ILjava/security/Key;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 101
    instance-of p1, p2, Landroid/security/keystore/AndroidKeyStoreSecretKey;

    if-nez p1, :cond_1

    .line 102
    new-instance p0, Ljava/security/InvalidKeyException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported key: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    .line 103
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, "null"

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-string p1, "DESede"

    .line 105
    invoke-interface {p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 110
    check-cast p2, Landroid/security/keystore/AndroidKeyStoreSecretKey;

    invoke-virtual {p0, p2}, Landroid/security/keystore/AndroidKeyStore3DESCipherSpi;->setKey(Landroid/security/keystore/AndroidKeyStoreKey;)V

    return-void

    .line 106
    :cond_2
    new-instance p0, Ljava/security/InvalidKeyException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported key algorithm: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-interface {p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ". Only "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "DESede"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " supported"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected loadAlgorithmSpecificParametersFromBeginResult(Landroid/security/keymaster/KeymasterArguments;)V
    .locals 2

    const/4 v0, 0x1

    .line 270
    iput-boolean v0, p0, Landroid/security/keystore/AndroidKeyStore3DESCipherSpi;->mIvHasBeenUsed:Z

    const/4 v0, 0x0

    const v1, -0x6ffffc17

    .line 273
    invoke-virtual {p1, v1, v0}, Landroid/security/keymaster/KeymasterArguments;->getBytes(I[B)[B

    move-result-object p1

    if-eqz p1, :cond_0

    .line 274
    array-length v1, p1

    if-nez v1, :cond_0

    move-object p1, v0

    .line 278
    :cond_0
    iget-boolean v0, p0, Landroid/security/keystore/AndroidKeyStore3DESCipherSpi;->mIvRequired:Z

    if-eqz v0, :cond_3

    .line 279
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStore3DESCipherSpi;->mIv:[B

    if-nez v0, :cond_1

    .line 280
    iput-object p1, p0, Landroid/security/keystore/AndroidKeyStore3DESCipherSpi;->mIv:[B

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_4

    .line 281
    iget-object p0, p0, Landroid/security/keystore/AndroidKeyStore3DESCipherSpi;->mIv:[B

    invoke-static {p1, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    .line 282
    :cond_2
    new-instance p0, Ljava/security/ProviderException;

    const-string p1, "IV in use differs from provided IV"

    invoke-direct {p0, p1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    if-nez p1, :cond_5

    :cond_4
    :goto_0
    return-void

    .line 286
    :cond_5
    new-instance p0, Ljava/security/ProviderException;

    const-string p1, "IV in use despite IV not being used by this transformation"

    invoke-direct {p0, p1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected final resetAll()V
    .locals 1

    const/4 v0, 0x0

    .line 294
    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStore3DESCipherSpi;->mIv:[B

    const/4 v0, 0x0

    .line 295
    iput-boolean v0, p0, Landroid/security/keystore/AndroidKeyStore3DESCipherSpi;->mIvHasBeenUsed:Z

    .line 296
    invoke-super {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->resetAll()V

    return-void
.end method
