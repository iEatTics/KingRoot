.class public abstract Lcom/kingroot/kinguser/bmq$b;
.super Ljava/lang/Thread;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bmq$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bmq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "b"
.end annotation


# instance fields
.field private bCo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private bCp:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/bmq;Ljava/util/List;)V
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
    .line 256
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 258
    if-eqz p2, :cond_0

    .line 259
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bmq$b;->bCo:Ljava/util/List;

    .line 260
    iget-object v0, p0, Lcom/kingroot/kinguser/bmq$b;->bCo:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 263
    :cond_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bmq$b;->bCp:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 264
    iget-object v0, p0, Lcom/kingroot/kinguser/bmq$b;->bCp:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 265
    return-void
.end method


# virtual methods
.method public abstract a(Lcom/kingroot/kinguser/bmq$a;)V
.end method

.method public interrupt()V
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/kingroot/kinguser/bmq$b;->bCp:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 270
    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V

    .line 271
    return-void
.end method

.method public final isRunning()Z
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/kingroot/kinguser/bmq$b;->bCp:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/kingroot/kinguser/bmq$b;->bCp:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 289
    invoke-virtual {p0, p0}, Lcom/kingroot/kinguser/bmq$b;->a(Lcom/kingroot/kinguser/bmq$a;)V

    .line 290
    iget-object v0, p0, Lcom/kingroot/kinguser/bmq$b;->bCp:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 291
    return-void
.end method
