.class public Landroid/text/AndroidBidi$EmojiBidiOverride;
.super Landroid/icu/text/BidiClassifier;
.source "AndroidBidi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/AndroidBidi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmojiBidiOverride"
.end annotation


# static fields
.field private static final NO_OVERRIDE:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1000

    .line 46
    invoke-static {v0}, Landroid/icu/lang/UCharacter;->getIntPropertyMaxValue(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/text/AndroidBidi$EmojiBidiOverride;->NO_OVERRIDE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, v0}, Landroid/icu/text/BidiClassifier;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public classify(I)I
    .locals 0

    .line 50
    invoke-static {p1}, Landroid/text/Emoji;->isNewEmoji(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xa

    return p0

    .line 54
    :cond_0
    sget p0, Landroid/text/AndroidBidi$EmojiBidiOverride;->NO_OVERRIDE:I

    return p0
.end method
