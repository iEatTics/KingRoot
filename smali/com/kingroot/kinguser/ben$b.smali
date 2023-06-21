.class Lcom/kingroot/kinguser/ben$b;
.super Ljava/util/concurrent/PriorityBlockingQueue;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/ben;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/PriorityBlockingQueue",
        "<",
        "Ljava/lang/Runnable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 299
    invoke-direct {p0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    return-void
.end method


# virtual methods
.method public g(Ljava/lang/Runnable;)Z
    .locals 1

    .prologue
    .line 306
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ben$b;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 307
    invoke-super {p0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    .line 309
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h(Ljava/lang/Runnable;)Z
    .locals 1

    .prologue
    .line 314
    invoke-super {p0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public synthetic offer(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 299
    check-cast p1, Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/ben$b;->g(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method
