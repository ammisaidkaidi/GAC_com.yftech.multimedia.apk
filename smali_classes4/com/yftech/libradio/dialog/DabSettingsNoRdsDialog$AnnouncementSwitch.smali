.class Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementSwitch;
.super Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$DabSwitch;
.source "DabSettingsNoRdsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnnouncementSwitch"
.end annotation


# instance fields
.field private isShow:Z

.field final synthetic this$0:Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;


# direct methods
.method public constructor <init>(Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;Ljava/lang/String;ZZ)V
    .locals 0

    .line 450
    iput-object p1, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementSwitch;->this$0:Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;

    .line 451
    invoke-direct {p0, p2, p3}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$DabSwitch;-><init>(Ljava/lang/String;Z)V

    .line 452
    iput-boolean p4, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementSwitch;->isShow:Z

    return-void
.end method


# virtual methods
.method public isShow()Z
    .locals 0

    .line 456
    iget-boolean p0, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementSwitch;->isShow:Z

    return p0
.end method

.method public setShow(Z)V
    .locals 0

    .line 460
    iput-boolean p1, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementSwitch;->isShow:Z

    return-void
.end method
