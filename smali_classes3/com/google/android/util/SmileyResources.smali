.class public Lcom/google/android/util/SmileyResources;
.super Ljava/lang/Object;
.source "SmileyResources.java"

# interfaces
.implements Lcom/google/android/util/AbstractMessageParser$Resources;


# instance fields
.field private mSmileyToRes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final smileys:Lcom/google/android/util/AbstractMessageParser$TrieNode;


# direct methods
.method public constructor <init>([Ljava/lang/String;[I)V
    .locals 4

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/util/SmileyResources;->mSmileyToRes:Ljava/util/HashMap;

    .line 56
    new-instance v0, Lcom/google/android/util/AbstractMessageParser$TrieNode;

    invoke-direct {v0}, Lcom/google/android/util/AbstractMessageParser$TrieNode;-><init>()V

    iput-object v0, p0, Lcom/google/android/util/SmileyResources;->smileys:Lcom/google/android/util/AbstractMessageParser$TrieNode;

    const/4 v0, 0x0

    .line 36
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 37
    iget-object v1, p0, Lcom/google/android/util/SmileyResources;->smileys:Lcom/google/android/util/AbstractMessageParser$TrieNode;

    aget-object v2, p1, v0

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/google/android/util/AbstractMessageParser$TrieNode;->addToTrie(Lcom/google/android/util/AbstractMessageParser$TrieNode;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-object v1, p0, Lcom/google/android/util/SmileyResources;->mSmileyToRes:Ljava/util/HashMap;

    aget-object v2, p1, v0

    aget v3, p2, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getAcronyms()Lcom/google/android/util/AbstractMessageParser$TrieNode;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDomainSuffixes()Lcom/google/android/util/AbstractMessageParser$TrieNode;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSchemes()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSmileyRes(Ljava/lang/String;)I
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/google/android/util/SmileyResources;->mSmileyToRes:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 53
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getSmileys()Lcom/google/android/util/AbstractMessageParser$TrieNode;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/google/android/util/SmileyResources;->smileys:Lcom/google/android/util/AbstractMessageParser$TrieNode;

    return-object p0
.end method
