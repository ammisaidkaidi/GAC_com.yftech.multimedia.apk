.class public Lcom/yftech/libradio/RadioManager$Holder;
.super Ljava/lang/Object;
.source "RadioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libradio/RadioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/yftech/libradio/RadioManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lcom/yftech/libradio/RadioManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yftech/libradio/RadioManager;-><init>(Lcom/yftech/libradio/RadioManager$1;)V

    sput-object v0, Lcom/yftech/libradio/RadioManager$Holder;->INSTANCE:Lcom/yftech/libradio/RadioManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
