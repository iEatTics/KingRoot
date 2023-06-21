.class public abstract Lcom/kingroot/kinguser/bkv$b;
.super Ljava/lang/Thread;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bkv$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bkv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "b"
.end annotation


# instance fields
.field private MV:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic bzp:Lcom/kingroot/kinguser/bkv;

.field private mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/bkv;Ljava/util/List;)V
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
    .line 255
    iput-object p1, p0, Lcom/kingroot/kinguser/bkv$b;->bzp:Lcom/kingroot/kinguser/bkv;

    .line 256
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 257
    if-eqz p2, :cond_0

    .line 258
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bkv$b;->MV:Ljava/util/List;

    .line 259
    iget-object v0, p0, Lcom/kingroot/kinguser/bkv$b;->MV:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 262
    :cond_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bkv$b;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 263
    iget-object v0, p0, Lcom/kingroot/kinguser/bkv$b;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 264
    return-void
.end method


# virtual methods
.method public abstract b(Lcom/kingroot/kinguser/bkv$a;)V
.end method

.method public interrupt()V
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/kingroot/kinguser/bkv$b;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 269
    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V

    .line 270
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/kingroot/kinguser/bkv$b;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/kingroot/kinguser/bkv$b;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 288
    invoke-virtual {p0, p0}, Lcom/kingroot/kinguser/bkv$b;->b(Lcom/kingroot/kinguser/bkv$a;)V

    .line 289
    iget-object v0, p0, Lcom/kingroot/kinguser/bkv$b;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 290
    return-void
.end method
