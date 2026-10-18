.class public final Landroid/app/slice/Slice;
.super Ljava/lang/Object;
.source "Slice.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/slice/Slice$Builder;,
        Landroid/app/slice/Slice$SliceSubtype;,
        Landroid/app/slice/Slice$SliceHint;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/slice/Slice;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_RANGE_VALUE:Ljava/lang/String; = "android.app.slice.extra.RANGE_VALUE"

.field public static final EXTRA_SLIDER_VALUE:Ljava/lang/String; = "android.app.slice.extra.SLIDER_VALUE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_TOGGLE_STATE:Ljava/lang/String; = "android.app.slice.extra.TOGGLE_STATE"

.field public static final HINT_ACTIONS:Ljava/lang/String; = "actions"

.field public static final HINT_CALLER_NEEDED:Ljava/lang/String; = "caller_needed"

.field public static final HINT_ERROR:Ljava/lang/String; = "error"

.field public static final HINT_HORIZONTAL:Ljava/lang/String; = "horizontal"

.field public static final HINT_KEYWORDS:Ljava/lang/String; = "keywords"

.field public static final HINT_LARGE:Ljava/lang/String; = "large"

.field public static final HINT_LAST_UPDATED:Ljava/lang/String; = "last_updated"

.field public static final HINT_LIST:Ljava/lang/String; = "list"

.field public static final HINT_LIST_ITEM:Ljava/lang/String; = "list_item"

.field public static final HINT_NO_TINT:Ljava/lang/String; = "no_tint"

.field public static final HINT_PARTIAL:Ljava/lang/String; = "partial"

.field public static final HINT_PERMISSION_REQUEST:Ljava/lang/String; = "permission_request"

.field public static final HINT_SEE_MORE:Ljava/lang/String; = "see_more"

.field public static final HINT_SELECTED:Ljava/lang/String; = "selected"

.field public static final HINT_SHORTCUT:Ljava/lang/String; = "shortcut"

.field public static final HINT_SUMMARY:Ljava/lang/String; = "summary"

.field public static final HINT_TITLE:Ljava/lang/String; = "title"

.field public static final HINT_TOGGLE:Ljava/lang/String; = "toggle"

.field public static final HINT_TTL:Ljava/lang/String; = "ttl"

.field public static final SUBTYPE_COLOR:Ljava/lang/String; = "color"

.field public static final SUBTYPE_CONTENT_DESCRIPTION:Ljava/lang/String; = "content_description"

.field public static final SUBTYPE_LAYOUT_DIRECTION:Ljava/lang/String; = "layout_direction"

.field public static final SUBTYPE_MAX:Ljava/lang/String; = "max"

.field public static final SUBTYPE_MESSAGE:Ljava/lang/String; = "message"

.field public static final SUBTYPE_MILLIS:Ljava/lang/String; = "millis"

.field public static final SUBTYPE_PRIORITY:Ljava/lang/String; = "priority"

.field public static final SUBTYPE_RANGE:Ljava/lang/String; = "range"

.field public static final SUBTYPE_SLIDER:Ljava/lang/String; = "slider"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SUBTYPE_SOURCE:Ljava/lang/String; = "source"

.field public static final SUBTYPE_TOGGLE:Ljava/lang/String; = "toggle"

.field public static final SUBTYPE_VALUE:Ljava/lang/String; = "value"


