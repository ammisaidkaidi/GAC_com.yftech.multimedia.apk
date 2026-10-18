.class public Landroid/provider/SettingsStringUtil$ComponentNameSet;
.super Landroid/provider/SettingsStringUtil$ColonDelimitedSet;
.source "SettingsStringUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/SettingsStringUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ComponentNameSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/provider/SettingsStringUtil$ColonDelimitedSet<",
        "Landroid/content/ComponentName;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 119
    invoke-direct {p0, p1}, Landroid/provider/SettingsStringUtil$ColonDelimitedSet;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static add(Ljava/lang/String;Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 2

    .line 133
    new-instance v0, Landroid/provider/SettingsStringUtil$ComponentNameSet;

    invoke-direct {v0, p0}, Landroid/provider/SettingsStringUtil$ComponentNameSet;-><init>(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v0, p1}, Landroid/provider/SettingsStringUtil$ComponentNameSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p0

    .line 137
    :cond_0
    invoke-virtual {v0, p1}, Landroid/provider/SettingsStringUtil$ComponentNameSet;->add(Ljava/lang/Object;)Z

    .line 138
    invoke-virtual {v0}, Landroid/provider/SettingsStringUtil$ComponentNameSet;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static contains(Ljava/lang/String;Landroid/content/ComponentName;)Z
    .locals 0

    .line 152
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    .line 151
    invoke-static {p0, p1}, Landroid/provider/SettingsStringUtil$ColonDelimitedSet$OfStrings;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static remove(Ljava/lang/String;Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 2

    .line 142
    new-instance v0, Landroid/provider/SettingsStringUtil$ComponentNameSet;

    invoke-direct {v0, p0}, Landroid/provider/SettingsStringUtil$ComponentNameSet;-><init>(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v0, p1}, Landroid/provider/SettingsStringUtil$ComponentNameSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object p0

    .line 146
    :cond_0
    invoke-virtual {v0, p1}, Landroid/provider/SettingsStringUtil$ComponentNameSet;->remove(Ljava/lang/Object;)Z

    .line 147
    invoke-virtual {v0}, Landroid/provider/SettingsStringUtil$ComponentNameSet;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected itemFromString(Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 0

    .line 124
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic itemFromString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 117
    invoke-virtual {p0, p1}, Landroid/provider/SettingsStringUtil$ComponentNameSet;->itemFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method protected itemToString(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 0

    .line 129
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic itemToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 117
    check-cast p1, Landroid/content/ComponentName;

    invoke-virtual {p0, p1}, Landroid/provider/SettingsStringUtil$ComponentNameSet;->itemToString(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
