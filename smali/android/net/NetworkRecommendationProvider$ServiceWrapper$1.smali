.class Landroid/net/NetworkRecommendationProvider$ServiceWrapper$1;
.super Ljava/lang/Object;
.source "NetworkRecommendationProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/NetworkRecommendationProvider$ServiceWrapper;->requestScores([Landroid/net/NetworkKey;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/net/NetworkRecommendationProvider$ServiceWrapper;

.field final synthetic val$networks:[Landroid/net/NetworkKey;


# direct methods
.method constructor <init>(Landroid/net/NetworkRecommendationProvider$ServiceWrapper;[Landroid/net/NetworkKey;)V
    .locals 0

    .line 102
    iput-object p1, p0, Landroid/net/NetworkRecommendationProvider$ServiceWrapper$1;->this$1:Landroid/net/NetworkRecommendationProvider$ServiceWrapper;

    iput-object p2, p0, Landroid/net/NetworkRecommendationProvider$ServiceWrapper$1;->val$networks:[Landroid/net/NetworkKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 105
    iget-object v0, p0, Landroid/net/NetworkRecommendationProvider$ServiceWrapper$1;->this$1:Landroid/net/NetworkRecommendationProvider$ServiceWrapper;

    iget-object v0, v0, Landroid/net/NetworkRecommendationProvider$ServiceWrapper;->this$0:Landroid/net/NetworkRecommendationProvider;

    iget-object p0, p0, Landroid/net/NetworkRecommendationProvider$ServiceWrapper$1;->val$networks:[Landroid/net/NetworkKey;

    invoke-virtual {v0, p0}, Landroid/net/NetworkRecommendationProvider;->onRequestScores([Landroid/net/NetworkKey;)V

    return-void
.end method
