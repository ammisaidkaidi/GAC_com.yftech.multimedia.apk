.class public Lcom/yftech/car/widget/media/view/SideTextRetrievalView;
.super Landroid/view/View;
.source "SideTextRetrievalView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/car/widget/media/view/SideTextRetrievalView$OnSideTextRetrievalListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SideTextRetrievalView"


# instance fields
.field private isTouchDown:Z

.field private mBackgroundHeight:F

.field private final mBackgroundStartOffset:I

.field private final mBackgroundTopOffset:I

.field private mBackgroundWidth:F

.field private final mHeightText:F

.field private final mHighlightDrawable:Landroid/graphics/drawable/Drawable;

.field private final mHighlightDrawableStartOffset:I

.field private mHighlightHeight:F

.field private final mHighlightMeasureText:F

.field private final mHighlightTextStartOffset:I

.field private mHighlightWidth:F

.field private mInitStatus:Z

.field private final mMeasureText:F

.field private final mMediaDataListId:I

.field private mMovePositionY:F

.field private mOnSideTextRetrievalListener:Lcom/yftech/car/widget/media/view/SideTextRetrievalView$OnSideTextRetrievalListener;

.field private mPosition:I

.field private mSortContent:Ljava/lang/String;

.field private final mSortDrawable:Landroid/graphics/drawable/Drawable;

.field private final mSortPaint:Landroid/graphics/Paint;

.field private final mSortPaintHighlight:Landroid/graphics/Paint;

.field private final mSortPaintSelected:Landroid/graphics/Paint;

.field private mSortShow:Ljava/lang/String;

.field private mSortTextStart:F

