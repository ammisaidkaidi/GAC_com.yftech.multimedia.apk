.class Landroid/telecom/CallbackRecord;
.super Ljava/lang/Object;
.source "CallbackRecord.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mCallback:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Landroid/telecom/CallbackRecord;->mCallback:Ljava/lang/Object;

    .line 34
    iput-object p2, p0, Landroid/telecom/CallbackRecord;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public getCallback()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 38
    iget-object p0, p0, Landroid/telecom/CallbackRecord;->mCallback:Ljava/lang/Object;

    return-object p0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 0

    .line 42
    iget-object p0, p0, Landroid/telecom/CallbackRecord;->mHandler:Landroid/os/Handler;

    return-object p0
.end method
