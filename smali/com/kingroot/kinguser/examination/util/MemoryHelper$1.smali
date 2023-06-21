.class public final Lcom/kingroot/kinguser/examination/util/MemoryHelper$1;
.super Landroid/content/pm/IPackageStatsObserver$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/asi;->iq(Ljava/lang/String;)Landroid/content/pm/PackageStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$_lock:Ljava/lang/Object;

.field final synthetic val$result:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/kingroot/kinguser/examination/util/MemoryHelper$1;->val$result:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p2, p0, Lcom/kingroot/kinguser/examination/util/MemoryHelper$1;->val$_lock:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/content/pm/IPackageStatsObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/kingroot/kinguser/examination/util/MemoryHelper$1;->val$result:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 45
    iget-object v1, p0, Lcom/kingroot/kinguser/examination/util/MemoryHelper$1;->val$_lock:Ljava/lang/Object;

    monitor-enter v1

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/examination/util/MemoryHelper$1;->val$_lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 47
    monitor-exit v1

    .line 48
    return-void

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
