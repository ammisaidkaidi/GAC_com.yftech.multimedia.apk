.class public Landroid/widget/ExpandableListView;
.super Landroid/widget/ListView;
.source "ExpandableListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ExpandableListView$SavedState;,
        Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;,
        Landroid/widget/ExpandableListView$OnChildClickListener;,
        Landroid/widget/ExpandableListView$OnGroupClickListener;,
        Landroid/widget/ExpandableListView$OnGroupExpandListener;,
        Landroid/widget/ExpandableListView$OnGroupCollapseListener;
    }
.end annotation


# static fields
.field public static final CHILD_INDICATOR_INHERIT:I = -0x1

.field private static final CHILD_LAST_STATE_SET:[I

.field private static final EMPTY_STATE_SET:[I

.field private static final GROUP_EMPTY_STATE_SET:[I

.field private static final GROUP_EXPANDED_EMPTY_STATE_SET:[I

.field private static final GROUP_EXPANDED_STATE_SET:[I

.field private static final GROUP_STATE_SETS:[[I

.field private static final INDICATOR_UNDEFINED:I = -0x2

.field private static final PACKED_POSITION_INT_MASK_CHILD:J = -0x1L

.field private static final PACKED_POSITION_INT_MASK_GROUP:J = 0x7fffffffL

.field private static final PACKED_POSITION_MASK_CHILD:J = 0xffffffffL

.field private static final PACKED_POSITION_MASK_GROUP:J = 0x7fffffff00000000L

.field private static final PACKED_POSITION_MASK_TYPE:J = -0x8000000000000000L

.field private static final PACKED_POSITION_SHIFT_GROUP:J = 0x20L

.field private static final PACKED_POSITION_SHIFT_TYPE:J = 0x3fL

.field public static final PACKED_POSITION_TYPE_CHILD:I = 0x1

.field public static final PACKED_POSITION_TYPE_GROUP:I = 0x0

.field public static final PACKED_POSITION_TYPE_NULL:I = 0x2

.field public static final PACKED_POSITION_VALUE_NULL:J = 0xffffffffL


# instance fields
.field private mAdapter:Landroid/widget/ExpandableListAdapter;

.field private mChildDivider:Landroid/graphics/drawable/Drawable;

.field private mChildIndicator:Landroid/graphics/drawable/Drawable;

.field private mChildIndicatorEnd:I

.field private mChildIndicatorLeft:I

.field private mChildIndicatorRight:I

.field private mChildIndicatorStart:I

.field private mConnector:Landroid/widget/ExpandableListConnector;

.field private mGroupIndicator:Landroid/graphics/drawable/Drawable;

.field private mIndicatorEnd:I

.field private mIndicatorLeft:I

.field private final mIndicatorRect:Landroid/graphics/Rect;

.field private mIndicatorRight:I

.field private mIndicatorStart:I

.field private mOnChildClickListener:Landroid/widget/ExpandableListView$OnChildClickListener;

.field private mOnGroupClickListener:Landroid/widget/ExpandableListView$OnGroupClickListener;

.field private mOnGroupCollapseListener:Landroid/widget/ExpandableListView$OnGroupCollapseListener;

.field private mOnGroupExpandListener:Landroid/widget/ExpandableListView$OnGroupExpandListener;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x0

    .line 188
    new-array v1, v0, [I

    sput-object v1, Landroid/widget/ExpandableListView;->EMPTY_STATE_SET:[I

    const/4 v1, 0x1

    .line 191
    new-array v2, v1, [I

    const v3, 0x10100a8

    aput v3, v2, v0

    sput-object v2, Landroid/widget/ExpandableListView;->GROUP_EXPANDED_STATE_SET:[I

    .line 195
    new-array v2, v1, [I

    const v3, 0x10100a9

    aput v3, v2, v0

    sput-object v2, Landroid/widget/ExpandableListView;->GROUP_EMPTY_STATE_SET:[I

    const/4 v2, 0x2

    .line 199
    new-array v3, v2, [I

    fill-array-data v3, :array_0

    sput-object v3, Landroid/widget/ExpandableListView;->GROUP_EXPANDED_EMPTY_STATE_SET:[I

    const/4 v3, 0x4

    .line 203
    new-array v3, v3, [[I

    sget-object v4, Landroid/widget/ExpandableListView;->EMPTY_STATE_SET:[I

    aput-object v4, v3, v0

    sget-object v4, Landroid/widget/ExpandableListView;->GROUP_EXPANDED_STATE_SET:[I

    aput-object v4, v3, v1

    sget-object v4, Landroid/widget/ExpandableListView;->GROUP_EMPTY_STATE_SET:[I

    aput-object v4, v3, v2

    sget-object v2, Landroid/widget/ExpandableListView;->GROUP_EXPANDED_EMPTY_STATE_SET:[I

    const/4 v4, 0x3

    aput-object v2, v3, v4

    sput-object v3, Landroid/widget/ExpandableListView;->GROUP_STATE_SETS:[[I

    .line 211
    new-array v1, v1, [I

    const v2, 0x10100a6

    aput v2, v1, v0

    sput-object v1, Landroid/widget/ExpandableListView;->CHILD_LAST_STATE_SET:[I

    return-void

    :array_0
    .array-data 4
        0x10100a8
        0x10100a9
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 221
    invoke-direct {p0, p1, v0}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101006f

    .line 225
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 229
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 234
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 218
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/ExpandableListView;->mIndicatorRect:Landroid/graphics/Rect;

    .line 236
    sget-object v0, Lcom/android/internal/R$styleable;->ExpandableListView:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 239
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    const/4 p3, 0x1

    .line 241
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Landroid/widget/ExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    const/4 p3, 0x2

    .line 243
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    const/4 p3, 0x3

    .line 245
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    .line 247
    iget p2, p0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    if-nez p2, :cond_0

    iget-object p2, p0, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_0

    .line 248
    iget p2, p0, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    iget-object p3, p0, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p3

    add-int/2addr p2, p3

    iput p2, p0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    :cond_0
    const/4 p2, 0x4

    const/4 p3, -0x1

    .line 250
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Landroid/widget/ExpandableListView;->mChildIndicatorLeft:I

    const/4 p2, 0x5

    .line 253
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Landroid/widget/ExpandableListView;->mChildIndicatorRight:I

    const/4 p2, 0x6

    .line 256
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Landroid/widget/ExpandableListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    .line 259
    invoke-direct {p0}, Landroid/widget/ExpandableListView;->isRtlCompatibilityMode()Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x7

    const/4 p4, -0x2

    .line 260
    invoke-virtual {p1, p2, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Landroid/widget/ExpandableListView;->mIndicatorStart:I

    const/16 p2, 0x8

    .line 263
    invoke-virtual {p1, p2, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Landroid/widget/ExpandableListView;->mIndicatorEnd:I

    const/16 p2, 0x9

    .line 267
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Landroid/widget/ExpandableListView;->mChildIndicatorStart:I

    const/16 p2, 0xa

    .line 270
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Landroid/widget/ExpandableListView;->mChildIndicatorEnd:I

    .line 275
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private getAbsoluteFlatPosition(I)I
    .locals 0

    .line 640
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getHeaderViewsCount()I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method

.method private getChildOrGroupId(Landroid/widget/ExpandableListPosition;)J
    .locals 2

    .line 1143
    iget v0, p1, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1144
    iget-object p0, p0, Landroid/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    iget v0, p1, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget p1, p1, Landroid/widget/ExpandableListPosition;->childPos:I

    invoke-interface {p0, v0, p1}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide p0

    return-wide p0

    .line 1146
    :cond_0
    iget-object p0, p0, Landroid/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    iget p1, p1, Landroid/widget/ExpandableListPosition;->groupPos:I

    invoke-interface {p0, p1}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide p0

    return-wide p0
.end method

.method private getFlatPositionForConnector(I)I
    .locals 0

    .line 629
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getHeaderViewsCount()I

    move-result p0

    sub-int/2addr p1, p0

    return p1
.end method

.method private getIndicator(Landroid/widget/ExpandableListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 479
    iget-object v0, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v0, v0, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 480
    iget-object p0, p0, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_5

    .line 482
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 486
    iget-object v0, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    iget v0, v0, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    iget-object v3, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    iget v3, v3, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 490
    :goto_1
    invoke-virtual {p1}, Landroid/widget/ExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result p1

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    or-int/2addr p1, v1

    .line 492
    sget-object v0, Landroid/widget/ExpandableListView;->GROUP_STATE_SETS:[[I

    aget-object p1, v0, p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_4

    .line 495
    :cond_3
    iget-object p0, p0, Landroid/widget/ExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_5

    .line 497
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 499
    iget-object v0, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v0, v0, Landroid/widget/ExpandableListPosition;->flatListPos:I

    iget-object p1, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    iget p1, p1, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    if-ne v0, p1, :cond_4

    .line 500
    sget-object p1, Landroid/widget/ExpandableListView;->CHILD_LAST_STATE_SET:[I

    goto :goto_3

    .line 501
    :cond_4
    sget-object p1, Landroid/widget/ExpandableListView;->EMPTY_STATE_SET:[I

    .line 502
    :goto_3
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_5
    :goto_4
    return-object p0
.end method

.method public static getPackedPositionChild(J)I
    .locals 8

    const-wide v0, 0xffffffffL

    cmp-long v2, p0, v0

    const/4 v3, -0x1

    if-nez v2, :cond_0

    return v3

    :cond_0
    const-wide/high16 v4, -0x8000000000000000L

    and-long v6, p0, v4

    cmp-long v2, v6, v4

    if-eqz v2, :cond_1

    return v3

    :cond_1
    and-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public static getPackedPositionForChild(II)J
    .locals 4

    int-to-long v0, p0

    const-wide/32 v2, 0x7fffffff

    and-long/2addr v0, v2

    const/16 p0, 0x20

    shl-long/2addr v0, p0

    const-wide/high16 v2, -0x8000000000000000L

    or-long/2addr v0, v2

    int-to-long p0, p1

    const-wide/16 v2, -0x1

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static getPackedPositionForGroup(I)J
    .locals 4

    int-to-long v0, p0

    const-wide/32 v2, 0x7fffffff

    and-long/2addr v0, v2

    const/16 p0, 0x20

    shl-long/2addr v0, p0

    return-wide v0
.end method

.method public static getPackedPositionGroup(J)I
    .locals 2

    const-wide v0, 0xffffffffL

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const-wide v0, 0x7fffffff00000000L

    and-long/2addr p0, v0

    const/16 v0, 0x20

    shr-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public static getPackedPositionType(J)I
    .locals 2

    const-wide v0, 0xffffffffL

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    and-long/2addr p0, v0

    cmp-long p0, p0, v0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private hasRtlSupport()Z
    .locals 0

    .line 291
    iget-object p0, p0, Landroid/widget/ExpandableListView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->hasRtlSupport()Z

    move-result p0

    return p0
.end method

.method private isHeaderOrFooterPosition(I)Z
    .locals 2

    .line 617
    iget v0, p0, Landroid/widget/ExpandableListView;->mItemCount:I

    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getFooterViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    .line 618
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getHeaderViewsCount()I

    move-result p0

    if-lt p1, p0, :cond_1

    if-lt p1, v0, :cond_0

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

.method private isRtlCompatibilityMode()Z
    .locals 2

    .line 283
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    .line 284
    invoke-direct {p0}, Landroid/widget/ExpandableListView;->hasRtlSupport()Z

    move-result p0

    if-nez p0, :cond_0

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

.method private resolveChildIndicator()V
    .locals 2

    .line 330
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->isLayoutRtl()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 332
    iget v0, p0, Landroid/widget/ExpandableListView;->mChildIndicatorStart:I

    if-lt v0, v1, :cond_0

    .line 333
    iget v0, p0, Landroid/widget/ExpandableListView;->mChildIndicatorStart:I

    iput v0, p0, Landroid/widget/ExpandableListView;->mChildIndicatorRight:I

    .line 335
    :cond_0
    iget v0, p0, Landroid/widget/ExpandableListView;->mChildIndicatorEnd:I

    if-lt v0, v1, :cond_3

    .line 336
    iget v0, p0, Landroid/widget/ExpandableListView;->mChildIndicatorEnd:I

    iput v0, p0, Landroid/widget/ExpandableListView;->mChildIndicatorLeft:I

    goto :goto_0

    .line 339
    :cond_1
    iget v0, p0, Landroid/widget/ExpandableListView;->mChildIndicatorStart:I

    if-lt v0, v1, :cond_2

    .line 340
    iget v0, p0, Landroid/widget/ExpandableListView;->mChildIndicatorStart:I

    iput v0, p0, Landroid/widget/ExpandableListView;->mChildIndicatorLeft:I

    .line 342
    :cond_2
    iget v0, p0, Landroid/widget/ExpandableListView;->mChildIndicatorEnd:I

    if-lt v0, v1, :cond_3

    .line 343
    iget v0, p0, Landroid/widget/ExpandableListView;->mChildIndicatorEnd:I

    iput v0, p0, Landroid/widget/ExpandableListView;->mChildIndicatorRight:I

    :cond_3
    :goto_0
    return-void
.end method

.method private resolveIndicator()V
    .locals 2

    .line 304
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 306
    iget v0, p0, Landroid/widget/ExpandableListView;->mIndicatorStart:I

    if-ltz v0, :cond_0

    .line 307
    iget v0, p0, Landroid/widget/ExpandableListView;->mIndicatorStart:I

    iput v0, p0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    .line 309
    :cond_0
    iget v0, p0, Landroid/widget/ExpandableListView;->mIndicatorEnd:I

    if-ltz v0, :cond_3

    .line 310
    iget v0, p0, Landroid/widget/ExpandableListView;->mIndicatorEnd:I

    iput v0, p0, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    goto :goto_0

    .line 313
    :cond_1
    iget v0, p0, Landroid/widget/ExpandableListView;->mIndicatorStart:I

    if-ltz v0, :cond_2

    .line 314
    iget v0, p0, Landroid/widget/ExpandableListView;->mIndicatorStart:I

    iput v0, p0, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    .line 316
    :cond_2
    iget v0, p0, Landroid/widget/ExpandableListView;->mIndicatorEnd:I

    if-ltz v0, :cond_3

    .line 317
    iget v0, p0, Landroid/widget/ExpandableListView;->mIndicatorEnd:I

    iput v0, p0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    .line 320
    :cond_3
    :goto_0
    iget v0, p0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 321
    iget v0, p0, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    iget-object v1, p0, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    :cond_4
    return-void
.end method


# virtual methods
.method public collapseGroup(I)Z
    .locals 2

    .line 776
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListConnector;->collapseGroup(I)Z

    move-result v0

    .line 778
    iget-object v1, p0, Landroid/widget/ExpandableListView;->mOnGroupCollapseListener:Landroid/widget/ExpandableListView$OnGroupCollapseListener;

    if-eqz v1, :cond_0

    .line 779
    iget-object p0, p0, Landroid/widget/ExpandableListView;->mOnGroupCollapseListener:Landroid/widget/ExpandableListView$OnGroupCollapseListener;

    invoke-interface {p0, p1}, Landroid/widget/ExpandableListView$OnGroupCollapseListener;->onGroupCollapse(I)V

    :cond_0
    return v0
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 6

    .line 1117
    invoke-direct {p0, p2}, Landroid/widget/ExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1119
    new-instance p0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object p0

    .line 1122
    :cond_0
    invoke-direct {p0, p2}, Landroid/widget/ExpandableListView;->getFlatPositionForConnector(I)I

    move-result p2

    .line 1123
    iget-object p3, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {p3, p2}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object p2

    .line 1124
    iget-object p3, p2, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    .line 1126
    invoke-direct {p0, p3}, Landroid/widget/ExpandableListView;->getChildOrGroupId(Landroid/widget/ExpandableListPosition;)J

    move-result-wide v4

    .line 1127
    invoke-virtual {p3}, Landroid/widget/ExpandableListPosition;->getPackedPosition()J

    move-result-wide v2

    .line 1129
    invoke-virtual {p2}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 1131
    new-instance p0, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;-><init>(Landroid/view/View;JJ)V

    return-object p0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 351
    invoke-super/range {p0 .. p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 354
    iget-object v2, v0, Landroid/widget/ExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    iget-object v2, v0, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    return-void

    .line 359
    :cond_0
    iget v2, v0, Landroid/widget/ExpandableListView;->mGroupFlags:I

    const/16 v3, 0x22

    and-int/2addr v2, v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_1

    move v2, v5

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    if-eqz v2, :cond_2

    .line 361
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 362
    iget v6, v0, Landroid/widget/ExpandableListView;->mScrollX:I

    .line 363
    iget v7, v0, Landroid/widget/ExpandableListView;->mScrollY:I

    .line 364
    iget v8, v0, Landroid/widget/ExpandableListView;->mPaddingLeft:I

    add-int/2addr v8, v6

    iget v9, v0, Landroid/widget/ExpandableListView;->mPaddingTop:I

    add-int/2addr v9, v7

    iget v10, v0, Landroid/widget/ExpandableListView;->mRight:I

    add-int/2addr v6, v10

    iget v10, v0, Landroid/widget/ExpandableListView;->mLeft:I

    sub-int/2addr v6, v10

    iget v10, v0, Landroid/widget/ExpandableListView;->mPaddingRight:I

    sub-int/2addr v6, v10

    iget v10, v0, Landroid/widget/ExpandableListView;->mBottom:I

    add-int/2addr v7, v10

    iget v10, v0, Landroid/widget/ExpandableListView;->mTop:I

    sub-int/2addr v7, v10

    iget v10, v0, Landroid/widget/ExpandableListView;->mPaddingBottom:I

    sub-int/2addr v7, v10

    invoke-virtual {v1, v8, v9, v6, v7}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_1

    :cond_2
    move v3, v4

    .line 369
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ExpandableListView;->getHeaderViewsCount()I

    move-result v6

    .line 371
    iget v7, v0, Landroid/widget/ExpandableListView;->mItemCount:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ExpandableListView;->getFooterViewsCount()I

    move-result v8

    sub-int/2addr v7, v8

    sub-int/2addr v7, v6

    sub-int/2addr v7, v5

    .line 373
    iget v8, v0, Landroid/widget/ExpandableListView;->mBottom:I

    const/4 v9, -0x4

    .line 383
    iget-object v10, v0, Landroid/widget/ExpandableListView;->mIndicatorRect:Landroid/graphics/Rect;

    .line 388
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ExpandableListView;->getChildCount()I

    move-result v11

    .line 389
    iget v12, v0, Landroid/widget/ExpandableListView;->mFirstPosition:I

    sub-int/2addr v12, v6

    :goto_2
    if-ge v4, v11, :cond_e

    if-gez v12, :cond_3

    goto/16 :goto_8

    :cond_3
    if-le v12, v7, :cond_4

    goto/16 :goto_9

    .line 400
    :cond_4
    invoke-virtual {v0, v4}, Landroid/widget/ExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 401
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v13

    .line 402
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    if-ltz v6, :cond_d

    if-le v13, v8, :cond_5

    goto/16 :goto_8

    .line 408
    :cond_5
    iget-object v14, v0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v14, v12}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v14

    .line 410
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ExpandableListView;->isLayoutRtl()Z

    move-result v15

    .line 411
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ExpandableListView;->getWidth()I

    move-result v16

    .line 415
    iget-object v5, v14, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v5, v5, Landroid/widget/ExpandableListPosition;->type:I

    if-eq v5, v9, :cond_a

    .line 416
    iget-object v5, v14, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v5, v5, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v9, 0x1

    if-ne v5, v9, :cond_8

    .line 417
    iget v5, v0, Landroid/widget/ExpandableListView;->mChildIndicatorLeft:I

    const/4 v9, -0x1

    if-ne v5, v9, :cond_6

    .line 418
    iget v5, v0, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    goto :goto_3

    :cond_6
    iget v5, v0, Landroid/widget/ExpandableListView;->mChildIndicatorLeft:I

    :goto_3
    iput v5, v10, Landroid/graphics/Rect;->left:I

    .line 419
    iget v5, v0, Landroid/widget/ExpandableListView;->mChildIndicatorRight:I

    if-ne v5, v9, :cond_7

    .line 420
    iget v5, v0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    goto :goto_4

    :cond_7
    iget v5, v0, Landroid/widget/ExpandableListView;->mChildIndicatorRight:I

    :goto_4
    iput v5, v10, Landroid/graphics/Rect;->right:I

    goto :goto_5

    .line 422
    :cond_8
    iget v5, v0, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    iput v5, v10, Landroid/graphics/Rect;->left:I

    .line 423
    iget v5, v0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    iput v5, v10, Landroid/graphics/Rect;->right:I

    :goto_5
    if-eqz v15, :cond_9

    .line 427
    iget v5, v10, Landroid/graphics/Rect;->left:I

    .line 428
    iget v9, v10, Landroid/graphics/Rect;->right:I

    sub-int v9, v16, v9

    iput v9, v10, Landroid/graphics/Rect;->left:I

    sub-int v5, v16, v5

    .line 429
    iput v5, v10, Landroid/graphics/Rect;->right:I

    .line 431
    iget v5, v10, Landroid/graphics/Rect;->left:I

    iget v9, v0, Landroid/widget/ExpandableListView;->mPaddingRight:I

    sub-int/2addr v5, v9

    iput v5, v10, Landroid/graphics/Rect;->left:I

    .line 432
    iget v5, v10, Landroid/graphics/Rect;->right:I

    iget v9, v0, Landroid/widget/ExpandableListView;->mPaddingRight:I

    sub-int/2addr v5, v9

    iput v5, v10, Landroid/graphics/Rect;->right:I

    goto :goto_6

    .line 434
    :cond_9
    iget v5, v10, Landroid/graphics/Rect;->left:I

    iget v9, v0, Landroid/widget/ExpandableListView;->mPaddingLeft:I

    add-int/2addr v5, v9

    iput v5, v10, Landroid/graphics/Rect;->left:I

    .line 435
    iget v5, v10, Landroid/graphics/Rect;->right:I

    iget v9, v0, Landroid/widget/ExpandableListView;->mPaddingLeft:I

    add-int/2addr v5, v9

    iput v5, v10, Landroid/graphics/Rect;->right:I

    .line 438
    :goto_6
    iget-object v5, v14, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v9, v5, Landroid/widget/ExpandableListPosition;->type:I

    :cond_a
    const/4 v5, 0x1

    .line 441
    iget v15, v10, Landroid/graphics/Rect;->left:I

    iget v5, v10, Landroid/graphics/Rect;->right:I

    if-eq v15, v5, :cond_c

    .line 443
    iget-boolean v5, v0, Landroid/widget/ExpandableListView;->mStackFromBottom:Z

    if-eqz v5, :cond_b

    .line 445
    iput v13, v10, Landroid/graphics/Rect;->top:I

    .line 446
    iput v6, v10, Landroid/graphics/Rect;->bottom:I

    goto :goto_7

    .line 448
    :cond_b
    iput v13, v10, Landroid/graphics/Rect;->top:I

    .line 449
    iput v6, v10, Landroid/graphics/Rect;->bottom:I

    .line 453
    :goto_7
    invoke-direct {v0, v14}, Landroid/widget/ExpandableListView;->getIndicator(Landroid/widget/ExpandableListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_c

    .line 456
    invoke-virtual {v5, v10}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 457
    invoke-virtual {v5, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 460
    :cond_c
    invoke-virtual {v14}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    :cond_d
    :goto_8
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v12, v12, 0x1

    const/4 v5, 0x1

    goto/16 :goto_2

    :cond_e
    :goto_9
    if-eqz v2, :cond_f

    .line 464
    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_f
    return-void
.end method

.method drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 3

    .line 522
    iget v0, p0, Landroid/widget/ExpandableListView;->mFirstPosition:I

    add-int/2addr p3, v0

    if-ltz p3, :cond_2

    .line 527
    invoke-direct {p0, p3}, Landroid/widget/ExpandableListView;->getFlatPositionForConnector(I)I

    move-result v0

    .line 528
    iget-object v1, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v0

    .line 530
    iget-object v1, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v1, v1, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Landroid/widget/ExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    iget v1, v1, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    iget-object v2, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    iget v2, v2, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 539
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    goto :goto_1

    .line 533
    :cond_1
    :goto_0
    iget-object p0, p0, Landroid/widget/ExpandableListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    .line 534
    invoke-virtual {p0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 535
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 536
    invoke-virtual {v0}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    return-void

    .line 543
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    return-void
.end method

.method public expandGroup(I)Z
    .locals 1

    const/4 v0, 0x0

    .line 734
    invoke-virtual {p0, p1, v0}, Landroid/widget/ExpandableListView;->expandGroup(IZ)Z

    move-result p0

    return p0
.end method

.method public expandGroup(IZ)Z
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x2

    .line 746
    invoke-static {v1, p1, v0, v0}, Landroid/widget/ExpandableListPosition;->obtain(IIII)Landroid/widget/ExpandableListPosition;

    move-result-object v0

    .line 748
    iget-object v1, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListConnector;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v1

    .line 749
    invoke-virtual {v0}, Landroid/widget/ExpandableListPosition;->recycle()V

    .line 750
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListConnector;->expandGroup(Landroid/widget/ExpandableListConnector$PositionMetadata;)Z

    move-result v0

    .line 752
    iget-object v2, p0, Landroid/widget/ExpandableListView;->mOnGroupExpandListener:Landroid/widget/ExpandableListView$OnGroupExpandListener;

    if-eqz v2, :cond_0

    .line 753
    iget-object v2, p0, Landroid/widget/ExpandableListView;->mOnGroupExpandListener:Landroid/widget/ExpandableListView$OnGroupExpandListener;

    invoke-interface {v2, p1}, Landroid/widget/ExpandableListView$OnGroupExpandListener;->onGroupExpand(I)V

    :cond_0
    if-eqz p2, :cond_1

    .line 757
    iget-object p2, v1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget p2, p2, Landroid/widget/ExpandableListPosition;->flatListPos:I

    .line 759
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getHeaderViewsCount()I

    move-result v2

    add-int/2addr p2, v2

    .line 760
    iget-object v2, p0, Landroid/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result p1

    add-int/2addr p1, p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/ExpandableListView;->smoothScrollToPosition(II)V

    .line 763
    :cond_1
    invoke-virtual {v1}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    return v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 0

    .line 1344
    const-class p0, Landroid/widget/ExpandableListView;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 0

    .line 84
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    return-object p0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 0

    .line 569
    invoke-super {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    return-object p0
.end method

.method public getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;
    .locals 0

    .line 609
    iget-object p0, p0, Landroid/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    return-object p0
.end method

.method public getExpandableListPosition(I)J
    .locals 2

    .line 888
    invoke-direct {p0, p1}, Landroid/widget/ExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide p0, 0xffffffffL

    return-wide p0

    .line 892
    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/ExpandableListView;->getFlatPositionForConnector(I)I

    move-result p1

    .line 893
    iget-object p0, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object p0

    .line 894
    iget-object p1, p0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    invoke-virtual {p1}, Landroid/widget/ExpandableListPosition;->getPackedPosition()J

    move-result-wide v0

    .line 895
    invoke-virtual {p0}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    return-wide v0
.end method

.method public getFlatListPosition(J)I
    .locals 0

    .line 912
    invoke-static {p1, p2}, Landroid/widget/ExpandableListPosition;->obtainPosition(J)Landroid/widget/ExpandableListPosition;

    move-result-object p1

    .line 913
    iget-object p2, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {p2, p1}, Landroid/widget/ExpandableListConnector;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object p2

    .line 914
    invoke-virtual {p1}, Landroid/widget/ExpandableListPosition;->recycle()V

    .line 915
    iget-object p1, p2, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget p1, p1, Landroid/widget/ExpandableListPosition;->flatListPos:I

    .line 916
    invoke-virtual {p2}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 917
    invoke-direct {p0, p1}, Landroid/widget/ExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result p0

    return p0
.end method

.method public getSelectedId()J
    .locals 4

    .line 943
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getSelectedPosition()J

    move-result-wide v0

    const-wide v2, 0xffffffffL

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 946
    :cond_0
    invoke-static {v0, v1}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v2

    .line 948
    invoke-static {v0, v1}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v3

    if-nez v3, :cond_1

    .line 950
    iget-object p0, p0, Landroid/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {p0, v2}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v0

    return-wide v0

    .line 953
    :cond_1
    iget-object p0, p0, Landroid/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-static {v0, v1}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v0

    invoke-interface {p0, v2, v0}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedPosition()J
    .locals 2

    .line 929
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getSelectedItemPosition()I

    move-result v0

    .line 932
    invoke-virtual {p0, v0}, Landroid/widget/ExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v0

    return-wide v0
.end method

.method handleItemClick(Landroid/view/View;IJ)Z
    .locals 8

    .line 665
    iget-object p3, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {p3, p2}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object p2

    .line 667
    iget-object p3, p2, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    invoke-direct {p0, p3}, Landroid/widget/ExpandableListView;->getChildOrGroupId(Landroid/widget/ExpandableListPosition;)J

    move-result-wide v5

    .line 670
    iget-object p3, p2, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget p3, p3, Landroid/widget/ExpandableListPosition;->type:I

    const/4 p4, 0x1

    const/4 v7, 0x0

    const/4 v0, 0x2

    if-ne p3, v0, :cond_3

    .line 674
    iget-object p3, p0, Landroid/widget/ExpandableListView;->mOnGroupClickListener:Landroid/widget/ExpandableListView$OnGroupClickListener;

    if-eqz p3, :cond_0

    .line 675
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mOnGroupClickListener:Landroid/widget/ExpandableListView$OnGroupClickListener;

    iget-object p3, p2, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v3, p3, Landroid/widget/ExpandableListPosition;->groupPos:I

    move-object v1, p0

    move-object v2, p1

    move-wide v4, v5

    invoke-interface/range {v0 .. v5}, Landroid/widget/ExpandableListView$OnGroupClickListener;->onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 677
    invoke-virtual {p2}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    return p4

    .line 682
    :cond_0
    invoke-virtual {p2}, Landroid/widget/ExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 684
    iget-object p1, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {p1, p2}, Landroid/widget/ExpandableListConnector;->collapseGroup(Landroid/widget/ExpandableListConnector$PositionMetadata;)Z

    .line 686
    invoke-virtual {p0, v7}, Landroid/widget/ExpandableListView;->playSoundEffect(I)V

    .line 688
    iget-object p1, p0, Landroid/widget/ExpandableListView;->mOnGroupCollapseListener:Landroid/widget/ExpandableListView$OnGroupCollapseListener;

    if-eqz p1, :cond_5

    .line 689
    iget-object p0, p0, Landroid/widget/ExpandableListView;->mOnGroupCollapseListener:Landroid/widget/ExpandableListView$OnGroupCollapseListener;

    iget-object p1, p2, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget p1, p1, Landroid/widget/ExpandableListPosition;->groupPos:I

    invoke-interface {p0, p1}, Landroid/widget/ExpandableListView$OnGroupCollapseListener;->onGroupCollapse(I)V

    goto :goto_0

    .line 693
    :cond_1
    iget-object p1, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {p1, p2}, Landroid/widget/ExpandableListConnector;->expandGroup(Landroid/widget/ExpandableListConnector$PositionMetadata;)Z

    .line 695
    invoke-virtual {p0, v7}, Landroid/widget/ExpandableListView;->playSoundEffect(I)V

    .line 697
    iget-object p1, p0, Landroid/widget/ExpandableListView;->mOnGroupExpandListener:Landroid/widget/ExpandableListView$OnGroupExpandListener;

    if-eqz p1, :cond_2

    .line 698
    iget-object p1, p0, Landroid/widget/ExpandableListView;->mOnGroupExpandListener:Landroid/widget/ExpandableListView$OnGroupExpandListener;

    iget-object p3, p2, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget p3, p3, Landroid/widget/ExpandableListPosition;->groupPos:I

    invoke-interface {p1, p3}, Landroid/widget/ExpandableListView$OnGroupExpandListener;->onGroupExpand(I)V

    .line 701
    :cond_2
    iget-object p1, p2, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget p1, p1, Landroid/widget/ExpandableListPosition;->groupPos:I

    .line 702
    iget-object p3, p2, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget p3, p3, Landroid/widget/ExpandableListPosition;->flatListPos:I

    .line 704
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getHeaderViewsCount()I

    move-result v0

    add-int/2addr p3, v0

    .line 705
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result p1

    add-int/2addr p1, p3

    invoke-virtual {p0, p1, p3}, Landroid/widget/ExpandableListView;->smoothScrollToPosition(II)V

    goto :goto_0

    .line 712
    :cond_3
    iget-object p3, p0, Landroid/widget/ExpandableListView;->mOnChildClickListener:Landroid/widget/ExpandableListView$OnChildClickListener;

    if-eqz p3, :cond_4

    .line 713
    invoke-virtual {p0, v7}, Landroid/widget/ExpandableListView;->playSoundEffect(I)V

    .line 714
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mOnChildClickListener:Landroid/widget/ExpandableListView$OnChildClickListener;

    iget-object p3, p2, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v3, p3, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget-object p2, p2, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v4, p2, Landroid/widget/ExpandableListPosition;->childPos:I

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v6}, Landroid/widget/ExpandableListView$OnChildClickListener;->onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z

    move-result p0

    return p0

    :cond_4
    move p4, v7

    .line 721
    :cond_5
    :goto_0
    invoke-virtual {p2}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    return p4
.end method

.method public isGroupExpanded(I)Z
    .locals 0

    .line 1019
    iget-object p0, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListConnector;->isGroupExpanded(I)Z

    move-result p0

    return p0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1329
    instance-of v0, p1, Landroid/widget/ExpandableListView$SavedState;

    if-nez v0, :cond_0

    .line 1330
    invoke-super {p0, p1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 1334
    :cond_0
    check-cast p1, Landroid/widget/ExpandableListView$SavedState;

    .line 1335
    invoke-virtual {p1}, Landroid/widget/ExpandableListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1337
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/widget/ExpandableListView$SavedState;->expandedGroupMetadataList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1338
    iget-object p0, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    iget-object p1, p1, Landroid/widget/ExpandableListView$SavedState;->expandedGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListConnector;->setExpandedGroupMetadataList(Ljava/util/ArrayList;)V

    :cond_1
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0

    .line 295
    invoke-direct {p0}, Landroid/widget/ExpandableListView;->resolveIndicator()V

    .line 296
    invoke-direct {p0}, Landroid/widget/ExpandableListView;->resolveChildIndicator()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 1322
    invoke-super {p0}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1323
    new-instance v1, Landroid/widget/ExpandableListView$SavedState;

    .line 1324
    iget-object v2, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    if-eqz v2, :cond_0

    iget-object p0, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {p0}, Landroid/widget/ExpandableListConnector;->getExpandedGroupMetadataList()Ljava/util/ArrayList;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-direct {v1, v0, p0}, Landroid/widget/ExpandableListView$SavedState;-><init>(Landroid/os/Parcelable;Ljava/util/ArrayList;)V

    return-object v1
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 1

    .line 646
    invoke-direct {p0, p2}, Landroid/widget/ExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 648
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result p0

    return p0

    .line 652
    :cond_0
    invoke-direct {p0, p2}, Landroid/widget/ExpandableListView;->getFlatPositionForConnector(I)I

    move-result p2

    .line 653
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/ExpandableListView;->handleItemClick(Landroid/view/View;IJ)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 84
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ExpandableListAdapter;)V
    .locals 1

    .line 591
    iput-object p1, p0, Landroid/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    if-eqz p1, :cond_0

    .line 595
    new-instance v0, Landroid/widget/ExpandableListConnector;

    invoke-direct {v0, p1}, Landroid/widget/ExpandableListConnector;-><init>(Landroid/widget/ExpandableListAdapter;)V

    iput-object v0, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 597
    iput-object p1, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    .line 601
    :goto_0
    iget-object p1, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0

    .line 554
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "For ExpandableListView, use setAdapter(ExpandableListAdapter) instead of setAdapter(ListAdapter)"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setChildDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 517
    iput-object p1, p0, Landroid/widget/ExpandableListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setChildIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1158
    iput-object p1, p0, Landroid/widget/ExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setChildIndicatorBounds(II)V
    .locals 0

    .line 1173
    iput p1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorLeft:I

    .line 1174
    iput p2, p0, Landroid/widget/ExpandableListView;->mChildIndicatorRight:I

    .line 1175
    invoke-direct {p0}, Landroid/widget/ExpandableListView;->resolveChildIndicator()V

    return-void
.end method

.method public setChildIndicatorBoundsRelative(II)V
    .locals 0

    .line 1190
    iput p1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorStart:I

    .line 1191
    iput p2, p0, Landroid/widget/ExpandableListView;->mChildIndicatorEnd:I

    .line 1192
    invoke-direct {p0}, Landroid/widget/ExpandableListView;->resolveChildIndicator()V

    return-void
.end method

.method public setGroupIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1204
    iput-object p1, p0, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    .line 1205
    iget p1, p0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    if-nez p1, :cond_0

    iget-object p1, p0, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 1206
    iget p1, p0, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    iget-object v0, p0, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    add-int/2addr p1, v0

    iput p1, p0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    :cond_0
    return-void
.end method

.method public setIndicatorBounds(II)V
    .locals 0

    .line 1222
    iput p1, p0, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    .line 1223
    iput p2, p0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    .line 1224
    invoke-direct {p0}, Landroid/widget/ExpandableListView;->resolveIndicator()V

    return-void
.end method

.method public setIndicatorBoundsRelative(II)V
    .locals 0

    .line 1239
    iput p1, p0, Landroid/widget/ExpandableListView;->mIndicatorStart:I

    .line 1240
    iput p2, p0, Landroid/widget/ExpandableListView;->mIndicatorEnd:I

    .line 1241
    invoke-direct {p0}, Landroid/widget/ExpandableListView;->resolveIndicator()V

    return-void
.end method

.method public setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V
    .locals 0

    .line 870
    iput-object p1, p0, Landroid/widget/ExpandableListView;->mOnChildClickListener:Landroid/widget/ExpandableListView$OnChildClickListener;

    return-void
.end method

.method public setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V
    .locals 0

    .line 843
    iput-object p1, p0, Landroid/widget/ExpandableListView;->mOnGroupClickListener:Landroid/widget/ExpandableListView$OnGroupClickListener;

    return-void
.end method

.method public setOnGroupCollapseListener(Landroid/widget/ExpandableListView$OnGroupCollapseListener;)V
    .locals 0

    .line 800
    iput-object p1, p0, Landroid/widget/ExpandableListView;->mOnGroupCollapseListener:Landroid/widget/ExpandableListView$OnGroupCollapseListener;

    return-void
.end method

.method public setOnGroupExpandListener(Landroid/widget/ExpandableListView$OnGroupExpandListener;)V
    .locals 0

    .line 818
    iput-object p1, p0, Landroid/widget/ExpandableListView;->mOnGroupExpandListener:Landroid/widget/ExpandableListView$OnGroupExpandListener;

    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    .line 582
    invoke-super {p0, p1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public setSelectedChild(IIZ)Z
    .locals 1

    .line 983
    invoke-static {p1, p2}, Landroid/widget/ExpandableListPosition;->obtainChildPosition(II)Landroid/widget/ExpandableListPosition;

    move-result-object p2

    .line 985
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v0, p2}, Landroid/widget/ExpandableListConnector;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v0

    if-nez v0, :cond_2

    if-nez p3, :cond_0

    const/4 p0, 0x0

    return p0

    .line 993
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 995
    iget-object p1, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {p1, p2}, Landroid/widget/ExpandableListConnector;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 999
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Could not find child"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1003
    :cond_2
    :goto_0
    iget-object p1, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget p1, p1, Landroid/widget/ExpandableListPosition;->flatListPos:I

    invoke-direct {p0, p1}, Landroid/widget/ExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result p1

    .line 1004
    invoke-super {p0, p1}, Landroid/widget/ListView;->setSelection(I)V

    .line 1006
    invoke-virtual {p2}, Landroid/widget/ExpandableListPosition;->recycle()V

    .line 1007
    invoke-virtual {v0}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    const/4 p0, 0x1

    return p0
.end method

.method public setSelectedGroup(I)V
    .locals 1

    .line 963
    invoke-static {p1}, Landroid/widget/ExpandableListPosition;->obtainGroupPosition(I)Landroid/widget/ExpandableListPosition;

    move-result-object p1

    .line 964
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListConnector;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v0

    .line 965
    invoke-virtual {p1}, Landroid/widget/ExpandableListPosition;->recycle()V

    .line 966
    iget-object p1, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget p1, p1, Landroid/widget/ExpandableListPosition;->flatListPos:I

    invoke-direct {p0, p1}, Landroid/widget/ExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result p1

    .line 967
    invoke-super {p0, p1}, Landroid/widget/ListView;->setSelection(I)V

    .line 968
    invoke-virtual {v0}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    return-void
.end method
