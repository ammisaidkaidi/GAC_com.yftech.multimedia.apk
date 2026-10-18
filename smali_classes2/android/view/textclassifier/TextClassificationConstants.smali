.class public final Landroid/view/textclassifier/TextClassificationConstants;
.super Ljava/lang/Object;
.source "TextClassificationConstants.java"


# static fields
.field private static final CLASSIFY_TEXT_MAX_RANGE_LENGTH:Ljava/lang/String; = "classify_text_max_range_length"

.field private static final CLASSIFY_TEXT_MAX_RANGE_LENGTH_DEFAULT:I = 0x2710

.field private static final ENTITY_LIST_DEFAULT:Ljava/lang/String; = "entity_list_default"

.field private static final ENTITY_LIST_DEFAULT_VALUE:Ljava/lang/String;

.field private static final ENTITY_LIST_DELIMITER:Ljava/lang/String; = ":"

.field private static final ENTITY_LIST_EDITABLE:Ljava/lang/String; = "entity_list_editable"

.field private static final ENTITY_LIST_NOT_EDITABLE:Ljava/lang/String; = "entity_list_not_editable"

.field private static final GENERATE_LINKS_LOG_SAMPLE_RATE:Ljava/lang/String; = "generate_links_log_sample_rate"

.field private static final GENERATE_LINKS_LOG_SAMPLE_RATE_DEFAULT:I = 0x64

.field private static final GENERATE_LINKS_MAX_TEXT_LENGTH:Ljava/lang/String; = "generate_links_max_text_length"

.field private static final GENERATE_LINKS_MAX_TEXT_LENGTH_DEFAULT:I = 0x186a0

.field private static final LOCAL_TEXT_CLASSIFIER_ENABLED:Ljava/lang/String; = "local_textclassifier_enabled"

.field private static final LOCAL_TEXT_CLASSIFIER_ENABLED_DEFAULT:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "TextClassificationConstants"

.field private static final MODEL_DARK_LAUNCH_ENABLED:Ljava/lang/String; = "model_dark_launch_enabled"

.field private static final MODEL_DARK_LAUNCH_ENABLED_DEFAULT:Z = false

.field private static final SMART_LINKIFY_ENABLED:Ljava/lang/String; = "smart_linkify_enabled"

.field private static final SMART_LINKIFY_ENABLED_DEFAULT:Z = true

.field private static final SMART_SELECTION_ENABLED:Ljava/lang/String; = "smart_selection_enabled"

.field private static final SMART_SELECTION_ENABLED_DEFAULT:Z = true

.field private static final SMART_SELECT_ANIMATION_ENABLED:Ljava/lang/String; = "smart_select_animation_enabled"

.field private static final SMART_SELECT_ANIMATION_ENABLED_DEFAULT:Z = true

.field private static final SMART_TEXT_SHARE_ENABLED:Ljava/lang/String; = "smart_text_share_enabled"

.field private static final SMART_TEXT_SHARE_ENABLED_DEFAULT:Z = true

.field private static final SUGGEST_SELECTION_MAX_RANGE_LENGTH:Ljava/lang/String; = "suggest_selection_max_range_length"

.field private static final SUGGEST_SELECTION_MAX_RANGE_LENGTH_DEFAULT:I = 0x2710

.field private static final SYSTEM_TEXT_CLASSIFIER_ENABLED:Ljava/lang/String; = "system_textclassifier_enabled"

.field private static final SYSTEM_TEXT_CLASSIFIER_ENABLED_DEFAULT:Z = true


# instance fields
.field private final mClassifyTextMaxRangeLength:I

.field private final mEntityListDefault:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mEntityListEditable:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mEntityListNotEditable:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mGenerateLinksLogSampleRate:I

.field private final mGenerateLinksMaxTextLength:I

.field private final mLocalTextClassifierEnabled:Z

.field private final mModelDarkLaunchEnabled:Z

.field private final mSmartLinkifyEnabled:Z

.field private final mSmartSelectionAnimationEnabled:Z

.field private final mSmartSelectionEnabled:Z

.field private final mSmartTextShareEnabled:Z

.field private final mSuggestSelectionMaxRangeLength:I

