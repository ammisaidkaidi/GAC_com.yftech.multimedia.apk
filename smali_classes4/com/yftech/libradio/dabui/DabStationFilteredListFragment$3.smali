.class Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$3;
.super Ljava/lang/Object;
.source "DabStationFilteredListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$3;->this$0:Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$3;->this$0:Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;

    invoke-virtual {p0}, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->onLabelButtonCliked()V

    return-void
.end method
