.class public Lcom/kingroot/kinguser/activitys/AntiInjectActivity;
.super Lcom/kingroot/kinguser/activitys/KUBaseActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/kingroot/kinguser/activitys/KUBaseActivity;-><init>()V

    return-void
.end method

.method public static b(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 42
    .line 43
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 44
    if-nez p0, :cond_0

    .line 45
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object p0

    .line 46
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 48
    :cond_0
    const-class v1, Lcom/kingroot/kinguser/activitys/AntiInjectActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 49
    const-string v1, "AntiInjectPage.is_auto_open"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 51
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 52
    return-void
.end method


# virtual methods
.method public oC()Lcom/kingroot/kinguser/ym;
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/kingroot/kinguser/axa;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/axa;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/activitys/KUBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18774

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 26
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/aks;->be(J)V

    .line 27
    return-void
.end method
