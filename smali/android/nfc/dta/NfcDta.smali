.class public final Landroid/nfc/dta/NfcDta;
.super Ljava/lang/Object;
.source "NfcDta.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NfcDta"

.field private static sNfcDtas:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/Context;",
            "Landroid/nfc/dta/NfcDta;",
            ">;"
        }
    .end annotation
.end field

.field private static sService:Landroid/nfc/INfcDta;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/nfc/dta/NfcDta;->sNfcDtas:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/nfc/INfcDta;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroid/nfc/dta/NfcDta;->mContext:Landroid/content/Context;

    .line 41
    sput-object p2, Landroid/nfc/dta/NfcDta;->sService:Landroid/nfc/INfcDta;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/nfc/NfcAdapter;)Landroid/nfc/dta/NfcDta;
    .locals 3

    const-class v0, Landroid/nfc/dta/NfcDta;

    monitor-enter v0

    if-eqz p0, :cond_3

    .line 52
    :try_start_0
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 58
    sget-object v2, Landroid/nfc/dta/NfcDta;->sNfcDtas:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/dta/NfcDta;

    if-nez v2, :cond_1

    .line 60
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->getNfcDtaInterface()Landroid/nfc/INfcDta;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 65
    new-instance v2, Landroid/nfc/dta/NfcDta;

    invoke-direct {v2, v1, p0}, Landroid/nfc/dta/NfcDta;-><init>(Landroid/content/Context;Landroid/nfc/INfcDta;)V

    .line 66
    sget-object p0, Landroid/nfc/dta/NfcDta;->sNfcDtas:Ljava/util/HashMap;

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string p0, "NfcDta"

    const-string v1, "This device does not implement the INfcDta interface."

    .line 62
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    :cond_1
    :goto_0
    monitor-exit v0

    return-object v2

    :cond_2
    :try_start_1
    const-string p0, "NfcDta"

    const-string v1, "NfcAdapter context is null."

    .line 54
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    .line 51
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v1, "NfcAdapter is null"

    invoke-direct {p0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 50
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public disableClient()Z
    .locals 0

    .line 148
    :try_start_0
    sget-object p0, Landroid/nfc/dta/NfcDta;->sService:Landroid/nfc/INfcDta;

    invoke-interface {p0}, Landroid/nfc/INfcDta;->disableClient()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public disableDta()Z
    .locals 0

    .line 92
    :try_start_0
    sget-object p0, Landroid/nfc/dta/NfcDta;->sService:Landroid/nfc/INfcDta;

    invoke-interface {p0}, Landroid/nfc/INfcDta;->disableDta()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public disableServer()Z
    .locals 0

    .line 120
    :try_start_0
    sget-object p0, Landroid/nfc/dta/NfcDta;->sService:Landroid/nfc/INfcDta;

    invoke-interface {p0}, Landroid/nfc/INfcDta;->disableServer()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public enableClient(Ljava/lang/String;III)Z
    .locals 0

    .line 135
    :try_start_0
    sget-object p0, Landroid/nfc/dta/NfcDta;->sService:Landroid/nfc/INfcDta;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/nfc/INfcDta;->enableClient(Ljava/lang/String;III)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public enableDta()Z
    .locals 0

    .line 78
    :try_start_0
    sget-object p0, Landroid/nfc/dta/NfcDta;->sService:Landroid/nfc/INfcDta;

    invoke-interface {p0}, Landroid/nfc/INfcDta;->enableDta()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public enableServer(Ljava/lang/String;IIII)Z
    .locals 6

    .line 107
    :try_start_0
    sget-object v0, Landroid/nfc/dta/NfcDta;->sService:Landroid/nfc/INfcDta;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/nfc/INfcDta;->enableServer(Ljava/lang/String;IIII)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public registerMessageService(Ljava/lang/String;)Z
    .locals 0

    .line 162
    :try_start_0
    sget-object p0, Landroid/nfc/dta/NfcDta;->sService:Landroid/nfc/INfcDta;

    invoke-interface {p0, p1}, Landroid/nfc/INfcDta;->registerMessageService(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method
