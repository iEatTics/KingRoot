.class Lcom/kingroot/kinguser/aeu$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/aeu$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic afB:Lcom/kingroot/kinguser/aeu$1;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aeu$1;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/kingroot/kinguser/aeu$1$1;->afB:Lcom/kingroot/kinguser/aeu$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .prologue
    .line 75
    invoke-static {}, Lcom/kingroot/kinguser/aeu;->uJ()[B

    move-result-object v1

    monitor-enter v1

    .line 76
    :try_start_0
    invoke-static {p2}, Lcom/kingroot/kinguser/aeu;->f(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 78
    iget-object v0, p0, Lcom/kingroot/kinguser/aeu$1$1;->afB:Lcom/kingroot/kinguser/aeu$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/aeu$1;->afA:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 79
    invoke-static {}, Lcom/kingroot/kinguser/aeu;->uJ()[B

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 80
    monitor-exit v1

    .line 81
    return-void

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .prologue
    .line 70
    return-void
.end method
