.class public Lcom/android/internal/util/MimeIconUtils;
.super Ljava/lang/Object;
.source "MimeIconUtils.java"


# static fields
.field private static sMimeIcons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/util/MimeIconUtils;->sMimeIcons:Ljava/util/HashMap;

    const-string v0, "application/vnd.android.package-archive"

    const v1, 0x108034d

    .line 42
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/ogg"

    const v1, 0x108034e

    .line 46
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/x-flac"

    .line 47
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/pgp-keys"

    const v1, 0x108034f

    .line 51
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/pgp-signature"

    .line 52
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/x-pkcs12"

    .line 53
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/x-pkcs7-certreqresp"

    .line 54
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/x-pkcs7-crl"

    .line 55
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/x-x509-ca-cert"

    .line 56
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/x-x509-user-cert"

    .line 57
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/x-pkcs7-certificates"

    .line 58
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/x-pkcs7-mime"

    .line 59
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/x-pkcs7-signature"

    .line 60
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/rdf+xml"

    const v1, 0x1080350

    .line 64
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/rss+xml"

    .line 65
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/x-object"

    .line 66
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/xhtml+xml"

    .line 67
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v0, "text/css"

    .line 68
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v0, "text/html"

    .line 69
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v0, "text/xml"

    .line 70
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v0, "text/x-c++hdr"

    .line 71
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v0, "text/x-c++src"

    .line 72
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v0, "text/x-chdr"

    .line 73
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v0, "text/x-csrc"

    .line 74
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v0, "text/x-dsrc"

    .line 75
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v0, "text/x-csh"

    .line 76
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v0, "text/x-haskell"

    .line 77
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v0, "text/x-java"

    .line 78
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v0, "text/x-literate-haskell"

    .line 79
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v0, "text/x-pascal"

    .line 80
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v0, "text/x-tcl"

    .line 81
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v0, "text/x-tex"

    .line 82
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/x-latex"

    .line 83
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/x-texinfo"

    .line 84
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/atom+xml"

    .line 85
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/ecmascript"

    .line 86
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/json"

    .line 87
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/javascript"

    .line 88
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/xml"

    .line 89
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v0, "text/javascript"

    .line 90
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/x-javascript"

    .line 91
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/mac-binhex40"

    const v1, 0x1080351

    .line 95
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/rar"

    .line 96
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/zip"

    .line 97
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/x-apple-diskimage"

    .line 98
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/x-debian-package"

    .line 99
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/x-gtar"

    .line 100
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/x-iso9660-image"

    .line 101
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/x-lha"

    .line 102
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/x-lzh"

    .line 103
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/x-lzx"

    .line 104
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/x-stuffit"

    .line 105
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/x-tar"

    .line 106
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/x-webarchive"

    .line 107
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/x-webarchive-xml"

    .line 108
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/gzip"

    .line 109
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/x-7z-compressed"

    .line 110
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/x-deb"

    .line 111
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/x-rar-compressed"

    .line 112
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v0, "text/x-vcard"

    const v1, 0x1080352

    .line 116
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v0, "text/vcard"

    .line 117
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v0, "text/calendar"

    const v1, 0x1080354

    .line 121
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string/jumbo v0, "text/x-vcalendar"

    .line 122
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/x-font"

    const v1, 0x1080357

    .line 126
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/font-woff"

    .line 127
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/x-font-woff"

    .line 128
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/x-font-ttf"

    .line 129
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/vnd.oasis.opendocument.graphics"

    const v1, 0x1080359

    .line 133
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/vnd.oasis.opendocument.graphics-template"

    .line 134
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/vnd.oasis.opendocument.image"

    .line 135
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/vnd.stardivision.draw"

    .line 136
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/vnd.sun.xml.draw"

    .line 137
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/vnd.sun.xml.draw.template"

    .line 138
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/pdf"

    const v1, 0x108035a

    .line 142
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/vnd.stardivision.impress"

    const v1, 0x108035c

    .line 146
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/vnd.sun.xml.impress"

    .line 147
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/vnd.sun.xml.impress.template"

    .line 148
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/x-kpresenter"

    .line 149
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/vnd.oasis.opendocument.presentation"

    .line 150
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/vnd.oasis.opendocument.spreadsheet"

    const v1, 0x108035d

    .line 154
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/vnd.oasis.opendocument.spreadsheet-template"

    .line 155
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/vnd.stardivision.calc"

    .line 156
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/vnd.sun.xml.calc"

    .line 157
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/vnd.sun.xml.calc.template"

    .line 158
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/x-kspread"

    .line 159
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/vnd.oasis.opendocument.text"

    const v1, 0x1080353

    .line 163
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/vnd.oasis.opendocument.text-master"

    .line 164
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/vnd.oasis.opendocument.text-template"

    .line 165
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/vnd.oasis.opendocument.text-web"

    .line 166
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/vnd.stardivision.writer"

    .line 167
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/vnd.stardivision.writer-global"

    .line 168
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/vnd.sun.xml.writer"

    .line 169
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/vnd.sun.xml.writer.global"

    .line 170
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/vnd.sun.xml.writer.template"

    .line 171
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/x-abiword"

    .line 172
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/x-kword"

    .line 173
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/x-quicktimeplayer"

    const v1, 0x108035f

    .line 177
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/x-shockwave-flash"

    .line 178
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/msword"

    const v1, 0x1080360

    .line 182
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    .line 183
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/vnd.openxmlformats-officedocument.wordprocessingml.template"

    .line 184
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/vnd.ms-excel"

    const v1, 0x1080355

    .line 188
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    .line 189
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/vnd.openxmlformats-officedocument.spreadsheetml.template"

    .line 190
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/vnd.ms-powerpoint"

    const v1, 0x108035b

    .line 194
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    .line 195
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/vnd.openxmlformats-officedocument.presentationml.template"

    .line 196
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    const-string v0, "application/vnd.openxmlformats-officedocument.presentationml.slideshow"

    .line 197
    invoke-static {v0, v1}, Lcom/android/internal/util/MimeIconUtils;->add(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static add(Ljava/lang/String;I)V
    .locals 1

    .line 32
    sget-object v0, Lcom/android/internal/util/MimeIconUtils;->sMimeIcons:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 33
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " already registered!"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static loadMimeIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const-string/jumbo v0, "vnd.android.document/directory"

    .line 201
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const p1, 0x1080356

    .line 202
    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 206
    :cond_0
    sget-object v0, Lcom/android/internal/util/MimeIconUtils;->sMimeIcons:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 208
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_1
    if-nez p1, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    const-string v0, "/"

    .line 217
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    const-string v0, "audio"

    .line 218
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const p1, 0x108034e

    .line 219
    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_3
    const-string v0, "image"

    .line 220
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const p1, 0x1080359

    .line 221
    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_4
    const-string/jumbo v0, "text"

    .line 222
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const p1, 0x108035e

    .line 223
    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_5
    const-string/jumbo v0, "video"

    .line 224
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const p1, 0x108035f

    .line 225
    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_6
    const p1, 0x1080358

    .line 227
    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method
