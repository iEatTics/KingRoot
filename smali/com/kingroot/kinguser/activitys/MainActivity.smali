.class public Lcom/kingroot/kinguser/activitys/MainActivity;
.super Lcom/kingroot/kinguser/activitys/KUBaseActivity;
.source "SourceFile"


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/kingroot/kinguser/activitys/KUBaseActivity;-><init>()V

    .line 13
    const-string v0, "ku_applicationMainActivity"

    iput-object v0, p0, Lcom/kingroot/kinguser/activitys/MainActivity;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public oC()Lcom/kingroot/kinguser/ym;
    .locals 2

    .prologue
    .line 45
    new-instance v0, Lcom/kingroot/kinguser/axm;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/axm;-><init>(Landroid/content/Context;)V

    .line 46
    new-instance v1, Lcom/kingroot/kinguser/aur;

    invoke-direct {v1, v0, p0, v0}, Lcom/kingroot/kinguser/aur;-><init>(Lcom/kingroot/kinguser/aui$b;Landroid/app/Activity;Lcom/kingroot/kinguser/apx$a;)V

    .line 47
    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/axm;->a(Lcom/kingroot/kinguser/aui$a;)V

    .line 48
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/activitys/KUBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0}, Lcom/kingroot/kinguser/activitys/KUBaseActivity;->onDestroy()V

    .line 30
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 34
    invoke-super {p0}, Lcom/kingroot/kinguser/activitys/KUBaseActivity;->onResume()V

    .line 36
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 17
    invoke-super {p0}, Lcom/kingroot/kinguser/activitys/KUBaseActivity;->onStart()V

    .line 19
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 24
    invoke-super {p0}, Lcom/kingroot/kinguser/activitys/KUBaseActivity;->onStop()V

    .line 25
    return-void
.end method
