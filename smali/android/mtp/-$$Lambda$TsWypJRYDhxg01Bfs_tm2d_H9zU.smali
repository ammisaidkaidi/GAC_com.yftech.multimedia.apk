.class public final synthetic Landroid/mtp/-$$Lambda$TsWypJRYDhxg01Bfs_tm2d_H9zU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic INSTANCE:Landroid/mtp/-$$Lambda$TsWypJRYDhxg01Bfs_tm2d_H9zU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/mtp/-$$Lambda$TsWypJRYDhxg01Bfs_tm2d_H9zU;

    invoke-direct {v0}, Landroid/mtp/-$$Lambda$TsWypJRYDhxg01Bfs_tm2d_H9zU;-><init>()V

    sput-object v0, Landroid/mtp/-$$Lambda$TsWypJRYDhxg01Bfs_tm2d_H9zU;->INSTANCE:Landroid/mtp/-$$Lambda$TsWypJRYDhxg01Bfs_tm2d_H9zU;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    invoke-static {}, Ljava/util/stream/Stream;->empty()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method
