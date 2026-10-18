.class public Landroid/security/keystore/KeyInfo;
.super Ljava/lang/Object;
.source "KeyInfo.java"

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private final mBlockModes:[Ljava/lang/String;

.field private final mDigests:[Ljava/lang/String;

.field private final mEncryptionPaddings:[Ljava/lang/String;

.field private final mInsideSecureHardware:Z

.field private final mInvalidatedByBiometricEnrollment:Z

.field private final mKeySize:I

.field private final mKeyValidityForConsumptionEnd:Ljava/util/Date;

.field private final mKeyValidityForOriginationEnd:Ljava/util/Date;

.field private final mKeyValidityStart:Ljava/util/Date;

.field private final mKeystoreAlias:Ljava/lang/String;

.field private final mOrigin:I

.field private final mPurposes:I

.field private final mSignaturePaddings:[Ljava/lang/String;

.field private final mTrustedUserPresenceRequired:Z

.field private final mUserAuthenticationRequired:Z

.field private final mUserAuthenticationRequirementEnforcedBySecureHardware:Z

.field private final mUserAuthenticationValidWhileOnBody:Z

.field private final mUserAuthenticationValidityDurationSeconds:I

.field private final mUserConfirmationRequired:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZIILjava/util/Date;Ljava/util/Date;Ljava/util/Date;I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZIZZZZZ)V
    .locals 2

    move-object v0, p0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 109
    iput-object v1, v0, Landroid/security/keystore/KeyInfo;->mKeystoreAlias:Ljava/lang/String;

    move v1, p2

    .line 110
    iput-boolean v1, v0, Landroid/security/keystore/KeyInfo;->mInsideSecureHardware:Z

    move v1, p3

    .line 111
    iput v1, v0, Landroid/security/keystore/KeyInfo;->mOrigin:I

    move v1, p4

    .line 112
    iput v1, v0, Landroid/security/keystore/KeyInfo;->mKeySize:I

    .line 113
    invoke-static {p5}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, v0, Landroid/security/keystore/KeyInfo;->mKeyValidityStart:Ljava/util/Date;

    .line 114
    invoke-static {p6}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, v0, Landroid/security/keystore/KeyInfo;->mKeyValidityForOriginationEnd:Ljava/util/Date;

    .line 115
    invoke-static {p7}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, v0, Landroid/security/keystore/KeyInfo;->mKeyValidityForConsumptionEnd:Ljava/util/Date;

    move v1, p8

    .line 116
    iput v1, v0, Landroid/security/keystore/KeyInfo;->mPurposes:I

    .line 118
    invoke-static {p9}, Landroid/security/keystore/ArrayUtils;->nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/security/keystore/KeyInfo;->mEncryptionPaddings:[Ljava/lang/String;

    .line 120
    invoke-static {p10}, Landroid/security/keystore/ArrayUtils;->nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/security/keystore/KeyInfo;->mSignaturePaddings:[Ljava/lang/String;

    .line 121
    invoke-static {p11}, Landroid/security/keystore/ArrayUtils;->nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/security/keystore/KeyInfo;->mDigests:[Ljava/lang/String;

    .line 122
    invoke-static {p12}, Landroid/security/keystore/ArrayUtils;->nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/security/keystore/KeyInfo;->mBlockModes:[Ljava/lang/String;

    move v1, p13

    .line 123
    iput-boolean v1, v0, Landroid/security/keystore/KeyInfo;->mUserAuthenticationRequired:Z

    move/from16 v1, p14

    .line 124
    iput v1, v0, Landroid/security/keystore/KeyInfo;->mUserAuthenticationValidityDurationSeconds:I

    move/from16 v1, p15

    .line 125
    iput-boolean v1, v0, Landroid/security/keystore/KeyInfo;->mUserAuthenticationRequirementEnforcedBySecureHardware:Z

    move/from16 v1, p16

    .line 127
    iput-boolean v1, v0, Landroid/security/keystore/KeyInfo;->mUserAuthenticationValidWhileOnBody:Z

    move/from16 v1, p17

    .line 128
    iput-boolean v1, v0, Landroid/security/keystore/KeyInfo;->mTrustedUserPresenceRequired:Z

    move/from16 v1, p18

    .line 129
    iput-boolean v1, v0, Landroid/security/keystore/KeyInfo;->mInvalidatedByBiometricEnrollment:Z

    move/from16 v1, p19

    .line 130
    iput-boolean v1, v0, Landroid/security/keystore/KeyInfo;->mUserConfirmationRequired:Z

    return-void
.end method


# virtual methods
.method public getBlockModes()[Ljava/lang/String;
    .locals 0

    .line 212
    iget-object p0, p0, Landroid/security/keystore/KeyInfo;->mBlockModes:[Ljava/lang/String;

    invoke-static {p0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDigests()[Ljava/lang/String;
    .locals 0

    .line 247
    iget-object p0, p0, Landroid/security/keystore/KeyInfo;->mDigests:[Ljava/lang/String;

    invoke-static {p0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEncryptionPaddings()[Ljava/lang/String;
    .locals 0

    .line 224
    iget-object p0, p0, Landroid/security/keystore/KeyInfo;->mEncryptionPaddings:[Ljava/lang/String;

    invoke-static {p0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKeySize()I
    .locals 0

    .line 160
    iget p0, p0, Landroid/security/keystore/KeyInfo;->mKeySize:I

    return p0
.end method

.method public getKeyValidityForConsumptionEnd()Ljava/util/Date;
    .locals 0

    .line 180
    iget-object p0, p0, Landroid/security/keystore/KeyInfo;->mKeyValidityForConsumptionEnd:Ljava/util/Date;

    invoke-static {p0}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public getKeyValidityForOriginationEnd()Ljava/util/Date;
    .locals 0

    .line 190
    iget-object p0, p0, Landroid/security/keystore/KeyInfo;->mKeyValidityForOriginationEnd:Ljava/util/Date;

    invoke-static {p0}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public getKeyValidityStart()Ljava/util/Date;
    .locals 0

    .line 170
    iget-object p0, p0, Landroid/security/keystore/KeyInfo;->mKeyValidityStart:Ljava/util/Date;

    invoke-static {p0}, Landroid/security/keystore/Utils;->cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public getKeystoreAlias()Ljava/lang/String;
    .locals 0

    .line 137
    iget-object p0, p0, Landroid/security/keystore/KeyInfo;->mKeystoreAlias:Ljava/lang/String;

    return-object p0
.end method

.method public getOrigin()I
    .locals 0

    .line 153
    iget p0, p0, Landroid/security/keystore/KeyInfo;->mOrigin:I

    return p0
.end method

.method public getPurposes()I
    .locals 0

    .line 200
    iget p0, p0, Landroid/security/keystore/KeyInfo;->mPurposes:I

    return p0
.end method

.method public getSignaturePaddings()[Ljava/lang/String;
    .locals 0

    .line 236
    iget-object p0, p0, Landroid/security/keystore/KeyInfo;->mSignaturePaddings:[Ljava/lang/String;

    invoke-static {p0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUserAuthenticationValidityDurationSeconds()I
    .locals 0

    .line 300
    iget p0, p0, Landroid/security/keystore/KeyInfo;->mUserAuthenticationValidityDurationSeconds:I

    return p0
.end method

.method public isInsideSecureHardware()Z
    .locals 0

    .line 146
    iget-boolean p0, p0, Landroid/security/keystore/KeyInfo;->mInsideSecureHardware:Z

    return p0
.end method

.method public isInvalidatedByBiometricEnrollment()Z
    .locals 0

    .line 329
    iget-boolean p0, p0, Landroid/security/keystore/KeyInfo;->mInvalidatedByBiometricEnrollment:Z

    return p0
.end method

.method public isTrustedUserPresenceRequired()Z
    .locals 0

    .line 337
    iget-boolean p0, p0, Landroid/security/keystore/KeyInfo;->mTrustedUserPresenceRequired:Z

    return p0
.end method

.method public isUserAuthenticationRequired()Z
    .locals 0

    .line 262
    iget-boolean p0, p0, Landroid/security/keystore/KeyInfo;->mUserAuthenticationRequired:Z

    return p0
.end method

.method public isUserAuthenticationRequirementEnforcedBySecureHardware()Z
    .locals 0

    .line 311
    iget-boolean p0, p0, Landroid/security/keystore/KeyInfo;->mUserAuthenticationRequirementEnforcedBySecureHardware:Z

    return p0
.end method

.method public isUserAuthenticationValidWhileOnBody()Z
    .locals 0

    .line 321
    iget-boolean p0, p0, Landroid/security/keystore/KeyInfo;->mUserAuthenticationValidWhileOnBody:Z

    return p0
.end method

.method public isUserConfirmationRequired()Z
    .locals 0

    .line 283
    iget-boolean p0, p0, Landroid/security/keystore/KeyInfo;->mUserConfirmationRequired:Z

    return p0
.end method
