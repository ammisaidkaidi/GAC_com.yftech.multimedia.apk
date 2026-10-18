.class public final Landroid/graphics/Typeface$Builder;
.super Ljava/lang/Object;
.source "Typeface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Typeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field public static final BOLD_WEIGHT:I = 0x2bc

.field public static final NORMAL_WEIGHT:I = 0x190


# instance fields
.field private mAssetManager:Landroid/content/res/AssetManager;

.field private mAxes:[Landroid/graphics/fonts/FontVariationAxis;

.field private mFallbackFamilyName:Ljava/lang/String;

.field private mFd:Ljava/io/FileDescriptor;

.field private mFontBuffers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private mFonts:[Landroid/provider/FontsContract$FontInfo;

.field private mItalic:I

.field private mPath:Ljava/lang/String;

.field private mTtcIndex:I

.field private mWeight:I


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 1

    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 351
    iput v0, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    .line 352
    iput v0, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    .line 391
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/res/AssetManager;

    iput-object p1, p0, Landroid/graphics/Typeface$Builder;->mAssetManager:Landroid/content/res/AssetManager;

    .line 392
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroid/graphics/Typeface$Builder;->mPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 351
    iput v0, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    .line 352
    iput v0, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    .line 360
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/graphics/Typeface$Builder;->mPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 1

    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 351
    iput v0, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    .line 352
    iput v0, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    .line 372
    iput-object p1, p0, Landroid/graphics/Typeface$Builder;->mFd:Ljava/io/FileDescriptor;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 351
    iput v0, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    .line 352
    iput v0, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    .line 381
    iput-object p1, p0, Landroid/graphics/Typeface$Builder;->mPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([Landroid/provider/FontsContract$FontInfo;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/provider/FontsContract$FontInfo;",
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Ljava/nio/ByteBuffer;",
            ">;)V"
        }
    .end annotation

    .line 409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 351
    iput v0, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    .line 352
    iput v0, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    .line 410
    iput-object p1, p0, Landroid/graphics/Typeface$Builder;->mFonts:[Landroid/provider/FontsContract$FontInfo;

    .line 411
    iput-object p2, p0, Landroid/graphics/Typeface$Builder;->mFontBuffers:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Landroid/content/res/AssetManager;Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;IILjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 333
    invoke-static/range {p0 .. p6}, Landroid/graphics/Typeface$Builder;->createAssetUid(Landroid/content/res/AssetManager;Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static createAssetUid(Landroid/content/res/AssetManager;Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;IILjava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 528
    invoke-virtual {p0}, Landroid/content/res/AssetManager;->getAssignedPackageIdentifiers()Landroid/util/SparseArray;

    move-result-object p0

    .line 529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 530
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    .line 532
    invoke-virtual {p0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-"

    .line 533
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 535
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-"

    .line 536
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-"

    .line 538
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-"

    .line 540
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "--"

    .line 544
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "--"

    .line 546
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_1

    .line 548
    array-length p0, p3

    :goto_1
    if-ge v2, p0, :cond_1

    aget-object p1, p3, v2

    .line 549
    invoke-virtual {p1}, Landroid/graphics/fonts/FontVariationAxis;->getTag()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "-"

    .line 550
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    invoke-virtual {p1}, Landroid/graphics/fonts/FontVariationAxis;->getStyleValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 554
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private resolveFallbackTypeface()Landroid/graphics/Typeface;
    .locals 6

    .line 558
    iget-object v0, p0, Landroid/graphics/Typeface$Builder;->mFallbackFamilyName:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 562
    :cond_0
    sget-object v0, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    iget-object v1, p0, Landroid/graphics/Typeface$Builder;->mFallbackFamilyName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    if-nez v0, :cond_1

    .line 564
    sget-object v0, Landroid/graphics/Typeface;->sDefaultTypeface:Landroid/graphics/Typeface;

    .line 567
    :cond_1
    iget v1, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    iget v1, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    if-ne v1, v2, :cond_2

    return-object v0

    .line 571
    :cond_2
    iget v1, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    if-ne v1, v2, :cond_3

    invoke-static {v0}, Landroid/graphics/Typeface;->access$100(Landroid/graphics/Typeface;)I

    move-result v1

    goto :goto_0

    :cond_3
    iget v1, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    .line 573
    :goto_0
    iget v3, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v2, :cond_4

    invoke-static {v0}, Landroid/graphics/Typeface;->access$200(Landroid/graphics/Typeface;)I

    move-result p0

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_5

    :goto_1
    move v4, v5

    goto :goto_2

    :cond_4
    iget p0, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    if-ne p0, v5, :cond_5

    goto :goto_1

    .line 574
    :cond_5
    :goto_2
    invoke-static {v0, v1, v4}, Landroid/graphics/Typeface;->access$300(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public build()Landroid/graphics/Typeface;
    .locals 18

    move-object/from16 v1, p0

    .line 583
    iget-object v0, v1, Landroid/graphics/Typeface$Builder;->mFd:Ljava/io/FileDescriptor;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    .line 584
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    iget-object v0, v1, Landroid/graphics/Typeface$Builder;->mFd:Ljava/io/FileDescriptor;

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 585
    :try_start_1
    invoke-virtual {v5}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    .line 586
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v10

    .line 587
    sget-object v7, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v8, 0x0

    invoke-virtual/range {v6 .. v11}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v13

    .line 589
    new-instance v0, Landroid/graphics/FontFamily;

    invoke-direct {v0}, Landroid/graphics/FontFamily;-><init>()V

    .line 590
    iget v14, v1, Landroid/graphics/Typeface$Builder;->mTtcIndex:I

    iget-object v15, v1, Landroid/graphics/Typeface$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    iget v6, v1, Landroid/graphics/Typeface$Builder;->mWeight:I

    iget v7, v1, Landroid/graphics/Typeface$Builder;->mItalic:I

    move-object v12, v0

    move/from16 v16, v6

    move/from16 v17, v7

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/FontFamily;->addFontFromBuffer(Ljava/nio/ByteBuffer;I[Landroid/graphics/fonts/FontVariationAxis;II)Z

    move-result v6

    if-nez v6, :cond_0

    .line 591
    invoke-virtual {v0}, Landroid/graphics/FontFamily;->abortCreation()V

    .line 592
    invoke-direct/range {p0 .. p0}, Landroid/graphics/Typeface$Builder;->resolveFallbackTypeface()Landroid/graphics/Typeface;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 600
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    return-object v0

    .line 594
    :cond_0
    :try_start_3
    invoke-virtual {v0}, Landroid/graphics/FontFamily;->freeze()Z

    move-result v6

    if-nez v6, :cond_1

    .line 595
    invoke-direct/range {p0 .. p0}, Landroid/graphics/Typeface$Builder;->resolveFallbackTypeface()Landroid/graphics/Typeface;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 600
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    return-object v0

    .line 597
    :cond_1
    :try_start_5
    new-array v3, v3, [Landroid/graphics/FontFamily;

    aput-object v0, v3, v4

    .line 598
    iget-object v0, v1, Landroid/graphics/Typeface$Builder;->mFallbackFamilyName:Ljava/lang/String;

    iget v4, v1, Landroid/graphics/Typeface$Builder;->mWeight:I

    iget v6, v1, Landroid/graphics/Typeface$Builder;->mItalic:I

    invoke-static {v3, v0, v4, v6}, Landroid/graphics/Typeface;->access$400([Landroid/graphics/FontFamily;Ljava/lang/String;II)Landroid/graphics/Typeface;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 600
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    return-object v0

    :catchall_0
    move-exception v0

    move-object v3, v2

    move-object v2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 584
    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_0
    if-eqz v3, :cond_2

    .line 600
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v4, v0

    :try_start_9
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    :goto_1
    throw v2
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    .line 601
    :catch_2
    invoke-direct/range {p0 .. p0}, Landroid/graphics/Typeface$Builder;->resolveFallbackTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0

    .line 603
    :cond_3
    iget-object v0, v1, Landroid/graphics/Typeface$Builder;->mAssetManager:Landroid/content/res/AssetManager;

    if-eqz v0, :cond_7

    .line 604
    iget-object v5, v1, Landroid/graphics/Typeface$Builder;->mAssetManager:Landroid/content/res/AssetManager;

    iget-object v6, v1, Landroid/graphics/Typeface$Builder;->mPath:Ljava/lang/String;

    iget v7, v1, Landroid/graphics/Typeface$Builder;->mTtcIndex:I

    iget-object v8, v1, Landroid/graphics/Typeface$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    iget v9, v1, Landroid/graphics/Typeface$Builder;->mWeight:I

    iget v10, v1, Landroid/graphics/Typeface$Builder;->mItalic:I

    iget-object v11, v1, Landroid/graphics/Typeface$Builder;->mFallbackFamilyName:Ljava/lang/String;

    invoke-static/range {v5 .. v11}, Landroid/graphics/Typeface$Builder;->createAssetUid(Landroid/content/res/AssetManager;Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 607
    invoke-static {}, Landroid/graphics/Typeface;->access$500()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 608
    :try_start_a
    invoke-static {}, Landroid/graphics/Typeface;->access$600()Landroid/util/LruCache;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Typeface;

    if-eqz v2, :cond_4

    .line 609
    monitor-exit v5

    return-object v2

    .line 610
    :cond_4
    new-instance v2, Landroid/graphics/FontFamily;

    invoke-direct {v2}, Landroid/graphics/FontFamily;-><init>()V

    .line 611
    iget-object v7, v1, Landroid/graphics/Typeface$Builder;->mAssetManager:Landroid/content/res/AssetManager;

    iget-object v8, v1, Landroid/graphics/Typeface$Builder;->mPath:Ljava/lang/String;

    iget v9, v1, Landroid/graphics/Typeface$Builder;->mTtcIndex:I

    const/4 v10, 0x1

    iget v11, v1, Landroid/graphics/Typeface$Builder;->mTtcIndex:I

    iget v12, v1, Landroid/graphics/Typeface$Builder;->mWeight:I

    iget v13, v1, Landroid/graphics/Typeface$Builder;->mItalic:I

    iget-object v14, v1, Landroid/graphics/Typeface$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    move-object v6, v2

    invoke-virtual/range {v6 .. v14}, Landroid/graphics/FontFamily;->addFontFromAssetManager(Landroid/content/res/AssetManager;Ljava/lang/String;IZIII[Landroid/graphics/fonts/FontVariationAxis;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 613
    invoke-virtual {v2}, Landroid/graphics/FontFamily;->abortCreation()V

    .line 614
    invoke-direct/range {p0 .. p0}, Landroid/graphics/Typeface$Builder;->resolveFallbackTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    monitor-exit v5

    return-object v0

    .line 616
    :cond_5
    invoke-virtual {v2}, Landroid/graphics/FontFamily;->freeze()Z

    move-result v6

    if-nez v6, :cond_6

    .line 617
    invoke-direct/range {p0 .. p0}, Landroid/graphics/Typeface$Builder;->resolveFallbackTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    monitor-exit v5

    return-object v0

    .line 619
    :cond_6
    new-array v3, v3, [Landroid/graphics/FontFamily;

    aput-object v2, v3, v4

    .line 620
    iget-object v2, v1, Landroid/graphics/Typeface$Builder;->mFallbackFamilyName:Ljava/lang/String;

    iget v4, v1, Landroid/graphics/Typeface$Builder;->mWeight:I

    iget v1, v1, Landroid/graphics/Typeface$Builder;->mItalic:I

    invoke-static {v3, v2, v4, v1}, Landroid/graphics/Typeface;->access$400([Landroid/graphics/FontFamily;Ljava/lang/String;II)Landroid/graphics/Typeface;

    move-result-object v1

    .line 622
    invoke-static {}, Landroid/graphics/Typeface;->access$600()Landroid/util/LruCache;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    monitor-exit v5

    return-object v1

    :catchall_1
    move-exception v0

    .line 624
    monitor-exit v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    throw v0

    .line 625
    :cond_7
    iget-object v0, v1, Landroid/graphics/Typeface$Builder;->mPath:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 626
    new-instance v0, Landroid/graphics/FontFamily;

    invoke-direct {v0}, Landroid/graphics/FontFamily;-><init>()V

    .line 627
    iget-object v6, v1, Landroid/graphics/Typeface$Builder;->mPath:Ljava/lang/String;

    iget v7, v1, Landroid/graphics/Typeface$Builder;->mTtcIndex:I

    iget-object v8, v1, Landroid/graphics/Typeface$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    iget v9, v1, Landroid/graphics/Typeface$Builder;->mWeight:I

    iget v10, v1, Landroid/graphics/Typeface$Builder;->mItalic:I

    move-object v5, v0

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/FontFamily;->addFont(Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;II)Z

    move-result v2

    if-nez v2, :cond_8

    .line 628
    invoke-virtual {v0}, Landroid/graphics/FontFamily;->abortCreation()V

    .line 629
    invoke-direct/range {p0 .. p0}, Landroid/graphics/Typeface$Builder;->resolveFallbackTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0

    .line 631
    :cond_8
    invoke-virtual {v0}, Landroid/graphics/FontFamily;->freeze()Z

    move-result v2

    if-nez v2, :cond_9

    .line 632
    invoke-direct/range {p0 .. p0}, Landroid/graphics/Typeface$Builder;->resolveFallbackTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0

    .line 634
    :cond_9
    new-array v2, v3, [Landroid/graphics/FontFamily;

    aput-object v0, v2, v4

    .line 635
    iget-object v0, v1, Landroid/graphics/Typeface$Builder;->mFallbackFamilyName:Ljava/lang/String;

    iget v3, v1, Landroid/graphics/Typeface$Builder;->mWeight:I

    iget v1, v1, Landroid/graphics/Typeface$Builder;->mItalic:I

    invoke-static {v2, v0, v3, v1}, Landroid/graphics/Typeface;->access$400([Landroid/graphics/FontFamily;Ljava/lang/String;II)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0

    .line 637
    :cond_a
    iget-object v0, v1, Landroid/graphics/Typeface$Builder;->mFonts:[Landroid/provider/FontsContract$FontInfo;

    if-eqz v0, :cond_f

    .line 638
    new-instance v0, Landroid/graphics/FontFamily;

    invoke-direct {v0}, Landroid/graphics/FontFamily;-><init>()V

    .line 640
    iget-object v11, v1, Landroid/graphics/Typeface$Builder;->mFonts:[Landroid/provider/FontsContract$FontInfo;

    array-length v12, v11

    move v5, v4

    move v13, v5

    :goto_2
    if-ge v13, v12, :cond_d

    aget-object v6, v11, v13

    .line 641
    iget-object v7, v1, Landroid/graphics/Typeface$Builder;->mFontBuffers:Ljava/util/Map;

    invoke-virtual {v6}, Landroid/provider/FontsContract$FontInfo;->getUri()Landroid/net/Uri;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/nio/ByteBuffer;

    if-nez v7, :cond_b

    goto :goto_3

    .line 646
    :cond_b
    invoke-virtual {v6}, Landroid/provider/FontsContract$FontInfo;->getTtcIndex()I

    move-result v8

    invoke-virtual {v6}, Landroid/provider/FontsContract$FontInfo;->getAxes()[Landroid/graphics/fonts/FontVariationAxis;

    move-result-object v9

    invoke-virtual {v6}, Landroid/provider/FontsContract$FontInfo;->getWeight()I

    move-result v10

    .line 647
    invoke-virtual {v6}, Landroid/provider/FontsContract$FontInfo;->isItalic()Z

    move-result v14

    move-object v5, v0

    move-object v6, v7

    move v7, v8

    move-object v8, v9

    move v9, v10

    move v10, v14

    .line 645
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/FontFamily;->addFontFromBuffer(Ljava/nio/ByteBuffer;I[Landroid/graphics/fonts/FontVariationAxis;II)Z

    move-result v5

    if-nez v5, :cond_c

    .line 649
    invoke-virtual {v0}, Landroid/graphics/FontFamily;->abortCreation()V

    return-object v2

    :cond_c
    move v5, v3

    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_d
    if-nez v5, :cond_e

    .line 657
    invoke-virtual {v0}, Landroid/graphics/FontFamily;->abortCreation()V

    return-object v2

    .line 660
    :cond_e
    invoke-virtual {v0}, Landroid/graphics/FontFamily;->freeze()Z

    .line 661
    new-array v2, v3, [Landroid/graphics/FontFamily;

    aput-object v0, v2, v4

    .line 662
    iget-object v0, v1, Landroid/graphics/Typeface$Builder;->mFallbackFamilyName:Ljava/lang/String;

    iget v3, v1, Landroid/graphics/Typeface$Builder;->mWeight:I

    iget v1, v1, Landroid/graphics/Typeface$Builder;->mItalic:I

    invoke-static {v2, v0, v3, v1}, Landroid/graphics/Typeface;->access$400([Landroid/graphics/FontFamily;Ljava/lang/String;II)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0

    .line 667
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No source was set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFallback(Ljava/lang/String;)Landroid/graphics/Typeface$Builder;
    .locals 0

    .line 513
    iput-object p1, p0, Landroid/graphics/Typeface$Builder;->mFallbackFamilyName:Ljava/lang/String;

    return-object p0
.end method

.method public setFontVariationSettings(Ljava/lang/String;)Landroid/graphics/Typeface$Builder;
    .locals 1

    .line 462
    iget-object v0, p0, Landroid/graphics/Typeface$Builder;->mFonts:[Landroid/provider/FontsContract$FontInfo;

    if-nez v0, :cond_1

    .line 466
    iget-object v0, p0, Landroid/graphics/Typeface$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    if-nez v0, :cond_0

    .line 469
    invoke-static {p1}, Landroid/graphics/fonts/FontVariationAxis;->fromFontVariationSettings(Ljava/lang/String;)[Landroid/graphics/fonts/FontVariationAxis;

    move-result-object p1

    iput-object p1, p0, Landroid/graphics/Typeface$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    return-object p0

    .line 467
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Font variation settings are already set."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 463
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Font variation settings can not be specified for FontResult source."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setFontVariationSettings([Landroid/graphics/fonts/FontVariationAxis;)Landroid/graphics/Typeface$Builder;
    .locals 1

    .line 479
    iget-object v0, p0, Landroid/graphics/Typeface$Builder;->mFonts:[Landroid/provider/FontsContract$FontInfo;

    if-nez v0, :cond_1

    .line 483
    iget-object v0, p0, Landroid/graphics/Typeface$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    if-nez v0, :cond_0

    .line 486
    iput-object p1, p0, Landroid/graphics/Typeface$Builder;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    return-object p0

    .line 484
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Font variation settings are already set."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 480
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Font variation settings can not be specified for FontResult source."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setItalic(Z)Landroid/graphics/Typeface$Builder;
    .locals 0

    .line 434
    iput p1, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    return-object p0
.end method

.method public setTtcIndex(I)Landroid/graphics/Typeface$Builder;
    .locals 1

    .line 446
    iget-object v0, p0, Landroid/graphics/Typeface$Builder;->mFonts:[Landroid/provider/FontsContract$FontInfo;

    if-nez v0, :cond_0

    .line 450
    iput p1, p0, Landroid/graphics/Typeface$Builder;->mTtcIndex:I

    return-object p0

    .line 447
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "TTC index can not be specified for FontResult source."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setWeight(I)Landroid/graphics/Typeface$Builder;
    .locals 0

    .line 422
    iput p1, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    return-object p0
.end method
