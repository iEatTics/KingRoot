.class public Lcom/kingroot/kinguser/activitys/AppDownloadManagerActivity;
.super Lcom/kingroot/kinguser/activitys/KUBaseActivity;
.source "SourceFile"


# instance fields
.field private aie:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/kingroot/kinguser/activitys/KUBaseActivity;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/activitys/AppDownloadManagerActivity;->aie:I

    .line 32
    return-void
.end method

.method public static aK(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 59
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 60
    const-class v1, Lcom/kingroot/kinguser/activitys/AppDownloadManagerActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 61
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 62
    return-void
.end method

.method public static aM(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 65
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 66
    const-string v1, "key_is_auto_install"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 67
    const-class v1, Lcom/kingroot/kinguser/activitys/AppDownloadManagerActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 68
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 69
    return-void
.end method


# virtual methods
.method public oC()Lcom/kingroot/kinguser/ym;
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lcom/kingroot/kinguser/anm;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/anm;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/activitys/KUBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 41
    invoke-super {p0}, Lcom/kingroot/kinguser/activitys/KUBaseActivity;->onStart()V

    .line 42
    invoke-virtual {p0}, Lcom/kingroot/kinguser/activitys/AppDownloadManagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 43
    if-eqz v0, :cond_0

    .line 44
    const-string v1, "key_notify_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/activitys/AppDownloadManagerActivity;->aie:I

    .line 46
    :cond_0
    iget v0, p0, Lcom/kingroot/kinguser/activitys/AppDownloadManagerActivity;->aie:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 48
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18904

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 50
    :cond_1
    return-void
.end method
