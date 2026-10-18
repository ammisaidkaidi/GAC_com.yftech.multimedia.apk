.class Landroid/text/HtmlToSpannedConverter$Foreground;
.super Ljava/lang/Object;
.source "Html.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/HtmlToSpannedConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Foreground"
.end annotation


# instance fields
.field private mForegroundColor:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1295
    iput p1, p0, Landroid/text/HtmlToSpannedConverter$Foreground;->mForegroundColor:I

    return-void
.end method

.method static synthetic access$1500(Landroid/text/HtmlToSpannedConverter$Foreground;)I
    .locals 0

    .line 1291
    iget p0, p0, Landroid/text/HtmlToSpannedConverter$Foreground;->mForegroundColor:I

    return p0
.end method
