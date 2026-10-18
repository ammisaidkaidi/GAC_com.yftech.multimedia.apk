.class public Landroid/content/pm/PackageBackwardCompatibility$RemoveUnnecessaryOrgApacheHttpLegacyLibrary;
.super Landroid/content/pm/PackageSharedLibraryUpdater;
.source "PackageBackwardCompatibility.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageBackwardCompatibility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoveUnnecessaryOrgApacheHttpLegacyLibrary"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 189
    invoke-direct {p0}, Landroid/content/pm/PackageSharedLibraryUpdater;-><init>()V

    return-void
.end method


# virtual methods
.method public updatePackage(Landroid/content/pm/PackageParser$Package;)V
    .locals 0

    const-string/jumbo p0, "org.apache.http.legacy"

    .line 194
    invoke-static {p1, p0}, Landroid/content/pm/PackageBackwardCompatibility$RemoveUnnecessaryOrgApacheHttpLegacyLibrary;->removeLibrary(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)V

    return-void
.end method
