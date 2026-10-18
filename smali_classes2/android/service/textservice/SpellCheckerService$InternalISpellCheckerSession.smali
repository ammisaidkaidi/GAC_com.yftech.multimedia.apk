.class Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;
.super Lcom/android/internal/textservice/ISpellCheckerSession$Stub;
.source "SpellCheckerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/textservice/SpellCheckerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalISpellCheckerSession"
.end annotation


# instance fields
.field private final mBundle:Landroid/os/Bundle;

.field private mListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

.field private final mLocale:Ljava/lang/String;

.field private final mSession:Landroid/service/textservice/SpellCheckerService$Session;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/internal/textservice/ISpellCheckerSessionListener;Landroid/os/Bundle;Landroid/service/textservice/SpellCheckerService$Session;)V
    .locals 0

    .line 244
    invoke-direct {p0}, Lcom/android/internal/textservice/ISpellCheckerSession$Stub;-><init>()V

    .line 245
    iput-object p2, p0, Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;->mListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    .line 246
    iput-object p4, p0, Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;->mSession:Landroid/service/textservice/SpellCheckerService$Session;

    .line 247
    iput-object p1, p0, Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;->mLocale:Ljava/lang/String;

    .line 248
    iput-object p3, p0, Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;->mBundle:Landroid/os/Bundle;

    .line 249
    invoke-virtual {p4, p0}, Landroid/service/textservice/SpellCheckerService$Session;->setInternalISpellCheckerSession(Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;)V

    return-void
.end method


# virtual methods
.method public getBundle()Landroid/os/Bundle;
    .locals 0

    .line 304
    iget-object p0, p0, Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;->mBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 0

    .line 300
    iget-object p0, p0, Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;->mLocale:Ljava/lang/String;

    return-object p0
.end method

.method public onCancel()V
    .locals 2

    .line 278
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v0

    const/16 v1, 0xa

    .line 280
    :try_start_0
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 281
    iget-object p0, p0, Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;->mSession:Landroid/service/textservice/SpellCheckerService$Session;

    invoke-virtual {p0}, Landroid/service/textservice/SpellCheckerService$Session;->onCancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    throw p0
.end method

.method public onClose()V
    .locals 3

    .line 289
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v0

    const/16 v1, 0xa

    const/4 v2, 0x0

    .line 291
    :try_start_0
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 292
    iget-object v1, p0, Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;->mSession:Landroid/service/textservice/SpellCheckerService$Session;

    invoke-virtual {v1}, Landroid/service/textservice/SpellCheckerService$Session;->onClose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 295
    iput-object v2, p0, Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;->mListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    return-void

    :catchall_0
    move-exception v1

    .line 294
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 295
    iput-object v2, p0, Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;->mListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    throw v1
.end method

.method public onGetSentenceSuggestionsMultiple([Landroid/view/textservice/TextInfo;I)V
    .locals 1

    .line 270
    :try_start_0
    iget-object v0, p0, Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;->mListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    iget-object p0, p0, Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;->mSession:Landroid/service/textservice/SpellCheckerService$Session;

    .line 271
    invoke-virtual {p0, p1, p2}, Landroid/service/textservice/SpellCheckerService$Session;->onGetSentenceSuggestionsMultiple([Landroid/view/textservice/TextInfo;I)[Landroid/view/textservice/SentenceSuggestionsInfo;

    move-result-object p0

    .line 270
    invoke-interface {v0, p0}, Lcom/android/internal/textservice/ISpellCheckerSessionListener;->onGetSentenceSuggestions([Landroid/view/textservice/SentenceSuggestionsInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onGetSuggestionsMultiple([Landroid/view/textservice/TextInfo;IZ)V
    .locals 2

    .line 255
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v0

    const/16 v1, 0xa

    .line 257
    :try_start_0
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 258
    iget-object v1, p0, Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;->mListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    iget-object p0, p0, Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;->mSession:Landroid/service/textservice/SpellCheckerService$Session;

    .line 259
    invoke-virtual {p0, p1, p2, p3}, Landroid/service/textservice/SpellCheckerService$Session;->onGetSuggestionsMultiple([Landroid/view/textservice/TextInfo;IZ)[Landroid/view/textservice/SuggestionsInfo;

    move-result-object p0

    .line 258
    invoke-interface {v1, p0}, Lcom/android/internal/textservice/ISpellCheckerSessionListener;->onGetSuggestions([Landroid/view/textservice/SuggestionsInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 263
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    throw p0

    :catch_0
    :goto_0
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    return-void
.end method
