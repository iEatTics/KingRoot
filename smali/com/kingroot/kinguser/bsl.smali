.class public Lcom/kingroot/kinguser/bsl;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static ahV()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 70
    const/4 v2, 0x0

    .line 72
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/bre;->ahy()Lcom/kingroot/kinguser/bre;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bre;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 73
    invoke-static {v1}, Lcom/kingroot/kinguser/bsl;->bN(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v1

    .line 74
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 78
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_1
    return v0

    .line 75
    :catch_0
    move-exception v1

    .line 76
    const-string v3, "getActiveNetworkInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " getActiveNetworkInfo NullPointerException--- \n"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    goto :goto_0

    .line 78
    :cond_0
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static bN(Landroid/content/Context;)Landroid/net/ConnectivityManager;
    .locals 2

    .prologue
    .line 28
    const/4 v1, 0x0

    .line 31
    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 30
    check-cast v0, Landroid/net/ConnectivityManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :goto_0
    return-object v0

    .line 32
    :catch_0
    move-exception v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method
