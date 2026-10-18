.class Lcom/yftech/libradio/dabui/DabSortListActivity$1;
.super Ljava/lang/Object;
.source "DabSortListActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libradio/dabui/DabSortListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/dabui/DabSortListActivity;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/dabui/DabSortListActivity;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/yftech/libradio/dabui/DabSortListActivity$1;->this$0:Lcom/yftech/libradio/dabui/DabSortListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 0

    .line 56
    sget p1, Lcom/yftech/libradio/R$id;->rb_dab_all_station:I

    if-ne p2, p1, :cond_0

    .line 57
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabSortListActivity$1;->this$0:Lcom/yftech/libradio/dabui/DabSortListActivity;

    const/16 p1, 0x4e23

    invoke-static {p0, p1}, Lcom/yftech/libradio/dabui/DabSortListActivity;->access$000(Lcom/yftech/libradio/dabui/DabSortListActivity;I)V

    goto :goto_0

    .line 58
    :cond_0
    sget p1, Lcom/yftech/libradio/R$id;->rb_dab_station_list:I

    if-ne p2, p1, :cond_1

    .line 59
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabSortListActivity$1;->this$0:Lcom/yftech/libradio/dabui/DabSortListActivity;

    const/16 p1, 0x4e24

    invoke-static {p0, p1}, Lcom/yftech/libradio/dabui/DabSortListActivity;->access$000(Lcom/yftech/libradio/dabui/DabSortListActivity;I)V

    goto :goto_0

    .line 60
    :cond_1
    sget p1, Lcom/yftech/libradio/R$id;->rb_dab_sort_station_list:I

    if-ne p2, p1, :cond_2

    .line 61
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabSortListActivity$1;->this$0:Lcom/yftech/libradio/dabui/DabSortListActivity;

    const/16 p1, 0x4e25

    invoke-static {p0, p1}, Lcom/yftech/libradio/dabui/DabSortListActivity;->access$000(Lcom/yftech/libradio/dabui/DabSortListActivity;I)V

    :cond_2
    :goto_0
    return-void
.end method
