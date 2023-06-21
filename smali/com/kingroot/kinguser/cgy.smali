.class public Lcom/kingroot/kinguser/cgy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/cgy$a;
    }
.end annotation


# static fields
.field public static ceL:Ljava/lang/String;


# direct methods
.method public static a(Lcom/kingroot/kinguser/cgy$a;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 99
    .line 103
    :try_start_0
    new-instance v0, Ljava/net/URL;

    const-string v2, "http://tools.3g.qq.com/wifi/cw.html"

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ltmsdk/common/exception/WifiApproveException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 104
    :try_start_1
    invoke-static {}, Lcom/kingroot/kinguser/cgu;->qb()I

    move-result v2

    const/16 v3, 0x8

    if-ge v2, v3, :cond_0

    .line 105
    const-string v2, "http.keepAlive"

    const-string v3, "false"

    invoke-static {v2, v3}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 107
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 108
    const-string v2, "Pragma"

    const-string v3, "no-cache"

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v2, "Cache-Control"

    const-string v3, "no-cache"

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 111
    const-string v2, "GET"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 112
    const/16 v2, 0x1388

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 113
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 114
    const/16 v3, 0xc8

    if-eq v2, v3, :cond_1

    const/16 v3, 0x12d

    if-lt v2, v3, :cond_5

    const/16 v3, 0x131

    if-gt v2, v3, :cond_5

    .line 116
    :cond_1
    const-string v2, "Meri"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 118
    if-eqz v2, :cond_2

    const-string v3, "Meri"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 119
    :cond_2
    invoke-static {v0}, Lcom/kingroot/kinguser/cgy;->a(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ltmsdk/common/exception/WifiApproveException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v1

    :cond_3
    move v2, v4

    .line 134
    :goto_0
    if-eqz v0, :cond_4

    .line 135
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 139
    :cond_4
    if-nez v1, :cond_6

    .line 140
    invoke-interface {p0, v4, v2}, Lcom/kingroot/kinguser/cgy$a;->l(ZZ)V

    .line 147
    :goto_1
    return-object v1

    :cond_5
    move v2, v5

    .line 122
    goto :goto_0

    .line 142
    :cond_6
    sput-object v1, Lcom/kingroot/kinguser/cgy;->ceL:Ljava/lang/String;

    .line 143
    invoke-interface {p0, v5, v4}, Lcom/kingroot/kinguser/cgy$a;->l(ZZ)V

    goto :goto_1

    .line 126
    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_2
    if-eqz v0, :cond_7

    .line 135
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 139
    :cond_7
    if-nez v1, :cond_8

    .line 140
    invoke-interface {p0, v4, v5}, Lcom/kingroot/kinguser/cgy$a;->l(ZZ)V

    goto :goto_1

    .line 142
    :cond_8
    sput-object v1, Lcom/kingroot/kinguser/cgy;->ceL:Ljava/lang/String;

    .line 143
    invoke-interface {p0, v5, v5}, Lcom/kingroot/kinguser/cgy$a;->l(ZZ)V

    goto :goto_1

    .line 127
    :catch_1
    move-exception v0

    move-object v2, v1

    .line 129
    :goto_3
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 134
    :catchall_0
    move-exception v0

    move v3, v5

    :goto_4
    if-eqz v2, :cond_9

    .line 135
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 139
    :cond_9
    if-nez v1, :cond_c

    .line 140
    invoke-interface {p0, v4, v3}, Lcom/kingroot/kinguser/cgy$a;->l(ZZ)V

    .line 143
    :goto_5
    throw v0

    :catch_2
    move-exception v0

    move-object v0, v1

    .line 132
    :goto_6
    if-eqz v0, :cond_a

    .line 135
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 139
    :cond_a
    if-nez v1, :cond_b

    .line 140
    invoke-interface {p0, v4, v5}, Lcom/kingroot/kinguser/cgy$a;->l(ZZ)V

    goto :goto_1

    .line 142
    :cond_b
    sput-object v1, Lcom/kingroot/kinguser/cgy;->ceL:Ljava/lang/String;

    .line 143
    invoke-interface {p0, v5, v5}, Lcom/kingroot/kinguser/cgy$a;->l(ZZ)V

    goto :goto_1

    .line 142
    :cond_c
    sput-object v1, Lcom/kingroot/kinguser/cgy;->ceL:Ljava/lang/String;

    .line 143
    invoke-interface {p0, v5, v3}, Lcom/kingroot/kinguser/cgy$a;->l(ZZ)V

    goto :goto_5

    .line 134
    :catchall_1
    move-exception v0

    move-object v2, v1

    move v3, v4

    goto :goto_4

    :catchall_2
    move-exception v2

    move v3, v4

    move-object v6, v0

    move-object v0, v2

    move-object v2, v6

    goto :goto_4

    :catch_3
    move-exception v2

    goto :goto_6

    .line 127
    :catch_4
    move-exception v2

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_3

    .line 126
    :catch_5
    move-exception v2

    goto :goto_2
.end method

.method private static a(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 151
    .line 154
    :try_start_0
    new-instance v1, Ljava/net/URL;

    const-string v2, "http://tools.3g.qq.com/wifi/cw.html"

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 155
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ltmsdk/common/exception/WifiApproveException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 157
    :goto_0
    if-nez v1, :cond_0

    :try_start_1
    const-string v2, "Location"

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 158
    const-string v2, "Location"

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 160
    :cond_0
    if-nez v1, :cond_1

    const-string v2, "Refresh"

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 161
    const-string v2, "Refresh"

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 162
    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 163
    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 166
    :cond_1
    if-nez v1, :cond_5

    .line 167
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ltmsdk/common/exception/WifiApproveException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 168
    if-eqz v0, :cond_4

    .line 169
    :try_start_2
    invoke-static {v0}, Lcom/kingroot/kinguser/cgy;->n(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ltmsdk/common/exception/WifiApproveException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v2

    .line 170
    if-eqz v2, :cond_4

    move-object v1, v0

    move-object v0, v2

    .line 182
    :goto_1
    if-eqz v1, :cond_2

    .line 184
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 190
    :cond_2
    :goto_2
    return-object v0

    .line 182
    :catch_0
    move-exception v1

    move-object v1, v0

    :goto_3
    if-eqz v1, :cond_2

    .line 184
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 187
    :catch_1
    move-exception v1

    goto :goto_2

    .line 177
    :catch_2
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 178
    :goto_4
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 182
    :catchall_0
    move-exception v0

    :goto_5
    if-eqz v1, :cond_3

    .line 184
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 187
    :cond_3
    :goto_6
    throw v0

    :catch_3
    move-exception v1

    move-object v1, v0

    .line 182
    :goto_7
    if-eqz v1, :cond_2

    .line 184
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_2

    .line 187
    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_2

    :catch_6
    move-exception v1

    goto :goto_6

    .line 182
    :catchall_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_5

    :catchall_2
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_5

    :catch_7
    move-exception v2

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_7

    :catch_8
    move-exception v2

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_7

    .line 177
    :catch_9
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_4

    .line 182
    :catch_a
    move-exception v2

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_3

    :catch_b
    move-exception v2

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_3

    :cond_4
    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_1

    :cond_5
    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_1

    :cond_6
    move-object v1, v0

    goto/16 :goto_0
.end method

.method public static anj()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 43
    const/4 v1, 0x0

    .line 45
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/ceb;->akU()Lcom/kingroot/kinguser/cga;

    move-result-object v2

    invoke-interface {v2}, Lcom/kingroot/kinguser/cga;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 49
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 51
    :cond_0
    const/4 v0, 0x0

    .line 53
    :cond_1
    return v0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getSSID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    :try_start_0
    invoke-static {}, Ltmsdk/common/TMSDKContext;->akS()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 64
    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 66
    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 74
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private static n(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v9, 0x2

    const/4 v0, 0x0

    .line 194
    .line 195
    invoke-static {p0}, Lcom/kingroot/kinguser/cgy;->o(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    .line 197
    const/4 v2, 0x5

    new-array v4, v2, [Ljava/lang/String;

    const-string v2, "http-equiv\\s*=\\s*[\"\']*refresh[\"\']*\\s*content\\s*=\\s*[\"\']*[^;]*;\\s*url\\s*=\\s*[\"\']*([^\"\'\\s>]+)"

    aput-object v2, v4, v0

    const/4 v2, 0x1

    const-string v5, "[^\\w](?:location.href\\s*=|location\\s*=|location.replace\\s*\\()\\s*[\"\']*([^\"\'>]+)"

    aput-object v5, v4, v2

    const-string v2, "<NextURL>([^<]+)"

    aput-object v2, v4, v9

    const/4 v2, 0x3

    const-string v5, "\\s+action\\s*=\\s*[\"\']*([^\"\'>]+)[\"\'>\\s]*.*submit"

    aput-object v5, v4, v2

    const/4 v2, 0x4

    const-string v5, "<LoginURL>([^<]+)"

    aput-object v5, v4, v2

    .line 204
    array-length v5, v4

    move v2, v0

    move-object v0, v1

    .line 206
    :goto_0
    if-ge v2, v5, :cond_2

    if-nez v0, :cond_2

    .line 207
    aget-object v6, v4, v2

    invoke-static {v6, v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 208
    :cond_0
    :goto_1
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_1

    if-nez v0, :cond_1

    .line 209
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 211
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, "http"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    move-object v0, v1

    .line 212
    goto :goto_1

    .line 206
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 216
    :cond_2
    if-nez v0, :cond_3

    .line 217
    new-instance v0, Ltmsdk/common/exception/WifiApproveException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0725SSID:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/kingroot/kinguser/cgy;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " page head content: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ltmsdk/common/exception/WifiApproveException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_3
    return-object v0
.end method

.method private static o(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 223
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 224
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 230
    :catch_0
    move-exception v0

    .line 231
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 234
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 239
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 234
    :cond_0
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 235
    :catch_1
    move-exception v0

    .line 236
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 235
    :catch_2
    move-exception v0

    .line 236
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 233
    :catchall_0
    move-exception v0

    .line 234
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 237
    :goto_2
    throw v0

    .line 235
    :catch_3
    move-exception v1

    .line 236
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method
