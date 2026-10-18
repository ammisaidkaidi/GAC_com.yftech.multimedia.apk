.class public final synthetic Landroid/view/-$$Lambda$View$7kZ4TXHKswReUMQB8098MEBcx_U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/view/-$$Lambda$View$7kZ4TXHKswReUMQB8098MEBcx_U;->f$0:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, Landroid/view/-$$Lambda$View$7kZ4TXHKswReUMQB8098MEBcx_U;->f$0:I

    check-cast p1, Landroid/view/View;

    invoke-static {p0, p1}, Landroid/view/View;->lambda$findUserSetNextKeyboardNavigationCluster$0(ILandroid/view/View;)Z

    move-result p0

    return p0
.end method
