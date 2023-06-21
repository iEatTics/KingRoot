.class Lcom/kingroot/kinguser/ach$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/ach$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aag:Lcom/kingroot/kinguser/ach$1;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/ach$1;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/kingroot/kinguser/ach$1$1;->aag:Lcom/kingroot/kinguser/ach$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .prologue
    .line 100
    invoke-static {}, Lcom/kingroot/kinguser/ach;->rD()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 101
    :try_start_0
    invoke-static {p2}, Lcom/kingroot/kinguser/ach;->f(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 102
    iget-object v0, p0, Lcom/kingroot/kinguser/ach$1$1;->aag:Lcom/kingroot/kinguser/ach$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/ach$1;->aaf:Lcom/kingroot/kinguser/ach;

    iget-object v2, p0, Lcom/kingroot/kinguser/ach$1$1;->aag:Lcom/kingroot/kinguser/ach$1;

    iget-object v2, v2, Lcom/kingroot/kinguser/ach$1;->aae:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/ach;->a(Lcom/kingroot/kinguser/ach;Ljava/lang/String;)V

    .line 103
    invoke-static {}, Lcom/kingroot/kinguser/ach;->rD()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 104
    monitor-exit v1

    .line 105
    return-void

    .line 104
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
    .line 95
    return-void
.end method
