.class public Lcom/kingroot/kinguser/activitys/SliderMainActivity;
.super Lcom/kingroot/kinguser/activitys/KUBaseActivity;
.source "SourceFile"


# static fields
.field private static mStartTime:J


# instance fields
.field private aiX:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/kingroot/kinguser/activitys/SliderMainActivity;->mStartTime:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/kingroot/kinguser/activitys/KUBaseActivity;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/activitys/SliderMainActivity;->aiX:Z

    return-void
.end method

.method public static i(Landroid/content/Context;I)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 85
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 87
    :try_start_0
    const-class v1, Lcom/kingroot/kinguser/activitys/SliderMainActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 88
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 89
    const-string v1, "com.kingroot.kinguser.KU_MainPage"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    const-string v1, "ku_goto_mainpage_notify"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 91
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_0
    return-object v0

    .line 92
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private vx()Z
    .locals 1

    .prologue
    .line 56
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->BY()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Dx()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public oC()Lcom/kingroot/kinguser/ym;
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/kingroot/kinguser/activitys/SliderMainActivity;->vx()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    const/4 v0, 0x1

    sput-boolean v0, Lcom/kingroot/kinguser/aiy;->asP:Z

    .line 46
    new-instance v0, Lcom/kingroot/kinguser/axj;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/axj;-><init>(Landroid/content/Context;)V

    .line 51
    :goto_0
    return-object v0

    .line 48
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aks;->be(Z)V

    .line 49
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Dy()V

    .line 51
    new-instance v0, Lcom/kingroot/kinguser/axf;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/axf;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/activitys/KUBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/kingroot/kinguser/activitys/SliderMainActivity;->mStartTime:J

    .line 36
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x186ba

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 39
    invoke-static {}, Lcom/kingroot/kinguser/adm;->st()Lcom/kingroot/kinguser/adm;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/adm;->cy(I)V

    .line 40
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 62
    invoke-super {p0}, Lcom/kingroot/kinguser/activitys/KUBaseActivity;->onResume()V

    .line 63
    iget-boolean v0, p0, Lcom/kingroot/kinguser/activitys/SliderMainActivity;->aiX:Z

    if-nez v0, :cond_0

    .line 64
    iput-boolean v4, p0, Lcom/kingroot/kinguser/activitys/SliderMainActivity;->aiX:Z

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/kingroot/kinguser/activitys/SliderMainActivity;->mStartTime:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/tw;->t(J)V

    .line 69
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/activitys/SliderMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 70
    if-eqz v0, :cond_1

    .line 71
    const-string v1, "ku_goto_mainpage_notify"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 73
    if-ne v0, v4, :cond_2

    .line 74
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x187e0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 82
    :cond_1
    :goto_0
    return-void

    .line 75
    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 76
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x187e2

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 79
    :catch_0
    move-exception v0

    goto :goto_0
.end method
