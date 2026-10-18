.class Lcom/chad/library/adapter/base/MultipleItemRvAdapter$2;
.super Ljava/lang/Object;
.source "MultipleItemRvAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chad/library/adapter/base/MultipleItemRvAdapter;->bindClick(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;ILcom/chad/library/adapter/base/provider/BaseItemProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chad/library/adapter/base/MultipleItemRvAdapter;

.field final synthetic val$helper:Lcom/chad/library/adapter/base/BaseViewHolder;

.field final synthetic val$item:Ljava/lang/Object;

.field final synthetic val$position:I

.field final synthetic val$provider:Lcom/chad/library/adapter/base/provider/BaseItemProvider;


# direct methods
.method constructor <init>(Lcom/chad/library/adapter/base/MultipleItemRvAdapter;Lcom/chad/library/adapter/base/provider/BaseItemProvider;Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;I)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/chad/library/adapter/base/MultipleItemRvAdapter$2;->this$0:Lcom/chad/library/adapter/base/MultipleItemRvAdapter;

    iput-object p2, p0, Lcom/chad/library/adapter/base/MultipleItemRvAdapter$2;->val$provider:Lcom/chad/library/adapter/base/provider/BaseItemProvider;

    iput-object p3, p0, Lcom/chad/library/adapter/base/MultipleItemRvAdapter$2;->val$helper:Lcom/chad/library/adapter/base/BaseViewHolder;

    iput-object p4, p0, Lcom/chad/library/adapter/base/MultipleItemRvAdapter$2;->val$item:Ljava/lang/Object;

    iput p5, p0, Lcom/chad/library/adapter/base/MultipleItemRvAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 93
    iget-object p1, p0, Lcom/chad/library/adapter/base/MultipleItemRvAdapter$2;->val$provider:Lcom/chad/library/adapter/base/provider/BaseItemProvider;

    iget-object v0, p0, Lcom/chad/library/adapter/base/MultipleItemRvAdapter$2;->val$helper:Lcom/chad/library/adapter/base/BaseViewHolder;

    iget-object v1, p0, Lcom/chad/library/adapter/base/MultipleItemRvAdapter$2;->val$item:Ljava/lang/Object;

    iget p0, p0, Lcom/chad/library/adapter/base/MultipleItemRvAdapter$2;->val$position:I

    invoke-virtual {p1, v0, v1, p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->onClick(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;I)V

    return-void
.end method
