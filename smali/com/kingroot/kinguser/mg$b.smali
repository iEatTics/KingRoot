.class public abstract Lcom/kingroot/kinguser/mg$b;
.super Ljava/lang/Thread;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/mg$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/mg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "b"
.end annotation


# instance fields
.field private vK:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private vL:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic vM:Lcom/kingroot/kinguser/mg;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/mg;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 208
    iput-object p1, p0, Lcom/kingroot/kinguser/mg$b;->vM:Lcom/kingroot/kinguser/mg;

    .line 209
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 210
    if-eqz p2, :cond_0

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/mg$b;->vK:Ljava/util/List;

    .line 212
    iget-object v0, p0, Lcom/kingroot/kinguser/mg$b;->vK:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 215
    :cond_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/mg$b;->vL:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 216
    iget-object v0, p0, Lcom/kingroot/kinguser/mg$b;->vL:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 217
    return-void
.end method


# virtual methods
.method public abstract b(Lcom/kingroot/kinguser/mg$a;)V
.end method

.method public eC()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 232
    iget-object v0, p0, Lcom/kingroot/kinguser/mg$b;->vK:Ljava/util/List;

    if-nez v0, :cond_0

    .line 233
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/mg$b;->vK:Ljava/util/List;

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/mg$b;->vK:Ljava/util/List;

    return-object v0
.end method

.method public interrupt()V
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/kingroot/kinguser/mg$b;->vL:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 222
    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V

    .line 223
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/kingroot/kinguser/mg$b;->vL:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 240
    iget-object v0, p0, Lcom/kingroot/kinguser/mg$b;->vL:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 242
    :try_start_0
    invoke-virtual {p0, p0}, Lcom/kingroot/kinguser/mg$b;->b(Lcom/kingroot/kinguser/mg$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    iget-object v0, p0, Lcom/kingroot/kinguser/mg$b;->vL:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 246
    return-void

    .line 244
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/kingroot/kinguser/mg$b;->vL:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0
.end method
