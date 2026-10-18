.class public final Landroid/nfc/NfcEvent;
.super Ljava/lang/Object;
.source "NfcEvent.java"


# instance fields
.field public final nfcAdapter:Landroid/nfc/NfcAdapter;

.field public final peerLlcpMajorVersion:I

.field public final peerLlcpMinorVersion:I


# direct methods
.method constructor <init>(Landroid/nfc/NfcAdapter;B)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Landroid/nfc/NfcEvent;->nfcAdapter:Landroid/nfc/NfcAdapter;

    and-int/lit16 p1, p2, 0xf0

    shr-int/lit8 p1, p1, 0x4

    .line 53
    iput p1, p0, Landroid/nfc/NfcEvent;->peerLlcpMajorVersion:I

    and-int/lit8 p1, p2, 0xf

    .line 54
    iput p1, p0, Landroid/nfc/NfcEvent;->peerLlcpMinorVersion:I

    return-void
.end method
