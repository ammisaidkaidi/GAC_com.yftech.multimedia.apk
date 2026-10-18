.class public Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "MediaDataModifyBtn.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/car/widget/media/text/MediaDataModifyBtn$OnMediaDataChangeListener;
    }
.end annotation


# static fields
.field public static final ALL_SELECTED:I = 0x3

.field public static final CANCEL_SELECTED:I = 0x6

.field public static final CLOSE_CHECK_BOX:I = 0x5

.field public static final COLLECT:I = 0x1

.field public static final DELETE:I = 0x0

.field public static final OPEN_CHECK_BOX:I = 0x4

.field public static final SAVE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MediaDataModifyBtn"


# instance fields
.field private final mClickModify:I

.field private mConfirmDialog:Lcom/yftech/car/widget/media/dialog/ConfirmDialog;

.field private final mDialogCancelable:Z

.field private final mDialogFlags:I

.field private final mDialogThemeResId:I

.field private final mDialogWidthHeight:Landroid/util/Size;

.field private mFileSize:J

.field private mMediaDataModifyBtnClick:Landroid/view/View$OnClickListener;

.field private final mModifyClickDialogLayoutId:I

.field private final mModifyMediaDataListId:I

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private final mOnConfirmDialogListener:Lcom/yftech/car/widget/media/dialog/ConfirmDialog$OnConfirmDialogListener;

.field private mOnMediaDataChangeListener:Lcom/yftech/car/widget/media/text/MediaDataModifyBtn$OnMediaDataChangeListener;

.field private mSaveFilePath:Ljava/lang/String;

.field private mSelectedSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const v0, 0x1010084

    .line 91
    invoke-direct {p0, p1, p2, v0}, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 95
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 189
    new-instance p3, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn$1;

    invoke-direct {p3, p0}, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn$1;-><init>(Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;)V

    iput-object p3, p0, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 207
    new-instance p3, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn$2;

    invoke-direct {p3, p0}, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn$2;-><init>(Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;)V

    iput-object p3, p0, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->mOnConfirmDialogListener:Lcom/yftech/car/widget/media/dialog/ConfirmDialog$OnConfirmDialogListener;

    const/4 p3, 0x1

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eqz p2, :cond_0

    .line 98
    sget-object v2, Lcom/yftech/car/widget/media/R$styleable;->MediaDataModifyBtn:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 100
    sget v3, Lcom/yftech/car/widget/media/R$styleable;->MediaDataModifyBtn_click_modify:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->mClickModify:I

    .line 102
    sget v3, Lcom/yftech/car/widget/media/R$styleable;->MediaDataModifyBtn_save_file_path:I

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->mSaveFilePath:Ljava/lang/String;

    .line 108
    sget v3, Lcom/yftech/car/widget/media/R$styleable;->MediaDataModifyBtn_modify_media_data_list_id:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->mModifyMediaDataListId:I

    .line 110
    sget-object v2, Lcom/yftech/car/widget/media/R$styleable;->Dialog:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 111
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->Dialog_dialog_flags:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->mDialogFlags:I

    .line 112
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->Dialog_dialog_layout_id:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->mModifyClickDialogLayoutId:I

    .line 113
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->Dialog_dialog_themeResId:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->mDialogThemeResId:I

    .line 114
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->Dialog_dialog_cancelable:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->mDialogCancelable:Z

    .line 115
    sget p2, Lcom/yftech/car/widget/media/R$styleable;->Dialog_dialog_width:I

    const/high16 v0, -0x40000000    # -2.0f

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    .line 116
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->Dialog_dialog_height:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    float-to-int p1, p1

    .line 117
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p2, p1}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->mDialogWidthHeight:Landroid/util/Size;

    goto :goto_0

    .line 121
    :cond_0
    iput v0, p0, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->mDialogFlags:I

    .line 122
    iput v0, p0, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->mDialogThemeResId:I

    .line 123
    iput-boolean p3, p0, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->mDialogCancelable:Z

    const/4 p1, 0x0

    .line 124
    iput-object p1, p0, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->mDialogWidthHeight:Landroid/util/Size;

    .line 126
    iput v1, p0, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->mClickModify:I

    .line 128
    iput v1, p0, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->mModifyClickDialogLayoutId:I

    .line 129
    iput v1, p0, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->mModifyMediaDataListId:I

    .line 132
    :goto_0
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->mSaveFilePath:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "/sdcard/Download/"

    .line 133
    iput-object p1, p0, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->mSaveFilePath:Ljava/lang/String;

    goto :goto_1

    .line 135
    :cond_1
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->mSaveFilePath:Ljava/lang/String;

    iget-object p2, p0, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->mSaveFilePath:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr p2, p3

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 p2, 0x2f

    if-eq p1, p2, :cond_2

    .line 136
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->mSaveFilePath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->mSaveFilePath:Ljava/lang/String;

    :cond_2
    :goto_1
    return-void
