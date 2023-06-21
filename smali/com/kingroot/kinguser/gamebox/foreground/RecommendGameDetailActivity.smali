.class public Lcom/kingroot/kinguser/gamebox/foreground/RecommendGameDetailActivity;
.super Lcom/kingroot/kinguser/gamebox/foreground/GameBoxBaseActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxBaseActivity;-><init>()V

    .line 13
    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 28
    if-nez p1, :cond_0

    .line 36
    :goto_0
    return-void

    .line 31
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 32
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 33
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 34
    const-class v1, Lcom/kingroot/kinguser/gamebox/foreground/RecommendGameDetailActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 35
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-super {p0}, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxBaseActivity;->finish()V

    .line 48
    invoke-virtual {p0, v0, v0}, Lcom/kingroot/kinguser/gamebox/foreground/RecommendGameDetailActivity;->overridePendingTransition(II)V

    .line 49
    return-void
.end method

.method public oC()Lcom/kingroot/kinguser/ym;
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/kingroot/kinguser/atn;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/atn;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 22
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    invoke-virtual {p0, v2, v2}, Lcom/kingroot/kinguser/gamebox/foreground/RecommendGameDetailActivity;->overridePendingTransition(II)V

    .line 24
    invoke-virtual {p0}, Lcom/kingroot/kinguser/gamebox/foreground/RecommendGameDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 25
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-super {p0}, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxBaseActivity;->onPause()V

    .line 54
    invoke-virtual {p0, v0, v0}, Lcom/kingroot/kinguser/gamebox/foreground/RecommendGameDetailActivity;->overridePendingTransition(II)V

    .line 55
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 41
    invoke-super {p0}, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxBaseActivity;->onResume()V

    .line 42
    return-void
.end method
