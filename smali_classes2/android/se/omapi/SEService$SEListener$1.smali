.class Landroid/se/omapi/SEService$SEListener$1;
.super Ljava/lang/Object;
.source "SEService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/se/omapi/SEService$SEListener;->onConnected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/se/omapi/SEService$SEListener;


# direct methods
.method constructor <init>(Landroid/se/omapi/SEService$SEListener;)V
    .locals 0

    .line 88
    iput-object p1, p0, Landroid/se/omapi/SEService$SEListener$1;->this$1:Landroid/se/omapi/SEService$SEListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 91
    iget-object p0, p0, Landroid/se/omapi/SEService$SEListener$1;->this$1:Landroid/se/omapi/SEService$SEListener;

    iget-object p0, p0, Landroid/se/omapi/SEService$SEListener;->mListener:Landroid/se/omapi/SEService$OnConnectedListener;

    invoke-interface {p0}, Landroid/se/omapi/SEService$OnConnectedListener;->onConnected()V

    return-void
.end method
