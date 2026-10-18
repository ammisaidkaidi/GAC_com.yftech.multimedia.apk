.class Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementSwitch;
.super Lcom/yftech/libradio/dialog/DabSettingsDialog$DabSwitch;
.source "DabSettingsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libradio/dialog/DabSettingsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnnouncementSwitch"
.end annotation


# instance fields
.field private isShow:Z

.field final synthetic this$0:Lcom/yftech/libradio/dialog/DabSettingsDialog;


# direct methods
.method public constructor <init>(Lcom/yftech/libradio/dialog/DabSettingsDialog;Ljava/lang/String;ZZ)V
    .locals 0

    .line 477
    iput-object p1, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementSwitch;->this$0:Lcom/yftech/libradio/dialog/DabSettingsDialog;

    .line 478
    invoke-direct {p0, p2, p3}, Lcom/yftech/libradio/dialog/DabSettingsDialog$DabSwitch;-><init>(Ljava/lang/String;Z)V

    .line 479
    iput-boolean p4, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementSwitch;->isShow:Z

    return-void
.end method


# virtual methods
.method public isShow()Z
    .locals 0

    .line 483
    iget-boolean p0, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementSwitch;->isShow:Z

    return p0
.end method

.method public setShow(Z)V
    .locals 0

    .line 487
    iput-boolean p1, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementSwitch;->isShow:Z

    return-void
.end method
