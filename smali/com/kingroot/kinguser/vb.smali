.class public Lcom/kingroot/kinguser/vb;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static O(Landroid/content/Context;)B
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 58
    :try_start_0
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    const-string v4, "connectivity"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 59
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 60
    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-eq v4, v5, :cond_1

    .line 62
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v4, v5, :cond_1

    :cond_0
    move v0, v3

    .line 83
    :goto_0
    return v0

    .line 66
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-ne v4, v2, :cond_2

    move v0, v1

    .line 67
    goto :goto_0

    .line 68
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-nez v4, :cond_5

    .line 69
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 70
    invoke-static {p0}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 71
    :cond_3
    const/4 v0, 0x2

    goto :goto_0

    :cond_4
    move v0, v2

    .line 73
    goto :goto_0

    .line 75
    :cond_5
    invoke-static {}, Lcom/kingroot/kinguser/abd;->qb()I

    move-result v2

    const/16 v4, 0xd

    if-lt v2, v4, :cond_6

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_6

    move v0, v1

    .line 78
    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    :cond_6
    move v0, v3

    .line 83
    goto :goto_0
.end method

.method public static P(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 156
    invoke-static {p0}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 157
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 158
    :cond_0
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    .line 160
    :cond_1
    :goto_0
    return-object v0

    :cond_2
    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_0
.end method

.method public static Q(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 169
    invoke-static {p0}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I

    move-result v0

    .line 170
    if-gtz v0, :cond_0

    .line 171
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v0

    .line 173
    :cond_0
    return v0
.end method

.method public static R(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 180
    invoke-static {p0}, Lcom/kingroot/kinguser/vb;->O(Landroid/content/Context;)B

    move-result v0

    if-nez v0, :cond_0

    .line 181
    const/4 v0, 0x1

    .line 183
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static S(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 192
    invoke-static {p0}, Lcom/kingroot/kinguser/vb;->O(Landroid/content/Context;)B

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 193
    const/4 v0, 0x0

    .line 195
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
