.class Lcom/android/internal/widget/LockPatternChecker$1;
.super Landroid/os/AsyncTask;
.source "LockPatternChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/LockPatternChecker;->verifyPattern(Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;JILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[B>;"
    }
.end annotation


# instance fields
.field private mThrottleTimeout:I

.field private patternCopy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic val$callback:Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;

.field final synthetic val$challenge:J

.field final synthetic val$pattern:Ljava/util/List;

.field final synthetic val$userId:I

.field final synthetic val$utils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/android/internal/widget/LockPatternUtils;JILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternChecker$1;->val$pattern:Ljava/util/List;

    iput-object p2, p0, Lcom/android/internal/widget/LockPatternChecker$1;->val$utils:Lcom/android/internal/widget/LockPatternUtils;

    iput-wide p3, p0, Lcom/android/internal/widget/LockPatternChecker$1;->val$challenge:J

    iput p5, p0, Lcom/android/internal/widget/LockPatternChecker$1;->val$userId:I

    iput-object p6, p0, Lcom/android/internal/widget/LockPatternChecker$1;->val$callback:Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 68
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternChecker$1;->doInBackground([Ljava/lang/Void;)[B

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)[B
    .locals 4

    .line 82
    :try_start_0
    iget-object p1, p0, Lcom/android/internal/widget/LockPatternChecker$1;->val$utils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternChecker$1;->patternCopy:Ljava/util/List;

    iget-wide v1, p0, Lcom/android/internal/widget/LockPatternChecker$1;->val$challenge:J

    iget v3, p0, Lcom/android/internal/widget/LockPatternChecker$1;->val$userId:I

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->verifyPattern(Ljava/util/List;JI)[B

    move-result-object p1
    :try_end_0
    .catch Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 84
    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;->getTimeoutMs()I

    move-result p1

    iput p1, p0, Lcom/android/internal/widget/LockPatternChecker$1;->mThrottleTimeout:I

    const/4 p0, 0x0

    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 68
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternChecker$1;->onPostExecute([B)V

    return-void
.end method

.method protected onPostExecute([B)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternChecker$1;->val$callback:Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;

    iget p0, p0, Lcom/android/internal/widget/LockPatternChecker$1;->mThrottleTimeout:I

    invoke-interface {v0, p1, p0}, Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;->onVerified([BI)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/widget/LockPatternChecker$1;->val$pattern:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternChecker$1;->patternCopy:Ljava/util/List;

    return-void
.end method
