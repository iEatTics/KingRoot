.class Lcom/kingroot/kinguser/acq$1;
.super Lcom/kingroot/kinguser/wo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/acq;->rZ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic abb:Lcom/kingroot/kinguser/acq;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/acq;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/kingroot/kinguser/acq$1;->abb:Lcom/kingroot/kinguser/acq;

    invoke-direct {p0}, Lcom/kingroot/kinguser/wo;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 124
    invoke-super {p0}, Lcom/kingroot/kinguser/wo;->run()V

    .line 127
    const-wide/16 v0, 0x7d0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :goto_0
    invoke-static {}, Lcom/kingroot/kinguser/acq;->sc()Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 133
    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/acq;

    .line 135
    if-eqz v1, :cond_3

    invoke-static {v1}, Lcom/kingroot/kinguser/acq;->a(Lcom/kingroot/kinguser/acq;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 136
    const-wide/16 v2, -0x1

    .line 137
    const/4 v0, 0x0

    .line 138
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 140
    invoke-static {v1}, Lcom/kingroot/kinguser/acq;->b(Lcom/kingroot/kinguser/acq;)Lcom/kingroot/kinguser/wo;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 141
    invoke-static {v1}, Lcom/kingroot/kinguser/acq;->b(Lcom/kingroot/kinguser/acq;)Lcom/kingroot/kinguser/wo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/wo;->getThread()Ljava/lang/Thread;

    move-result-object v1

    .line 143
    if-eqz v1, :cond_1

    .line 144
    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    .line 145
    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    .line 149
    :cond_1
    if-nez v0, :cond_2

    .line 150
    const-string v0, ""

    .line 153
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Last AsyncLoader not closed: object-"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", threadId-"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", threadName-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    invoke-static {v0}, Lcom/kingroot/kinguser/zj;->c(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 163
    :cond_3
    invoke-static {}, Lcom/kingroot/kinguser/acq;->sc()Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 167
    :cond_4
    iget-object v0, p0, Lcom/kingroot/kinguser/acq$1;->abb:Lcom/kingroot/kinguser/acq;

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "not closed"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/acq;->a(Lcom/kingroot/kinguser/acq;Ljava/lang/Exception;)Ljava/lang/Exception;

    .line 168
    iget-object v0, p0, Lcom/kingroot/kinguser/acq$1;->abb:Lcom/kingroot/kinguser/acq;

    invoke-static {v0}, Lcom/kingroot/kinguser/acq;->c(Lcom/kingroot/kinguser/acq;)Ljava/lang/Exception;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    .line 169
    invoke-static {}, Lcom/kingroot/kinguser/acq;->sc()Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/kingroot/kinguser/acq$1;->abb:Lcom/kingroot/kinguser/acq;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 170
    return-void

    .line 128
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method
