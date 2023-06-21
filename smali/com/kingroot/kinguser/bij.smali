.class public Lcom/kingroot/kinguser/bij;
.super Landroid/app/Dialog;
.source "SourceFile"


# instance fields
.field private final bty:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 28
    iput-object p1, p0, Lcom/kingroot/kinguser/bij;->bty:Landroid/content/Context;

    .line 29
    return-void
.end method


# virtual methods
.method public acW()Landroid/content/Context;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/kingroot/kinguser/bij;->bty:Landroid/content/Context;

    return-object v0
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 70
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bij;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    :goto_0
    return-void

    .line 72
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 51
    iget-object v0, p0, Lcom/kingroot/kinguser/bij;->bty:Landroid/content/Context;

    instance-of v0, v0, Lcom/kingroot/kinguser/activitys/KUBaseActivity;

    if-nez v0, :cond_0

    .line 54
    :goto_0
    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bij;->bty:Landroid/content/Context;

    check-cast v0, Lcom/kingroot/kinguser/activitys/KUBaseActivity;

    .line 53
    invoke-virtual {v0, p0}, Lcom/kingroot/kinguser/activitys/KUBaseActivity;->a(Lcom/kingroot/kinguser/bij;)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/kingroot/kinguser/bij;->bty:Landroid/content/Context;

    instance-of v0, v0, Lcom/kingroot/kinguser/activitys/KUBaseActivity;

    if-nez v0, :cond_0

    .line 44
    :goto_0
    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bij;->bty:Landroid/content/Context;

    check-cast v0, Lcom/kingroot/kinguser/activitys/KUBaseActivity;

    .line 41
    invoke-virtual {v0, p0}, Lcom/kingroot/kinguser/activitys/KUBaseActivity;->b(Lcom/kingroot/kinguser/bij;)V

    .line 43
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    goto :goto_0
.end method

.method public show()V
    .locals 1

    .prologue
    .line 59
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bij;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    :goto_0
    return-void

    .line 60
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    goto :goto_0
.end method
