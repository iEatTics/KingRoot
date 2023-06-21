.class public Lcom/kingroot/kinguser/tj;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/Class;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 117
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/kingroot/kinguser/tj;->a(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 127
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/kingroot/kinguser/tj;->a(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 139
    const/4 v0, 0x2

    invoke-static {p0, p1, p2, v0}, Lcom/kingroot/kinguser/uc;->a(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Intent;Landroid/content/ServiceConnection;)V
    .locals 0

    .prologue
    .line 92
    invoke-static {p0, p1}, Lcom/kingroot/kinguser/tq;->a(Landroid/content/Intent;Landroid/content/ServiceConnection;)V

    .line 93
    return-void
.end method

.method public static ge()Landroid/content/Context;
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Lcom/kingroot/kinguser/bzt;->ge()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 48
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v0

    return-object v0
.end method

.method public static getPackageName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 56
    const/4 v0, 0x0

    .line 58
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/bzt;->ge()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 63
    :goto_0
    if-nez v0, :cond_0

    .line 64
    const-string v0, ""

    .line 67
    :cond_0
    return-object v0

    .line 59
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static p(Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 175
    invoke-static {p0, p1}, Lcom/kingroot/kinguser/uc;->p(Ljava/lang/String;Z)V

    .line 176
    return-void
.end method

.method public static startService(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 75
    invoke-static {p0}, Lcom/kingroot/kinguser/tq;->startService(Landroid/content/Intent;)V

    .line 76
    return-void
.end method

.method public static stopService(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 83
    invoke-static {p0}, Lcom/kingroot/kinguser/tq;->stopService(Landroid/content/Intent;)V

    .line 84
    return-void
.end method
