.class final enum Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;
.super Ljava/lang/Enum;
.source "MediaDataList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/list/MediaDataList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "LatelyList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

.field public static final enum DIRECTORY:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

.field public static final enum FILE_LIST:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

.field public static final enum FOLDER_FILE_LIST:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

.field public static final enum FOLDER_LIST:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

.field public static final enum NOT_LIST:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

.field public static final enum SEARCH:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

.field public static final enum SEARCH_LOADING:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

.field public static final enum USB_DISCONNECT:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

.field public static final enum USB_LOADING:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 2245
    new-instance v0, Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    const-string v1, "NOT_LIST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;->NOT_LIST:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    .line 2246
    new-instance v0, Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    const-string v1, "FILE_LIST"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;->FILE_LIST:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    .line 2247
    new-instance v0, Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    const-string v1, "FOLDER_LIST"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;->FOLDER_LIST:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    .line 2248
    new-instance v0, Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    const-string v1, "FOLDER_FILE_LIST"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;->FOLDER_FILE_LIST:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    .line 2249
    new-instance v0, Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    const-string v1, "DIRECTORY"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;->DIRECTORY:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    .line 2250
    new-instance v0, Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    const-string v1, "SEARCH_LOADING"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;->SEARCH_LOADING:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    .line 2251
    new-instance v0, Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    const-string v1, "SEARCH"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;->SEARCH:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    .line 2252
    new-instance v0, Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    const-string v1, "USB_DISCONNECT"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;->USB_DISCONNECT:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    .line 2253
    new-instance v0, Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    const-string v1, "USB_LOADING"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;->USB_LOADING:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    const/16 v0, 0x9

    .line 2244
    new-array v0, v0, [Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    sget-object v1, Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;->NOT_LIST:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;->FILE_LIST:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;->FOLDER_LIST:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;->FOLDER_FILE_LIST:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;->DIRECTORY:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;->SEARCH_LOADING:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;->SEARCH:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    aput-object v1, v0, v8

    sget-object v1, Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;->USB_DISCONNECT:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    aput-object v1, v0, v9

    sget-object v1, Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;->USB_LOADING:Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    aput-object v1, v0, v10

    sput-object v0, Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;->$VALUES:[Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2244
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;
    .locals 1

    .line 2244
    const-class v0, Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    return-object p0
.end method

.method public static values()[Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;
    .locals 1

    .line 2244
    sget-object v0, Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;->$VALUES:[Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    invoke-virtual {v0}, [Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/car/widget/media/list/MediaDataList$LatelyList;

    return-object v0
.end method