.end method

.method static synthetic access$000(Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->mModifyClickDialogLayoutId:I

    return p0
.end method

.method static synthetic access$100(Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;)Lcom/yftech/car/widget/media/dialog/ConfirmDialog;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->mConfirmDialog:Lcom/yftech/car/widget/media/dialog/ConfirmDialog;

    return-object p0
.end method

.method static synthetic access$102(Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;Lcom/yftech/car/widget/media/dialog/ConfirmDialog;)Lcom/yftech/car/widget/media/dialog/ConfirmDialog;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->mConfirmDialog:Lcom/yftech/car/widget/media/dialog/ConfirmDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->mDialogThemeResId:I

    return p0
.end method

.method static synthetic access$300(Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;)Lcom/yftech/car/widget/media/dialog/ConfirmDialog$OnConfirmDialogListener;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->mOnConfirmDialogListener:Lcom/yftech/car/widget/media/dialog/ConfirmDialog$OnConfirmDialogListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->mDialogFlags:I

    return p0
.end method

.method static synthetic access$500(Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->mSelectedSize:I

    return p0
.end method

.method static synthetic access$600(Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;)J
    .locals 2

    .line 40
    iget-wide v0, p0, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->mFileSize:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;)Landroid/util/Size;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->mDialogWidthHeight:Landroid/util/Size;

    return-object p0
.end method

.method static synthetic access$800(Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->mDialogCancelable:Z

    return p0
.end method

.method static synthetic access$900(Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->mMediaDataModifyBtnClick:Landroid/view/View$OnClickListener;

    return-object p0
.end method


# virtual methods
.method public getClickModify()I
    .locals 0

    .line 156
    iget p0, p0, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->mClickModify:I

    return p0
.end method

.method public getModifyClickDialogLayoutId()I
    .locals 0

    .line 151
    iget p0, p0, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->mModifyClickDialogLayoutId:I

    return p0
.end method

.method public getModifyMediaDataListId()I
    .locals 0

    .line 147
    iget p0, p0, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->mModifyMediaDataListId:I

    return p0
.end method

.method public getSaveFilePath()Ljava/lang/String;
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->mSaveFilePath:Ljava/lang/String;

    return-object p0
.end method

.method public isClickModify(I)Z
    .locals 0

    .line 160
    iget p0, p0, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->mClickModify:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public notifyDeleteList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            ">;)V"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->mOnMediaDataChangeListener:Lcom/yftech/car/widget/media/text/MediaDataModifyBtn$OnMediaDataChangeListener;

    if-eqz v0, :cond_0

    .line 177
    iget-object p0, p0, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->mOnMediaDataChangeListener:Lcom/yftech/car/widget/media/text/MediaDataModifyBtn$OnMediaDataChangeListener;

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn$OnMediaDataChangeListener;->onBatchOperation(ILjava/util/List;)V

    :cond_0
    return-void
.end method

.method public setFileSize(J)V
    .locals 0

    .line 168
    iput-wide p1, p0, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->mFileSize:J

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 183
    iget v0, p0, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->mClickModify:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 184
    iget-object v0, p0, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-super {p0, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iput-object p1, p0, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->mMediaDataModifyBtnClick:Landroid/view/View$OnClickListener;

    :cond_0
    return-void
.end method

.method public setOnMediaDataChangeListener(Lcom/yftech/car/widget/media/text/MediaDataModifyBtn$OnMediaDataChangeListener;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->mOnMediaDataChangeListener:Lcom/yftech/car/widget/media/text/MediaDataModifyBtn$OnMediaDataChangeListener;

    return-void
.end method

.method public setSelectedSize(I)V
    .locals 0

    .line 164
    iput p1, p0, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->mSelectedSize:I

    return-void
.end method
