.class public Landroid/view/KeyCharacterMap;
.super Ljava/lang/Object;
.source "KeyCharacterMap.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/KeyCharacterMap$FallbackAction;,
        Landroid/view/KeyCharacterMap$UnavailableException;,
        Landroid/view/KeyCharacterMap$KeyData;
    }
.end annotation


# static fields
.field private static final ACCENT_ACUTE:I = 0xb4

.field private static final ACCENT_BREVE:I = 0x2d8

.field private static final ACCENT_CARON:I = 0x2c7

.field private static final ACCENT_CEDILLA:I = 0xb8

.field private static final ACCENT_CIRCUMFLEX:I = 0x2c6

.field private static final ACCENT_CIRCUMFLEX_LEGACY:I = 0x5e

.field private static final ACCENT_COMMA_ABOVE:I = 0x1fbd

.field private static final ACCENT_COMMA_ABOVE_RIGHT:I = 0x2bc

.field private static final ACCENT_DOT_ABOVE:I = 0x2d9

.field private static final ACCENT_DOT_BELOW:I = 0x2e

.field private static final ACCENT_DOUBLE_ACUTE:I = 0x2dd

.field private static final ACCENT_GRAVE:I = 0x2cb

.field private static final ACCENT_GRAVE_LEGACY:I = 0x60

.field private static final ACCENT_HOOK_ABOVE:I = 0x2c0

.field private static final ACCENT_HORN:I = 0x27

.field private static final ACCENT_MACRON:I = 0xaf

.field private static final ACCENT_MACRON_BELOW:I = 0x2cd

.field private static final ACCENT_OGONEK:I = 0x2db

.field private static final ACCENT_REVERSED_COMMA_ABOVE:I = 0x2bd

.field private static final ACCENT_RING_ABOVE:I = 0x2da

.field private static final ACCENT_STROKE:I = 0x2d

.field private static final ACCENT_TILDE:I = 0x2dc

.field private static final ACCENT_TILDE_LEGACY:I = 0x7e

.field private static final ACCENT_TURNED_COMMA_ABOVE:I = 0x2bb

.field private static final ACCENT_UMLAUT:I = 0xa8

.field private static final ACCENT_VERTICAL_LINE_ABOVE:I = 0x2c8

.field private static final ACCENT_VERTICAL_LINE_BELOW:I = 0x2cc

.field public static final ALPHA:I = 0x3

.field public static final BUILT_IN_KEYBOARD:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final CHAR_SPACE:I = 0x20

.field public static final COMBINING_ACCENT:I = -0x80000000

.field public static final COMBINING_ACCENT_MASK:I = 0x7fffffff

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/KeyCharacterMap;",
            ">;"
        }
    .end annotation
.end field

.field public static final FULL:I = 0x4

.field public static final HEX_INPUT:C = '\uef00'

.field public static final MODIFIER_BEHAVIOR_CHORDED:I = 0x0

.field public static final MODIFIER_BEHAVIOR_CHORDED_OR_TOGGLED:I = 0x1

.field public static final NUMERIC:I = 0x1

.field public static final PICKER_DIALOG_INPUT:C = '\uef01'

.field public static final PREDICTIVE:I = 0x2

.field public static final SPECIAL_FUNCTION:I = 0x5

.field public static final VIRTUAL_KEYBOARD:I = -0x1

.field private static final sAccentToCombining:Landroid/util/SparseIntArray;

.field private static final sCombiningToAccent:Landroid/util/SparseIntArray;

.field private static final sDeadKeyBuilder:Ljava/lang/StringBuilder;

.field private static final sDeadKeyCache:Landroid/util/SparseIntArray;


