.class public abstract Landroid/content/UndoOperation;
.super Ljava/lang/Object;
.source "UndoOperation.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DATA:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# instance fields
.field mOwner:Landroid/content/UndoOwner;


# direct methods
.method public constructor <init>(Landroid/content/UndoOwner;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Landroid/content/UndoOperation;->mOwner:Landroid/content/UndoOwner;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public allowMerge()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public abstract commit()V
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getOwner()Landroid/content/UndoOwner;
    .locals 0

    .line 51
    iget-object p0, p0, Landroid/content/UndoOperation;->mOwner:Landroid/content/UndoOwner;

    return-object p0
.end method

.method public getOwnerData()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TDATA;"
        }
    .end annotation

    .line 58
    iget-object p0, p0, Landroid/content/UndoOperation;->mOwner:Landroid/content/UndoOwner;

    invoke-virtual {p0}, Landroid/content/UndoOwner;->getData()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public hasData()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public matchOwner(Landroid/content/UndoOwner;)Z
    .locals 0

    .line 68
    invoke-virtual {p0}, Landroid/content/UndoOperation;->getOwner()Landroid/content/UndoOwner;

    move-result-object p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public abstract redo()V
.end method

.method public abstract undo()V
.end method
