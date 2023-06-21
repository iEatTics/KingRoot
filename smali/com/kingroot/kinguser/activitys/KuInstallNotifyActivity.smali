.class public Lcom/kingroot/kinguser/activitys/KuInstallNotifyActivity;
.super Lcom/kingroot/kinguser/activitys/KUBaseActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/kingroot/kinguser/activitys/KUBaseActivity;-><init>()V

    return-void
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 64
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kingroot/kinguser/activitys/KuInstallNotifyActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    const/high16 v1, 0x10000000

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 67
    const-string v1, "com.kingroot.kinguser.KU_INSTALL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    const-string v1, "ku_install_path"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    const-string v1, "ku_update_flag"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 70
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    return-object v0

    .line 71
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public oC()Lcom/kingroot/kinguser/ym;
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 35
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/activitys/KUBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Lcom/kingroot/kinguser/activitys/KuInstallNotifyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 38
    if-eqz v0, :cond_0

    .line 39
    const-string v1, "ku_update_flag"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 40
    invoke-static {}, Lcom/kingroot/kinguser/adm;->st()Lcom/kingroot/kinguser/adm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/adm;->su()V

    .line 41
    if-ne v1, v3, :cond_1

    .line 42
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18841

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 44
    invoke-static {}, Lcom/kingroot/kinguser/aeg;->um()Lcom/kingroot/kinguser/aeg;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/aeg;->cK(I)V

    .line 55
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/activitys/KuInstallNotifyActivity;->finish()V

    .line 56
    return-void

    .line 45
    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 46
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v1

    const v2, 0x18842

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 48
    const-string v1, "ku_install_path"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 50
    invoke-static {}, Lcom/kingroot/kinguser/aiv;->yw()Lcom/kingroot/kinguser/aiv;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lcom/kingroot/kinguser/aiv;->s(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/kingroot/kinguser/activitys/KuInstallNotifyActivity;->finish()V

    .line 30
    invoke-super {p0}, Lcom/kingroot/kinguser/activitys/KUBaseActivity;->onStop()V

    .line 31
    return-void
.end method
