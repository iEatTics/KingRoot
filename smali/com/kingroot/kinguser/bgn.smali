.class public Lcom/kingroot/kinguser/bgn;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(ZZZ)Ljava/lang/String;
    .locals 2

    .prologue
    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    const-string v1, "http://fb.kingroot.net/i?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-static {p0, p1, p2}, Lcom/kingroot/kinguser/bgn;->b(ZZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    return-object v0
.end method

.method private static a(Ljava/lang/StringBuilder;Lcom/kingroot/kinguser/bhh;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/kingroot/kinguser/bgn;->a(Ljava/lang/StringBuilder;Lcom/kingroot/kinguser/bhh;Ljava/lang/String;Z)V

    .line 51
    return-void
.end method

.method private static a(Ljava/lang/StringBuilder;Lcom/kingroot/kinguser/bhh;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 55
    .line 56
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    const-string v0, ""

    .line 60
    :goto_0
    if-eqz p3, :cond_0

    .line 62
    :try_start_0
    invoke-virtual {p1, v0}, Lcom/kingroot/kinguser/bhh;->encode(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 75
    :goto_1
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    return-void

    .line 68
    :cond_0
    :try_start_1
    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1

    .line 69
    :catch_0
    move-exception v0

    .line 71
    const-string v0, ""

    goto :goto_1

    .line 63
    :catch_1
    move-exception v1

    goto :goto_1

    :cond_1
    move-object v0, p2

    goto :goto_0
.end method

.method public static abM()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 159
    const-string v0, "commonFeedBackUtils"

    invoke-static {v0}, Lcom/kingroot/kinguser/tk;->cS(Ljava/lang/String;)Lcom/kingroot/kinguser/tk;

    move-result-object v0

    .line 160
    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/tk;->s(J)V

    .line 161
    invoke-static {}, Lcom/kingroot/kinguser/baq;->VH()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    invoke-static {v4, v4}, Lcom/kingroot/kinguser/aty;->x(Landroid/content/Context;Ljava/lang/String;)Z

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/bav;->VV()V

    .line 169
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/abc;->isRootPermition(Z)Z

    move-result v0

    invoke-static {v0, v1, v1}, Lcom/kingroot/kinguser/bgn;->a(ZZZ)Ljava/lang/String;

    move-result-object v0

    .line 179
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 180
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v0

    const/16 v2, 0x20

    .line 181
    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/zh;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 183
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 185
    const/high16 v0, 0x14000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 186
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 188
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static abN()Ljava/lang/String;
    .locals 3

    .prologue
    .line 195
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ii()Ljava/lang/String;

    move-result-object v0

    .line 197
    const/16 v1, 0x2e

    :try_start_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 198
    if-lez v1, :cond_0

    .line 199
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 205
    :cond_0
    :goto_0
    return-object v0

    .line 202
    :catch_0
    move-exception v0

    .line 205
    const-string v0, ""

    goto :goto_0
.end method

.method private static abO()Ljava/lang/String;
    .locals 2

    .prologue
    .line 209
    const-string v0, "00000000000000000000000000000000"

    .line 211
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/aav;->getSharkGuid()Ljava/lang/String;
    :try_end_0
    .catch Lcom/kingroot/kinguser/abn; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 216
    :goto_0
    return-object v0

    .line 212
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static abP()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    invoke-static {}, Lcom/kingroot/kinguser/zb;->pj()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    const-string v0, "17"

    .line 224
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "117"

    goto :goto_0
.end method

.method private static abQ()Ljava/lang/String;
    .locals 2

    .prologue
    .line 228
    invoke-static {}, Lcom/kingroot/kinguser/zb;->pj()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    const-string v0, "zh_CN"

    .line 242
    :cond_0
    :goto_0
    return-object v0

    .line 234
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 235
    const-string v1, "es"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "hi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "in"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "it"

    .line 236
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "pt"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ru"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 242
    const-string v0, "en"

    goto :goto_0
.end method

.method private static b(ZZZ)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 107
    new-instance v1, Lcom/kingroot/kinguser/bhh;

    invoke-direct {v1}, Lcom/kingroot/kinguser/bhh;-><init>()V

    .line 108
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    const-string v0, "&"

    .line 113
    if-eqz p2, :cond_0

    .line 114
    const-string v0, "\\&"

    .line 117
    :cond_0
    const-string v3, "productId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-static {}, Lcom/kingroot/kinguser/bgn;->abP()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/kingroot/kinguser/bgn;->a(Ljava/lang/StringBuilder;Lcom/kingroot/kinguser/bhh;Ljava/lang/String;)V

    .line 119
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "language="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-static {}, Lcom/kingroot/kinguser/bgn;->abQ()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/kingroot/kinguser/bgn;->a(Ljava/lang/StringBuilder;Lcom/kingroot/kinguser/bhh;Ljava/lang/String;)V

    .line 121
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "BuildBrand="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v2, v1, v3, v5}, Lcom/kingroot/kinguser/bgn;->a(Ljava/lang/StringBuilder;Lcom/kingroot/kinguser/bhh;Ljava/lang/String;Z)V

    .line 123
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "BuildModel="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v2, v1, v3, v5}, Lcom/kingroot/kinguser/bgn;->a(Ljava/lang/StringBuilder;Lcom/kingroot/kinguser/bhh;Ljava/lang/String;Z)V

    .line 125
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Release="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3, v5}, Lcom/kingroot/kinguser/bgn;->a(Ljava/lang/StringBuilder;Lcom/kingroot/kinguser/bhh;Ljava/lang/String;Z)V

    .line 127
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "VersionName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-static {}, Lcom/kingroot/kinguser/bgn;->abN()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3, v5}, Lcom/kingroot/kinguser/bgn;->a(Ljava/lang/StringBuilder;Lcom/kingroot/kinguser/bhh;Ljava/lang/String;Z)V

    .line 129
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Buildno="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->hZ()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/kingroot/kinguser/bgn;->a(Ljava/lang/StringBuilder;Lcom/kingroot/kinguser/bhh;Ljava/lang/String;)V

    .line 131
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "imei="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/kingroot/kinguser/aav;->ae(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3, v5}, Lcom/kingroot/kinguser/bgn;->a(Ljava/lang/StringBuilder;Lcom/kingroot/kinguser/bhh;Ljava/lang/String;Z)V

    .line 133
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "guid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-static {}, Lcom/kingroot/kinguser/bgn;->abO()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3, v5}, Lcom/kingroot/kinguser/bgn;->a(Ljava/lang/StringBuilder;Lcom/kingroot/kinguser/bhh;Ljava/lang/String;Z)V

    .line 135
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "channel="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ib()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3, v5}, Lcom/kingroot/kinguser/bgn;->a(Ljava/lang/StringBuilder;Lcom/kingroot/kinguser/bhh;Ljava/lang/String;Z)V

    .line 137
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "BuildID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    sget-object v3, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-static {v2, v1, v3, v5}, Lcom/kingroot/kinguser/bgn;->a(Ljava/lang/StringBuilder;Lcom/kingroot/kinguser/bhh;Ljava/lang/String;Z)V

    .line 140
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Root="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    if-eqz p0, :cond_1

    .line 143
    const-string v3, "1"

    invoke-static {v2, v1, v3}, Lcom/kingroot/kinguser/bgn;->a(Ljava/lang/StringBuilder;Lcom/kingroot/kinguser/bhh;Ljava/lang/String;)V

    .line 147
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "uninstall="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    if-eqz p1, :cond_2

    .line 149
    const-string v0, "2"

    invoke-static {v2, v1, v0}, Lcom/kingroot/kinguser/bgn;->a(Ljava/lang/StringBuilder;Lcom/kingroot/kinguser/bhh;Ljava/lang/String;)V

    .line 154
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 145
    :cond_1
    const-string v3, "2"

    invoke-static {v2, v1, v3}, Lcom/kingroot/kinguser/bgn;->a(Ljava/lang/StringBuilder;Lcom/kingroot/kinguser/bhh;Ljava/lang/String;)V

    goto :goto_0

    .line 151
    :cond_2
    const-string v0, "1"

    invoke-static {v2, v1, v0}, Lcom/kingroot/kinguser/bgn;->a(Ljava/lang/StringBuilder;Lcom/kingroot/kinguser/bhh;Ljava/lang/String;)V

    goto :goto_1
.end method
