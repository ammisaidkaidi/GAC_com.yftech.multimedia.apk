.class Landroid/media/MediaScanner$MediaData;
.super Ljava/lang/Object;
.source "MediaScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaData"
.end annotation


# instance fields
.field fgPriority:Z

.field tableUri:Landroid/net/Uri;

.field final synthetic this$0:Landroid/media/MediaScanner;

.field values:Landroid/content/ContentValues;


# direct methods
.method private constructor <init>(Landroid/media/MediaScanner;)V
    .locals 0

    .line 165
    iput-object p1, p0, Landroid/media/MediaScanner$MediaData;->this$0:Landroid/media/MediaScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/MediaScanner;Landroid/media/MediaScanner$1;)V
    .locals 0

    .line 165
    invoke-direct {p0, p1}, Landroid/media/MediaScanner$MediaData;-><init>(Landroid/media/MediaScanner;)V

    return-void
.end method
