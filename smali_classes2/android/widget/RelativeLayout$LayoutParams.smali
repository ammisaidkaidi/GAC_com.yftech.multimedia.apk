.class public Landroid/widget/RelativeLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "RelativeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RelativeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public alignWithParent:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mBottom:I

.field private mInitialRules:[I

.field private mIsRtlCompatibilityMode:Z

.field private mLeft:I

.field private mNeedsLayoutResolution:Z

.field private mRight:I

.field private mRules:[I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
        indexMapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "above"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x4
                to = "alignBaseline"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x8
                to = "alignBottom"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x5
                to = "alignLeft"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xc
                to = "alignParentBottom"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x9
                to = "alignParentLeft"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xb
                to = "alignParentRight"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xa
                to = "alignParentTop"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7
                to = "alignRight"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x6
                to = "alignTop"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "below"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xe
                to = "centerHorizontal"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xd
                to = "center"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xf
                to = "centerVertical"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "leftOf"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "rightOf"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x12
                to = "alignStart"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x13
                to = "alignEnd"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x14
                to = "alignParentStart"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x15
                to = "alignParentEnd"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x10
                to = "startOf"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x11
                to = "endOf"
            .end subannotation
        }
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = -0x1
                to = "true"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "false/NO_ID"
            .end subannotation
        }
        resolveId = true
    .end annotation
.end field

.field private mRulesChanged:Z

