.class public Lcom/yftech/libradio/dabui/epg/EpgSubsCribedProgramFragment;
.super Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;
.source "EpgSubsCribedProgramFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/libradio/dabui/epg/EpgSubsCribedProgramFragment$UpdateSubsCribedProgrammeData;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method getProgrammeList(Ljava/util/Calendar;)V
    .locals 1

    .line 32
    new-instance v0, Lcom/yftech/libradio/dabui/epg/EpgSubsCribedProgramFragment$UpdateSubsCribedProgrammeData;

    invoke-direct {v0, p0, p1}, Lcom/yftech/libradio/dabui/epg/EpgSubsCribedProgramFragment$UpdateSubsCribedProgrammeData;-><init>(Lcom/yftech/libradio/dabui/epg/EpgSubsCribedProgramFragment;Ljava/util/Calendar;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    invoke-virtual {v0, p0}, Lcom/yftech/libradio/dabui/epg/EpgSubsCribedProgramFragment$UpdateSubsCribedProgrammeData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method getTipsForEmptyContent()Ljava/lang/String;
    .locals 1

    .line 37
    sget v0, Lcom/yftech/libradio/R$string;->dab_epg_none_of_subscribed_tips:I

    invoke-virtual {p0, v0}, Lcom/yftech/libradio/dabui/epg/EpgSubsCribedProgramFragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onStart()V
    .locals 0

    .line 22
    invoke-super {p0}, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 27
    invoke-super {p0}, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->onStop()V

    return-void
.end method
