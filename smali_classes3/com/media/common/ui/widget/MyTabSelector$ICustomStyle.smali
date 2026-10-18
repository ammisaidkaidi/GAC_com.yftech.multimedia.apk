.class public interface abstract Lcom/media/common/ui/widget/MyTabSelector$ICustomStyle;
.super Ljava/lang/Object;
.source "MyTabSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/media/common/ui/widget/MyTabSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ICustomStyle"
.end annotation


# virtual methods
.method public abstract getIndexBackgroundResource()I
.end method

.method public abstract getIndexMode()I
.end method

.method public abstract getStartIndex()I
.end method

.method public abstract setIndexLineLayoutParamsExtra(Landroid/widget/RelativeLayout$LayoutParams;)V
.end method

.method public abstract setTabLayoutParamsExtra(Landroid/widget/RelativeLayout$LayoutParams;I)V
.end method

.method public abstract setTabSelectedStyle(Landroid/widget/TextView;Landroid/widget/TextView;)I
    .param p1    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setTabStyle(Landroid/widget/TextView;I)V
.end method
