.class public Landroid/app/servertransaction/WindowVisibilityItem;
.super Landroid/app/servertransaction/ClientTransactionItem;
.source "WindowVisibilityItem.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/servertransaction/WindowVisibilityItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mShowWindow:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 78
    new-instance v0, Landroid/app/servertransaction/WindowVisibilityItem$1;

    invoke-direct {v0}, Landroid/app/servertransaction/WindowVisibilityItem$1;-><init>()V

    sput-object v0, Landroid/app/servertransaction/WindowVisibilityItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Landroid/app/servertransaction/ClientTransactionItem;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Landroid/app/servertransaction/ClientTransactionItem;-><init>()V

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Landroid/app/servertransaction/WindowVisibilityItem;->mShowWindow:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/servertransaction/WindowVisibilityItem$1;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Landroid/app/servertransaction/WindowVisibilityItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static obtain(Z)Landroid/app/servertransaction/WindowVisibilityItem;
    .locals 1

    .line 49
    const-class v0, Landroid/app/servertransaction/WindowVisibilityItem;

    invoke-static {v0}, Landroid/app/servertransaction/ObjectPool;->obtain(Ljava/lang/Class;)Landroid/app/servertransaction/ObjectPoolItem;

    move-result-object v0

    check-cast v0, Landroid/app/servertransaction/WindowVisibilityItem;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Landroid/app/servertransaction/WindowVisibilityItem;

    invoke-direct {v0}, Landroid/app/servertransaction/WindowVisibilityItem;-><init>()V

    .line 53
    :cond_0
    iput-boolean p0, v0, Landroid/app/servertransaction/WindowVisibilityItem;->mShowWindow:Z

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 94
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 97
    :cond_1
    check-cast p1, Landroid/app/servertransaction/WindowVisibilityItem;

    .line 98
    iget-boolean p0, p0, Landroid/app/servertransaction/WindowVisibilityItem;->mShowWindow:Z

    iget-boolean p1, p1, Landroid/app/servertransaction/WindowVisibilityItem;->mShowWindow:Z

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public execute(Landroid/app/ClientTransactionHandler;Landroid/os/IBinder;Landroid/app/servertransaction/PendingTransactionActions;)V
    .locals 2

    const-string p3, "activityShowWindow"

    const-wide/16 v0, 0x40

    .line 37
    invoke-static {v0, v1, p3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 38
    iget-boolean p0, p0, Landroid/app/servertransaction/WindowVisibilityItem;->mShowWindow:Z

    invoke-virtual {p1, p2, p0}, Landroid/app/ClientTransactionHandler;->handleWindowVisibility(Landroid/os/IBinder;Z)V

    .line 39
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public hashCode()I
    .locals 0

    .line 103
    iget-boolean p0, p0, Landroid/app/servertransaction/WindowVisibilityItem;->mShowWindow:Z

    mul-int/lit8 p0, p0, 0x1f

    add-int/lit8 p0, p0, 0x11

    return p0
.end method

.method public recycle()V
    .locals 1

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Landroid/app/servertransaction/WindowVisibilityItem;->mShowWindow:Z

    .line 61
    invoke-static {p0}, Landroid/app/servertransaction/ObjectPool;->recycle(Landroid/app/servertransaction/ObjectPoolItem;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WindowVisibilityItem{showWindow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Landroid/app/servertransaction/WindowVisibilityItem;->mShowWindow:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 70
    iget-boolean p0, p0, Landroid/app/servertransaction/WindowVisibilityItem;->mShowWindow:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
