.class Lcom/kingroot/kinguser/tu$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/tu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private HF:Landroid/os/IBinder;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/tu$a;->HF:Landroid/os/IBinder;

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/tu$1;)V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/kingroot/kinguser/tu$a;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/kingroot/kinguser/tu$a;->jY()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    if-eqz p1, :cond_0

    .line 139
    invoke-static {p1}, Lcom/kingroot/kinguser/tj;->startService(Landroid/content/Intent;)V

    .line 140
    invoke-static {p1, p0}, Lcom/kingroot/kinguser/tj;->a(Landroid/content/Intent;Landroid/content/ServiceConnection;)V

    .line 143
    invoke-static {}, Lcom/kingroot/kinguser/uj;->kA()Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    monitor-enter p0

    .line 145
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/tu$a;->jY()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 146
    monitor-exit p0

    goto :goto_0

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 154
    :cond_2
    const-wide/16 v0, 0xbb8

    :try_start_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 157
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public jY()Z
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/kingroot/kinguser/tu$a;->HF:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/tu$a;->HF:Landroid/os/IBinder;

    .line 118
    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/tu$a;->HF:Landroid/os/IBinder;

    .line 119
    invoke-interface {v0}, Landroid/os/IBinder;->pingBinder()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 117
    :goto_0
    return v0

    .line 119
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public jZ()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/kingroot/kinguser/tu$a;->jY()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/kingroot/kinguser/tu$a;->HF:Landroid/os/IBinder;

    .line 126
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .prologue
    .line 97
    iput-object p2, p0, Lcom/kingroot/kinguser/tu$a;->HF:Landroid/os/IBinder;

    .line 100
    monitor-enter p0

    .line 101
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 104
    monitor-exit p0

    .line 105
    return-void

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/tu$a;->HF:Landroid/os/IBinder;

    .line 111
    monitor-enter p0

    .line 112
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 113
    monitor-exit p0

    .line 114
    return-void

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
