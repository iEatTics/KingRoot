.class public Lcom/kingroot/kinguser/activitys/RePackageWarningActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private aix:Z

.field private aiy:Landroid/widget/Button;

.field private aiz:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/activitys/RePackageWarningActivity;->aix:Z

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/activitys/RePackageWarningActivity;Z)Z
    .locals 0

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/kingroot/kinguser/activitys/RePackageWarningActivity;->aix:Z

    return p1
.end method

.method private vv()V
    .locals 2

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/kingroot/kinguser/activitys/RePackageWarningActivity;->aix:Z

    if-eqz v0, :cond_0

    .line 79
    invoke-static {}, Lcom/kingroot/kinguser/ban;->VE()V

    .line 88
    :goto_0
    invoke-static {}, Lcom/kingroot/kinguser/aeb;->tV()Lcom/kingroot/kinguser/aeb;

    move-result-object v0

    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aeb;->cI(I)V

    .line 90
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 91
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 92
    return-void

    .line 81
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 82
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 84
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v0, 0x7f030076

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/activitys/RePackageWarningActivity;->setContentView(I)V

    .line 41
    const v0, 0x7f0f0096

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/activitys/RePackageWarningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kingroot/kinguser/activitys/RePackageWarningActivity;->aiy:Landroid/widget/Button;

    .line 42
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/RePackageWarningActivity;->aiy:Landroid/widget/Button;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0700c4

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 43
    const v0, 0x7f0f0097

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/activitys/RePackageWarningActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kingroot/kinguser/activitys/RePackageWarningActivity;->aiz:Landroid/widget/Button;

    .line 44
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/RePackageWarningActivity;->aiz:Landroid/widget/Button;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f070250

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/RePackageWarningActivity;->aiy:Landroid/widget/Button;

    new-instance v1, Lcom/kingroot/kinguser/activitys/RePackageWarningActivity$1;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/activitys/RePackageWarningActivity$1;-><init>(Lcom/kingroot/kinguser/activitys/RePackageWarningActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/RePackageWarningActivity;->aiz:Landroid/widget/Button;

    new-instance v1, Lcom/kingroot/kinguser/activitys/RePackageWarningActivity$2;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/activitys/RePackageWarningActivity$2;-><init>(Lcom/kingroot/kinguser/activitys/RePackageWarningActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 71
    invoke-super {p0}, Landroid/app/Activity;->onDetachedFromWindow()V

    .line 72
    invoke-direct {p0}, Lcom/kingroot/kinguser/activitys/RePackageWarningActivity;->vv()V

    .line 73
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/kingroot/kinguser/activitys/RePackageWarningActivity;->finish()V

    .line 33
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 34
    invoke-static {}, Lcom/kingroot/common/framework/main/MainExitReceiver;->jF()V

    .line 35
    return-void
.end method
