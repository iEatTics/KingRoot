.class public Lcom/kingroot/kinguser/bvb;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static getSSID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 31
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/bty;->aie()Lcom/kingroot/kinguser/bty;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bty;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 32
    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 43
    :goto_0
    return-object v0

    .line 38
    :catch_0
    move-exception v0

    .line 43
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
