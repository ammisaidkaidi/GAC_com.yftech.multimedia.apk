.class public final enum Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$SdvcCurveConfiguration;
.super Ljava/lang/Enum;
.source "Ihu23IHostConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SdvcCurveConfiguration"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$SdvcCurveConfiguration;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$SdvcCurveConfiguration;

.field public static final enum SVC1:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$SdvcCurveConfiguration;

.field public static final enum SVC2:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$SdvcCurveConfiguration;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$SdvcCurveConfiguration;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 251
    new-instance v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$SdvcCurveConfiguration;

    const-string v1, "SVC1"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$SdvcCurveConfiguration;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$SdvcCurveConfiguration;->SVC1:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$SdvcCurveConfiguration;

    .line 253
    new-instance v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$SdvcCurveConfiguration;

    const-string v1, "SVC2"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$SdvcCurveConfiguration;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$SdvcCurveConfiguration;->SVC2:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$SdvcCurveConfiguration;

    .line 254
    new-instance v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$SdvcCurveConfiguration;

    const-string v1, "__UNKNOWN__"

    const/4 v4, 0x2

    const/4 v5, -0x1

    invoke-direct {v0, v1, v4, v5}, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$SdvcCurveConfiguration;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$SdvcCurveConfiguration;->__UNKNOWN__:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$SdvcCurveConfiguration;

    const/4 v0, 0x3

    .line 249
    new-array v0, v0, [Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$SdvcCurveConfiguration;

    sget-object v1, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$SdvcCurveConfiguration;->SVC1:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$SdvcCurveConfiguration;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$SdvcCurveConfiguration;->SVC2:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$SdvcCurveConfiguration;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$SdvcCurveConfiguration;->__UNKNOWN__:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$SdvcCurveConfiguration;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$SdvcCurveConfiguration;->$VALUES:[Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$SdvcCurveConfiguration;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 257
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 258
    iput p3, p0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$SdvcCurveConfiguration;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$SdvcCurveConfiguration;
    .locals 1

    .line 262
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$SdvcCurveConfiguration;->SVC1:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$SdvcCurveConfiguration;

    iget v0, v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$SdvcCurveConfiguration;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$SdvcCurveConfiguration;->SVC1:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$SdvcCurveConfiguration;

    return-object p0

    .line 263
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$SdvcCurveConfiguration;->SVC2:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$SdvcCurveConfiguration;

    iget v0, v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$SdvcCurveConfiguration;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$SdvcCurveConfiguration;->SVC2:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$SdvcCurveConfiguration;

    return-object p0

    .line 264
    :cond_1
    sget-object p0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$SdvcCurveConfiguration;->__UNKNOWN__:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$SdvcCurveConfiguration;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$SdvcCurveConfiguration;
    .locals 1

    .line 249
    const-class v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$SdvcCurveConfiguration;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$SdvcCurveConfiguration;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$SdvcCurveConfiguration;
    .locals 1

    .line 249
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$SdvcCurveConfiguration;->$VALUES:[Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$SdvcCurveConfiguration;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$SdvcCurveConfiguration;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$SdvcCurveConfiguration;

    return-object v0
.end method
