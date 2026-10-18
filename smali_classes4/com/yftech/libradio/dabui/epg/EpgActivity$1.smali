.class Lcom/yftech/libradio/dabui/epg/EpgActivity$1;
.super Ljava/lang/Object;
.source "EpgActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libradio/dabui/epg/EpgActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/dabui/epg/EpgActivity;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/dabui/epg/EpgActivity;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgActivity$1;->this$0:Lcom/yftech/libradio/dabui/epg/EpgActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 0

    .line 40
    sget p1, Lcom/yftech/libradio/R$id;->rb_epg_all_list:I

    if-ne p2, p1, :cond_0

    .line 41
    iget-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgActivity$1;->this$0:Lcom/yftech/libradio/dabui/epg/EpgActivity;

    const/16 p2, 0x4e26

    invoke-static {p1, p2}, Lcom/yftech/libradio/dabui/epg/EpgActivity;->access$000(Lcom/yftech/libradio/dabui/epg/EpgActivity;I)V

    .line 42
    iget-object p0, p0, Lcom/yftech/libradio/dabui/epg/EpgActivity$1;->this$0:Lcom/yftech/libradio/dabui/epg/EpgActivity;

    const-string p1, "yftech.epg.tab"

    invoke-static {p0, p1, p2}, Lcom/yftech/libradio/dabui/epg/EpgActivity;->access$100(Lcom/yftech/libradio/dabui/epg/EpgActivity;Ljava/lang/String;I)V

    goto :goto_0

    .line 43
    :cond_0
    sget p1, Lcom/yftech/libradio/R$id;->rb_epg_subscribed_list:I

    if-ne p2, p1, :cond_1

    .line 44
    iget-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgActivity$1;->this$0:Lcom/yftech/libradio/dabui/epg/EpgActivity;

    const/16 p2, 0x4e27

    invoke-static {p1, p2}, Lcom/yftech/libradio/dabui/epg/EpgActivity;->access$000(Lcom/yftech/libradio/dabui/epg/EpgActivity;I)V

    .line 45
    iget-object p0, p0, Lcom/yftech/libradio/dabui/epg/EpgActivity$1;->this$0:Lcom/yftech/libradio/dabui/epg/EpgActivity;

    const-string p1, "yftech.epg.tab"

    invoke-static {p0, p1, p2}, Lcom/yftech/libradio/dabui/epg/EpgActivity;->access$100(Lcom/yftech/libradio/dabui/epg/EpgActivity;Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method
