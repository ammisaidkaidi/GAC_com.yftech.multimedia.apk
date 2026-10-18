.class Landroid/media/MediaScanner$WplHandler;
.super Ljava/lang/Object;
.source "MediaScanner.java"

# interfaces
.implements Landroid/sax/ElementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WplHandler"
.end annotation


# instance fields
.field final handler:Lorg/xml/sax/ContentHandler;

.field playListDirectory:Ljava/lang/String;

.field final synthetic this$0:Landroid/media/MediaScanner;


# direct methods
.method public constructor <init>(Landroid/media/MediaScanner;Ljava/lang/String;Landroid/net/Uri;Landroid/database/Cursor;)V
    .locals 0

    .line 2060
    iput-object p1, p0, Landroid/media/MediaScanner$WplHandler;->this$0:Landroid/media/MediaScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2061
    iput-object p2, p0, Landroid/media/MediaScanner$WplHandler;->playListDirectory:Ljava/lang/String;

    .line 2063
    new-instance p1, Landroid/sax/RootElement;

    const-string/jumbo p2, "smil"

    invoke-direct {p1, p2}, Landroid/sax/RootElement;-><init>(Ljava/lang/String;)V

    const-string p2, "body"

    .line 2064
    invoke-virtual {p1, p2}, Landroid/sax/RootElement;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object p2

    const-string/jumbo p3, "seq"

    .line 2065
    invoke-virtual {p2, p3}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object p2

    const-string/jumbo p3, "media"

    .line 2066
    invoke-virtual {p2, p3}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object p2

    .line 2067
    invoke-virtual {p2, p0}, Landroid/sax/Element;->setElementListener(Landroid/sax/ElementListener;)V

    .line 2069
    invoke-virtual {p1}, Landroid/sax/RootElement;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object p1

    iput-object p1, p0, Landroid/media/MediaScanner$WplHandler;->handler:Lorg/xml/sax/ContentHandler;

    return-void
.end method


# virtual methods
.method public end()V
    .locals 0

    return-void
.end method

.method getContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 0

    .line 2085
    iget-object p0, p0, Landroid/media/MediaScanner$WplHandler;->handler:Lorg/xml/sax/ContentHandler;

    return-object p0
.end method

.method public start(Lorg/xml/sax/Attributes;)V
    .locals 2

    const-string v0, ""

    const-string/jumbo v1, "src"

    .line 2074
    invoke-interface {p1, v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2076
    iget-object v0, p0, Landroid/media/MediaScanner$WplHandler;->this$0:Landroid/media/MediaScanner;

    iget-object p0, p0, Landroid/media/MediaScanner$WplHandler;->playListDirectory:Ljava/lang/String;

    invoke-static {v0, p1, p0}, Landroid/media/MediaScanner;->access$4500(Landroid/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
