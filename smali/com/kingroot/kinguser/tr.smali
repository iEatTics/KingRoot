.class public Lcom/kingroot/kinguser/tr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/tt;


# instance fields
.field private HC:Lcom/kingroot/kinguser/tt;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/tr;->HC:Lcom/kingroot/kinguser/tt;

    .line 23
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->hU()Lcom/kingroot/kinguser/rh;

    move-result-object v0

    .line 24
    instance-of v1, v0, Lcom/kingroot/kinguser/rg;

    if-eqz v1, :cond_0

    .line 25
    check-cast v0, Lcom/kingroot/kinguser/rg;

    .line 26
    invoke-virtual {v0}, Lcom/kingroot/kinguser/rg;->hP()Lcom/kingroot/kinguser/tt;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/tr;->HC:Lcom/kingroot/kinguser/tt;

    .line 28
    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 45
    iget-object v1, p0, Lcom/kingroot/kinguser/tr;->HC:Lcom/kingroot/kinguser/tt;

    if-nez v1, :cond_0

    .line 55
    :goto_0
    return-object v0

    .line 50
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/kingroot/kinguser/tr;->HC:Lcom/kingroot/kinguser/tt;

    invoke-interface {v1, p1}, Lcom/kingroot/kinguser/tt;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 51
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/kingroot/kinguser/tr;->HC:Lcom/kingroot/kinguser/tt;

    if-nez v0, :cond_0

    .line 41
    :goto_0
    return-void

    .line 37
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/tr;->HC:Lcom/kingroot/kinguser/tt;

    invoke-interface {v0, p1, p2}, Lcom/kingroot/kinguser/tt;->onStart(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 38
    :catch_0
    move-exception v0

    goto :goto_0
.end method
