.class public Landroid/widget/Editor$UndoInputFilter;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UndoInputFilter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Editor$UndoInputFilter$MergeMode;
    }
.end annotation


# static fields
.field private static final MERGE_EDIT_MODE_FORCE_MERGE:I = 0x0

.field private static final MERGE_EDIT_MODE_NEVER_MERGE:I = 0x1

.field private static final MERGE_EDIT_MODE_NORMAL:I = 0x2


# instance fields
.field private final mEditor:Landroid/widget/Editor;

.field private mExpanding:Z

.field private mHasComposition:Z

.field private mIsUserEdit:Z

.field private mPreviousOperationWasInSameBatchEdit:Z


# direct methods
.method public constructor <init>(Landroid/widget/Editor;)V
    .locals 0

    .line 6354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6355
    iput-object p1, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    return-void
.end method

.method private canUndoEdit(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Z
    .locals 2

    .line 6506
    iget-object v0, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mAllowUndo:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 6511
    :cond_0
    iget-object p0, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    invoke-static {p0}, Landroid/widget/Editor;->access$8300(Landroid/widget/Editor;)Landroid/content/UndoManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/UndoManager;->isInUndo()Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    .line 6519
    :cond_1
    invoke-static {p1, p2, p3}, Landroid/widget/Editor;->access$8900(Ljava/lang/CharSequence;II)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {p4, p5, p6}, Landroid/widget/Editor;->access$8900(Ljava/lang/CharSequence;II)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    if-ne p2, p3, :cond_3

    if-ne p5, p6, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_0
    return v1
.end method

.method private getLastEdit()Landroid/widget/Editor$EditOperation;
    .locals 3

    .line 6463
    iget-object v0, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$8300(Landroid/widget/Editor;)Landroid/content/UndoManager;

    move-result-object v0

    .line 6464
    const-class v1, Landroid/widget/Editor$EditOperation;

    iget-object p0, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    .line 6465
    invoke-static {p0}, Landroid/widget/Editor;->access$8700(Landroid/widget/Editor;)Landroid/content/UndoOwner;

    move-result-object p0

    const/4 v2, 0x1

    .line 6464
    invoke-virtual {v0, v1, p0, v2}, Landroid/content/UndoManager;->getLastOperation(Ljava/lang/Class;Landroid/content/UndoOwner;I)Landroid/content/UndoOperation;

    move-result-object p0

    check-cast p0, Landroid/widget/Editor$EditOperation;

    return-object p0
.end method

.method private handleEdit(Ljava/lang/CharSequence;IILandroid/text/Spanned;IIZ)V
    .locals 6

    .line 6444
    invoke-direct {p0}, Landroid/widget/Editor$UndoInputFilter;->isInTextWatcher()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mPreviousOperationWasInSameBatchEdit:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p7, :cond_1

    const/4 p7, 0x1

    goto :goto_1

    :cond_1
    const/4 p7, 0x2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p7, 0x0

    .line 6452
    :goto_1
    invoke-static {p1, p2, p3}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v4

    .line 6453
    invoke-static {p4, p5, p6}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v2

    .line 6454
    new-instance p1, Landroid/widget/Editor$EditOperation;

    iget-object v1, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    iget-boolean v5, p0, Landroid/widget/Editor$UndoInputFilter;->mHasComposition:Z

    move-object v0, p1

    move v3, p5

    invoke-direct/range {v0 .. v5}, Landroid/widget/Editor$EditOperation;-><init>(Landroid/widget/Editor;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 6456
    iget-boolean p2, p0, Landroid/widget/Editor$UndoInputFilter;->mHasComposition:Z

    if-eqz p2, :cond_3

    invoke-static {p1}, Landroid/widget/Editor$EditOperation;->access$8500(Landroid/widget/Editor$EditOperation;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Landroid/widget/Editor$EditOperation;->access$8600(Landroid/widget/Editor$EditOperation;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    return-void

    .line 6459
    :cond_3
    invoke-direct {p0, p1, p7}, Landroid/widget/Editor$UndoInputFilter;->recordEdit(Landroid/widget/Editor$EditOperation;I)V

    return-void
.end method

.method private static isComposition(Ljava/lang/CharSequence;)Z
    .locals 2

    .line 6535
    instance-of v0, p0, Landroid/text/Spannable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 6539
    :cond_0
    check-cast p0, Landroid/text/Spannable;

    .line 6540
    invoke-static {p0}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v0

    .line 6541
    invoke-static {p0}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result p0

    if-ge v0, p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private isInTextWatcher()Z
    .locals 1

    .line 6546
    iget-object p0, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    invoke-static {p0}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    .line 6547
    instance-of v0, p0, Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/text/SpannableStringBuilder;

    .line 6548
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->getTextWatcherDepth()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private recordEdit(Landroid/widget/Editor$EditOperation;I)V
    .locals 4

    .line 6473
    iget-object v0, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$8300(Landroid/widget/Editor;)Landroid/content/UndoManager;

    move-result-object v0

    const-string v1, "Edit text"

    .line 6474
    invoke-virtual {v0, v1}, Landroid/content/UndoManager;->beginUpdate(Ljava/lang/CharSequence;)V

    .line 6475
    invoke-direct {p0}, Landroid/widget/Editor$UndoInputFilter;->getLastEdit()Landroid/widget/Editor$EditOperation;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 6479
    invoke-virtual {v0, p1, v2}, Landroid/content/UndoManager;->addOperation(Landroid/content/UndoOperation;I)V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 6484
    invoke-virtual {v1, p1}, Landroid/widget/Editor$EditOperation;->forceMergeWith(Landroid/widget/Editor$EditOperation;)V

    goto :goto_0

    .line 6485
    :cond_1
    iget-boolean v3, p0, Landroid/widget/Editor$UndoInputFilter;->mIsUserEdit:Z

    if-nez v3, :cond_2

    .line 6489
    iget-object p2, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    invoke-static {p2}, Landroid/widget/Editor;->access$8700(Landroid/widget/Editor;)Landroid/content/UndoOwner;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/UndoManager;->commitState(Landroid/content/UndoOwner;)I

    .line 6490
    invoke-virtual {v0, p1, v2}, Landroid/content/UndoManager;->addOperation(Landroid/content/UndoOperation;I)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    if-ne p2, v3, :cond_3

    .line 6491
    invoke-static {v1, p1}, Landroid/widget/Editor$EditOperation;->access$8800(Landroid/widget/Editor$EditOperation;Landroid/widget/Editor$EditOperation;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_0

    .line 6497
    :cond_3
    iget-object p2, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    invoke-static {p2}, Landroid/widget/Editor;->access$8700(Landroid/widget/Editor;)Landroid/content/UndoOwner;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/UndoManager;->commitState(Landroid/content/UndoOwner;)I

    .line 6498
    invoke-virtual {v0, p1, v2}, Landroid/content/UndoManager;->addOperation(Landroid/content/UndoOperation;I)V

    .line 6500
    :goto_0
    iget-boolean p1, p0, Landroid/widget/Editor$UndoInputFilter;->mIsUserEdit:Z

    iput-boolean p1, p0, Landroid/widget/Editor$UndoInputFilter;->mPreviousOperationWasInSameBatchEdit:Z

    .line 6501
    invoke-virtual {v0}, Landroid/content/UndoManager;->endUpdate()V

    return-void
.end method


# virtual methods
.method public beginBatchEdit()V
    .locals 1

    const/4 v0, 0x1

    .line 6377
    iput-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mIsUserEdit:Z

    return-void
.end method

.method public endBatchEdit()V
    .locals 1

    const/4 v0, 0x0

    .line 6382
    iput-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mIsUserEdit:Z

    .line 6383
    iput-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mPreviousOperationWasInSameBatchEdit:Z

    return-void
.end method

.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 12

    move-object v0, p0

    .line 6395
    invoke-direct/range {p0 .. p6}, Landroid/widget/Editor$UndoInputFilter;->canUndoEdit(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Z

    move-result v1

    const/4 v8, 0x0

    if-nez v1, :cond_0

    return-object v8

    .line 6399
    :cond_0
    iget-boolean v1, v0, Landroid/widget/Editor$UndoInputFilter;->mHasComposition:Z

    .line 6400
    invoke-static {p1}, Landroid/widget/Editor$UndoInputFilter;->isComposition(Ljava/lang/CharSequence;)Z

    move-result v2

    iput-boolean v2, v0, Landroid/widget/Editor$UndoInputFilter;->mHasComposition:Z

    .line 6401
    iget-boolean v2, v0, Landroid/widget/Editor$UndoInputFilter;->mExpanding:Z

    sub-int v5, p3, p2

    sub-int v9, p6, p5

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eq v5, v9, :cond_2

    if-le v5, v9, :cond_1

    move v5, v10

    goto :goto_0

    :cond_1
    move v5, v11

    .line 6404
    :goto_0
    iput-boolean v5, v0, Landroid/widget/Editor$UndoInputFilter;->mExpanding:Z

    if-eqz v1, :cond_2

    .line 6405
    iget-boolean v1, v0, Landroid/widget/Editor$UndoInputFilter;->mExpanding:Z

    if-eq v1, v2, :cond_2

    goto :goto_1

    :cond_2
    move v10, v11

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move v7, v10

    .line 6411
    invoke-direct/range {v0 .. v7}, Landroid/widget/Editor$UndoInputFilter;->handleEdit(Ljava/lang/CharSequence;IILandroid/text/Spanned;IIZ)V

    return-object v8
.end method

.method freezeLastEdit()V
    .locals 2

    .line 6416
    iget-object v0, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$8300(Landroid/widget/Editor;)Landroid/content/UndoManager;

    move-result-object v0

    const-string v1, "Edit text"

    invoke-virtual {v0, v1}, Landroid/content/UndoManager;->beginUpdate(Ljava/lang/CharSequence;)V

    .line 6417
    invoke-direct {p0}, Landroid/widget/Editor$UndoInputFilter;->getLastEdit()Landroid/widget/Editor$EditOperation;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 6419
    invoke-static {v0, v1}, Landroid/widget/Editor$EditOperation;->access$8402(Landroid/widget/Editor$EditOperation;Z)Z

    .line 6421
    :cond_0
    iget-object p0, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    invoke-static {p0}, Landroid/widget/Editor;->access$8300(Landroid/widget/Editor;)Landroid/content/UndoManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/UndoManager;->endUpdate()V

    return-void
.end method

.method public restoreInstanceState(Landroid/os/Parcel;)V
    .locals 3

    .line 6366
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mIsUserEdit:Z

    .line 6367
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mHasComposition:Z

    .line 6368
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    iput-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mExpanding:Z

    .line 6369
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    move v1, v2

    :cond_3
    iput-boolean v1, p0, Landroid/widget/Editor$UndoInputFilter;->mPreviousOperationWasInSameBatchEdit:Z

    return-void
.end method

.method public saveInstanceState(Landroid/os/Parcel;)V
    .locals 1

    .line 6359
    iget-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mIsUserEdit:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6360
    iget-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mHasComposition:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6361
    iget-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mExpanding:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6362
    iget-boolean p0, p0, Landroid/widget/Editor$UndoInputFilter;->mPreviousOperationWasInSameBatchEdit:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
