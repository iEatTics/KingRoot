.class public Lcom/kingroot/kinguser/ccn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field bWY:Z

.field bWZ:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/ccn;->bWY:Z

    .line 14
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/ccn;->bWZ:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public akI()Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/kingroot/kinguser/ccn;->bWY:Z

    return v0
.end method

.method public setState(I)V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/kingroot/kinguser/ccn;->bWZ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 28
    return-void
.end method
