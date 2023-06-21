.class public Lcom/kingroot/kinguser/gp;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 79
    invoke-static {p0}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 81
    :cond_0
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    .line 83
    :cond_1
    :goto_0
    return-object v0

    :cond_2
    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_0
.end method

.method public static l(Landroid/content/Context;)B
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, -0x1

    .line 48
    :try_start_0
    const-string v0, "connectivity"

    .line 49
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 50
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 51
    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-eq v3, v4, :cond_1

    .line 53
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v3, v4, :cond_1

    :cond_0
    move v0, v2

    .line 70
    :goto_0
    return v0

    .line 57
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v3, v1, :cond_2

    .line 58
    const/4 v0, 0x0

    goto :goto_0

    .line 59
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_5

    .line 60
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 61
    invoke-static {p0}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_4

    .line 62
    :cond_3
    const/4 v0, 0x2

    goto :goto_0

    :cond_4
    move v0, v1

    .line 64
    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    :cond_5
    move v0, v2

    .line 70
    goto :goto_0
.end method

.method public static m(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 92
    invoke-static {p0}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I

    move-result v0

    .line 93
    if-gtz v0, :cond_0

    .line 94
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v0

    .line 96
    :cond_0
    return v0
.end method