.field private final mSortTextStartOffset:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 82
    invoke-direct {p0, p1, v1, v0, v0}, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 90
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7

    .line 94
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mSortPaint:Landroid/graphics/Paint;

    .line 42
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mSortPaintSelected:Landroid/graphics/Paint;

    .line 43
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mSortPaintHighlight:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 72
    iput v0, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mPosition:I

    const/4 v1, 0x1

    .line 76
    iput-boolean v1, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mInitStatus:Z

    .line 78
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->isTouchDown:Z

    .line 96
    sget-object v2, Lcom/yftech/car/widget/media/R$styleable;->SideTextRetrievalView:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 98
    sget p3, Lcom/yftech/car/widget/media/R$styleable;->SideTextRetrievalView_side_sort_content:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mSortContent:Ljava/lang/String;

    .line 99
    iget-object p3, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mSortContent:Ljava/lang/String;

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mSortContent:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    const/4 p4, 0x3

    if-ge p3, p4, :cond_1

    :cond_0
    const-string p3, "*ABCDEFGHIJKLMNOPQRSTUVWXYZ#"

    .line 100
    iput-object p3, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mSortContent:Ljava/lang/String;

    const-string p3, "SideTextRetrievalView"

    .line 101
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SideTextRetrievalView: sort content error,side_sort_content == "

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mSortContent:Ljava/lang/String;

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " --> "

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mSortContent:Ljava/lang/String;

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_1
    sget p3, Lcom/yftech/car/widget/media/R$styleable;->SideTextRetrievalView_side_sort_show:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mSortShow:Ljava/lang/String;

    .line 105
    iget-object p3, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mSortShow:Ljava/lang/String;

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mSortShow:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    iget-object p4, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mSortContent:Ljava/lang/String;

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    if-eq p3, p4, :cond_3

    :cond_2
    const-string p3, "SideTextRetrievalView"

    .line 106
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SideTextRetrievalView: side_sort_show content length error , side_sort_show : "

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mSortShow:Ljava/lang/String;

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " --> "

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mSortContent:Ljava/lang/String;

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object p3, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mSortContent:Ljava/lang/String;

    iput-object p3, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mSortShow:Ljava/lang/String;

    .line 110
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x106000b

    const/4 p4, 0x0

    .line 111
    invoke-virtual {p1, p3, p4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p3

    const v2, 0x1060019

    .line 113
    invoke-virtual {p1, v2, p4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    const/16 v3, 0x14

    const/16 v4, 0x18

    const v5, 0x1060017

    .line 119
    invoke-virtual {p1, v5, p4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    .line 122
    sget p4, Lcom/yftech/car/widget/media/R$styleable;->SideTextRetrievalView_side_sort_text_size:I

    invoke-virtual {p2, p4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p4

    .line 125
    sget v3, Lcom/yftech/car/widget/media/R$styleable;->SideTextRetrievalView_side_sort_text_color:I

    invoke-virtual {p2, v3, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    .line 127
    sget v3, Lcom/yftech/car/widget/media/R$styleable;->SideTextRetrievalView_side_sort_text_selected_color:I

    invoke-virtual {p2, v3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 129
    sget v3, Lcom/yftech/car/widget/media/R$styleable;->SideTextRetrievalView_side_sort_highlight_text_size:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 131
    sget v4, Lcom/yftech/car/widget/media/R$styleable;->SideTextRetrievalView_side_sort_highlight_text_color:I

    invoke-virtual {p2, v4, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    .line 133
    sget v4, Lcom/yftech/car/widget/media/R$styleable;->SideTextRetrievalView_side_sort_highlight_drawable:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mHighlightDrawable:Landroid/graphics/drawable/Drawable;

    .line 135
    sget v4, Lcom/yftech/car/widget/media/R$styleable;->SideTextRetrievalView_side_sort_text_background:I

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mSortDrawable:Landroid/graphics/drawable/Drawable;

    .line 137
    sget v4, Lcom/yftech/car/widget/media/R$styleable;->SideTextRetrievalView_side_sort_anti_alias:I

    invoke-virtual {p2, v4, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 139
    sget v5, Lcom/yftech/car/widget/media/R$styleable;->SideTextRetrievalView_side_sort_fake_bold_text:I

    invoke-virtual {p2, v5, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 141
    iget-object v6, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mSortPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 142
    iget-object p3, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mSortPaint:Landroid/graphics/Paint;

    int-to-float p4, p4

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 143
    iget-object p3, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mSortPaint:Landroid/graphics/Paint;

    invoke-virtual {p3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 144
    iget-object p3, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mSortPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p3, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 145
    iget-object p3, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mSortPaint:Landroid/graphics/Paint;

    invoke-virtual {p3, v5}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 147
    iget-object p3, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mSortPaintSelected:Landroid/graphics/Paint;

    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 148
    iget-object p3, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mSortPaintSelected:Landroid/graphics/Paint;

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 149
    iget-object p3, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mSortPaintSelected:Landroid/graphics/Paint;

    invoke-virtual {p3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 150
    iget-object p3, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mSortPaintSelected:Landroid/graphics/Paint;

    sget-object p4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p3, p4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 151
    iget-object p3, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mSortPaintSelected:Landroid/graphics/Paint;

    invoke-virtual {p3, v5}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 153
    iget-object p3, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mSortPaintHighlight:Landroid/graphics/Paint;

    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 154
    iget-object p1, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mSortPaintHighlight:Landroid/graphics/Paint;

    int-to-float p3, v3

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 155
    iget-object p1, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mSortPaintHighlight:Landroid/graphics/Paint;

    sget p3, Lcom/yftech/car/widget/media/R$styleable;->SideTextRetrievalView_side_sort_highlight_anti_alias:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 156
    iget-object p1, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mSortPaintHighlight:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 157
    iget-object p1, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mSortPaintHighlight:Landroid/graphics/Paint;

    sget p3, Lcom/yftech/car/widget/media/R$styleable;->SideTextRetrievalView_side_sort_highlight_fake_bold_text:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 160
    sget p1, Lcom/yftech/car/widget/media/R$styleable;->SideTextRetrievalView_side_sort_highlight_width:I

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    iput p1, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mHighlightWidth:F

    .line 162
    sget p1, Lcom/yftech/car/widget/media/R$styleable;->SideTextRetrievalView_side_sort_highlight_height:I

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    iput p1, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mHighlightHeight:F

    .line 164
    sget p1, Lcom/yftech/car/widget/media/R$styleable;->SideTextRetrievalView_side_sort_text_background_width:I

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    iput p1, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mBackgroundWidth:F

    .line 166
    sget p1, Lcom/yftech/car/widget/media/R$styleable;->SideTextRetrievalView_side_sort_text_background_height:I

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    iput p1, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mBackgroundHeight:F

    .line 168
    sget p1, Lcom/yftech/car/widget/media/R$styleable;->SideTextRetrievalView_side_sort_text_background_start_offset:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    iput p1, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mBackgroundStartOffset:I

    .line 170
    sget p1, Lcom/yftech/car/widget/media/R$styleable;->SideTextRetrievalView_side_sort_text_background_top_offset:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    iput p1, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mBackgroundTopOffset:I

    .line 172
    sget p1, Lcom/yftech/car/widget/media/R$styleable;->SideTextRetrievalView_side_sort_media_data_list_id:I

    const/4 p3, -0x1

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mMediaDataListId:I

    .line 174
    sget p1, Lcom/yftech/car/widget/media/R$styleable;->SideTextRetrievalView_side_sort_highlight_drawable_start_offset:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    iput p1, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mHighlightDrawableStartOffset:I

    .line 176
    sget p1, Lcom/yftech/car/widget/media/R$styleable;->SideTextRetrievalView_side_sort_highlight_text_start_offset:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    iput p1, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mHighlightTextStartOffset:I

    .line 178
    sget p1, Lcom/yftech/car/widget/media/R$styleable;->SideTextRetrievalView_side_sort_text_start_offset:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    iput p1, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mSortTextStartOffset:I

    .line 180
    iget-object p1, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mSortPaint:Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mSortShow:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mMeasureText:F

    .line 182
    iget-object p1, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mSortPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    .line 187
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 188
    iget-object p2, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mSortPaint:Landroid/graphics/Paint;

    iget-object p3, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mSortShow:Ljava/lang/String;

    iget-object p4, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mSortShow:Ljava/lang/String;

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    invoke-virtual {p2, p3, v0, p4, p1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 189
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mHeightText:F

    .line 191
    iget p1, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mHighlightWidth:F

    const/high16 p2, 0x3f800000    # 1.0f

    cmpg-float p1, p1, p2

    if-ltz p1, :cond_4

    iget p1, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mHighlightHeight:F

    cmpg-float p1, p1, p2

    if-gez p1, :cond_7

    .line 192
    :cond_4
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 193
    iget-object p2, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mHighlightDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_6

    .line 194
    iget-object p2, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mHighlightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    if-lez p2, :cond_5

    .line 195
    iget-object p1, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mHighlightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mHighlightWidth:F

    .line 196
    iget-object p1, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mHighlightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mHighlightHeight:F

    goto :goto_0

    .line 198
    :cond_5
    iget-object p2, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mSortPaintHighlight:Landroid/graphics/Paint;

    iget-object p3, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mSortShow:Ljava/lang/String;

    iget-object p4, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mSortShow:Ljava/lang/String;

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    invoke-virtual {p2, p3, v0, p4, p1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 199
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mHighlightHeight:F

    .line 200
    iget-object p1, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mSortPaintHighlight:Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mSortShow:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mHighlightWidth:F

    goto :goto_0

    .line 203
    :cond_6
    iget-object p2, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mSortPaintHighlight:Landroid/graphics/Paint;

    iget-object p3, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mSortShow:Ljava/lang/String;

    iget-object p4, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mSortShow:Ljava/lang/String;

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    invoke-virtual {p2, p3, v0, p4, p1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 204
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mHighlightHeight:F

    .line 205
    iget-object p1, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mSortPaintHighlight:Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mSortShow:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mHighlightWidth:F

    .line 209
    :cond_7
    :goto_0
    iget-object p1, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mSortPaintHighlight:Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mSortShow:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mHighlightMeasureText:F

    .line 211
    iget p1, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mHighlightWidth:F

    iput p1, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mSortTextStart:F

    .line 215
    iput-boolean v1, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mInitStatus:Z

    .line 217
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->isTouchDown:Z

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 432
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public isMediaDataListId(I)Z
    .locals 2

    .line 423
    iget v0, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mMediaDataListId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget p0, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mMediaDataListId:I

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 272
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 273
    iget-object v0, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mSortShow:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 274
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->getWidth()I

    move-result v1

    .line 275
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->getHeight()I

    move-result v2

    .line 276
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->getPaddingTop()I

    move-result v3

    .line 277
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->getPaddingBottom()I

    move-result v4

    .line 278
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->getPaddingStart()I

    move-result v5

    if-nez v5, :cond_0

    .line 280
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->getPaddingLeft()I

    move-result v5

    :cond_0
    add-int/2addr v4, v3

    sub-int/2addr v2, v4

    .line 283
    div-int/2addr v2, v0

    .line 286
    iget-object v4, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mHighlightDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v6, 0x40000000    # 2.0f

    if-eqz v4, :cond_1

    iget v1, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mSortTextStart:F

    iget v4, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mMeasureText:F

    div-float/2addr v4, v6

    add-float/2addr v1, v4

    goto :goto_0

    :cond_1
    int-to-float v1, v1

    div-float/2addr v1, v6

    .line 288
    :goto_0
    iget v4, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mSortTextStartOffset:I

    int-to-float v4, v4

    add-float/2addr v1, v4

    .line 291
    iget-object v4, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mSortDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_2

    .line 292
    iget-object v4, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mSortDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_4

    mul-int v7, v4, v2

    add-int/2addr v7, v3

    int-to-float v7, v7

    .line 296
    iget v8, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mHeightText:F

    add-float/2addr v7, v8

    .line 300
    iget-object v8, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mSortShow:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    int-to-float v9, v5

    add-float/2addr v9, v1

    iget v10, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mPosition:I

    if-ne v10, v4, :cond_3

    iget-object v10, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mSortPaintSelected:Landroid/graphics/Paint;

    goto :goto_2

    :cond_3
    iget-object v10, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mSortPaint:Landroid/graphics/Paint;

    :goto_2
    invoke-virtual {p1, v8, v9, v7, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 304
    :cond_4
    iget-object v0, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mHighlightDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->isTouchDown:Z

    if-eqz v0, :cond_5

    .line 305
    iget-object v0, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mHighlightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 307
    iget-object v0, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mSortContent:Ljava/lang/String;

    iget v1, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mHighlightMeasureText:F

    div-float/2addr v1, v6

    int-to-float v2, v5

    add-float/2addr v1, v2

    iget v2, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mHighlightTextStartOffset:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mMovePositionY:F

    iget v3, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mHighlightMeasureText:F

    div-float/2addr v3, v6

    add-float/2addr v2, v3

    iget-object p0, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mSortPaintHighlight:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_5
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .line 224
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 226
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->getWidth()I

    move-result p1

    if-lez p1, :cond_9

    .line 228
    iget-boolean p2, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mInitStatus:Z

    if-eqz p2, :cond_4

    const/4 p2, 0x0

    .line 229
    iput-boolean p2, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mInitStatus:Z

    .line 230
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    const-string p3, "SideTextRetrievalView"

    .line 231
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSizeChanged: width < mMeasureText : "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " < "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mMeasureText:F

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    int-to-float p3, p1

    .line 232
    iget p4, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mMeasureText:F

    cmpg-float p3, p3, p4

    if-gez p3, :cond_2

    .line 233
    iget-object p3, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mHighlightDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_1

    .line 234
    iget p3, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mHighlightWidth:F

    const/4 p4, 0x0

    cmpl-float p3, p3, p4

    if-lez p3, :cond_0

    .line 235
    iget p3, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mHighlightWidth:F

    iget p4, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mMeasureText:F

    add-float/2addr p3, p4

    float-to-int p3, p3

    iput p3, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 237
    :cond_0
    iget-object p3, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mHighlightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p3

    int-to-float p3, p3

    iget p4, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mMeasureText:F

    add-float/2addr p3, p4

    float-to-int p3, p3

    iput p3, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 240
    :cond_1
    iget p3, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mMeasureText:F

    float-to-int p3, p3

    iput p3, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 243
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->getHeight()I

    move-result p3

    int-to-float p4, p3

    .line 244
    iget v0, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mHeightText:F

    iget-object v1, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mSortShow:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    cmpg-float p4, p4, v0

    if-gez p4, :cond_3

    const-string p4, "SideTextRetrievalView"

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSizeChanged: height < sortHeight : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " < "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mHeightText:F

    iget-object v1, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mSortShow:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr p3, v1

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p4, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget p3, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mHeightText:F

    iget-object p4, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mSortShow:Ljava/lang/String;

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    int-to-float p4, p4

    mul-float/2addr p3, p4

    float-to-int p3, p3

    iput p3, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 248
    :cond_3
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->requestLayout()V

    .line 250
    :cond_4
    iget-object p2, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mSortDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_9

    .line 251
    iget p2, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mBackgroundWidth:F

    const/high16 p3, 0x3f800000    # 1.0f

    cmpg-float p2, p2, p3

    const/high16 p4, 0x40000000    # 2.0f

    if-ltz p2, :cond_5

    iget p2, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mBackgroundHeight:F

    cmpg-float p2, p2, p3

    if-gez p2, :cond_7

    .line 252
    :cond_5
    iget-object p2, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mSortDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mBackgroundWidth:F

    .line 253
    iget-object p2, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mSortDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mBackgroundHeight:F

    .line 254
    iget p2, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mBackgroundWidth:F

    cmpg-float p2, p2, p3

    if-ltz p2, :cond_6

    iget p2, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mBackgroundHeight:F

    cmpg-float p2, p2, p3

    if-gez p2, :cond_7

    .line 255
    :cond_6
    iget p2, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mMeasureText:F

    mul-float/2addr p2, p4

    iput p2, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mBackgroundWidth:F

    .line 256
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->getPaddingTop()I

    move-result p2

    .line 257
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->getHeight()I

    move-result p3

    sub-int/2addr p3, p2

    int-to-float p2, p3

    iput p2, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mBackgroundHeight:F

    .line 261
    :cond_7
    iget-object p2, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mHighlightDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_8

    iget p1, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mSortTextStart:F

    :goto_1
    iget p2, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mMeasureText:F

    div-float/2addr p2, p4

    sub-float/2addr p1, p2

    goto :goto_2

    :cond_8
    int-to-float p1, p1

    div-float/2addr p1, p4

    goto :goto_1

    .line 263
    :goto_2
    iget p2, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mBackgroundStartOffset:I

    int-to-float p2, p2

    add-float/2addr p1, p2

    .line 265
    iget-object p2, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mSortDrawable:Landroid/graphics/drawable/Drawable;

    float-to-int p3, p1

    iget p4, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mBackgroundTopOffset:I

    iget v0, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mBackgroundWidth:F

    add-float/2addr p1, v0

    float-to-int p1, p1

    iget v0, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mBackgroundHeight:F

    float-to-int v0, v0

    iget p0, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mBackgroundTopOffset:I

    add-int/2addr v0, p0

    invoke-virtual {p2, p3, p4, p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_9
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 315
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 386
    :pswitch_0
    iput-boolean v1, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->isTouchDown:Z

    .line 387
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->invalidate()V

    goto/16 :goto_2

    .line 319
    :pswitch_1
    iput-boolean v2, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->isTouchDown:Z

    .line 320
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 321
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 324
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->getPaddingStart()I

    move-result v3

    if-nez v3, :cond_0

    .line 326
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->getPaddingLeft()I

    move-result v3

    .line 329
    :cond_0
    iget-object v4, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mHighlightDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v5, 0x40000000    # 2.0f

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mSortTextStart:F

    iget v6, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mMeasureText:F

    div-float/2addr v6, v5

    :goto_0
    sub-float/2addr v4, v6

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    iget v6, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mMeasureText:F

    goto :goto_0

    .line 331
    :goto_1
    iget v6, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mSortTextStartOffset:I

    add-int/2addr v6, v3

    int-to-float v6, v6

    add-float/2addr v4, v6

    cmpl-float v0, v0, v4

    if-lez v0, :cond_8

    .line 333
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->getPaddingTop()I

    move-result v0

    int-to-float v4, v0

    cmpl-float v6, p1, v4

    if-lez v6, :cond_8

    .line 336
    iget-object v6, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mSortContent:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    .line 337
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->getHeight()I

    move-result v7

    .line 338
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->getPaddingBottom()I

    move-result v8

    add-int/2addr v0, v8

    sub-int v0, v7, v0

    .line 339
    div-int/2addr v0, v6

    .line 340
    iput p1, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mMovePositionY:F

    .line 342
    iget v8, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mHighlightHeight:F

    div-float/2addr v8, v5

    .line 344
    iget v9, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mMovePositionY:F

    cmpg-float v9, v9, v8

    if-gez v9, :cond_2

    .line 345
    iput v8, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mMovePositionY:F

    .line 348
    :cond_2
    iget v9, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mMovePositionY:F

    int-to-float v7, v7

    sub-float v8, v7, v8

    cmpl-float v9, v9, v8

    if-lez v9, :cond_3

    .line 349
    iput v8, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mMovePositionY:F

    :cond_3
    sub-float v4, p1, v4

    int-to-float v0, v0

    div-float/2addr v4, v0

    float-to-int v0, v4

    if-ltz v0, :cond_4

    if-ge v0, v6, :cond_4

    .line 355
    iget v4, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mPosition:I

    if-eq v4, v0, :cond_4

    .line 356
    iput v0, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mPosition:I

    .line 358
    iget-object v4, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mOnSideTextRetrievalListener:Lcom/yftech/car/widget/media/view/SideTextRetrievalView$OnSideTextRetrievalListener;

    if-eqz v4, :cond_4

    .line 359
    iget-object v4, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mSortContent:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 361
    iget-object v6, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mOnSideTextRetrievalListener:Lcom/yftech/car/widget/media/view/SideTextRetrievalView$OnSideTextRetrievalListener;

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-interface {v6, p0, v4, v0}, Lcom/yftech/car/widget/media/view/SideTextRetrievalView$OnSideTextRetrievalListener;->onTouchText(Lcom/yftech/car/widget/media/view/SideTextRetrievalView;CI)V

    .line 366
    :cond_4
    iget-object v0, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mHighlightDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    .line 367
    iget v0, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mHighlightHeight:F

    div-float/2addr v0, v5

    sub-float/2addr p1, v0

    float-to-int p1, p1

    if-gez p1, :cond_5

    move p1, v1

    :cond_5
    int-to-float v0, p1

    .line 372
    iget v1, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mHighlightHeight:F

    sub-float v1, v7, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    .line 373
    iget p1, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mHighlightHeight:F

    sub-float/2addr v7, p1

    float-to-int p1, v7

    .line 376
    :cond_6
    iget-object v0, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mHighlightDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mHighlightDrawableStartOffset:I

    add-int/2addr v1, v3

    iget v4, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mHighlightWidth:F

    int-to-float v3, v3

    add-float/2addr v4, v3

    iget v3, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mHighlightDrawableStartOffset:I

    int-to-float v3, v3

    add-float/2addr v4, v3

    float-to-int v3, v4

    int-to-float v4, p1

    iget v5, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mHighlightHeight:F

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v0, v1, p1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 378
    :cond_7
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->invalidate()V

    :cond_8
    :goto_2
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setCurrent(C)V
    .locals 3

    .line 403
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->isTouchDown:Z

    if-eqz v0, :cond_0

    return-void

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mSortContent:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 409
    :goto_0
    iget-object v2, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mSortContent:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 410
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, p1, :cond_1

    .line 411
    iput v1, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mPosition:I

    .line 412
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->invalidate()V

    goto :goto_1

    :cond_1
    const/16 v2, 0x7a

    if-le p1, v2, :cond_2

    .line 415
    iget-object p1, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mSortContent:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mPosition:I

    .line 416
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->invalidate()V

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public setCurrent(Ljava/lang/String;)V
    .locals 1

    .line 395
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "SideTextRetrievalView"

    const-string/jumbo p1, "setCurrent: content is null !!!"

    .line 396
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 399
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->setCurrent(C)V

    return-void
.end method

.method public setOnSideTextRetrievalListener(Lcom/yftech/car/widget/media/view/SideTextRetrievalView$OnSideTextRetrievalListener;)V
    .locals 0

    .line 427
    iput-object p1, p0, Lcom/yftech/car/widget/media/view/SideTextRetrievalView;->mOnSideTextRetrievalListener:Lcom/yftech/car/widget/media/view/SideTextRetrievalView$OnSideTextRetrievalListener;

    return-void
.end method
