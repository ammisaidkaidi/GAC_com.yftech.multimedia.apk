.class public final Landroid/media/MediaDrm$KeyRequest;
.super Ljava/lang/Object;
.source "MediaDrm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaDrm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KeyRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaDrm$KeyRequest$RequestType;
    }
.end annotation


# static fields
.field public static final REQUEST_TYPE_INITIAL:I = 0x0

.field public static final REQUEST_TYPE_NONE:I = 0x3

.field public static final REQUEST_TYPE_RELEASE:I = 0x2

.field public static final REQUEST_TYPE_RENEWAL:I = 0x1

.field public static final REQUEST_TYPE_UPDATE:I = 0x4


# instance fields
.field private mData:[B

.field private mDefaultUrl:Ljava/lang/String;

.field private mRequestType:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 757
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .line 764
    iget-object v0, p0, Landroid/media/MediaDrm$KeyRequest;->mData:[B

    if-eqz v0, :cond_0

    .line 770
    iget-object p0, p0, Landroid/media/MediaDrm$KeyRequest;->mData:[B

    return-object p0

    .line 768
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "KeyRequest is not initialized"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getDefaultUrl()Ljava/lang/String;
    .locals 1

    .line 781
    iget-object v0, p0, Landroid/media/MediaDrm$KeyRequest;->mDefaultUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 787
    iget-object p0, p0, Landroid/media/MediaDrm$KeyRequest;->mDefaultUrl:Ljava/lang/String;

    return-object p0

    .line 785
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "KeyRequest is not initialized"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getRequestType()I
    .locals 0

    .line 797
    iget p0, p0, Landroid/media/MediaDrm$KeyRequest;->mRequestType:I

    return p0
.end method
