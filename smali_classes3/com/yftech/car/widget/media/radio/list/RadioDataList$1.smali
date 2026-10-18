.class Lcom/yftech/car/widget/media/radio/list/RadioDataList$1;
.super Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter$OnItemRadioListener;
.source "RadioDataList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/car/widget/media/radio/list/RadioDataList;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/car/widget/media/radio/list/RadioDataList;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/radio/list/RadioDataList;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/yftech/car/widget/media/radio/list/RadioDataList$1;->this$0:Lcom/yftech/car/widget/media/radio/list/RadioDataList;

    invoke-direct {p0}, Lcom/yftech/car/widget/media/radio/list/adapter/RadioDataAdapter$OnItemRadioListener;-><init>()V

    return-void
.end method


# virtual methods
.method public getListType()I
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/yftech/car/widget/media/radio/list/RadioDataList$1;->this$0:Lcom/yftech/car/widget/media/radio/list/RadioDataList;

    invoke-static {p0}, Lcom/yftech/car/widget/media/radio/list/RadioDataList;->access$000(Lcom/yftech/car/widget/media/radio/list/RadioDataList;)I

    move-result p0

    return p0
.end method
