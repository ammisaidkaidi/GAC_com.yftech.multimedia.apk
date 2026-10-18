.class public interface abstract Lcom/yftech/car/widget/media/music/lyrics/LyricView$OnLyricLoadingListener;
.super Ljava/lang/Object;
.source "LyricView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/music/lyrics/LyricView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnLyricLoadingListener"
.end annotation


# static fields
.field public static final MSG_LOAD_ERROR:I = 0x3

.field public static final MSG_LOAD_SUCCESS:I = 0x1

.field public static final MSG_NOT_LYRIC:I = 0x2

.field public static final MSG_NO_PLAY:I = 0x4

.field public static final MSG_START_LOADING:I


# virtual methods
.method public abstract onLoadLyric(I)V
.end method