.field private mTop:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1364
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/16 p1, 0x16

    .line 1219
    new-array p2, p1, [I

    iput-object p2, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    .line 1248
    new-array p1, p1, [I

    iput-object p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    const/4 p1, 0x0

    .line 1258
    iput-boolean p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1259
    iput-boolean p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    .line 1269
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x16

    .line 1219
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    .line 1248
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    const/4 v1, 0x0

    .line 1258
    iput-boolean v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1259
    iput-boolean v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    .line 1271
    sget-object v2, Lcom/android/internal/R$styleable;->RelativeLayout_Layout:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 1274
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x11

    const/4 v4, 0x1

    if-lt v2, v3, :cond_1

    .line 1276
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->hasRtlSupport()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v4

    :goto_1
    iput-boolean p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    .line 1278
    iget-object p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    .line 1280
    iget-object v2, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    .line 1282
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v5

    move v6, v1

    :goto_2
    if-ge v6, v5, :cond_b

    .line 1284
    invoke-virtual {p2, v6}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v7

    const/4 v8, -0x1

    packed-switch v7, :pswitch_data_0

    goto/16 :goto_c

    :pswitch_0
    const/16 v9, 0x15

    .line 1353
    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_3

    :cond_2
    move v8, v1

    :goto_3
    aput v8, p1, v9

    goto/16 :goto_c

    :pswitch_1
    const/16 v9, 0x14

    .line 1350
    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_4

    :cond_3
    move v8, v1

    :goto_4
    aput v8, p1, v9

    goto/16 :goto_c

    :pswitch_2
    const/16 v8, 0x13

    .line 1347
    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    aput v7, p1, v8

    goto/16 :goto_c

    :pswitch_3
    const/16 v8, 0x12

    .line 1344
    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    aput v7, p1, v8

    goto/16 :goto_c

    .line 1341
    :pswitch_4
    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    aput v7, p1, v3

    goto/16 :goto_c

    :pswitch_5
    const/16 v8, 0x10

    .line 1338
    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    aput v7, p1, v8

    goto/16 :goto_c

    .line 1287
    :pswitch_6
    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    goto/16 :goto_c

    :pswitch_7
    const/16 v9, 0xf

    .line 1335
    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_5

    :cond_4
    move v8, v1

    :goto_5
    aput v8, p1, v9

    goto/16 :goto_c

    :pswitch_8
    const/16 v9, 0xe

    .line 1332
    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_6

    :cond_5
    move v8, v1

    :goto_6
    aput v8, p1, v9

    goto/16 :goto_c

    :pswitch_9
    const/16 v9, 0xd

    .line 1329
    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_7

    :cond_6
    move v8, v1

    :goto_7
    aput v8, p1, v9

    goto/16 :goto_c

    :pswitch_a
    const/16 v9, 0xc

    .line 1326
    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_8

    :cond_7
    move v8, v1

    :goto_8
    aput v8, p1, v9

    goto/16 :goto_c

    :pswitch_b
    const/16 v9, 0xb

    .line 1323
    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_8

    goto :goto_9

    :cond_8
    move v8, v1

    :goto_9
    aput v8, p1, v9

    goto/16 :goto_c

    :pswitch_c
    const/16 v9, 0xa

    .line 1320
    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_9

    goto :goto_a

    :cond_9
    move v8, v1

    :goto_a
    aput v8, p1, v9

    goto :goto_c

    :pswitch_d
    const/16 v9, 0x9

    .line 1317
    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_a

    goto :goto_b

    :cond_a
    move v8, v1

    :goto_b
    aput v8, p1, v9

    goto :goto_c

    :pswitch_e
    const/16 v8, 0x8

    .line 1314
    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    aput v7, p1, v8

    goto :goto_c

    :pswitch_f
    const/4 v8, 0x7

    .line 1311
    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    aput v7, p1, v8

    goto :goto_c

    :pswitch_10
    const/4 v8, 0x6

    .line 1308
    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    aput v7, p1, v8

    goto :goto_c

    :pswitch_11
    const/4 v8, 0x5

    .line 1305
    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    aput v7, p1, v8

    goto :goto_c

    :pswitch_12
    const/4 v8, 0x4

    .line 1302
    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    aput v7, p1, v8

    goto :goto_c

    :pswitch_13
    const/4 v8, 0x3

    .line 1299
    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    aput v7, p1, v8

    goto :goto_c

    :pswitch_14
    const/4 v8, 0x2

    .line 1296
    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    aput v7, p1, v8

    goto :goto_c

    .line 1293
    :pswitch_15
    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    aput v7, p1, v4

    goto :goto_c

    .line 1290
    :pswitch_16
    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    aput v7, p1, v1

    :goto_c
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 1357
    :cond_b
    iput-boolean v4, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1358
    invoke-static {p1, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1360
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 1371
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 p1, 0x16

    .line 1219
    new-array v0, p1, [I

    iput-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    .line 1248
    new-array p1, p1, [I

    iput-object p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    const/4 p1, 0x0

    .line 1258
    iput-boolean p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1259
    iput-boolean p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    .line 1378
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/16 p1, 0x16

    .line 1219
    new-array v0, p1, [I

    iput-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    .line 1248
    new-array p1, p1, [I

    iput-object p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    const/4 p1, 0x0

    .line 1258
    iput-boolean p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1259
    iput-boolean p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    return-void
.end method

.method public constructor <init>(Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 4

    .line 1388
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/16 v0, 0x16

    .line 1219
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    .line 1248
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    const/4 v1, 0x0

    .line 1258
    iput-boolean v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1259
    iput-boolean v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    .line 1390
    iget-boolean v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    iput-boolean v2, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    .line 1391
    iget-boolean v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    iput-boolean v2, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1392
    iget-boolean v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    iput-boolean v2, p0, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    .line 1394
    iget-object v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    invoke-static {v2, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1395
    iget-object p1, p1, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    iget-object p0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    invoke-static {p1, v1, p0, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method static synthetic access$100(Landroid/widget/RelativeLayout$LayoutParams;)I
    .locals 0

    .line 1218
    iget p0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I

    return p0
.end method

.method static synthetic access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .locals 0

    .line 1218
    iput p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I

    return p1
.end method

.method static synthetic access$112(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .locals 1

    .line 1218
    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I

    return v0
.end method

.method static synthetic access$120(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .locals 1

    .line 1218
    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I

    return v0
.end method

.method static synthetic access$200(Landroid/widget/RelativeLayout$LayoutParams;)I
    .locals 0

    .line 1218
    iget p0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRight:I

    return p0
.end method

.method static synthetic access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .locals 0

    .line 1218
    iput p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRight:I

    return p1
.end method

.method static synthetic access$212(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .locals 1

    .line 1218
    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRight:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRight:I

    return v0
.end method

.method static synthetic access$220(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .locals 1

    .line 1218
    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRight:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRight:I

    return v0
.end method

.method static synthetic access$300(Landroid/widget/RelativeLayout$LayoutParams;)I
    .locals 0

    .line 1218
    iget p0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I

    return p0
.end method

.method static synthetic access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .locals 0

    .line 1218
    iput p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I

    return p1
.end method

.method static synthetic access$312(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .locals 1

    .line 1218
    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I

    return v0
.end method

.method static synthetic access$400(Landroid/widget/RelativeLayout$LayoutParams;)I
    .locals 0

    .line 1218
    iget p0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mTop:I

    return p0
.end method

.method static synthetic access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .locals 0

    .line 1218
    iput p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mTop:I

    return p1
.end method

.method static synthetic access$412(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .locals 1

    .line 1218
    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mTop:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mTop:I

    return v0
.end method

.method static synthetic access$700(Landroid/widget/RelativeLayout$LayoutParams;)[I
    .locals 0

    .line 1218
    iget-object p0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    return-object p0
.end method

.method private hasRelativeRules()Z
    .locals 2

    .line 1498
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    const/16 v1, 0x10

    aget v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    const/16 v1, 0x11

    aget v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    const/16 v1, 0x12

    aget v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    const/16 v1, 0x13

    aget v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    const/16 v1, 0x14

    aget v0, v0, v1

    if-nez v0, :cond_1

    iget-object p0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    const/16 v0, 0x15

    aget p0, p0, v0

    if-eqz p0, :cond_0

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

.method private isRelativeRule(I)Z
    .locals 0

    const/16 p0, 0x10

    if-eq p1, p0, :cond_1

    const/16 p0, 0x11

    if-eq p1, p0, :cond_1

    const/16 p0, 0x12

    if-eq p1, p0, :cond_1

    const/16 p0, 0x13

    if-eq p1, p0, :cond_1

    const/16 p0, 0x14

    if-eq p1, p0, :cond_1

    const/16 p0, 0x15

    if-ne p1, p0, :cond_0

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

.method private resolveRules(I)V
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    move/from16 v3, p1

    if-ne v3, v1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 1526
    :goto_0
    iget-object v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v6, 0x16

    invoke-static {v4, v2, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1529
    iget-boolean v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    const/16 v5, 0xb

    const/16 v6, 0x9

    const/4 v7, 0x7

    const/4 v8, 0x5

    const/16 v9, 0x15

    const/16 v10, 0x14

    const/16 v11, 0x11

    const/16 v12, 0x10

    const/16 v13, 0x13

    const/16 v14, 0x12

    if-eqz v4, :cond_c

    .line 1530
    iget-object v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v3, v3, v14

    if-eqz v3, :cond_2

    .line 1531
    iget-object v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v3, v3, v8

    if-nez v3, :cond_1

    .line 1534
    iget-object v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    iget-object v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v4, v4, v14

    aput v4, v3, v8

    .line 1536
    :cond_1
    iget-object v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v2, v3, v14

    .line 1539
    :cond_2
    iget-object v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v3, v3, v13

    if-eqz v3, :cond_4

    .line 1540
    iget-object v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v3, v3, v7

    if-nez v3, :cond_3

    .line 1543
    iget-object v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    iget-object v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v4, v4, v13

    aput v4, v3, v7

    .line 1545
    :cond_3
    iget-object v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v2, v3, v13

    .line 1548
    :cond_4
    iget-object v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v3, v3, v12

    if-eqz v3, :cond_6

    .line 1549
    iget-object v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v3, v3, v2

    if-nez v3, :cond_5

    .line 1552
    iget-object v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    iget-object v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v4, v4, v12

    aput v4, v3, v2

    .line 1554
    :cond_5
    iget-object v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v2, v3, v12

    .line 1557
    :cond_6
    iget-object v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v3, v3, v11

    if-eqz v3, :cond_8

    .line 1558
    iget-object v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v3, v3, v1

    if-nez v3, :cond_7

    .line 1561
    iget-object v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    iget-object v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v4, v4, v11

    aput v4, v3, v1

    .line 1563
    :cond_7
    iget-object v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v2, v1, v11

    .line 1566
    :cond_8
    iget-object v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v1, v1, v10

    if-eqz v1, :cond_a

    .line 1567
    iget-object v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v1, v1, v6

    if-nez v1, :cond_9

    .line 1570
    iget-object v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    iget-object v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v3, v3, v10

    aput v3, v1, v6

    .line 1572
    :cond_9
    iget-object v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v2, v1, v10

    .line 1575
    :cond_a
    iget-object v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v1, v1, v9

    if-eqz v1, :cond_1f

    .line 1576
    iget-object v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v1, v1, v5

    if-nez v1, :cond_b

    .line 1579
    iget-object v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    iget-object v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v3, v3, v9

    aput v3, v1, v5

    .line 1581
    :cond_b
    iget-object v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v2, v1, v9

    goto/16 :goto_4

    .line 1585
    :cond_c
    iget-object v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v4, v4, v14

    if-nez v4, :cond_d

    iget-object v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v4, v4, v13

    if-eqz v4, :cond_f

    :cond_d
    iget-object v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v4, v4, v8

    if-nez v4, :cond_e

    iget-object v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v4, v4, v7

    if-eqz v4, :cond_f

    .line 1588
    :cond_e
    iget-object v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v2, v4, v8

    .line 1589
    iget-object v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v2, v4, v7

    .line 1591
    :cond_f
    iget-object v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v4, v4, v14

    if-eqz v4, :cond_11

    .line 1593
    iget-object v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    if-eqz v3, :cond_10

    move v15, v7

    goto :goto_1

    :cond_10
    move v15, v8

    :goto_1
    iget-object v7, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v7, v7, v14

    aput v7, v4, v15

    .line 1594
    iget-object v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v2, v4, v14

    .line 1596
    :cond_11
    iget-object v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v4, v4, v13

    if-eqz v4, :cond_13

    .line 1598
    iget-object v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    if-eqz v3, :cond_12

    move/from16 v16, v8

    goto :goto_2

    :cond_12
    const/16 v16, 0x7

    :goto_2
    iget-object v7, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v7, v7, v13

    aput v7, v4, v16

    .line 1599
    iget-object v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v2, v4, v13

    .line 1602
    :cond_13
    iget-object v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v4, v4, v12

    if-nez v4, :cond_14

    iget-object v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v4, v4, v11

    if-eqz v4, :cond_16

    :cond_14
    iget-object v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v4, v4, v2

    if-nez v4, :cond_15

    iget-object v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v4, v4, v1

    if-eqz v4, :cond_16

    .line 1605
    :cond_15
    iget-object v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v2, v4, v2

    .line 1606
    iget-object v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v2, v4, v1

    .line 1608
    :cond_16
    iget-object v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v1, v1, v12

    if-eqz v1, :cond_17

    .line 1610
    iget-object v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    iget-object v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v4, v4, v12

    aput v4, v1, v3

    .line 1611
    iget-object v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v2, v1, v12

    .line 1613
    :cond_17
    iget-object v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v1, v1, v11

    if-eqz v1, :cond_18

    .line 1615
    iget-object v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    xor-int/lit8 v4, v3, 0x1

    iget-object v7, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v7, v7, v11

    aput v7, v1, v4

    .line 1616
    iget-object v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v2, v1, v11

    .line 1619
    :cond_18
    iget-object v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v1, v1, v10

    if-nez v1, :cond_19

    iget-object v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v1, v1, v9

    if-eqz v1, :cond_1b

    :cond_19
    iget-object v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v1, v1, v6

    if-nez v1, :cond_1a

    iget-object v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v1, v1, v5

    if-eqz v1, :cond_1b

    .line 1622
    :cond_1a
    iget-object v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v2, v1, v6

    .line 1623
    iget-object v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v2, v1, v5

    .line 1625
    :cond_1b
    iget-object v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v1, v1, v10

    if-eqz v1, :cond_1d

    .line 1627
    iget-object v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    if-eqz v3, :cond_1c

    move v4, v5

    goto :goto_3

    :cond_1c
    move v4, v6

    :goto_3
    iget-object v7, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v7, v7, v10

    aput v7, v1, v4

    .line 1628
    iget-object v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v2, v1, v10

    .line 1630
    :cond_1d
    iget-object v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v1, v1, v9

    if-eqz v1, :cond_1f

    .line 1632
    iget-object v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    if-eqz v3, :cond_1e

    move v5, v6

    :cond_1e
    iget-object v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v3, v3, v9

    aput v3, v1, v5

    .line 1633
    iget-object v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v2, v1, v9

    .line 1637
    :cond_1f
    :goto_4
    iput-boolean v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1638
    iput-boolean v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mNeedsLayoutResolution:Z

    return-void
.end method

.method private shouldResolveLayoutDirection(I)Z
    .locals 1

    .line 1692
    iget-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mNeedsLayoutResolution:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/widget/RelativeLayout$LayoutParams;->hasRelativeRules()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    if-nez v0, :cond_2

    .line 1693
    invoke-virtual {p0}, Landroid/widget/RelativeLayout$LayoutParams;->getLayoutDirection()I

    move-result p0

    if-eq p1, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public addRule(I)V
    .locals 1

    const/4 v0, -0x1

    .line 1425
    invoke-virtual {p0, p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    return-void
.end method

.method public addRule(II)V
    .locals 2

    .line 1451
    iget-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mNeedsLayoutResolution:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->isRelativeRule(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    aget v0, v0, p1

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 1453
    iput-boolean v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mNeedsLayoutResolution:Z

    .line 1456
    :cond_0
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput p2, v0, p1

    .line 1457
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    aput p2, v0, p1

    .line 1458
    iput-boolean v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    return-void
.end method

.method public debug(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "ViewGroup.LayoutParams={ width="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-static {p1}, Landroid/widget/RelativeLayout$LayoutParams;->sizeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", height="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1402
    invoke-static {p0}, Landroid/widget/RelativeLayout$LayoutParams;->sizeToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 1

    .line 1699
    invoke-super {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    const-string v0, "layout:alignWithParent"

    .line 1700
    iget-boolean p0, p0, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    invoke-virtual {p1, v0, p0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    return-void
.end method

.method public getRule(I)I
    .locals 0

    .line 1494
    iget-object p0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget p0, p0, p1

    return p0
.end method

.method public getRules()[I
    .locals 0

    .line 1669
    iget-object p0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    return-object p0
.end method

.method public getRules(I)[I
    .locals 0

    .line 1656
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->resolveLayoutDirection(I)V

    .line 1657
    iget-object p0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    return-object p0
.end method

.method public removeRule(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1478
    invoke-virtual {p0, p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    return-void
.end method

.method public resolveLayoutDirection(I)V
    .locals 1

    .line 1683
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->shouldResolveLayoutDirection(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1684
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->resolveRules(I)V

    .line 1688
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->resolveLayoutDirection(I)V

    return-void
.end method
