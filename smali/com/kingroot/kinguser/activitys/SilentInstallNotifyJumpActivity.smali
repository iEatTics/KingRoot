.class public Lcom/kingroot/kinguser/activitys/SilentInstallNotifyJumpActivity;
.super Lcom/kingroot/kinguser/activitys/KUBaseActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/kingroot/kinguser/activitys/KUBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public oC()Lcom/kingroot/kinguser/ym;
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 15
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/activitys/KUBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18899

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 17
    invoke-static {}, Lcom/kingroot/kinguser/adm;->st()Lcom/kingroot/kinguser/adm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/adm;->sK()V

    .line 19
    invoke-static {p0}, Lcom/kingroot/kinguser/activitys/SilentInstallActivity;->aL(Landroid/content/Context;)V

    .line 21
    invoke-virtual {p0}, Lcom/kingroot/kinguser/activitys/SilentInstallNotifyJumpActivity;->finish()V

    .line 22
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/kingroot/kinguser/activitys/SilentInstallNotifyJumpActivity;->finish()V

    .line 34
    invoke-super {p0}, Lcom/kingroot/kinguser/activitys/KUBaseActivity;->onStop()V

    .line 35
    return-void
.end method
