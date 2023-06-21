.class public Lcom/kingroot/kinguser/gamebox/foreground/GameBoxShortcutActivity;
.super Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainActivity;-><init>()V

    .line 25
    return-void
.end method

.method private Pp()V
    .locals 4

    .prologue
    .line 96
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->DV()Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxShortcutActivity$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxShortcutActivity$1;-><init>(Lcom/kingroot/kinguser/gamebox/foreground/GameBoxShortcutActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v2, v3}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;J)V

    .line 105
    :cond_0
    return-void
.end method

.method public static c(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 64
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 65
    const-class v1, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxShortcutActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 66
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 83
    invoke-super {p0}, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainActivity;->finish()V

    .line 84
    const v0, 0x7f04000b

    const v1, 0x7f040015

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxShortcutActivity;->overridePendingTransition(II)V

    .line 86
    invoke-direct {p0}, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxShortcutActivity;->Pp()V

    .line 87
    return-void
.end method

.method public oC()Lcom/kingroot/kinguser/ym;
    .locals 2

    .prologue
    .line 29
    new-instance v0, Lcom/kingroot/kinguser/atm;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/kingroot/kinguser/atm;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 34
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Ei()V

    .line 36
    const v0, 0x7f04000b

    const v1, 0x7f040015

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxShortcutActivity;->overridePendingTransition(II)V

    .line 39
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxShortcutActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 40
    if-eqz v0, :cond_0

    .line 41
    const-string v1, "extra_start_from"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 42
    if-ne v1, v3, :cond_0

    .line 43
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v1

    const v2, 0x187af

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 48
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v1

    const v2, 0x187bb

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 50
    if-eqz v0, :cond_1

    .line 51
    const-string v1, "extra_start_from"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 52
    if-ne v0, v3, :cond_1

    .line 53
    invoke-static {}, Lcom/kingroot/kinguser/adm;->st()Lcom/kingroot/kinguser/adm;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/adm;->cy(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :cond_1
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 91
    invoke-super {p0}, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainActivity;->onPause()V

    .line 92
    const v0, 0x7f04000b

    const v1, 0x7f040015

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxShortcutActivity;->overridePendingTransition(II)V

    .line 93
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 74
    invoke-super {p0}, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainActivity;->onResume()V

    .line 75
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->DT()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/kingroot/kinguser/asv;->cJ(Z)V

    .line 78
    :cond_0
    return-void
.end method
