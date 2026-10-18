.class public Landroid/drm/ProcessedData;
.super Ljava/lang/Object;
.source "ProcessedData.java"


# instance fields
.field private mAccountId:Ljava/lang/String;

.field private final mData:[B

.field private mSubscriptionId:Ljava/lang/String;


# direct methods
.method constructor <init>([BLjava/lang/String;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "_NO_USER"

    .line 29
    iput-object v0, p0, Landroid/drm/ProcessedData;->mAccountId:Ljava/lang/String;

    const-string v0, ""

    .line 30
    iput-object v0, p0, Landroid/drm/ProcessedData;->mSubscriptionId:Ljava/lang/String;

    .line 39
    iput-object p1, p0, Landroid/drm/ProcessedData;->mData:[B

    .line 40
    iput-object p2, p0, Landroid/drm/ProcessedData;->mAccountId:Ljava/lang/String;

    return-void
.end method

.method constructor <init>([BLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "_NO_USER"

    .line 29
    iput-object v0, p0, Landroid/drm/ProcessedData;->mAccountId:Ljava/lang/String;

    const-string v0, ""

    .line 30
    iput-object v0, p0, Landroid/drm/ProcessedData;->mSubscriptionId:Ljava/lang/String;

    .line 51
    iput-object p1, p0, Landroid/drm/ProcessedData;->mData:[B

    .line 52
    iput-object p2, p0, Landroid/drm/ProcessedData;->mAccountId:Ljava/lang/String;

    .line 53
    iput-object p3, p0, Landroid/drm/ProcessedData;->mSubscriptionId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAccountId()Ljava/lang/String;
    .locals 0

    .line 71
    iget-object p0, p0, Landroid/drm/ProcessedData;->mAccountId:Ljava/lang/String;

    return-object p0
.end method

.method public getData()[B
    .locals 0

    .line 62
    iget-object p0, p0, Landroid/drm/ProcessedData;->mData:[B

    return-object p0
.end method

.method public getSubscriptionId()Ljava/lang/String;
    .locals 0

    .line 80
    iget-object p0, p0, Landroid/drm/ProcessedData;->mSubscriptionId:Ljava/lang/String;

    return-object p0
.end method
