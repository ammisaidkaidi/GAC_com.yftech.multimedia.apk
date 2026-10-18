.class Lcom/yftech/libradio/dialog/DabSettingsDialog$DabSwitch;
.super Ljava/lang/Object;
.source "DabSettingsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libradio/dialog/DabSettingsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DabSwitch"
.end annotation


# instance fields
.field private isOpen:Z

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2

    .line 455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "new DabSwitch name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , isOpen: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 457
    iput-object p1, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$DabSwitch;->name:Ljava/lang/String;

    .line 458
    iput-boolean p2, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$DabSwitch;->isOpen:Z

    return-void
.end method

.method static synthetic access$800(Lcom/yftech/libradio/dialog/DabSettingsDialog$DabSwitch;)Z
    .locals 0

    .line 451
    iget-boolean p0, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$DabSwitch;->isOpen:Z

    return p0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    .line 470
    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$DabSwitch;->name:Ljava/lang/String;

    return-object p0
.end method

.method public isOpen()Z
    .locals 0

    .line 462
    iget-boolean p0, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$DabSwitch;->isOpen:Z

    return p0
.end method

.method public setOpen(Z)V
    .locals 0

    .line 466
    iput-boolean p1, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$DabSwitch;->isOpen:Z

    return-void
.end method
