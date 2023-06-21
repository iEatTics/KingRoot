.class public Lcom/kingroot/kinguser/fm;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 16
    const/4 v1, 0x0

    .line 18
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v2, "tpssdk.cert"

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/ev;->a(Landroid/content/res/AssetManager;Ljava/lang/String;)Lcom/kingroot/kinguser/ev;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 26
    :goto_0
    if-nez v0, :cond_0

    .line 27
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "generate license failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20
    :catch_0
    move-exception v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {v0, p0}, Lcom/kingroot/kinguser/ev;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 29
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "invalid license"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_1
    return-void
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    invoke-static {p0}, Lcom/kingroot/kinguser/ev;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
