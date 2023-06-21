.class public Lcom/kingroot/kinguser/buv;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static ain()Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ConnectType;
    .locals 3

    .prologue
    .line 44
    invoke-static {}, Lcom/kingroot/kinguser/bty;->aie()Lcom/kingroot/kinguser/bty;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bty;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 45
    const/4 v1, 0x0

    .line 47
    :try_start_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 52
    :goto_0
    if-nez v0, :cond_0

    .line 53
    sget-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ConnectType;->bPT:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ConnectType;

    .line 65
    :goto_1
    return-object v0

    .line 48
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 56
    sget-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ConnectType;->bPV:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ConnectType;

    goto :goto_1

    .line 57
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_3

    .line 58
    invoke-static {}, Lcom/kingroot/kinguser/buv;->aip()Ljava/lang/String;

    move-result-object v0

    .line 59
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    invoke-static {}, Lcom/kingroot/kinguser/buv;->aiq()I

    move-result v0

    if-lez v0, :cond_2

    .line 60
    sget-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ConnectType;->bPW:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ConnectType;

    goto :goto_1

    .line 62
    :cond_2
    sget-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ConnectType;->bPX:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ConnectType;

    goto :goto_1

    .line 65
    :cond_3
    sget-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ConnectType;->bPX:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ConnectType;

    goto :goto_1
.end method

.method public static aio()Z
    .locals 2

    .prologue
    .line 103
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static aip()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    invoke-static {}, Lcom/kingroot/kinguser/buv;->aio()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    const-string v0, "http.proxyHost"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    :goto_0
    return-object v0

    .line 117
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/bty;->aie()Lcom/kingroot/kinguser/bty;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bty;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static aiq()I
    .locals 1

    .prologue
    .line 129
    invoke-static {}, Lcom/kingroot/kinguser/buv;->aio()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    :try_start_0
    const-string v0, "http.proxyPort"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 142
    :goto_0
    return v0

    .line 134
    :catch_0
    move-exception v0

    .line 136
    const/4 v0, -0x1

    goto :goto_0

    .line 140
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/bty;->aie()Lcom/kingroot/kinguser/bty;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bty;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I

    move-result v0

    goto :goto_0
.end method

.method public static getNetworkName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 74
    const-string v1, ""

    .line 75
    invoke-static {}, Lcom/kingroot/kinguser/bty;->aie()Lcom/kingroot/kinguser/bty;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bty;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 76
    const/4 v2, 0x0

    .line 78
    :try_start_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 83
    :goto_0
    if-nez v0, :cond_1

    move-object v0, v1

    .line 94
    :cond_0
    :goto_1
    return-object v0

    .line 79
    :catch_0
    move-exception v0

    move-object v0, v2

    goto :goto_0

    .line 86
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 87
    invoke-static {}, Lcom/kingroot/kinguser/bvb;->getSSID()Ljava/lang/String;

    move-result-object v0

    .line 91
    :goto_2
    if-nez v0, :cond_0

    .line 92
    const-string v0, ""

    goto :goto_1

    .line 89
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method