.field private final mSystemTextClassifierEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 104
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ":"

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    const-string v1, "address"

    .line 105
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    const-string v1, "email"

    .line 106
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    const-string/jumbo v1, "phone"

    .line 107
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    const-string/jumbo v1, "url"

    .line 108
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    const-string v1, "date"

    .line 109
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    const-string v1, "datetime"

    .line 110
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    const-string v1, "flight"

    .line 111
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/textclassifier/TextClassificationConstants;->ENTITY_LIST_DEFAULT_VALUE:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 4

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance v0, Landroid/util/KeyValueListParser;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Landroid/util/KeyValueListParser;-><init>(C)V

    .line 131
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "TextClassificationConstants"

    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad TextClassifier settings: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string/jumbo p1, "system_textclassifier_enabled"

    const/4 v1, 0x1

    .line 136
    invoke-virtual {v0, p1, v1}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Landroid/view/textclassifier/TextClassificationConstants;->mSystemTextClassifierEnabled:Z

    const-string p1, "local_textclassifier_enabled"

    .line 139
    invoke-virtual {v0, p1, v1}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Landroid/view/textclassifier/TextClassificationConstants;->mLocalTextClassifierEnabled:Z

    const-string p1, "model_dark_launch_enabled"

    const/4 v2, 0x0

    .line 142
    invoke-virtual {v0, p1, v2}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Landroid/view/textclassifier/TextClassificationConstants;->mModelDarkLaunchEnabled:Z

    const-string/jumbo p1, "smart_selection_enabled"

    .line 145
    invoke-virtual {v0, p1, v1}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Landroid/view/textclassifier/TextClassificationConstants;->mSmartSelectionEnabled:Z

    const-string/jumbo p1, "smart_text_share_enabled"

    .line 148
    invoke-virtual {v0, p1, v1}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Landroid/view/textclassifier/TextClassificationConstants;->mSmartTextShareEnabled:Z

    const-string/jumbo p1, "smart_linkify_enabled"

    .line 151
    invoke-virtual {v0, p1, v1}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Landroid/view/textclassifier/TextClassificationConstants;->mSmartLinkifyEnabled:Z

    const-string/jumbo p1, "smart_select_animation_enabled"

    .line 154
    invoke-virtual {v0, p1, v1}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Landroid/view/textclassifier/TextClassificationConstants;->mSmartSelectionAnimationEnabled:Z

    const-string/jumbo p1, "suggest_selection_max_range_length"

    const/16 v1, 0x2710

    .line 157
    invoke-virtual {v0, p1, v1}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Landroid/view/textclassifier/TextClassificationConstants;->mSuggestSelectionMaxRangeLength:I

    const-string p1, "classify_text_max_range_length"

    .line 160
    invoke-virtual {v0, p1, v1}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Landroid/view/textclassifier/TextClassificationConstants;->mClassifyTextMaxRangeLength:I

    const-string p1, "generate_links_max_text_length"

    const v1, 0x186a0

    .line 163
    invoke-virtual {v0, p1, v1}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Landroid/view/textclassifier/TextClassificationConstants;->mGenerateLinksMaxTextLength:I

    const-string p1, "generate_links_log_sample_rate"

    const/16 v1, 0x64

    .line 166
    invoke-virtual {v0, p1, v1}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Landroid/view/textclassifier/TextClassificationConstants;->mGenerateLinksLogSampleRate:I

    const-string p1, "entity_list_default"

    .line 169
    sget-object v1, Landroid/view/textclassifier/TextClassificationConstants;->ENTITY_LIST_DEFAULT_VALUE:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/util/KeyValueListParser;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/view/textclassifier/TextClassificationConstants;->parseEntityList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroid/view/textclassifier/TextClassificationConstants;->mEntityListDefault:Ljava/util/List;

    const-string p1, "entity_list_not_editable"

    .line 172
    sget-object v1, Landroid/view/textclassifier/TextClassificationConstants;->ENTITY_LIST_DEFAULT_VALUE:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/util/KeyValueListParser;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/view/textclassifier/TextClassificationConstants;->parseEntityList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroid/view/textclassifier/TextClassificationConstants;->mEntityListNotEditable:Ljava/util/List;

    const-string p1, "entity_list_editable"

    .line 175
    sget-object v1, Landroid/view/textclassifier/TextClassificationConstants;->ENTITY_LIST_DEFAULT_VALUE:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/util/KeyValueListParser;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/view/textclassifier/TextClassificationConstants;->parseEntityList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroid/view/textclassifier/TextClassificationConstants;->mEntityListEditable:Ljava/util/List;

    return-void
