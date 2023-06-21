.class public Lcom/kingroot/kinguser/aay;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static YA:Ljava/lang/String;

.field private static YB:Ljava/lang/String;

.field private static YC:Ljava/lang/String;

.field private static final YD:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, ""

    sput-object v0, Lcom/kingroot/kinguser/aay;->YA:Ljava/lang/String;

    .line 36
    const-string v0, ""

    sput-object v0, Lcom/kingroot/kinguser/aay;->YB:Ljava/lang/String;

    .line 39
    const-string v0, "Device ID ="

    sput-object v0, Lcom/kingroot/kinguser/aay;->YC:Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/aay;->YD:Ljava/lang/Object;

    return-void
.end method

.method public static ac(Z)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    const-string v0, "000000000000000"

    .line 54
    const-string v1, "permition deny!"

    .line 55
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v2

    .line 56
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 57
    invoke-virtual {v2, p0}, Lcom/kingroot/kinguser/abc;->isRootPermition(Z)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 58
    invoke-static {}, Lcom/kingroot/kinguser/abd;->qb()I

    move-result v4

    const/16 v5, 0x15

    if-lt v4, v5, :cond_4

    .line 66
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v2

    const-string v4, "service call iphonesubinfo 1"

    invoke-virtual {v2, v4}, Lcom/kingroot/kinguser/abc;->el(Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;

    move-result-object v2

    iget-object v2, v2, Lcom/kingroot/common/utils/system/VTCmdResult;->mStdOut:Ljava/lang/String;

    .line 67
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 72
    const-string v5, "\'.*\'"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 73
    :goto_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 74
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 79
    :cond_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 81
    const-string v0, "([0-9A-Za-z]\\d*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    :goto_1
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 85
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 88
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 89
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_2
    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    .line 121
    :goto_3
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    return-object v3

    .line 91
    :cond_3
    const-string v0, "000000000000000"

    goto :goto_2

    .line 97
    :cond_4
    const-string v1, "dumpsys iphonesubinfo"

    invoke-virtual {v2, v1}, Lcom/kingroot/kinguser/abc;->el(Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;

    move-result-object v1

    .line 98
    invoke-virtual {v1}, Lcom/kingroot/common/utils/system/VTCmdResult;->success()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, v1, Lcom/kingroot/common/utils/system/VTCmdResult;->mStdOut:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 99
    iget-object v2, v1, Lcom/kingroot/common/utils/system/VTCmdResult;->mStdOut:Ljava/lang/String;

    .line 100
    const-string v1, "\n"

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 101
    if-eqz v4, :cond_5

    array-length v1, v4

    if-lez v1, :cond_5

    .line 102
    array-length v5, v4

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v5, :cond_5

    aget-object v6, v4, v1

    .line 103
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 104
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/kingroot/kinguser/aay;->YC:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 105
    sget-object v1, Lcom/kingroot/kinguser/aay;->YC:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v6, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 106
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    move-object v0, v1

    :cond_5
    move-object v1, v0

    move-object v0, v2

    .line 114
    goto :goto_3

    .line 102
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 115
    :cond_7
    iget-object v1, v1, Lcom/kingroot/common/utils/system/VTCmdResult;->mStdOut:Ljava/lang/String;

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_3

    :cond_8
    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_3
.end method

.method public static ak(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 153
    const-string v0, "000000000000000"

    .line 155
    :try_start_0
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 156
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 162
    :goto_0
    return-object v0

    .line 157
    :catch_0
    move-exception v0

    .line 158
    const-string v0, "000000000000001"

    goto :goto_0
.end method

.method public static al(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 169
    sget-object v1, Lcom/kingroot/kinguser/aay;->YD:Ljava/lang/Object;

    monitor-enter v1

    .line 170
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/aay;->YA:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/kingroot/kinguser/aay;->YA:Ljava/lang/String;

    invoke-static {v0}, Lcom/kingroot/kinguser/aay;->dX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    sget-object v0, Lcom/kingroot/kinguser/aay;->YA:Ljava/lang/String;

    monitor-exit v1

    .line 197
    :goto_0
    return-object v0

    .line 174
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/zy;->pI()Lcom/kingroot/kinguser/zy;

    move-result-object v0

    .line 175
    const-string v2, "K2"

    invoke-interface {v0, v2}, Lcom/kingroot/kinguser/zz;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 177
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2}, Lcom/kingroot/kinguser/aay;->dX(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 178
    sput-object v2, Lcom/kingroot/kinguser/aay;->YA:Ljava/lang/String;

    .line 179
    sget-object v0, Lcom/kingroot/kinguser/aay;->YA:Ljava/lang/String;

    monitor-exit v1

    goto :goto_0

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 182
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/kingroot/kinguser/aay;->qx()Ljava/lang/String;

    move-result-object v2

    .line 183
    invoke-static {v2}, Lcom/kingroot/kinguser/aay;->dX(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 184
    sput-object v2, Lcom/kingroot/kinguser/aay;->YA:Ljava/lang/String;

    .line 192
    :cond_2
    :goto_1
    sget-object v2, Lcom/kingroot/kinguser/aay;->YA:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lcom/kingroot/kinguser/aay;->YA:Ljava/lang/String;

    invoke-static {v2}, Lcom/kingroot/kinguser/aay;->dX(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 193
    const-string v2, "K2"

    sget-object v3, Lcom/kingroot/kinguser/aay;->YA:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lcom/kingroot/kinguser/zz;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    sget-object v0, Lcom/kingroot/kinguser/aay;->YA:Ljava/lang/String;

    monitor-exit v1

    goto :goto_0

    .line 186
    :cond_3
    invoke-static {p0}, Lcom/kingroot/kinguser/aay;->ak(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 187
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 188
    sput-object v2, Lcom/kingroot/kinguser/aay;->YA:Ljava/lang/String;

    goto :goto_1

    .line 197
    :cond_4
    const-string v0, "000000000000000"

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public static am(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 202
    const-string v1, "000000000000000"

    .line 203
    invoke-static {}, Lcom/kingroot/kinguser/aay;->qx()Ljava/lang/String;

    move-result-object v0

    .line 204
    invoke-static {v0}, Lcom/kingroot/kinguser/aay;->dX(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-object v0

    .line 207
    :cond_1
    invoke-static {p0}, Lcom/kingroot/kinguser/aay;->ak(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 208
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    goto :goto_0
.end method

.method public static dX(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 220
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 233
    :cond_0
    :goto_0
    return v0

    .line 225
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 229
    const-string v1, "0000"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 233
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic dY(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 25
    sput-object p0, Lcom/kingroot/kinguser/aay;->YB:Ljava/lang/String;

    return-object p0
.end method

.method public static qx()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    sget-object v0, Lcom/kingroot/kinguser/aay;->YB:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/kingroot/kinguser/aay;->YB:Ljava/lang/String;

    invoke-static {v0}, Lcom/kingroot/kinguser/aay;->dX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 133
    :cond_0
    new-instance v0, Lcom/kingroot/kinguser/aay$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/aay$1;-><init>()V

    .line 143
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aay$1;->ny()Z

    .line 146
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/aay;->YB:Ljava/lang/String;

    return-object v0
.end method
