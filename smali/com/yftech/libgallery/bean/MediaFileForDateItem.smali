.class public Lcom/yftech/libgallery/bean/MediaFileForDateItem;
.super Lcom/media/common/entity/QuickMultipleEntity;
.source "MediaFileForDateItem.java"


# instance fields
.field private date:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/media/common/entity/QuickMultipleEntity;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/media/common/entity/QuickMultipleEntity;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/yftech/libgallery/bean/MediaFileForDateItem;->date:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDate()Ljava/lang/String;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/yftech/libgallery/bean/MediaFileForDateItem;->date:Ljava/lang/String;

    return-object p0
.end method

.method public getItemType()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/yftech/libgallery/bean/MediaFileForDateItem;->date:Ljava/lang/String;

    return-void
.end method
