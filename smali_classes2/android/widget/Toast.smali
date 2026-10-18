.class public Landroid/widget/Toast;
.super Ljava/lang/Object;
.source "Toast.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Toast$TN;,
        Landroid/widget/Toast$Duration;
    }
.end annotation


# static fields
.field public static final LENGTH_LONG:I = 0x1

.field public static final LENGTH_SHORT:I = 0x0

.field static final TAG:Ljava/lang/String; = "Toast"

.field static final localLOGV:Z = false

.field private static sService:Landroid/app/INotificationManager;


# instance fields
.field final mContext:Landroid/content/Context;

.field mDuration:I

.field mNextView:Landroid/view/View;

.field final mTN:Landroid/widget/Toast$TN;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 108
    invoke-direct {p0, p1, v0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 2

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p1, p0, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    .line 117
    new-instance v0, Landroid/widget/Toast$TN;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/widget/Toast$TN;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    .line 118
    iget-object p2, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501e9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p2, Landroid/widget/Toast$TN;->mY:I

    .line 120
    iget-object p0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x10e0099

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Landroid/widget/Toast$TN;->mGravity:I

    return-void
.end method

.method static synthetic access$100()Landroid/app/INotificationManager;
    .locals 1

    .line 69
    invoke-static {}, Landroid/widget/Toast;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    return-object v0
.end method

.method private static getService()Landroid/app/INotificationManager;
    .locals 1

    .line 341
    sget-object v0, Landroid/widget/Toast;->sService:Landroid/app/INotificationManager;

    if-eqz v0, :cond_0

    .line 342
    sget-object v0, Landroid/widget/Toast;->sService:Landroid/app/INotificationManager;

    return-object v0

    :cond_0
    const-string v0, "notification"

    .line 344
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    sput-object v0, Landroid/widget/Toast;->sService:Landroid/app/INotificationManager;

    .line 345
    sget-object v0, Landroid/widget/Toast;->sService:Landroid/app/INotificationManager;

    return-object v0
.end method

.method public static makeText(Landroid/content/Context;II)Landroid/widget/Toast;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 307
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    return-object p0
.end method

.method public static makeText(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    .locals 2

    .line 280
    new-instance v0, Landroid/widget/Toast;

    invoke-direct {v0, p0, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    const-string p1, "layout_inflater"

    .line 283
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/LayoutInflater;

    const p1, 0x1090115

    const/4 v1, 0x0

    .line 284
    invoke-virtual {p0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    const p1, 0x102000b

    .line 285
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 286
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    iput-object p0, v0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    .line 289
    iput p3, v0, Landroid/widget/Toast;->mDuration:I

    return-object v0
.end method

.method public static makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    .locals 1

    const/4 v0, 0x0

    .line 270
    invoke-static {p0, v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .line 150
    iget-object p0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    invoke-virtual {p0}, Landroid/widget/Toast$TN;->cancel()V

    return-void
.end method

.method public getDuration()I
    .locals 0

    .line 185
    iget p0, p0, Landroid/widget/Toast;->mDuration:I

    return p0
.end method

.method public getGravity()I
    .locals 0

    .line 234
    iget-object p0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iget p0, p0, Landroid/widget/Toast$TN;->mGravity:I

    return p0
.end method

.method public getHorizontalMargin()F
    .locals 0

    .line 207
    iget-object p0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iget p0, p0, Landroid/widget/Toast$TN;->mHorizontalMargin:F

    return p0
.end method

.method public getVerticalMargin()F
    .locals 0

    .line 214
    iget-object p0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iget p0, p0, Landroid/widget/Toast$TN;->mVerticalMargin:F

    return p0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .line 166
    iget-object p0, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    return-object p0
.end method

.method public getWindowParams()Landroid/view/WindowManager$LayoutParams;
    .locals 0

    .line 256
    iget-object p0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    invoke-static {p0}, Landroid/widget/Toast$TN;->access$000(Landroid/widget/Toast$TN;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public getXOffset()I
    .locals 0

    .line 241
    iget-object p0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iget p0, p0, Landroid/widget/Toast$TN;->mX:I

    return p0
.end method

.method public getYOffset()I
    .locals 0

    .line 248
    iget-object p0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iget p0, p0, Landroid/widget/Toast$TN;->mY:I

    return p0
.end method

.method public setDuration(I)V
    .locals 0

    .line 175
    iput p1, p0, Landroid/widget/Toast;->mDuration:I

    .line 176
    iget-object p0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iput p1, p0, Landroid/widget/Toast$TN;->mDuration:I

    return-void
.end method

.method public setGravity(III)V
    .locals 1

    .line 223
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iput p1, v0, Landroid/widget/Toast$TN;->mGravity:I

    .line 224
    iget-object p1, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iput p2, p1, Landroid/widget/Toast$TN;->mX:I

    .line 225
    iget-object p0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iput p3, p0, Landroid/widget/Toast$TN;->mY:I

    return-void
.end method

.method public setMargin(FF)V
    .locals 1

    .line 199
    iget-object v0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iput p1, v0, Landroid/widget/Toast$TN;->mHorizontalMargin:F

    .line 200
    iget-object p0, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    iput p2, p0, Landroid/widget/Toast$TN;->mVerticalMargin:F

    return-void
.end method

.method public setText(I)V
    .locals 1

    .line 315
    iget-object v0, p0, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 323
    iget-object v0, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 326
    iget-object p0, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    const v0, 0x102000b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 330
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 328
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "This Toast was not created with Toast.makeText()"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 324
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "This Toast was not created with Toast.makeText()"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setView(Landroid/view/View;)V
    .locals 0

    .line 158
    iput-object p1, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    return-void
.end method

.method public show()V
    .locals 4

    .line 128
    iget-object v0, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 132
    invoke-static {}, Landroid/widget/Toast;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    .line 133
    iget-object v1, p0, Landroid/widget/Toast;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 134
    iget-object v2, p0, Landroid/widget/Toast;->mTN:Landroid/widget/Toast$TN;

    .line 135
    iget-object v3, p0, Landroid/widget/Toast;->mNextView:Landroid/view/View;

    iput-object v3, v2, Landroid/widget/Toast$TN;->mNextView:Landroid/view/View;

    .line 138
    :try_start_0
    iget p0, p0, Landroid/widget/Toast;->mDuration:I

    invoke-interface {v0, v1, v2, p0}, Landroid/app/INotificationManager;->enqueueToast(Ljava/lang/String;Landroid/app/ITransientNotification;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    .line 129
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string/jumbo v0, "setView must have been called"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
