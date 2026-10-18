.class public Lcom/android/internal/widget/MessagingMessageState;
.super Ljava/lang/Object;
.source "MessagingMessageState.java"


# instance fields
.field private mGroup:Lcom/android/internal/widget/MessagingGroup;

.field private final mHostView:Landroid/view/View;

.field private mIsHidingAnimated:Z

.field private mIsHistoric:Z

.field private mMessage:Landroid/app/Notification$MessagingStyle$Message;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/internal/widget/MessagingMessageState;->mHostView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public getGroup()Lcom/android/internal/widget/MessagingGroup;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/internal/widget/MessagingMessageState;->mGroup:Lcom/android/internal/widget/MessagingGroup;

    return-object p0
.end method

.method public getHostView()Landroid/view/View;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/android/internal/widget/MessagingMessageState;->mHostView:Landroid/view/View;

    return-object p0
.end method

.method public getMessage()Landroid/app/Notification$MessagingStyle$Message;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/internal/widget/MessagingMessageState;->mMessage:Landroid/app/Notification$MessagingStyle$Message;

    return-object p0
.end method

.method public isHidingAnimated()Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lcom/android/internal/widget/MessagingMessageState;->mIsHidingAnimated:Z

    return p0
.end method

.method public recycle()V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/android/internal/widget/MessagingMessageState;->mHostView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 77
    iget-object v0, p0, Lcom/android/internal/widget/MessagingMessageState;->mHostView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 78
    iget-object v0, p0, Lcom/android/internal/widget/MessagingMessageState;->mHostView:Landroid/view/View;

    invoke-static {v0}, Lcom/android/internal/widget/MessagingPropertyAnimator;->recycle(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 79
    iput-boolean v0, p0, Lcom/android/internal/widget/MessagingMessageState;->mIsHidingAnimated:Z

    .line 80
    iput-boolean v0, p0, Lcom/android/internal/widget/MessagingMessageState;->mIsHistoric:Z

    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lcom/android/internal/widget/MessagingMessageState;->mGroup:Lcom/android/internal/widget/MessagingGroup;

    .line 82
    iput-object v0, p0, Lcom/android/internal/widget/MessagingMessageState;->mMessage:Landroid/app/Notification$MessagingStyle$Message;

    return-void
.end method

.method public setGroup(Lcom/android/internal/widget/MessagingGroup;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/android/internal/widget/MessagingMessageState;->mGroup:Lcom/android/internal/widget/MessagingGroup;

    return-void
.end method

.method public setIsHidingAnimated(Z)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/android/internal/widget/MessagingMessageState;->mHostView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 60
    iput-boolean p1, p0, Lcom/android/internal/widget/MessagingMessageState;->mIsHidingAnimated:Z

    .line 61
    iget-object p0, p0, Lcom/android/internal/widget/MessagingMessageState;->mHostView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 62
    instance-of p0, v0, Landroid/view/ViewGroup;

    if-eqz p0, :cond_0

    .line 63
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_0
    return-void
.end method

.method public setIsHistoric(Z)V
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/android/internal/widget/MessagingMessageState;->mIsHistoric:Z

    return-void
.end method

.method public setMessage(Landroid/app/Notification$MessagingStyle$Message;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/android/internal/widget/MessagingMessageState;->mMessage:Landroid/app/Notification$MessagingStyle$Message;

    return-void
.end method
