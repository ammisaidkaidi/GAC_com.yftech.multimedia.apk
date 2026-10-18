.class public Landroid/hardware/camera2/legacy/SizeAreaComparator;
.super Ljava/lang/Object;
.source "SizeAreaComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/hardware/Camera$Size;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findLargestByArea(Ljava/util/List;)Landroid/hardware/Camera$Size;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    const-string/jumbo v0, "sizes must not be null"

    .line 68
    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    new-instance v0, Landroid/hardware/camera2/legacy/SizeAreaComparator;

    invoke-direct {v0}, Landroid/hardware/camera2/legacy/SizeAreaComparator;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/Camera$Size;

    return-object p0
.end method


# virtual methods
.method public compare(Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)I
    .locals 6

    const-string/jumbo p0, "size must not be null"

    .line 39
    invoke-static {p1, p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p0, "size2 must not be null"

    .line 40
    invoke-static {p2, p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 46
    :cond_0
    iget p0, p1, Landroid/hardware/Camera$Size;->width:I

    int-to-long v0, p0

    .line 47
    iget p0, p2, Landroid/hardware/Camera$Size;->width:I

    int-to-long v2, p0

    .line 48
    iget p0, p1, Landroid/hardware/Camera$Size;->height:I

    int-to-long p0, p0

    mul-long/2addr p0, v0

    .line 49
    iget p2, p2, Landroid/hardware/Camera$Size;->height:I

    int-to-long v4, p2

    mul-long/2addr v4, v2

    cmp-long p0, p0, v4

    const/4 p1, -0x1

    const/4 p2, 0x1

    if-nez p0, :cond_2

    cmp-long p0, v0, v2

    if-lez p0, :cond_1

    move p1, p2

    :cond_1
    return p1

    :cond_2
    if-lez p0, :cond_3

    move p1, p2

    :cond_3
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 32
    check-cast p1, Landroid/hardware/Camera$Size;

    check-cast p2, Landroid/hardware/Camera$Size;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/legacy/SizeAreaComparator;->compare(Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)I

    move-result p0

    return p0
.end method
