.class public Lcom/kingroot/kinguser/bat;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static b(Lcom/kingroot/kingmaster/network/updata/ICheckIPCListener;)V
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Lcom/kingroot/kinguser/aeg;->um()Lcom/kingroot/kinguser/aeg;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/kingroot/kinguser/aeg;->a(Lcom/kingroot/kingmaster/network/updata/ICheckIPCListener;)Z

    move-result v0

    .line 42
    if-nez v0, :cond_0

    .line 43
    const v0, 0x7f0703b8

    invoke-static {v0}, Lcom/kingroot/kinguser/wk;->bE(I)V

    .line 45
    :cond_0
    return-void
.end method

.method public static isAvailable()Z
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x1

    return v0
.end method

.method public static l(Landroid/app/Activity;)V
    .locals 2
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 30
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x1875e

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 32
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 33
    const-class v1, Lcom/kingroot/kinguser/activitys/WiFiSettingActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 34
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :goto_0
    return-void

    .line 35
    :catch_0
    move-exception v0

    goto :goto_0
.end method
