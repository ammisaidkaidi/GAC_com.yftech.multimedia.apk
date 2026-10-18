.class Landroid/net/captiveportal/CaptivePortalProbeSpec$RegexMatchProbeSpec;
.super Landroid/net/captiveportal/CaptivePortalProbeSpec;
.source "CaptivePortalProbeSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/captiveportal/CaptivePortalProbeSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RegexMatchProbeSpec"
.end annotation


# instance fields
.field final mLocationHeaderRegex:Ljava/util/regex/Pattern;

.field final mStatusRegex:Ljava/util/regex/Pattern;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/net/URL;Ljava/util/regex/Pattern;Ljava/util/regex/Pattern;)V
    .locals 0

    .line 161
    invoke-direct {p0, p1, p2}, Landroid/net/captiveportal/CaptivePortalProbeSpec;-><init>(Ljava/lang/String;Ljava/net/URL;)V

    .line 162
    iput-object p3, p0, Landroid/net/captiveportal/CaptivePortalProbeSpec$RegexMatchProbeSpec;->mStatusRegex:Ljava/util/regex/Pattern;

    .line 163
    iput-object p4, p0, Landroid/net/captiveportal/CaptivePortalProbeSpec$RegexMatchProbeSpec;->mLocationHeaderRegex:Ljava/util/regex/Pattern;

    return-void
.end method


# virtual methods
.method public getResult(ILjava/lang/String;)Landroid/net/captiveportal/CaptivePortalProbeResult;
    .locals 2

    .line 168
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Landroid/net/captiveportal/CaptivePortalProbeSpec$RegexMatchProbeSpec;->mStatusRegex:Ljava/util/regex/Pattern;

    invoke-static {p1, v0}, Landroid/net/captiveportal/CaptivePortalProbeSpec;->access$000(Ljava/lang/String;Ljava/util/regex/Pattern;)Z

    move-result p1

    .line 169
    iget-object v0, p0, Landroid/net/captiveportal/CaptivePortalProbeSpec$RegexMatchProbeSpec;->mLocationHeaderRegex:Ljava/util/regex/Pattern;

    invoke-static {p2, v0}, Landroid/net/captiveportal/CaptivePortalProbeSpec;->access$000(Ljava/lang/String;Ljava/util/regex/Pattern;)Z

    move-result v0

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    const/16 p1, 0xcc

    goto :goto_0

    :cond_0
    const/16 p1, 0x12e

    .line 171
    :goto_0
    new-instance v0, Landroid/net/captiveportal/CaptivePortalProbeResult;

    .line 172
    invoke-virtual {p0}, Landroid/net/captiveportal/CaptivePortalProbeSpec$RegexMatchProbeSpec;->getUrl()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1, p0}, Landroid/net/captiveportal/CaptivePortalProbeResult;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/net/captiveportal/CaptivePortalProbeSpec;)V

    return-object v0
.end method
