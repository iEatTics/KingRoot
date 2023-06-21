.class public abstract Lcom/kingroot/kinguser/wo$b;
.super Ljava/lang/Thread;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/wo$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/wo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "b"
.end annotation


# instance fields
.field final synthetic MU:Lcom/kingroot/kinguser/wo;

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

.field private mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/wo;Ljava/util/List;)V
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
    iput-object p1, p0, Lcom/kingroot/kinguser/wo$b;->MU:Lcom/kingroot/kinguser/wo;

    .line 258
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 259
    if-eqz p2, :cond_0

    .line 260
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/wo$b;->MV:Ljava/util/List;

    .line 261
    iget-object v0, p0, Lcom/kingroot/kinguser/wo$b;->MV:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 264
    :cond_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/wo$b;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 265
    iget-object v0, p0, Lcom/kingroot/kinguser/wo$b;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 266
    return-void
.end method


# virtual methods
.method public abstract b(Lcom/kingroot/kinguser/wo$a;)V
.end method

.method public interrupt()V
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/kingroot/kinguser/wo$b;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 271
    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V

    .line 272
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/kingroot/kinguser/wo$b;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public nF()Ljava/util/List;
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
    .line 281
    iget-object v0, p0, Lcom/kingroot/kinguser/wo$b;->MV:Ljava/util/List;

    if-nez v0, :cond_0

    .line 282
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/wo$b;->MV:Ljava/util/List;

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/wo$b;->MV:Ljava/util/List;

    return-object v0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/kingroot/kinguser/wo$b;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 290
    invoke-virtual {p0, p0}, Lcom/kingroot/kinguser/wo$b;->b(Lcom/kingroot/kinguser/wo$a;)V

    .line 291
    iget-object v0, p0, Lcom/kingroot/kinguser/wo$b;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 292
    return-void
.end method
