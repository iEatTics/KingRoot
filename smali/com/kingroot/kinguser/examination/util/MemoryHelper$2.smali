.class public final Lcom/kingroot/kinguser/examination/util/MemoryHelper$2;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/asi;->NS()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$_lock:Ljava/lang/Object;

.field final synthetic val$result:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/kingroot/kinguser/examination/util/MemoryHelper$2;->val$result:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, Lcom/kingroot/kinguser/examination/util/MemoryHelper$2;->val$_lock:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/kingroot/kinguser/examination/util/MemoryHelper$2;->val$result:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 102
    iget-object v1, p0, Lcom/kingroot/kinguser/examination/util/MemoryHelper$2;->val$_lock:Ljava/lang/Object;

    monitor-enter v1

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/examination/util/MemoryHelper$2;->val$_lock:Ljava/lang/Object;

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
