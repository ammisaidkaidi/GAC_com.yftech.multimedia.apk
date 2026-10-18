.class Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;
.super Landroid/os/FileObserver;
.source "FileSystemProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/content/FileSystemProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DirectoryObserver"
.end annotation


# static fields
.field private static final NOTIFY_EVENTS:I = 0xfcc


# instance fields
.field private final mFile:Ljava/io/File;

.field private final mNotifyUri:Landroid/net/Uri;

.field private mRefCount:I

.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Ljava/io/File;Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 2

    .line 589
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xfcc

    invoke-direct {p0, v0, v1}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    const/4 v0, 0x0

    .line 586
    iput v0, p0, Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;->mRefCount:I

    .line 590
    iput-object p1, p0, Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;->mFile:Ljava/io/File;

    .line 591
    iput-object p2, p0, Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;->mResolver:Landroid/content/ContentResolver;

    .line 592
    iput-object p3, p0, Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;->mNotifyUri:Landroid/net/Uri;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;)I
    .locals 0

    .line 578
    iget p0, p0, Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;->mRefCount:I

    return p0
.end method

.method static synthetic access$008(Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;)I
    .locals 2

    .line 578
    iget v0, p0, Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;->mRefCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;->mRefCount:I

    return v0
.end method

.method static synthetic access$010(Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;)I
    .locals 2

    .line 578
    iget v0, p0, Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;->mRefCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;->mRefCount:I

    return v0
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 1

    and-int/lit16 p1, p1, 0xfcc

    if-eqz p1, :cond_0

    .line 599
    iget-object p1, p0, Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;->mResolver:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;->mNotifyUri:Landroid/net/Uri;

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, p2, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 605
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DirectoryObserver{file="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ref="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;->mRefCount:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