.end method

.method public static loadFromString(Ljava/lang/String;)Landroid/view/textclassifier/TextClassificationConstants;
    .locals 1

    .line 182
    new-instance v0, Landroid/view/textclassifier/TextClassificationConstants;

    invoke-direct {v0, p0}, Landroid/view/textclassifier/TextClassificationConstants;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static parseEntityList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, ":"

    .line 242
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getClassifyTextMaxRangeLength()I
    .locals 0

    .line 218
    iget p0, p0, Landroid/view/textclassifier/TextClassificationConstants;->mClassifyTextMaxRangeLength:I

    return p0
.end method

.method public getEntityListDefault()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 230
    iget-object p0, p0, Landroid/view/textclassifier/TextClassificationConstants;->mEntityListDefault:Ljava/util/List;

    return-object p0
.end method

.method public getEntityListEditable()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 238
    iget-object p0, p0, Landroid/view/textclassifier/TextClassificationConstants;->mEntityListEditable:Ljava/util/List;

    return-object p0
.end method

.method public getEntityListNotEditable()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 234
    iget-object p0, p0, Landroid/view/textclassifier/TextClassificationConstants;->mEntityListNotEditable:Ljava/util/List;

    return-object p0
.end method

.method public getGenerateLinksLogSampleRate()I
    .locals 0

    .line 226
    iget p0, p0, Landroid/view/textclassifier/TextClassificationConstants;->mGenerateLinksLogSampleRate:I

    return p0
.end method

.method public getGenerateLinksMaxTextLength()I
    .locals 0

    .line 222
    iget p0, p0, Landroid/view/textclassifier/TextClassificationConstants;->mGenerateLinksMaxTextLength:I

    return p0
.end method

.method public getSuggestSelectionMaxRangeLength()I
    .locals 0

    .line 214
    iget p0, p0, Landroid/view/textclassifier/TextClassificationConstants;->mSuggestSelectionMaxRangeLength:I

    return p0
.end method

.method public isLocalTextClassifierEnabled()Z
    .locals 0

    .line 186
    iget-boolean p0, p0, Landroid/view/textclassifier/TextClassificationConstants;->mLocalTextClassifierEnabled:Z

    return p0
.end method

.method public isModelDarkLaunchEnabled()Z
    .locals 0

    .line 194
    iget-boolean p0, p0, Landroid/view/textclassifier/TextClassificationConstants;->mModelDarkLaunchEnabled:Z

    return p0
.end method

.method public isSmartLinkifyEnabled()Z
    .locals 0

    .line 206
    iget-boolean p0, p0, Landroid/view/textclassifier/TextClassificationConstants;->mSmartLinkifyEnabled:Z

    return p0
.end method

.method public isSmartSelectionAnimationEnabled()Z
    .locals 0

    .line 210
    iget-boolean p0, p0, Landroid/view/textclassifier/TextClassificationConstants;->mSmartSelectionAnimationEnabled:Z

    return p0
.end method

.method public isSmartSelectionEnabled()Z
    .locals 0

    .line 198
    iget-boolean p0, p0, Landroid/view/textclassifier/TextClassificationConstants;->mSmartSelectionEnabled:Z

    return p0
.end method

.method public isSmartTextShareEnabled()Z
    .locals 0

    .line 202
    iget-boolean p0, p0, Landroid/view/textclassifier/TextClassificationConstants;->mSmartTextShareEnabled:Z

    return p0
.end method

.method public isSystemTextClassifierEnabled()Z
    .locals 0

    .line 190
    iget-boolean p0, p0, Landroid/view/textclassifier/TextClassificationConstants;->mSystemTextClassifierEnabled:Z

    return p0
.end method
