.class public final Landroid/media/MediaDrm$CryptoSession;
.super Ljava/lang/Object;
.source "MediaDrm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaDrm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CryptoSession"
.end annotation


# instance fields
.field private mSessionId:[B

.field final synthetic this$0:Landroid/media/MediaDrm;


# direct methods
.method constructor <init>(Landroid/media/MediaDrm;[BLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1372
    iput-object p1, p0, Landroid/media/MediaDrm$CryptoSession;->this$0:Landroid/media/MediaDrm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1373
    iput-object p2, p0, Landroid/media/MediaDrm$CryptoSession;->mSessionId:[B

    .line 1374
    invoke-static {p1, p2, p3}, Landroid/media/MediaDrm;->access$500(Landroid/media/MediaDrm;[BLjava/lang/String;)V

    .line 1375
    invoke-static {p1, p2, p4}, Landroid/media/MediaDrm;->access$600(Landroid/media/MediaDrm;[BLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public decrypt([B[B[B)[B
    .locals 1

    .line 1401
    iget-object v0, p0, Landroid/media/MediaDrm$CryptoSession;->this$0:Landroid/media/MediaDrm;

    iget-object p0, p0, Landroid/media/MediaDrm$CryptoSession;->mSessionId:[B

    invoke-static {v0, p0, p1, p2, p3}, Landroid/media/MediaDrm;->access$800(Landroid/media/MediaDrm;[B[B[B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public encrypt([B[B[B)[B
    .locals 1

    .line 1388
    iget-object v0, p0, Landroid/media/MediaDrm$CryptoSession;->this$0:Landroid/media/MediaDrm;

    iget-object p0, p0, Landroid/media/MediaDrm$CryptoSession;->mSessionId:[B

    invoke-static {v0, p0, p1, p2, p3}, Landroid/media/MediaDrm;->access$700(Landroid/media/MediaDrm;[B[B[B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public sign([B[B)[B
    .locals 1

    .line 1412
    iget-object v0, p0, Landroid/media/MediaDrm$CryptoSession;->this$0:Landroid/media/MediaDrm;

    iget-object p0, p0, Landroid/media/MediaDrm$CryptoSession;->mSessionId:[B

    invoke-static {v0, p0, p1, p2}, Landroid/media/MediaDrm;->access$900(Landroid/media/MediaDrm;[B[B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public verify([B[B[B)Z
    .locals 1

    .line 1426
    iget-object v0, p0, Landroid/media/MediaDrm$CryptoSession;->this$0:Landroid/media/MediaDrm;

    iget-object p0, p0, Landroid/media/MediaDrm$CryptoSession;->mSessionId:[B

    invoke-static {v0, p0, p1, p2, p3}, Landroid/media/MediaDrm;->access$1000(Landroid/media/MediaDrm;[B[B[B[B)Z

    move-result p0

    return p0
.end method
