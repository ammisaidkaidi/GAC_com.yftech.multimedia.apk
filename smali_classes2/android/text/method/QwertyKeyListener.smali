.class public Landroid/text/method/QwertyKeyListener;
.super Landroid/text/method/BaseKeyListener;
.source "QwertyKeyListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/method/QwertyKeyListener$Replaced;
    }
.end annotation


# static fields
.field private static PICKER_SETS:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sFullKeyboardInstance:Landroid/text/method/QwertyKeyListener;

.field private static sInstance:[Landroid/text/method/QwertyKeyListener;


# instance fields
.field private mAutoCap:Landroid/text/method/TextKeyListener$Capitalize;

.field private mAutoText:Z

.field private mFullKeyboard:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 42
    invoke-static {}, Landroid/text/method/TextKeyListener$Capitalize;->values()[Landroid/text/method/TextKeyListener$Capitalize;

    move-result-object v0

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Landroid/text/method/QwertyKeyListener;

    sput-object v0, Landroid/text/method/QwertyKeyListener;->sInstance:[Landroid/text/method/QwertyKeyListener;

    .line 436
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    .line 439
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u00c0\u00c1\u00c2\u00c4\u00c6\u00c3\u00c5\u0104\u0100"

    const/16 v2, 0x41

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 440
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u00c7\u0106\u010c"

    const/16 v2, 0x43

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 441
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u010e"

    const/16 v2, 0x44

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 442
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u00c8\u00c9\u00ca\u00cb\u0118\u011a\u0112"

    const/16 v2, 0x45

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 443
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u011e"

    const/16 v2, 0x47

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 444
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u0141"

    const/16 v2, 0x4c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 445
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u00cc\u00cd\u00ce\u00cf\u012a\u0130"

    const/16 v2, 0x49

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 446
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u00d1\u0143\u0147"

    const/16 v2, 0x4e

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 447
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u00d8\u0152\u00d5\u00d2\u00d3\u00d4\u00d6\u014c"

    const/16 v2, 0x4f

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 448
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u0158"

    const/16 v2, 0x52

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 449
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u015a\u0160\u015e"

    const/16 v2, 0x53

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 450
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u0164"

    const/16 v2, 0x54

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 451
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u00d9\u00da\u00db\u00dc\u016e\u016a"

    const/16 v2, 0x55

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 452
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u00dd\u0178"

    const/16 v2, 0x59

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 453
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u0179\u017b\u017d"

    const/16 v2, 0x5a

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 454
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u00e0\u00e1\u00e2\u00e4\u00e6\u00e3\u00e5\u0105\u0101"

    const/16 v2, 0x61

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 455
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u00e7\u0107\u010d"

    const/16 v2, 0x63

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 456
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u010f"

    const/16 v2, 0x64

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 457
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u00e8\u00e9\u00ea\u00eb\u0119\u011b\u0113"

    const/16 v2, 0x65

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 458
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u011f"

    const/16 v2, 0x67

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 459
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u00ec\u00ed\u00ee\u00ef\u012b\u0131"

    const/16 v2, 0x69

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 460
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u0142"

    const/16 v2, 0x6c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 461
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u00f1\u0144\u0148"

    const/16 v2, 0x6e

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 462
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u00f8\u0153\u00f5\u00f2\u00f3\u00f4\u00f6\u014d"

    const/16 v2, 0x6f

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 463
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u0159"

    const/16 v2, 0x72

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 464
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u00a7\u00df\u015b\u0161\u015f"

    const/16 v2, 0x73

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 465
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u0165"

    const/16 v2, 0x74

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 466
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u00f9\u00fa\u00fb\u00fc\u016f\u016b"

    const/16 v2, 0x75

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 467
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u00fd\u00ff"

    const/16 v2, 0x79

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 468
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u017a\u017c\u017e"

    const/16 v2, 0x7a

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 469
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u2026\u00a5\u2022\u00ae\u00a9\u00b1[]{}\\|"

    const v2, 0xef01

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 471
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string v1, "\\"

    const/16 v2, 0x2f

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 475
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u00b9\u00bd\u2153\u00bc\u215b"

    const/16 v2, 0x31

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 476
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u00b2\u2154"

    const/16 v2, 0x32

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 477
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u00b3\u00be\u215c"

    const/16 v2, 0x33

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 478
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u2074"

    const/16 v2, 0x34

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 479
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u215d"

    const/16 v2, 0x35

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 480
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u215e"

    const/16 v2, 0x37

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 481
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u207f\u2205"

    const/16 v2, 0x30

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 482
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u00a2\u00a3\u20ac\u00a5\u20a3\u20a4\u20b1"

    const/16 v2, 0x24

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 483
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u2030"

    const/16 v2, 0x25

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 484
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u2020\u2021"

    const/16 v2, 0x2a

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 485
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u2013\u2014"

    const/16 v2, 0x2d

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 486
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u00b1"

    const/16 v2, 0x2b

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 487
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string v1, "[{<"

    const/16 v2, 0x28

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 488
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string v1, "]}>"

    const/16 v2, 0x29

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 489
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u00a1"

    const/16 v2, 0x21

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 490
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u201c\u201d\u00ab\u00bb\u02dd"

    const/16 v2, 0x22

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 491
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u00bf"

    const/16 v2, 0x3f

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 492
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u201a\u201e"

    const/16 v2, 0x2c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 496
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u2260\u2248\u221e"

    const/16 v2, 0x3d

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 497
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u2264\u00ab\u2039"

    const/16 v2, 0x3c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 498
    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u2265\u00bb\u203a"

    const/16 v2, 0x3e

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/text/method/TextKeyListener$Capitalize;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, p2, v0}, Landroid/text/method/QwertyKeyListener;-><init>(Landroid/text/method/TextKeyListener$Capitalize;ZZ)V

    return-void
.end method

.method private constructor <init>(Landroid/text/method/TextKeyListener$Capitalize;ZZ)V
    .locals 0

    .line 49
    invoke-direct {p0}, Landroid/text/method/BaseKeyListener;-><init>()V

    .line 50
    iput-object p1, p0, Landroid/text/method/QwertyKeyListener;->mAutoCap:Landroid/text/method/TextKeyListener$Capitalize;

    .line 51
    iput-boolean p2, p0, Landroid/text/method/QwertyKeyListener;->mAutoText:Z

    .line 52
    iput-boolean p3, p0, Landroid/text/method/QwertyKeyListener;->mFullKeyboard:Z

    return-void
.end method

.method public static getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/QwertyKeyListener;
    .locals 3

    .line 64
    invoke-virtual {p1}, Landroid/text/method/TextKeyListener$Capitalize;->ordinal()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p0

    .line 66
    sget-object v1, Landroid/text/method/QwertyKeyListener;->sInstance:[Landroid/text/method/QwertyKeyListener;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    .line 67
    sget-object v1, Landroid/text/method/QwertyKeyListener;->sInstance:[Landroid/text/method/QwertyKeyListener;

    new-instance v2, Landroid/text/method/QwertyKeyListener;

    invoke-direct {v2, p1, p0}, Landroid/text/method/QwertyKeyListener;-><init>(Landroid/text/method/TextKeyListener$Capitalize;Z)V

    aput-object v2, v1, v0

    .line 70
    :cond_0
    sget-object p0, Landroid/text/method/QwertyKeyListener;->sInstance:[Landroid/text/method/QwertyKeyListener;

    aget-object p0, p0, v0

    return-object p0
.end method

.method public static getInstanceForFullKeyboard()Landroid/text/method/QwertyKeyListener;
    .locals 4

    .line 79
    sget-object v0, Landroid/text/method/QwertyKeyListener;->sFullKeyboardInstance:Landroid/text/method/QwertyKeyListener;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Landroid/text/method/QwertyKeyListener;

    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/text/method/QwertyKeyListener;-><init>(Landroid/text/method/TextKeyListener$Capitalize;ZZ)V

    sput-object v0, Landroid/text/method/QwertyKeyListener;->sFullKeyboardInstance:Landroid/text/method/QwertyKeyListener;

    .line 82
    :cond_0
    sget-object v0, Landroid/text/method/QwertyKeyListener;->sFullKeyboardInstance:Landroid/text/method/QwertyKeyListener;

    return-object v0
.end method

.method private getReplacement(Ljava/lang/CharSequence;IILandroid/view/View;)Ljava/lang/String;
    .locals 6

    sub-int p0, p3, p2

    .line 370
    invoke-static {p1, p2, p3, p4}, Landroid/text/AutoText;->get(Ljava/lang/CharSequence;IILandroid/view/View;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 373
    invoke-static {p1, p2, p3}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 374
    invoke-static {v0, v3, p0, p4}, Landroid/text/AutoText;->get(Ljava/lang/CharSequence;IILandroid/view/View;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    move p4, v2

    goto :goto_0

    :cond_1
    move p4, v3

    :goto_0
    if-eqz p4, :cond_3

    move p4, p2

    move v4, v3

    :goto_1
    if-ge p4, p3, :cond_4

    .line 385
    invoke-interface {p1, p4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v5

    if-eqz v5, :cond_2

    add-int/lit8 v4, v4, 0x1

    :cond_2
    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_3
    move v4, v3

    :cond_4
    if-nez v4, :cond_5

    goto :goto_2

    :cond_5
    if-ne v4, v2, :cond_6

    .line 395
    invoke-static {v0}, Landroid/text/method/QwertyKeyListener;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_6
    if-ne v4, p0, :cond_7

    .line 397
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 399
    :cond_7
    invoke-static {v0}, Landroid/text/method/QwertyKeyListener;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 401
    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p3

    if-ne p3, p0, :cond_8

    .line 402
    invoke-static {p1, p2, v0, v3, p0}, Landroid/text/TextUtils;->regionMatches(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result p0

    if-eqz p0, :cond_8

    return-object v1

    :cond_8
    return-object v0
.end method

.method public static markAsReplaced(Landroid/text/Spannable;IILjava/lang/String;)V
    .locals 4

    .line 423
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v1, Landroid/text/method/QwertyKeyListener$Replaced;

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/method/QwertyKeyListener$Replaced;

    move v1, v2

    .line 424
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 425
    aget-object v3, v0, v1

    invoke-interface {p0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 428
    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    .line 429
    new-array v1, v0, [C

    .line 430
    invoke-virtual {p3, v2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 432
    new-instance p3, Landroid/text/method/QwertyKeyListener$Replaced;

    invoke-direct {p3, v1}, Landroid/text/method/QwertyKeyListener$Replaced;-><init>([C)V

    const/16 v0, 0x21

    invoke-interface {p0, p3, p1, p2, v0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method private showCharacterPicker(Landroid/view/View;Landroid/text/Editable;CZI)Z
    .locals 6

    .line 503
    sget-object p0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    invoke-virtual {p0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    if-ne p5, p0, :cond_1

    .line 509
    new-instance p3, Landroid/text/method/CharacterPickerDialog;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v0, p3

    move-object v2, p1

    move-object v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/text/method/CharacterPickerDialog;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/text/Editable;Ljava/lang/String;Z)V

    .line 510
    invoke-virtual {p3}, Landroid/text/method/CharacterPickerDialog;->show()V

    :cond_1
    return p0
.end method

.method private static toTitleCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 517
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getInputType()I
    .locals 1

    .line 86
    iget-object v0, p0, Landroid/text/method/QwertyKeyListener;->mAutoCap:Landroid/text/method/TextKeyListener$Capitalize;

    iget-boolean p0, p0, Landroid/text/method/QwertyKeyListener;->mAutoText:Z

    invoke-static {v0, p0}, Landroid/text/method/QwertyKeyListener;->makeTextContentType(Landroid/text/method/TextKeyListener$Capitalize;Z)I

    move-result p0

    return p0
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 18

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p4

    const/4 v10, 0x0

    if-eqz v7, :cond_0

    .line 95
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/method/TextKeyListener;->getPrefs(Landroid/content/Context;)I

    move-result v0

    move v11, v0

    goto :goto_0

    :cond_0
    move v11, v10

    .line 99
    :goto_0
    invoke-static/range {p2 .. p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 100
    invoke-static/range {p2 .. p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 102
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 103
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-ltz v2, :cond_2

    if-gez v0, :cond_1

    goto :goto_1

    :cond_1
    move v13, v0

    move v12, v2

    goto :goto_2

    .line 107
    :cond_2
    :goto_1
    invoke-static {v8, v10, v10}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    move v12, v10

    move v13, v12

    .line 111
    :goto_2
    sget-object v0, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    invoke-interface {v8, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v14

    .line 112
    sget-object v0, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    invoke-interface {v8, v0}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v15

    .line 116
    invoke-static {v8, v9}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;Landroid/view/KeyEvent;)I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result v5

    .line 118
    iget-boolean v0, v6, Landroid/text/method/QwertyKeyListener;->mFullKeyboard:Z

    const/16 v16, 0x1

    if-nez v0, :cond_4

    .line 119
    invoke-virtual/range {p4 .. p4}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v17

    if-lez v17, :cond_4

    if-ne v12, v13, :cond_4

    if-lez v12, :cond_4

    add-int/lit8 v0, v12, -0x1

    .line 121
    invoke-interface {v8, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v3

    if-eq v3, v5, :cond_3

    .line 123
    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v0

    if-ne v3, v0, :cond_4

    :cond_3
    if-eqz v7, :cond_4

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v10, v5

    move/from16 v5, v17

    .line 124
    invoke-direct/range {v0 .. v5}, Landroid/text/method/QwertyKeyListener;->showCharacterPicker(Landroid/view/View;Landroid/text/Editable;CZI)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 125
    invoke-static/range {p2 .. p2}, Landroid/text/method/QwertyKeyListener;->resetMetaState(Landroid/text/Spannable;)V

    return v16

    :cond_4
    move v10, v5

    :cond_5
    const v0, 0xef01

    if-ne v10, v0, :cond_7

    if-eqz v7, :cond_6

    const v3, 0xef01

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 134
    invoke-direct/range {v0 .. v5}, Landroid/text/method/QwertyKeyListener;->showCharacterPicker(Landroid/view/View;Landroid/text/Editable;CZI)Z

    .line 137
    :cond_6
    invoke-static/range {p2 .. p2}, Landroid/text/method/QwertyKeyListener;->resetMetaState(Landroid/text/Spannable;)V

    return v16

    :cond_7
    const v0, 0xef00

    const/4 v1, 0x4

    const/16 v2, 0x10

    if-ne v10, v0, :cond_b

    if-ne v12, v13, :cond_8

    move v0, v13

    :goto_3
    if-lez v0, :cond_9

    sub-int v3, v13, v0

    if-ge v3, v1, :cond_9

    add-int/lit8 v3, v0, -0x1

    .line 148
    invoke-interface {v8, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    if-ltz v3, :cond_9

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_8
    move v0, v12

    .line 157
    :cond_9
    :try_start_0
    invoke-static {v8, v0, v13}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v3

    .line 158
    invoke-static {v3, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    const/4 v3, -0x1

    :goto_4
    move v10, v3

    if-ltz v10, :cond_a

    .line 163
    invoke-static {v8, v0, v13}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    move v12, v0

    goto :goto_5

    :cond_a
    const/4 v10, 0x0

    :cond_b
    :goto_5
    const/16 v0, 0xa

    const/16 v3, 0x22

    const/16 v5, 0x21

    if-eqz v10, :cond_1e

    const/high16 v9, -0x80000000

    and-int/2addr v9, v10

    if-eqz v9, :cond_c

    const v9, 0x7fffffff

    and-int/2addr v10, v9

    move/from16 v9, v16

    goto :goto_6

    :cond_c
    const/4 v9, 0x0

    :goto_6
    if-ne v14, v12, :cond_e

    if-ne v15, v13, :cond_e

    sub-int v14, v13, v12

    add-int/lit8 v14, v14, -0x1

    if-nez v14, :cond_d

    .line 182
    invoke-interface {v8, v12}, Landroid/text/Editable;->charAt(I)C

    move-result v14

    .line 183
    invoke-static {v14, v10}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v14

    if-eqz v14, :cond_d

    move v10, v14

    move/from16 v9, v16

    const/4 v14, 0x0

    goto :goto_7

    :cond_d
    move v14, v9

    const/4 v9, 0x0

    :goto_7
    if-nez v9, :cond_f

    .line 193
    invoke-static {v8, v13}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 194
    sget-object v9, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    invoke-interface {v8, v9}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    move v12, v13

    goto :goto_8

    :cond_e
    move v14, v9

    :cond_f
    :goto_8
    and-int/lit8 v9, v11, 0x1

    const/16 v15, 0x11

    if-eqz v9, :cond_12

    .line 200
    invoke-static {v10}, Ljava/lang/Character;->isLowerCase(I)Z

    move-result v9

    if-eqz v9, :cond_12

    iget-object v9, v6, Landroid/text/method/QwertyKeyListener;->mAutoCap:Landroid/text/method/TextKeyListener$Capitalize;

    .line 201
    invoke-static {v9, v8, v12}, Landroid/text/method/TextKeyListener;->shouldCap(Landroid/text/method/TextKeyListener$Capitalize;Ljava/lang/CharSequence;I)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 202
    sget-object v9, Landroid/text/method/TextKeyListener;->CAPPED:Ljava/lang/Object;

    invoke-interface {v8, v9}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v9

    .line 203
    sget-object v4, Landroid/text/method/TextKeyListener;->CAPPED:Ljava/lang/Object;

    invoke-interface {v8, v4}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v4

    if-ne v9, v12, :cond_10

    shr-int/lit8 v2, v4, 0x10

    const v4, 0xffff

    and-int/2addr v2, v4

    if-ne v2, v10, :cond_10

    .line 206
    sget-object v2, Landroid/text/method/TextKeyListener;->CAPPED:Ljava/lang/Object;

    invoke-interface {v8, v2}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_9

    :cond_10
    shl-int/lit8 v2, v10, 0x10

    .line 209
    invoke-static {v10}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v10

    if-nez v12, :cond_11

    .line 212
    sget-object v4, Landroid/text/method/TextKeyListener;->CAPPED:Ljava/lang/Object;

    or-int/2addr v2, v15

    const/4 v9, 0x0

    invoke-interface {v8, v4, v9, v9, v2}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_9

    .line 215
    :cond_11
    sget-object v4, Landroid/text/method/TextKeyListener;->CAPPED:Ljava/lang/Object;

    add-int/lit8 v9, v12, -0x1

    or-int/2addr v2, v5

    invoke-interface {v8, v4, v9, v12, v2}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    :cond_12
    :goto_9
    if-eq v12, v13, :cond_13

    .line 223
    invoke-static {v8, v13}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 225
    :cond_13
    sget-object v2, Landroid/text/method/QwertyKeyListener;->OLD_SEL_START:Ljava/lang/Object;

    invoke-interface {v8, v2, v12, v12, v15}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    int-to-char v2, v10

    .line 228
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v12, v13, v2}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 230
    sget-object v2, Landroid/text/method/QwertyKeyListener;->OLD_SEL_START:Ljava/lang/Object;

    invoke-interface {v8, v2}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 231
    invoke-static/range {p2 .. p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v4

    if-ge v2, v4, :cond_14

    .line 234
    sget-object v9, Landroid/text/method/TextKeyListener;->LAST_TYPED:Ljava/lang/Object;

    invoke-interface {v8, v9, v2, v4, v5}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    if-eqz v14, :cond_14

    .line 239
    invoke-static {v8, v2, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 240
    sget-object v9, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    invoke-interface {v8, v9, v2, v4, v5}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 245
    :cond_14
    invoke-static/range {p2 .. p2}, Landroid/text/method/QwertyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    and-int/lit8 v4, v11, 0x2

    const/16 v9, 0x16

    const/16 v12, 0x20

    if-eqz v4, :cond_19

    .line 250
    iget-boolean v4, v6, Landroid/text/method/QwertyKeyListener;->mAutoText:Z

    if-eqz v4, :cond_19

    if-eq v10, v12, :cond_15

    const/16 v4, 0x9

    if-eq v10, v4, :cond_15

    if-eq v10, v0, :cond_15

    const/16 v0, 0x2c

    if-eq v10, v0, :cond_15

    const/16 v0, 0x2e

    if-eq v10, v0, :cond_15

    if-eq v10, v5, :cond_15

    const/16 v0, 0x3f

    if-eq v10, v0, :cond_15

    if-eq v10, v3, :cond_15

    .line 253
    invoke-static {v10}, Ljava/lang/Character;->getType(I)I

    move-result v0

    if-ne v0, v9, :cond_19

    :cond_15
    sget-object v0, Landroid/text/method/TextKeyListener;->INHIBIT_REPLACEMENT:Ljava/lang/Object;

    .line 254
    invoke-interface {v8, v0}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    if-eq v0, v2, :cond_19

    move v0, v2

    :goto_a
    if-lez v0, :cond_17

    add-int/lit8 v4, v0, -0x1

    .line 259
    invoke-interface {v8, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v4

    const/16 v10, 0x27

    if-eq v4, v10, :cond_16

    .line 260
    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-nez v4, :cond_16

    goto :goto_b

    :cond_16
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 265
    :cond_17
    :goto_b
    invoke-direct {v6, v8, v0, v2, v7}, Landroid/text/method/QwertyKeyListener;->getReplacement(Ljava/lang/CharSequence;IILandroid/view/View;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_19

    .line 268
    invoke-interface/range {p2 .. p2}, Landroid/text/Editable;->length()I

    move-result v7

    const-class v10, Landroid/text/method/QwertyKeyListener$Replaced;

    const/4 v13, 0x0

    invoke-interface {v8, v13, v7, v10}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/text/method/QwertyKeyListener$Replaced;

    const/4 v10, 0x0

    .line 270
    :goto_c
    array-length v13, v7

    if-ge v10, v13, :cond_18

    .line 271
    aget-object v13, v7, v10

    invoke-interface {v8, v13}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_c

    :cond_18
    sub-int v7, v2, v0

    .line 273
    new-array v7, v7, [C

    const/4 v10, 0x0

    .line 274
    invoke-static {v8, v0, v2, v7, v10}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 276
    new-instance v10, Landroid/text/method/QwertyKeyListener$Replaced;

    invoke-direct {v10, v7}, Landroid/text/method/QwertyKeyListener$Replaced;-><init>([C)V

    invoke-interface {v8, v10, v0, v2, v5}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 278
    invoke-interface {v8, v0, v2, v4}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    :cond_19
    and-int/lit8 v0, v11, 0x4

    if-eqz v0, :cond_1d

    .line 284
    iget-boolean v0, v6, Landroid/text/method/QwertyKeyListener;->mAutoText:Z

    if-eqz v0, :cond_1d

    .line 285
    invoke-static/range {p2 .. p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    add-int/lit8 v1, v0, -0x3

    if-ltz v1, :cond_1d

    add-int/lit8 v2, v0, -0x1

    .line 287
    invoke-interface {v8, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v4

    if-ne v4, v12, :cond_1d

    const/4 v4, 0x2

    sub-int/2addr v0, v4

    .line 288
    invoke-interface {v8, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v4

    if-ne v4, v12, :cond_1d

    .line 289
    invoke-interface {v8, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v4

    :goto_d
    if-lez v1, :cond_1b

    if-eq v4, v3, :cond_1a

    .line 293
    invoke-static {v4}, Ljava/lang/Character;->getType(C)I

    move-result v5

    if-ne v5, v9, :cond_1b

    :cond_1a
    add-int/lit8 v4, v1, -0x1

    .line 294
    invoke-interface {v8, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v4

    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    .line 300
    :cond_1b
    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_1d

    :cond_1c
    const-string v1, "."

    .line 301
    invoke-interface {v8, v0, v2, v1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    :cond_1d
    return v16

    :cond_1e
    const/16 v1, 0x43

    move/from16 v2, p3

    if-ne v2, v1, :cond_23

    .line 309
    invoke-virtual/range {p4 .. p4}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-nez v1, :cond_1f

    const/4 v4, 0x2

    invoke-virtual {v9, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v1

    if-eqz v1, :cond_23

    goto :goto_e

    :cond_1f
    const/4 v4, 0x2

    :goto_e
    if-ne v12, v13, :cond_23

    .line 320
    sget-object v1, Landroid/text/method/TextKeyListener;->LAST_TYPED:Ljava/lang/Object;

    invoke-interface {v8, v1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    if-ne v1, v12, :cond_20

    add-int/lit8 v1, v12, -0x1

    .line 321
    invoke-interface {v8, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    if-eq v1, v0, :cond_20

    goto :goto_f

    :cond_20
    move/from16 v4, v16

    :goto_f
    sub-int v0, v12, v4

    .line 325
    const-class v1, Landroid/text/method/QwertyKeyListener$Replaced;

    invoke-interface {v8, v0, v12, v1}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/method/QwertyKeyListener$Replaced;

    .line 328
    array-length v1, v0

    if-lez v1, :cond_23

    const/4 v1, 0x0

    .line 329
    aget-object v4, v0, v1

    invoke-interface {v8, v4}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 330
    aget-object v10, v0, v1

    invoke-interface {v8, v10}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v10

    .line 331
    new-instance v11, Ljava/lang/String;

    aget-object v13, v0, v1

    invoke-static {v13}, Landroid/text/method/QwertyKeyListener$Replaced;->access$000(Landroid/text/method/QwertyKeyListener$Replaced;)[C

    move-result-object v13

    invoke-direct {v11, v13}, Ljava/lang/String;-><init>([C)V

    .line 333
    aget-object v0, v0, v1

    invoke-interface {v8, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    if-lt v12, v10, :cond_22

    .line 340
    sget-object v0, Landroid/text/method/TextKeyListener;->INHIBIT_REPLACEMENT:Ljava/lang/Object;

    invoke-interface {v8, v0, v10, v10, v3}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 342
    invoke-interface {v8, v4, v10, v11}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 344
    sget-object v0, Landroid/text/method/TextKeyListener;->INHIBIT_REPLACEMENT:Ljava/lang/Object;

    invoke-interface {v8, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    if-ltz v1, :cond_21

    .line 346
    sget-object v2, Landroid/text/method/TextKeyListener;->INHIBIT_REPLACEMENT:Ljava/lang/Object;

    invoke-interface {v8, v2, v1, v0, v5}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_10

    .line 350
    :cond_21
    sget-object v0, Landroid/text/method/TextKeyListener;->INHIBIT_REPLACEMENT:Ljava/lang/Object;

    invoke-interface {v8, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 352
    :goto_10
    invoke-static/range {p2 .. p2}, Landroid/text/method/QwertyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    return v16

    .line 354
    :cond_22
    invoke-static/range {p2 .. p2}, Landroid/text/method/QwertyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 355
    invoke-super/range {p0 .. p4}, Landroid/text/method/BaseKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 362
    :cond_23
    invoke-super/range {p0 .. p4}, Landroid/text/method/BaseKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
