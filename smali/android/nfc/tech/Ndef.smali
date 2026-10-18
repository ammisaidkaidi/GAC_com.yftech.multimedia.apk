.class public final Landroid/nfc/tech/Ndef;
.super Landroid/nfc/tech/BasicTagTechnology;
.source "Ndef.java"


# static fields
.field public static final EXTRA_NDEF_CARDSTATE:Ljava/lang/String; = "ndefcardstate"

.field public static final EXTRA_NDEF_MAXLENGTH:Ljava/lang/String; = "ndefmaxlength"

.field public static final EXTRA_NDEF_MSG:Ljava/lang/String; = "ndefmsg"

.field public static final EXTRA_NDEF_TYPE:Ljava/lang/String; = "ndeftype"

.field public static final ICODE_SLI:Ljava/lang/String; = "com.nxp.ndef.icodesli"

.field public static final MIFARE_CLASSIC:Ljava/lang/String; = "com.nxp.ndef.mifareclassic"

.field public static final NDEF_MODE_READ_ONLY:I = 0x1

.field public static final NDEF_MODE_READ_WRITE:I = 0x2

.field public static final NDEF_MODE_UNKNOWN:I = 0x3

.field public static final NFC_FORUM_TYPE_1:Ljava/lang/String; = "org.nfcforum.ndef.type1"

.field public static final NFC_FORUM_TYPE_2:Ljava/lang/String; = "org.nfcforum.ndef.type2"

.field public static final NFC_FORUM_TYPE_3:Ljava/lang/String; = "org.nfcforum.ndef.type3"

.field public static final NFC_FORUM_TYPE_4:Ljava/lang/String; = "org.nfcforum.ndef.type4"

.field private static final TAG:Ljava/lang/String; = "NFC"

.field public static final TYPE_1:I = 0x1

.field public static final TYPE_2:I = 0x2

.field public static final TYPE_3:I = 0x3

.field public static final TYPE_4:I = 0x4

.field public static final TYPE_ICODE_SLI:I = 0x66

.field public static final TYPE_MIFARE_CLASSIC:I = 0x65

.field public static final TYPE_OTHER:I = -0x1

.field public static final UNKNOWN:Ljava/lang/String; = "android.ndef.unknown"


# instance fields
.field private final mCardState:I

.field private final mMaxNdefSize:I

.field private final mNdefMsg:Landroid/nfc/NdefMessage;

.field private final mNdefType:I


