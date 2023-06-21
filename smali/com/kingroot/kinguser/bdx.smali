.class public Lcom/kingroot/kinguser/bdx;
.super Lcom/kingroot/kinguser/tp;
.source "SourceFile"


# instance fields
.field private bkb:Lcom/kingroot/kinguser/bdv;

.field private bkc:Lcom/kingroot/kinguser/bgw;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/kingroot/kinguser/tp;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/bdx;->bkb:Lcom/kingroot/kinguser/bdv;

    return-void
.end method

.method public static YW()V
    .locals 3

    .prologue
    .line 92
    :try_start_0
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v0

    .line 93
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 94
    const-class v2, Lcom/kingroot/kinguser/bdx;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 95
    invoke-static {v1}, Lcom/kingroot/kinguser/tj;->stopService(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static jS()V
    .locals 4

    .prologue
    .line 79
    const-class v1, Lcom/kingroot/kinguser/bdx;

    monitor-enter v1

    .line 81
    :try_start_0
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v0

    .line 82
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 83
    const-class v3, Lcom/kingroot/kinguser/bdx;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 84
    invoke-static {v2}, Lcom/kingroot/kinguser/tj;->startService(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :goto_0
    :try_start_1
    monitor-exit v1

    .line 88
    return-void

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 85
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected I(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/tp;->I(Landroid/content/Context;)V

    .line 25
    :try_start_0
    new-instance v0, Lcom/kingroot/kinguser/bdv;

    new-instance v1, Lcom/kingroot/kinguser/bdx$1;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/bdx$1;-><init>(Lcom/kingroot/kinguser/bdx;)V

    invoke-direct {v0, p1, v1}, Lcom/kingroot/kinguser/bdv;-><init>(Landroid/content/Context;Lcom/kingroot/kinguser/bdv$a;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bdx;->bkb:Lcom/kingroot/kinguser/bdv;

    .line 35
    iget-object v0, p0, Lcom/kingroot/kinguser/bdx;->bkb:Lcom/kingroot/kinguser/bdv;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/kingroot/kinguser/bdx;->bkb:Lcom/kingroot/kinguser/bdv;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bdv;->YT()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :cond_0
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected a(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/tp;->a(Landroid/content/Intent;)V

    .line 51
    return-void
.end method

.method protected jR()V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/kingroot/kinguser/bdx;->bkc:Lcom/kingroot/kinguser/bgw;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/kingroot/kinguser/bdx;->bkc:Lcom/kingroot/kinguser/bgw;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bgw;->abZ()V

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bdx;->bkb:Lcom/kingroot/kinguser/bdv;

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/kingroot/kinguser/bdx;->bkb:Lcom/kingroot/kinguser/bdv;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bdv;->nA()V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/bdx;->bkb:Lcom/kingroot/kinguser/bdv;

    .line 63
    :cond_1
    invoke-super {p0}, Lcom/kingroot/kinguser/tp;->onDestroy()V

    .line 64
    return-void
.end method
