.class public Lcom/yftech/car/widget/media/manager/MusicManager$Constant;
.super Ljava/lang/Object;
.source "MusicManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/manager/MusicManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Constant"
.end annotation


# static fields
.field public static final ALBUM:B = 0x4t

.field public static final ARTIST:B = 0x3t

.field public static final COLLECT:B = 0x0t

.field public static final CURRENT_USB1:B = 0x0t
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CURRENT_USB2:B = 0x1t
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CURRENT_USB3:B = 0x2t
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CURRENT_USB4:B = 0x3t
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CURRENT_USB5:B = 0x4t
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CYCLE_PLAY:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FOLDER:B = 0x1t

.field public static final GENRE:B = 0x5t

.field public static final LIST_LOOP:I = 0x0

.field public static final MUSIC_ALL:B = 0x2t
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PLAY_LIST:B = 0x7t

.field public static final RANDOM_PLAY:I = 0x2

.field public static final SEARCH:B = 0x6t

.field public static final SEQUENCE_PLAY:I = 0x3

.field public static final SINGLE_PLAY:I = 0x1

.field public static final TITLE:B = 0x2t

.field public static final USB_SQLITE:Ljava/lang/String; = "collect_udisk"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1603
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
