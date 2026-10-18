.class public Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;
.super Ljava/lang/Object;
.source "SpellCheckerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SentenceWordItem"
.end annotation


# instance fields
.field public final mLength:I

.field public final mStart:I

.field public final mTextInfo:Landroid/view/textservice/TextInfo;


# direct methods
.method public constructor <init>(Landroid/view/textservice/TextInfo;II)V
    .locals 0

    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 368
    iput-object p1, p0, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;->mTextInfo:Landroid/view/textservice/TextInfo;

    .line 369
    iput p2, p0, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;->mStart:I

    sub-int/2addr p3, p2

    .line 370
    iput p3, p0, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;->mLength:I

    return-void
.end method
