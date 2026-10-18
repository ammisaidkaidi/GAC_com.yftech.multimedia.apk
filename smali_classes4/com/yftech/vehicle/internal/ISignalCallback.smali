.class public interface abstract Lcom/yftech/vehicle/internal/ISignalCallback;
.super Ljava/lang/Object;
.source "ISignalCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/vehicle/internal/ISignalCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onValueChanged(I[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