# instance fields
.field private mPtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 187
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/view/KeyCharacterMap;->sCombiningToAccent:Landroid/util/SparseIntArray;

    .line 188
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/view/KeyCharacterMap;->sAccentToCombining:Landroid/util/SparseIntArray;

    const/16 v0, 0x2cb

    const/16 v1, 0x300

    .line 190
    invoke-static {v1, v0}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    const/16 v2, 0xb4

    const/16 v3, 0x301

    .line 191
    invoke-static {v3, v2}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    const/16 v3, 0x302

    const/16 v4, 0x2c6

    .line 192
    invoke-static {v3, v4}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    const/16 v4, 0x303

    const/16 v5, 0x2dc

    .line 193
    invoke-static {v4, v5}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    const/16 v5, 0x304

    const/16 v6, 0xaf

    .line 194
    invoke-static {v5, v6}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    const/16 v5, 0x306

    const/16 v6, 0x2d8

    .line 195
    invoke-static {v5, v6}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    const/16 v5, 0x307

    const/16 v6, 0x2d9

    .line 196
    invoke-static {v5, v6}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    const/16 v5, 0x308

    const/16 v6, 0xa8

    .line 197
    invoke-static {v5, v6}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    const/16 v5, 0x309

    const/16 v6, 0x2c0

    .line 198
    invoke-static {v5, v6}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    const/16 v5, 0x30a

    const/16 v6, 0x2da

    .line 199
    invoke-static {v5, v6}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    const/16 v5, 0x30b

    const/16 v6, 0x2dd

    .line 200
    invoke-static {v5, v6}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    const/16 v5, 0x30c

    const/16 v6, 0x2c7

    .line 201
    invoke-static {v5, v6}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    const/16 v5, 0x30d

    const/16 v6, 0x2c8

    .line 202
    invoke-static {v5, v6}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    const/16 v5, 0x312

    const/16 v6, 0x2bb

    .line 207
    invoke-static {v5, v6}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    const/16 v5, 0x1fbd

    const/16 v6, 0x313

    .line 208
    invoke-static {v6, v5}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    const/16 v6, 0x314

    const/16 v7, 0x2bd

    .line 209
    invoke-static {v6, v7}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    const/16 v6, 0x315

    const/16 v7, 0x2bc

    .line 210
    invoke-static {v6, v7}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    const/16 v6, 0x31b

    const/16 v7, 0x27

    .line 211
    invoke-static {v6, v7}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    const/16 v6, 0x323

    const/16 v7, 0x2e

    .line 212
    invoke-static {v6, v7}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    const/16 v6, 0x327

    const/16 v7, 0xb8

    .line 214
    invoke-static {v6, v7}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    const/16 v6, 0x328

    const/16 v7, 0x2db

    .line 215
    invoke-static {v6, v7}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    const/16 v6, 0x329

    const/16 v7, 0x2cc

    .line 216
    invoke-static {v6, v7}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    const/16 v6, 0x331

    const/16 v7, 0x2cd

    .line 217
    invoke-static {v6, v7}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    const/16 v6, 0x2d

    const/16 v7, 0x335

    .line 218
    invoke-static {v7, v6}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    .line 224
    sget-object v7, Landroid/view/KeyCharacterMap;->sCombiningToAccent:Landroid/util/SparseIntArray;

    const/16 v8, 0x340

    invoke-virtual {v7, v8, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 225
    sget-object v0, Landroid/view/KeyCharacterMap;->sCombiningToAccent:Landroid/util/SparseIntArray;

    const/16 v7, 0x341

    invoke-virtual {v0, v7, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 226
    sget-object v0, Landroid/view/KeyCharacterMap;->sCombiningToAccent:Landroid/util/SparseIntArray;

    const/16 v2, 0x343

    invoke-virtual {v0, v2, v5}, Landroid/util/SparseIntArray;->append(II)V

    .line 229
    sget-object v0, Landroid/view/KeyCharacterMap;->sAccentToCombining:Landroid/util/SparseIntArray;

    const/16 v2, 0x60

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 230
    sget-object v0, Landroid/view/KeyCharacterMap;->sAccentToCombining:Landroid/util/SparseIntArray;

    const/16 v1, 0x5e

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 231
    sget-object v0, Landroid/view/KeyCharacterMap;->sAccentToCombining:Landroid/util/SparseIntArray;

    const/16 v1, 0x7e

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 244
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/view/KeyCharacterMap;->sDeadKeyCache:Landroid/util/SparseIntArray;

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Landroid/view/KeyCharacterMap;->sDeadKeyBuilder:Ljava/lang/StringBuilder;

    const/16 v0, 0x44

    const/16 v1, 0x110

    .line 249
    invoke-static {v6, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    const/16 v0, 0x47

    const/16 v1, 0x1e4

    .line 250
    invoke-static {v6, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    const/16 v0, 0x48

    const/16 v1, 0x126

    .line 251
    invoke-static {v6, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    const/16 v0, 0x49

    const/16 v1, 0x197

    .line 252
    invoke-static {v6, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    const/16 v0, 0x4c

    const/16 v1, 0x141

    .line 253
    invoke-static {v6, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    const/16 v0, 0x4f

    const/16 v1, 0xd8

    .line 254
    invoke-static {v6, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    const/16 v0, 0x54

    const/16 v1, 0x166

    .line 255
    invoke-static {v6, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    const/16 v0, 0x64

    const/16 v1, 0x111

    .line 256
    invoke-static {v6, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    const/16 v0, 0x67

    const/16 v1, 0x1e5

    .line 257
    invoke-static {v6, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    const/16 v0, 0x68

    const/16 v1, 0x127

    .line 258
    invoke-static {v6, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    const/16 v0, 0x69

    const/16 v1, 0x268

    .line 259
    invoke-static {v6, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    const/16 v0, 0x6c

    const/16 v1, 0x142

    .line 260
    invoke-static {v6, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    const/16 v0, 0x6f

    const/16 v1, 0xf8

    .line 261
    invoke-static {v6, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    const/16 v0, 0x74

    const/16 v1, 0x167

    .line 262
    invoke-static {v6, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    .line 274
    new-instance v0, Landroid/view/KeyCharacterMap$1;

    invoke-direct {v0}, Landroid/view/KeyCharacterMap$1;-><init>()V

    sput-object v0, Landroid/view/KeyCharacterMap;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(J)V
    .locals 0

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    iput-wide p1, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 303
    invoke-static {p1}, Landroid/view/KeyCharacterMap;->nativeReadFromParcel(Landroid/os/Parcel;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    .line 304
    iget-wide p0, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_0

    return-void

    .line 305
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Could not read KeyCharacterMap from parcel."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 301
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "parcel must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/view/KeyCharacterMap$1;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Landroid/view/KeyCharacterMap;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static addCombining(II)V
    .locals 1

    .line 235
    sget-object v0, Landroid/view/KeyCharacterMap;->sCombiningToAccent:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0, p1}, Landroid/util/SparseIntArray;->append(II)V

    .line 236
    sget-object v0, Landroid/view/KeyCharacterMap;->sAccentToCombining:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p0}, Landroid/util/SparseIntArray;->append(II)V

    return-void
.end method

.method private static addDeadKey(III)V
    .locals 1

    .line 266
    sget-object v0, Landroid/view/KeyCharacterMap;->sAccentToCombining:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    if-eqz p0, :cond_0

    shl-int/lit8 p0, p0, 0x10

    or-int/2addr p0, p1

    .line 271
    sget-object p1, Landroid/view/KeyCharacterMap;->sDeadKeyCache:Landroid/util/SparseIntArray;

    invoke-virtual {p1, p0, p2}, Landroid/util/SparseIntArray;->put(II)V

    return-void

    .line 268
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Invalid dead key declaration."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static deviceHasKey(I)Z
    .locals 3

    .line 699
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->deviceHasKeys([I)[Z

    move-result-object p0

    aget-boolean p0, p0, v2

    return p0
.end method

.method public static deviceHasKeys([I)[Z
    .locals 1

    .line 713
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->deviceHasKeys([I)[Z

    move-result-object p0

    return-object p0
.end method

.method public static getDeadChar(II)I
    .locals 5

    if-eq p1, p0, :cond_4

    const/16 v0, 0x20

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 496
    :cond_0
    sget-object v0, Landroid/view/KeyCharacterMap;->sAccentToCombining:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_1

    return v0

    :cond_1
    shl-int/lit8 v1, p0, 0x10

    or-int/2addr v1, p1

    .line 503
    sget-object v2, Landroid/view/KeyCharacterMap;->sDeadKeyCache:Landroid/util/SparseIntArray;

    monitor-enter v2

    .line 504
    :try_start_0
    sget-object v3, Landroid/view/KeyCharacterMap;->sDeadKeyCache:Landroid/util/SparseIntArray;

    const/4 v4, -0x1

    invoke-virtual {v3, v1, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    if-ne v3, v4, :cond_3

    .line 506
    sget-object v3, Landroid/view/KeyCharacterMap;->sDeadKeyBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 507
    sget-object v3, Landroid/view/KeyCharacterMap;->sDeadKeyBuilder:Ljava/lang/StringBuilder;

    int-to-char p1, p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 508
    sget-object p1, Landroid/view/KeyCharacterMap;->sDeadKeyBuilder:Ljava/lang/StringBuilder;

    int-to-char p0, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 509
    sget-object p0, Landroid/view/KeyCharacterMap;->sDeadKeyBuilder:Ljava/lang/StringBuilder;

    sget-object p1, Ljava/text/Normalizer$Form;->NFC:Ljava/text/Normalizer$Form;

    invoke-static {p0, p1}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object p0

    .line 510
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->codePointCount(II)I

    move-result p1

    const/4 v3, 0x1

    if-ne p1, v3, :cond_2

    .line 511
    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    :cond_2
    move v3, v0

    .line 512
    sget-object p0, Landroid/view/KeyCharacterMap;->sDeadKeyCache:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 514
    :cond_3
    monitor-exit v2

    return v3

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_4
    :goto_0
    return p0
.end method

.method public static load(I)Landroid/view/KeyCharacterMap;
    .locals 3

    .line 332
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    .line 333
    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v1, -0x1

    .line 335
    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 337
    :cond_0
    new-instance v0, Landroid/view/KeyCharacterMap$UnavailableException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not load key character map for device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/view/KeyCharacterMap$UnavailableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 341
    :cond_1
    :goto_0
    invoke-virtual {v1}, Landroid/view/InputDevice;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object p0

    return-object p0
.end method

.method private static native nativeDispose(J)V
.end method

.method private static native nativeGetCharacter(JII)C
.end method

.method private static native nativeGetDisplayLabel(JI)C
.end method

.method private static native nativeGetEvents(J[C)[Landroid/view/KeyEvent;
.end method

.method private static native nativeGetFallbackAction(JIILandroid/view/KeyCharacterMap$FallbackAction;)Z
.end method

.method private static native nativeGetKeyboardType(J)I
.end method

.method private static native nativeGetMatch(JI[CI)C
.end method

.method private static native nativeGetNumber(JI)C
.end method

.method private static native nativeReadFromParcel(Landroid/os/Parcel;)J
.end method

.method private static native nativeWriteToParcel(JLandroid/os/Parcel;)V
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 316
    iget-wide v0, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 317
    iget-wide v0, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    invoke-static {v0, v1}, Landroid/view/KeyCharacterMap;->nativeDispose(J)V

    .line 318
    iput-wide v2, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    :cond_0
    return-void
.end method

.method public get(II)I
    .locals 2

    .line 366
    invoke-static {p2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p2

    .line 367
    iget-wide v0, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/KeyCharacterMap;->nativeGetCharacter(JII)C

    move-result p0

    .line 369
    sget-object p1, Landroid/view/KeyCharacterMap;->sCombiningToAccent:Landroid/util/SparseIntArray;

    invoke-virtual {p1, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    if-eqz p1, :cond_0

    const/high16 p0, -0x80000000

    or-int/2addr p0, p1

    return p0

    :cond_0
    return p0
.end method

.method public getDisplayLabel(I)C
    .locals 2

    .line 475
    iget-wide v0, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    invoke-static {v0, v1, p1}, Landroid/view/KeyCharacterMap;->nativeGetDisplayLabel(JI)C

    move-result p0

    return p0
.end method

.method public getEvents([C)[Landroid/view/KeyEvent;
    .locals 2

    if-eqz p1, :cond_0

    .line 609
    iget-wide v0, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    invoke-static {v0, v1, p1}, Landroid/view/KeyCharacterMap;->nativeGetEvents(J[C)[Landroid/view/KeyEvent;

    move-result-object p0

    return-object p0

    .line 607
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "chars must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getFallbackAction(II)Landroid/view/KeyCharacterMap$FallbackAction;
    .locals 3

    .line 395
    invoke-static {}, Landroid/view/KeyCharacterMap$FallbackAction;->obtain()Landroid/view/KeyCharacterMap$FallbackAction;

    move-result-object v0

    .line 396
    invoke-static {p2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p2

    .line 397
    iget-wide v1, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    invoke-static {v1, v2, p1, p2, v0}, Landroid/view/KeyCharacterMap;->nativeGetFallbackAction(JIILandroid/view/KeyCharacterMap$FallbackAction;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 398
    iget p0, v0, Landroid/view/KeyCharacterMap$FallbackAction;->metaState:I

    invoke-static {p0}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p0

    iput p0, v0, Landroid/view/KeyCharacterMap$FallbackAction;->metaState:I

    return-object v0

    .line 401
    :cond_0
    invoke-virtual {v0}, Landroid/view/KeyCharacterMap$FallbackAction;->recycle()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getKeyData(ILandroid/view/KeyCharacterMap$KeyData;)Z
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 563
    iget-object v0, p2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    array-length v0, v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    .line 568
    iget-wide v0, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    invoke-static {v0, v1, p1}, Landroid/view/KeyCharacterMap;->nativeGetDisplayLabel(JI)C

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 573
    :cond_0
    iput-char v0, p2, Landroid/view/KeyCharacterMap$KeyData;->displayLabel:C

    .line 574
    iget-wide v2, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    invoke-static {v2, v3, p1}, Landroid/view/KeyCharacterMap;->nativeGetNumber(JI)C

    move-result v0

    iput-char v0, p2, Landroid/view/KeyCharacterMap$KeyData;->number:C

    .line 575
    iget-object v0, p2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    iget-wide v2, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    invoke-static {v2, v3, p1, v1}, Landroid/view/KeyCharacterMap;->nativeGetCharacter(JII)C

    move-result v2

    aput-char v2, v0, v1

    .line 576
    iget-object v0, p2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    iget-wide v1, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    const/4 v3, 0x1

    invoke-static {v1, v2, p1, v3}, Landroid/view/KeyCharacterMap;->nativeGetCharacter(JII)C

    move-result v1

    aput-char v1, v0, v3

    .line 577
    iget-object v0, p2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    iget-wide v1, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    const/4 v4, 0x2

    invoke-static {v1, v2, p1, v4}, Landroid/view/KeyCharacterMap;->nativeGetCharacter(JII)C

    move-result v1

    aput-char v1, v0, v4

    .line 578
    iget-object p2, p2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    iget-wide v0, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    const/4 p0, 0x3

    invoke-static {v0, v1, p1, p0}, Landroid/view/KeyCharacterMap;->nativeGetCharacter(JII)C

    move-result p1

    aput-char p1, p2, p0

    return v3

    .line 564
    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo p1, "results.meta.length must be >= 4"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getKeyboardType()I
    .locals 2

    .line 646
    iget-wide v0, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    invoke-static {v0, v1}, Landroid/view/KeyCharacterMap;->nativeGetKeyboardType(J)I

    move-result p0

    return p0
.end method

.method public getMatch(I[C)C
    .locals 1

    const/4 v0, 0x0

    .line 444
    invoke-virtual {p0, p1, p2, v0}, Landroid/view/KeyCharacterMap;->getMatch(I[CI)C

    move-result p0

    return p0
.end method

.method public getMatch(I[CI)C
    .locals 2

    if-eqz p2, :cond_0

    .line 463
    invoke-static {p3}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p3

    .line 464
    iget-wide v0, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/view/KeyCharacterMap;->nativeGetMatch(JI[CI)C

    move-result p0

    return p0

    .line 460
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "chars must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getModifierBehavior()I
    .locals 0

    .line 682
    invoke-virtual {p0}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x1

    return p0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getNumber(I)C
    .locals 2

    .line 427
    iget-wide v0, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    invoke-static {v0, v1, p1}, Landroid/view/KeyCharacterMap;->nativeGetNumber(JI)C

    move-result p0

    return p0
.end method

.method public isPrintingKey(I)Z
    .locals 2

    .line 619
    iget-wide v0, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    invoke-static {v0, v1, p1}, Landroid/view/KeyCharacterMap;->nativeGetDisplayLabel(JI)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    move-result p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x1

    return p0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    if-eqz p1, :cond_0

    .line 721
    iget-wide v0, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    invoke-static {v0, v1, p1}, Landroid/view/KeyCharacterMap;->nativeWriteToParcel(JLandroid/os/Parcel;)V

    return-void

    .line 719
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "parcel must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
