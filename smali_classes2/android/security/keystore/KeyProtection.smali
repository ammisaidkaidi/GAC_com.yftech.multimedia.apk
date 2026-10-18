.class public final Landroid/security/keystore/KeyProtection;
.super Ljava/lang/Object;
.source "KeyProtection.java"

# interfaces
.implements Ljava/security/KeyStore$ProtectionParameter;
.implements Landroid/security/keystore/UserAuthArgs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore/KeyProtection$Builder;
    }
.end annotation


# instance fields
.field private final mBlockModes:[Ljava/lang/String;

.field private final mBoundToSecureUserId:J

.field private final mCriticalToDeviceEncryption:Z

.field private final mDigests:[Ljava/lang/String;

.field private final mEncryptionPaddings:[Ljava/lang/String;

.field private final mInvalidatedByBiometricEnrollment:Z

.field private final mIsStrongBoxBacked:Z

.field private final mKeyValidityForConsumptionEnd:Ljava/util/Date;

.field private final mKeyValidityForOriginationEnd:Ljava/util/Date;

.field private final mKeyValidityStart:Ljava/util/Date;

.field private final mPurposes:I

.field private final mRandomizedEncryptionRequired:Z

.field private final mSignaturePaddings:[Ljava/lang/String;

.field private final mUnlockedDeviceRequired:Z

.field private final mUserAuthenticationRequired:Z

.field private final mUserAuthenticationValidWhileOnBody:Z

.field private final mUserAuthenticationValidityDurationSeconds:I

.field private final mUserConfirmationRequired:Z

.field private final mUserPresenceRequred:Z


# direct methods
.method private constructor <init>(Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZZIZZZJZZZZ)V
    .locals 3

    move-object v0, p0

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    invoke-static {p1}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, v0, Landroid/security/keystore/KeyProtection;->mKeyValidityStart:Ljava/util/Date;

    .line 258
    invoke-static {p2}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, v0, Landroid/security/keystore/KeyProtection;->mKeyValidityForOriginationEnd:Ljava/util/Date;

    .line 259
    invoke-static {p3}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, v0, Landroid/security/keystore/KeyProtection;->mKeyValidityForConsumptionEnd:Ljava/util/Date;

    move v1, p4

    .line 260
    iput v1, v0, Landroid/security/keystore/KeyProtection;->mPurposes:I

    .line 262
    invoke-static {p5}, Landroid/security/keystore/ArrayUtils;->nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/security/keystore/KeyProtection;->mEncryptionPaddings:[Ljava/lang/String;

    .line 264
    invoke-static {p6}, Landroid/security/keystore/ArrayUtils;->nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/security/keystore/KeyProtection;->mSignaturePaddings:[Ljava/lang/String;

    .line 265
    invoke-static {p7}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/security/keystore/KeyProtection;->mDigests:[Ljava/lang/String;

    .line 266
    invoke-static {p8}, Landroid/security/keystore/ArrayUtils;->nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/security/keystore/KeyProtection;->mBlockModes:[Ljava/lang/String;

    move v1, p9

    .line 267
    iput-boolean v1, v0, Landroid/security/keystore/KeyProtection;->mRandomizedEncryptionRequired:Z

    move v1, p10

    .line 268
    iput-boolean v1, v0, Landroid/security/keystore/KeyProtection;->mUserAuthenticationRequired:Z

    move v1, p11

    .line 269
    iput v1, v0, Landroid/security/keystore/KeyProtection;->mUserAuthenticationValidityDurationSeconds:I

    move v1, p12

    .line 270
    iput-boolean v1, v0, Landroid/security/keystore/KeyProtection;->mUserPresenceRequred:Z

    move/from16 v1, p13

    .line 271
    iput-boolean v1, v0, Landroid/security/keystore/KeyProtection;->mUserAuthenticationValidWhileOnBody:Z

    move/from16 v1, p14

    .line 272
    iput-boolean v1, v0, Landroid/security/keystore/KeyProtection;->mInvalidatedByBiometricEnrollment:Z

    move-wide/from16 v1, p15

    .line 273
    iput-wide v1, v0, Landroid/security/keystore/KeyProtection;->mBoundToSecureUserId:J

    move/from16 v1, p17

    .line 274
    iput-boolean v1, v0, Landroid/security/keystore/KeyProtection;->mCriticalToDeviceEncryption:Z

    move/from16 v1, p18

    .line 275
    iput-boolean v1, v0, Landroid/security/keystore/KeyProtection;->mUserConfirmationRequired:Z

    move/from16 v1, p19

    .line 276
    iput-boolean v1, v0, Landroid/security/keystore/KeyProtection;->mUnlockedDeviceRequired:Z

    move/from16 v1, p20

    .line 277
    iput-boolean v1, v0, Landroid/security/keystore/KeyProtection;->mIsStrongBoxBacked:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZZIZZZJZZZZLandroid/security/keystore/KeyProtection$1;)V
    .locals 0

    .line 216
    invoke-direct/range {p0 .. p20}, Landroid/security/keystore/KeyProtection;-><init>(Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZZIZZZJZZZZ)V

    return-void
.end method


# virtual methods
.method public getBlockModes()[Ljava/lang/String;
    .locals 0

    .line 381
    iget-object p0, p0, Landroid/security/keystore/KeyProtection;->mBlockModes:[Ljava/lang/String;

    invoke-static {p0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBoundToSpecificSecureUserId()J
    .locals 2

    .line 510
    iget-wide v0, p0, Landroid/security/keystore/KeyProtection;->mBoundToSecureUserId:J

    return-wide v0
.end method

.method public getDigests()[Ljava/lang/String;
    .locals 1

    .line 356
    iget-object v0, p0, Landroid/security/keystore/KeyProtection;->mDigests:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 359
    iget-object p0, p0, Landroid/security/keystore/KeyProtection;->mDigests:[Ljava/lang/String;

    invoke-static {p0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 357
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Digests not specified"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getEncryptionPaddings()[Ljava/lang/String;
    .locals 0

    .line 329
    iget-object p0, p0, Landroid/security/keystore/KeyProtection;->mEncryptionPaddings:[Ljava/lang/String;

    invoke-static {p0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKeyValidityForConsumptionEnd()Ljava/util/Date;
    .locals 0

    .line 297
    iget-object p0, p0, Landroid/security/keystore/KeyProtection;->mKeyValidityForConsumptionEnd:Ljava/util/Date;

    invoke-static {p0}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public getKeyValidityForOriginationEnd()Ljava/util/Date;
    .locals 0

    .line 307
    iget-object p0, p0, Landroid/security/keystore/KeyProtection;->mKeyValidityForOriginationEnd:Ljava/util/Date;

    invoke-static {p0}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public getKeyValidityStart()Ljava/util/Date;
    .locals 0

    .line 287
    iget-object p0, p0, Landroid/security/keystore/KeyProtection;->mKeyValidityStart:Ljava/util/Date;

    invoke-static {p0}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public getPurposes()I
    .locals 0

    .line 317
    iget p0, p0, Landroid/security/keystore/KeyProtection;->mPurposes:I

    return p0
.end method

.method public getSignaturePaddings()[Ljava/lang/String;
    .locals 0

    .line 341
    iget-object p0, p0, Landroid/security/keystore/KeyProtection;->mSignaturePaddings:[Ljava/lang/String;

    invoke-static {p0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUserAuthenticationValidityDurationSeconds()I
    .locals 0

    .line 446
    iget p0, p0, Landroid/security/keystore/KeyProtection;->mUserAuthenticationValidityDurationSeconds:I

    return p0
.end method

.method public isCriticalToDeviceEncryption()Z
    .locals 0

    .line 520
    iget-boolean p0, p0, Landroid/security/keystore/KeyProtection;->mCriticalToDeviceEncryption:Z

    return p0
.end method

.method public isDigestsSpecified()Z
    .locals 0

    .line 369
    iget-object p0, p0, Landroid/security/keystore/KeyProtection;->mDigests:[Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInvalidatedByBiometricEnrollment()Z
    .locals 0

    .line 491
    iget-boolean p0, p0, Landroid/security/keystore/KeyProtection;->mInvalidatedByBiometricEnrollment:Z

    return p0
.end method

.method public isRandomizedEncryptionRequired()Z
    .locals 0

    .line 394
    iget-boolean p0, p0, Landroid/security/keystore/KeyProtection;->mRandomizedEncryptionRequired:Z

    return p0
.end method

.method public isStrongBoxBacked()Z
    .locals 0

    .line 539
    iget-boolean p0, p0, Landroid/security/keystore/KeyProtection;->mIsStrongBoxBacked:Z

    return p0
.end method

.method public isUnlockedDeviceRequired()Z
    .locals 0

    .line 531
    iget-boolean p0, p0, Landroid/security/keystore/KeyProtection;->mUnlockedDeviceRequired:Z

    return p0
.end method

.method public isUserAuthenticationRequired()Z
    .locals 0

    .line 408
    iget-boolean p0, p0, Landroid/security/keystore/KeyProtection;->mUserAuthenticationRequired:Z

    return p0
.end method

.method public isUserAuthenticationValidWhileOnBody()Z
    .locals 0

    .line 478
    iget-boolean p0, p0, Landroid/security/keystore/KeyProtection;->mUserAuthenticationValidWhileOnBody:Z

    return p0
.end method

.method public isUserConfirmationRequired()Z
    .locals 0

    .line 428
    iget-boolean p0, p0, Landroid/security/keystore/KeyProtection;->mUserConfirmationRequired:Z

    return p0
.end method

.method public isUserPresenceRequired()Z
    .locals 0

    .line 462
    iget-boolean p0, p0, Landroid/security/keystore/KeyProtection;->mUserPresenceRequred:Z

    return p0
.end method
