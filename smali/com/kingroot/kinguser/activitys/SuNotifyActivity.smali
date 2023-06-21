.class public Lcom/kingroot/kinguser/activitys/SuNotifyActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private aiY:Lcom/kingroot/kinguser/bed;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 62
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    const/4 v3, 0x1

    new-instance v4, Lcom/kingroot/kinguser/activitys/SuNotifyActivity$2;

    invoke-direct {v4, p0}, Lcom/kingroot/kinguser/activitys/SuNotifyActivity$2;-><init>(Lcom/kingroot/kinguser/activitys/SuNotifyActivity;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/activitys/SuNotifyActivity;->aiY:Lcom/kingroot/kinguser/bed;

    return-void
.end method

.method private vy()V
    .locals 2

    .prologue
    .line 56
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/activitys/SuNotifyActivity;->aiY:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 57
    return-void
.end method

.method public static vz()V
    .locals 6

    .prologue
    .line 81
    invoke-static {}, Lcom/kingroot/common/framework/service/KSysService;->jT()Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->blm:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    const/4 v4, 0x0

    new-instance v5, Lcom/kingroot/kinguser/activitys/SuNotifyActivity$3;

    invoke-direct {v5}, Lcom/kingroot/kinguser/activitys/SuNotifyActivity$3;-><init>()V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 95
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-virtual {p0}, Lcom/kingroot/kinguser/activitys/SuNotifyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    invoke-static {}, Lcom/kingroot/kinguser/activitys/SuNotifyActivity;->vz()V

    .line 31
    invoke-static {}, Lcom/kingroot/kinguser/ajn;->zp()Lcom/kingroot/kinguser/ajn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ajn;->zq()V

    .line 34
    invoke-direct {p0}, Lcom/kingroot/kinguser/activitys/SuNotifyActivity;->vy()V

    .line 40
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->blm:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    const/4 v4, 0x0

    new-instance v5, Lcom/kingroot/kinguser/activitys/SuNotifyActivity$1;

    invoke-direct {v5, p0}, Lcom/kingroot/kinguser/activitys/SuNotifyActivity$1;-><init>(Lcom/kingroot/kinguser/activitys/SuNotifyActivity;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 49
    invoke-virtual {p0}, Lcom/kingroot/kinguser/activitys/SuNotifyActivity;->finish()V

    .line 50
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/kingroot/kinguser/activitys/SuNotifyActivity;->finish()V

    .line 76
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 77
    invoke-static {}, Lcom/kingroot/common/framework/main/MainExitReceiver;->jF()V

    .line 78
    return-void
.end method
