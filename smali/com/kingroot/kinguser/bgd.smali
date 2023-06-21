.class public Lcom/kingroot/kinguser/bgd;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bt(Landroid/content/Context;)V
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 17
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 19
    const-string v0, "ActivityJumpHelper#jumpSysSetting"

    invoke-static {v0}, Lcom/kingroot/kinguser/tk;->cS(Ljava/lang/String;)Lcom/kingroot/kinguser/tk;

    move-result-object v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    const-wide/32 v2, 0x2bf20

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/tk;->s(J)V

    .line 23
    :cond_0
    return-void
.end method
