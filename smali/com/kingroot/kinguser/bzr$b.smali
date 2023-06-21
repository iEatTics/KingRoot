.class public abstract Lcom/kingroot/kinguser/bzr$b;
.super Ljava/lang/Thread;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bzr$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bzr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "b"
.end annotation


# instance fields
.field private bFl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private bVR:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic bVS:Lcom/kingroot/kinguser/bzr;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/bzr;Ljava/util/List;)V
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
    .line 257
    iput-object p1, p0, Lcom/kingroot/kinguser/bzr$b;->bVS:Lcom/kingroot/kinguser/bzr;

    .line 258
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 259
    if-eqz p2, :cond_0

    .line 260
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bzr$b;->bFl:Ljava/util/List;

    .line 261
    iget-object v0, p0, Lcom/kingroot/kinguser/bzr$b;->bFl:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 264
    :cond_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bzr$b;->bVR:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 265
    iget-object v0, p0, Lcom/kingroot/kinguser/bzr$b;->bVR:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 266
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/kingroot/kinguser/bzr$b;->bVR:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public abstract b(Lcom/kingroot/kinguser/bzr$a;)V
.end method

.method public interrupt()V
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/kingroot/kinguser/bzr$b;->bVR:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 271
    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V

    .line 272
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/kingroot/kinguser/bzr$b;->bVR:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 290
    invoke-virtual {p0, p0}, Lcom/kingroot/kinguser/bzr$b;->b(Lcom/kingroot/kinguser/bzr$a;)V

    .line 291
    iget-object v0, p0, Lcom/kingroot/kinguser/bzr$b;->bVR:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 292
    return-void
.end method
