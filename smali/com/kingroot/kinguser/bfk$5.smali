.class Lcom/kingroot/kinguser/bfk$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/cat;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bfk;->a(ILcom/kingroot/kinguser/byi;Lcom/qq/taf/jce/JceStruct;)Lcom/qq/taf/jce/JceStruct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aUj:Ljava/lang/Object;

.field final synthetic bmQ:Lcom/kingroot/kinguser/bfk;

.field final synthetic bmR:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bfk;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/kingroot/kinguser/bfk$5;->bmQ:Lcom/kingroot/kinguser/bfk;

    iput-object p2, p0, Lcom/kingroot/kinguser/bfk$5;->bmR:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/kingroot/kinguser/bfk$5;->aUj:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIIILcom/qq/taf/jce/JceStruct;)V
    .locals 2

    .prologue
    .line 203
    if-nez p3, :cond_0

    if-nez p4, :cond_0

    if-eqz p5, :cond_0

    .line 205
    iget-object v0, p0, Lcom/kingroot/kinguser/bfk$5;->bmR:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 210
    :cond_0
    iget-object v1, p0, Lcom/kingroot/kinguser/bfk$5;->aUj:Ljava/lang/Object;

    monitor-enter v1

    .line 211
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bfk$5;->aUj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 212
    monitor-exit v1

    .line 213
    return-void

    .line 212
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