# direct methods
.method public constructor <init>(Landroid/nfc/Tag;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x6

    .line 159
    invoke-direct {p0, p1, v0}, Landroid/nfc/tech/BasicTagTechnology;-><init>(Landroid/nfc/Tag;I)V

    .line 160
    invoke-virtual {p1, v0}, Landroid/nfc/Tag;->getTechExtras(I)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string/jumbo v0, "ndefmaxlength"

    .line 162
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/nfc/tech/Ndef;->mMaxNdefSize:I

    const-string/jumbo v0, "ndefcardstate"

    .line 163
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/nfc/tech/Ndef;->mCardState:I

    const-string/jumbo v0, "ndefmsg"

    .line 164
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/nfc/NdefMessage;

    iput-object v0, p0, Landroid/nfc/tech/Ndef;->mNdefMsg:Landroid/nfc/NdefMessage;

    const-string/jumbo v0, "ndeftype"

    .line 165
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Landroid/nfc/tech/Ndef;->mNdefType:I

    return-void

    .line 167
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "NDEF tech extras are null."

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static get(Landroid/nfc/Tag;)Landroid/nfc/tech/Ndef;
    .locals 2

    const/4 v0, 0x6

    .line 146
    invoke-virtual {p0, v0}, Landroid/nfc/Tag;->hasTech(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 148
    :cond_0
    :try_start_0
    new-instance v0, Landroid/nfc/tech/Ndef;

    invoke-direct {v0, p0}, Landroid/nfc/tech/Ndef;-><init>(Landroid/nfc/Tag;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object v1
.end method


# virtual methods
.method public canMakeReadOnly()Z
    .locals 3

    .line 344
    iget-object v0, p0, Landroid/nfc/tech/Ndef;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v0}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 349
    :cond_0
    :try_start_0
    iget p0, p0, Landroid/nfc/tech/Ndef;->mNdefType:I

    invoke-interface {v0, p0}, Landroid/nfc/INfcTag;->canMakeReadOnly(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "NFC"

    const-string v2, "NFC service dead"

    .line 351
    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public bridge synthetic close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->close()V

    return-void
.end method

.method public bridge synthetic connect()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->connect()V

    return-void
.end method

.method public getCachedNdefMessage()Landroid/nfc/NdefMessage;
    .locals 0

    .line 185
    iget-object p0, p0, Landroid/nfc/tech/Ndef;->mNdefMsg:Landroid/nfc/NdefMessage;

    return-object p0
.end method

.method public getMaxSize()I
    .locals 0

    .line 227
    iget p0, p0, Landroid/nfc/tech/Ndef;->mMaxNdefSize:I

    return p0
.end method

.method public getNdefMessage()Landroid/nfc/NdefMessage;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/nfc/FormatException;
        }
    .end annotation

    .line 266
    invoke-virtual {p0}, Landroid/nfc/tech/Ndef;->checkConnected()V

    const/4 v0, 0x0

    .line 269
    :try_start_0
    iget-object v1, p0, Landroid/nfc/tech/Ndef;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v1}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 273
    iget-object p0, p0, Landroid/nfc/tech/Ndef;->mTag:Landroid/nfc/Tag;

    invoke-virtual {p0}, Landroid/nfc/Tag;->getServiceHandle()I

    move-result p0

    .line 274
    invoke-interface {v1, p0}, Landroid/nfc/INfcTag;->isNdef(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 275
    invoke-interface {v1, p0}, Landroid/nfc/INfcTag;->ndefRead(I)Landroid/nfc/NdefMessage;

    move-result-object v2

    if-nez v2, :cond_1

    .line 276
    invoke-interface {v1, p0}, Landroid/nfc/INfcTag;->isPresent(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 277
    :cond_0
    new-instance p0, Landroid/nfc/TagLostException;

    invoke-direct {p0}, Landroid/nfc/TagLostException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return-object v2

    .line 280
    :cond_2
    invoke-interface {v1, p0}, Landroid/nfc/INfcTag;->isPresent(I)Z

    move-result p0

    if-eqz p0, :cond_3

    return-object v0

    .line 281
    :cond_3
    new-instance p0, Landroid/nfc/TagLostException;

    invoke-direct {p0}, Landroid/nfc/TagLostException;-><init>()V

    throw p0

    .line 271
    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string v1, "Mock tags don\'t support this operation."

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    const-string v1, "NFC"

    const-string v2, "NFC service dead"

    .line 286
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public bridge synthetic getTag()Landroid/nfc/Tag;
    .locals 0

    .line 71
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->getTag()Landroid/nfc/Tag;

    move-result-object p0

    return-object p0
.end method

.method public getType()Ljava/lang/String;
    .locals 0

    .line 201
    iget p0, p0, Landroid/nfc/tech/Ndef;->mNdefType:I

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const-string p0, "android.ndef.unknown"

    return-object p0

    :pswitch_0
    const-string p0, "com.nxp.ndef.icodesli"

    return-object p0

    :pswitch_1
    const-string p0, "com.nxp.ndef.mifareclassic"

    return-object p0

    :pswitch_2
    const-string/jumbo p0, "org.nfcforum.ndef.type4"

    return-object p0

    :pswitch_3
    const-string/jumbo p0, "org.nfcforum.ndef.type3"

    return-object p0

    :pswitch_4
    const-string/jumbo p0, "org.nfcforum.ndef.type2"

    return-object p0

    :pswitch_5
    const-string/jumbo p0, "org.nfcforum.ndef.type1"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x65
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic isConnected()Z
    .locals 0

    .line 71
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->isConnected()Z

    move-result p0

    return p0
.end method

.method public isWritable()Z
    .locals 1

    .line 242
    iget p0, p0, Landroid/nfc/tech/Ndef;->mCardState:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public makeReadOnly()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 375
    invoke-virtual {p0}, Landroid/nfc/tech/Ndef;->checkConnected()V

    const/4 v0, 0x0

    .line 378
    :try_start_0
    iget-object v1, p0, Landroid/nfc/tech/Ndef;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v1}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    .line 382
    :cond_0
    iget-object v2, p0, Landroid/nfc/tech/Ndef;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v2}, Landroid/nfc/Tag;->getServiceHandle()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/nfc/INfcTag;->isNdef(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 383
    iget-object p0, p0, Landroid/nfc/tech/Ndef;->mTag:Landroid/nfc/Tag;

    invoke-virtual {p0}, Landroid/nfc/Tag;->getServiceHandle()I

    move-result p0

    invoke-interface {v1, p0}, Landroid/nfc/INfcTag;->ndefMakeReadOnly(I)I

    move-result p0

    const/4 v1, -0x8

    if-eq p0, v1, :cond_1

    packed-switch p0, :pswitch_data_0

    .line 393
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    .line 388
    :pswitch_1
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0

    :cond_1
    return v0

    .line 397
    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string v1, "Tag is not ndef"

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    const-string v1, "NFC"

    const-string v2, "NFC service dead"

    .line 400
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic reconnect()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->reconnect()V

    return-void
.end method

.method public writeNdefMessage(Landroid/nfc/NdefMessage;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/nfc/FormatException;
        }
    .end annotation

    .line 306
    invoke-virtual {p0}, Landroid/nfc/tech/Ndef;->checkConnected()V

    .line 309
    :try_start_0
    iget-object v0, p0, Landroid/nfc/tech/Ndef;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v0}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 313
    iget-object p0, p0, Landroid/nfc/tech/Ndef;->mTag:Landroid/nfc/Tag;

    invoke-virtual {p0}, Landroid/nfc/Tag;->getServiceHandle()I

    move-result p0

    .line 314
    invoke-interface {v0, p0}, Landroid/nfc/INfcTag;->isNdef(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 315
    invoke-interface {v0, p0, p1}, Landroid/nfc/INfcTag;->ndefWrite(ILandroid/nfc/NdefMessage;)I

    move-result p0

    const/4 p1, -0x8

    if-eq p0, p1, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 325
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0

    .line 320
    :pswitch_0
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0

    .line 322
    :cond_0
    new-instance p0, Landroid/nfc/FormatException;

    invoke-direct {p0}, Landroid/nfc/FormatException;-><init>()V

    throw p0

    .line 329
    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Tag is not ndef"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 311
    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Mock tags don\'t support this operation."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    const-string p1, "NFC"

    const-string v0, "NFC service dead"

    .line 332
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :pswitch_1
    return-void

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
