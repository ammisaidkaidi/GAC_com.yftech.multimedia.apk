.class public final synthetic Lcom/yftech/libradio/presenter/-$$Lambda$DabMainPresenter$7IAgFUbnJ6e84ywTrLOvIxx7jDI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic INSTANCE:Lcom/yftech/libradio/presenter/-$$Lambda$DabMainPresenter$7IAgFUbnJ6e84ywTrLOvIxx7jDI;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/yftech/libradio/presenter/-$$Lambda$DabMainPresenter$7IAgFUbnJ6e84ywTrLOvIxx7jDI;

    invoke-direct {v0}, Lcom/yftech/libradio/presenter/-$$Lambda$DabMainPresenter$7IAgFUbnJ6e84ywTrLOvIxx7jDI;-><init>()V

    sput-object v0, Lcom/yftech/libradio/presenter/-$$Lambda$DabMainPresenter$7IAgFUbnJ6e84ywTrLOvIxx7jDI;->INSTANCE:Lcom/yftech/libradio/presenter/-$$Lambda$DabMainPresenter$7IAgFUbnJ6e84ywTrLOvIxx7jDI;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-static {}, Lcom/yftech/libradio/presenter/DabMainPresenter;->lambda$startAllScan$1()V

    return-void
.end method
