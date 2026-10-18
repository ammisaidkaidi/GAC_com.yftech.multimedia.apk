.class public Lcom/yftech/libradio/DabAnnounceManager;
.super Ljava/lang/Object;
.source "DabAnnounceManager.java"


# static fields
.field private static final instance:Lcom/yftech/libradio/DabAnnounceManager;


# instance fields
.field private annotype:I

.field private isAnnouncePlaying:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    new-instance v0, Lcom/yftech/libradio/DabAnnounceManager;

    invoke-direct {v0}, Lcom/yftech/libradio/DabAnnounceManager;-><init>()V

    sput-object v0, Lcom/yftech/libradio/DabAnnounceManager;->instance:Lcom/yftech/libradio/DabAnnounceManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/yftech/libradio/DabAnnounceManager;
    .locals 1

    .line 18
    sget-object v0, Lcom/yftech/libradio/DabAnnounceManager;->instance:Lcom/yftech/libradio/DabAnnounceManager;

    return-object v0
.end method


# virtual methods
.method public getAnnotype()I
    .locals 0

    .line 30
    iget p0, p0, Lcom/yftech/libradio/DabAnnounceManager;->annotype:I

    return p0
.end method

.method public isAnnouncePlaying()Z
    .locals 0

    .line 22
    iget-boolean p0, p0, Lcom/yftech/libradio/DabAnnounceManager;->isAnnouncePlaying:Z

    return p0
.end method

.method public setAnnotype(I)V
    .locals 0

    .line 34
    iput p1, p0, Lcom/yftech/libradio/DabAnnounceManager;->annotype:I

    return-void
.end method

.method public setAnnouncePlaying(Z)V
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/yftech/libradio/DabAnnounceManager;->isAnnouncePlaying:Z

    return-void
.end method