# instance fields
.field private final mHints:[Ljava/lang/String;

.field private final mItems:[Landroid/app/slice/SliceItem;

.field private mSpec:Landroid/app/slice/SliceSpec;

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 546
    new-instance v0, Landroid/app/slice/Slice$1;

    invoke-direct {v0}, Landroid/app/slice/Slice$1;-><init>()V

    sput-object v0, Landroid/app/slice/Slice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/slice/Slice;->mHints:[Ljava/lang/String;

    .line 286
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 287
    new-array v1, v0, [Landroid/app/slice/SliceItem;

    iput-object v1, p0, Landroid/app/slice/Slice;->mItems:[Landroid/app/slice/SliceItem;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 289
    iget-object v2, p0, Landroid/app/slice/Slice;->mItems:[Landroid/app/slice/SliceItem;

    sget-object v3, Landroid/app/slice/SliceItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/slice/SliceItem;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 291
    :cond_0
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/app/slice/Slice;->mUri:Landroid/net/Uri;

    .line 292
    sget-object v0, Landroid/app/slice/SliceSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/slice/SliceSpec;

    iput-object p1, p0, Landroid/app/slice/Slice;->mSpec:Landroid/app/slice/SliceSpec;

    return-void
.end method

.method constructor <init>(Ljava/util/ArrayList;[Ljava/lang/String;Landroid/net/Uri;Landroid/app/slice/SliceSpec;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/app/slice/SliceItem;",
            ">;[",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Landroid/app/slice/SliceSpec;",
            ")V"
        }
    .end annotation

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    iput-object p2, p0, Landroid/app/slice/Slice;->mHints:[Ljava/lang/String;

    .line 279
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Landroid/app/slice/SliceItem;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/app/slice/SliceItem;

    iput-object p1, p0, Landroid/app/slice/Slice;->mItems:[Landroid/app/slice/SliceItem;

    .line 280
    iput-object p3, p0, Landroid/app/slice/Slice;->mUri:Landroid/net/Uri;

    .line 281
    iput-object p4, p0, Landroid/app/slice/Slice;->mSpec:Landroid/app/slice/SliceSpec;

    return-void
.end method

.method static synthetic access$002(Landroid/app/slice/Slice;Landroid/app/slice/SliceSpec;)Landroid/app/slice/SliceSpec;
    .locals 0

    .line 46
    iput-object p1, p0, Landroid/app/slice/Slice;->mSpec:Landroid/app/slice/SliceSpec;

    return-object p1
.end method

.method private toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 568
    :goto_0
    iget-object v2, p0, Landroid/app/slice/Slice;->mItems:[Landroid/app/slice/SliceItem;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 569
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    iget-object v2, p0, Landroid/app/slice/Slice;->mItems:[Landroid/app/slice/SliceItem;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/app/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "slice"

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "slice:\n"

    .line 571
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    iget-object v2, p0, Landroid/app/slice/Slice;->mItems:[Landroid/app/slice/SliceItem;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/app/slice/SliceItem;->getSlice()Landroid/app/slice/Slice;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/slice/Slice;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 573
    :cond_0
    iget-object v2, p0, Landroid/app/slice/Slice;->mItems:[Landroid/app/slice/SliceItem;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/app/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "text"

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "text: "

    .line 574
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    iget-object v2, p0, Landroid/app/slice/Slice;->mItems:[Landroid/app/slice/SliceItem;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/app/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    .line 576
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 578
    :cond_1
    iget-object v2, p0, Landroid/app/slice/Slice;->mItems:[Landroid/app/slice/SliceItem;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/app/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    .line 579
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 582
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getHints()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 320
    iget-object p0, p0, Landroid/app/slice/Slice;->mHints:[Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getItems()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/slice/SliceItem;",
            ">;"
        }
    .end annotation

    .line 313
    iget-object p0, p0, Landroid/app/slice/Slice;->mItems:[Landroid/app/slice/SliceItem;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSpec()Landroid/app/slice/SliceSpec;
    .locals 0

    .line 299
    iget-object p0, p0, Landroid/app/slice/Slice;->mSpec:Landroid/app/slice/SliceSpec;

    return-object p0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 0

    .line 306
    iget-object p0, p0, Landroid/app/slice/Slice;->mUri:Landroid/net/Uri;

    return-object p0
.end method

.method public hasHint(Ljava/lang/String;)Z
    .locals 0

    .line 343
    iget-object p0, p0, Landroid/app/slice/Slice;->mHints:[Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isCallerNeeded()Z
    .locals 1

    const-string v0, "caller_needed"

    .line 351
    invoke-virtual {p0, v0}, Landroid/app/slice/Slice;->hasHint(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    .line 563
    invoke-direct {p0, v0}, Landroid/app/slice/Slice;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 325
    iget-object v0, p0, Landroid/app/slice/Slice;->mHints:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Landroid/app/slice/Slice;->mItems:[Landroid/app/slice/SliceItem;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    move v1, v0

    .line 327
    :goto_0
    iget-object v2, p0, Landroid/app/slice/Slice;->mItems:[Landroid/app/slice/SliceItem;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 328
    iget-object v2, p0, Landroid/app/slice/Slice;->mItems:[Landroid/app/slice/SliceItem;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2}, Landroid/app/slice/SliceItem;->writeToParcel(Landroid/os/Parcel;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 330
    :cond_0
    iget-object v1, p0, Landroid/app/slice/Slice;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, p1, v0}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 331
    iget-object p0, p0, Landroid/app/slice/Slice;->mSpec:Landroid/app/slice/SliceSpec;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return-void
.end method
