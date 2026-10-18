.class Landroid/media/Cea708CaptionTrack;
.super Landroid/media/SubtitleTrack;
.source "Cea708CaptionRenderer.java"


# instance fields
.field private final mCCParser:Landroid/media/Cea708CCParser;

.field private final mRenderingWidget:Landroid/media/Cea708CCWidget;


# direct methods
.method constructor <init>(Landroid/media/Cea708CCWidget;Landroid/media/MediaFormat;)V
    .locals 0

    .line 95
    invoke-direct {p0, p2}, Landroid/media/SubtitleTrack;-><init>(Landroid/media/MediaFormat;)V

    .line 97
    iput-object p1, p0, Landroid/media/Cea708CaptionTrack;->mRenderingWidget:Landroid/media/Cea708CCWidget;

    .line 98
    new-instance p1, Landroid/media/Cea708CCParser;

    iget-object p2, p0, Landroid/media/Cea708CaptionTrack;->mRenderingWidget:Landroid/media/Cea708CCWidget;

    invoke-direct {p1, p2}, Landroid/media/Cea708CCParser;-><init>(Landroid/media/Cea708CCParser$DisplayListener;)V

    iput-object p1, p0, Landroid/media/Cea708CaptionTrack;->mCCParser:Landroid/media/Cea708CCParser;

    return-void
.end method


# virtual methods
.method public getRenderingWidget()Landroid/media/SubtitleTrack$RenderingWidget;
    .locals 0

    .line 108
    iget-object p0, p0, Landroid/media/Cea708CaptionTrack;->mRenderingWidget:Landroid/media/Cea708CCWidget;

    return-object p0
.end method

.method public onData([BZJ)V
    .locals 0

    .line 103
    iget-object p0, p0, Landroid/media/Cea708CaptionTrack;->mCCParser:Landroid/media/Cea708CCParser;

    invoke-virtual {p0, p1}, Landroid/media/Cea708CCParser;->parse([B)V

    return-void
.end method

.method public updateView(Ljava/util/Vector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Landroid/media/SubtitleTrack$Cue;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
