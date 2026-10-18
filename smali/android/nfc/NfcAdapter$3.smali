.class Landroid/nfc/NfcAdapter$3;
.super Landroid/nfc/INfcUnlockHandler$Stub;
.source "NfcAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/nfc/NfcAdapter;->addNfcUnlockHandler(Landroid/nfc/NfcAdapter$NfcUnlockHandler;[Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/nfc/NfcAdapter;

.field final synthetic val$unlockHandler:Landroid/nfc/NfcAdapter$NfcUnlockHandler;


# direct methods
.method constructor <init>(Landroid/nfc/NfcAdapter;Landroid/nfc/NfcAdapter$NfcUnlockHandler;)V
    .locals 0

    .line 1812
    iput-object p1, p0, Landroid/nfc/NfcAdapter$3;->this$0:Landroid/nfc/NfcAdapter;

    iput-object p2, p0, Landroid/nfc/NfcAdapter$3;->val$unlockHandler:Landroid/nfc/NfcAdapter$NfcUnlockHandler;

    invoke-direct {p0}, Landroid/nfc/INfcUnlockHandler$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onUnlockAttempted(Landroid/nfc/Tag;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1815
    iget-object p0, p0, Landroid/nfc/NfcAdapter$3;->val$unlockHandler:Landroid/nfc/NfcAdapter$NfcUnlockHandler;

    invoke-interface {p0, p1}, Landroid/nfc/NfcAdapter$NfcUnlockHandler;->onUnlockAttempted(Landroid/nfc/Tag;)Z

    move-result p0

    return p0
.end method
