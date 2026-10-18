.class public interface abstract Lcom/media/common/ui/widget/AudioManagerDialog$OnAudioSeekbarChangingListener;
.super Ljava/lang/Object;
.source "AudioManagerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/media/common/ui/widget/AudioManagerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnAudioSeekbarChangingListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/media/common/ui/widget/AudioManagerDialog$OnAudioSeekbarChangingListener$AudioStateChanged;
    }
.end annotation


# static fields
.field public static final VIEW_PRESS:I = 0x0

.field public static final VIEW_PULL:I = 0x1


# virtual methods
.method public abstract onChanging(I)V
.end method
