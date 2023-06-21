.class final Lcom/kingroot/kinguser/bzj$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bzk$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bzj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    .line 46
    new-instance v1, Lcom/kingroot/kinguser/cgd$c;

    invoke-direct {v1}, Lcom/kingroot/kinguser/cgd$c;-><init>()V

    .line 47
    const/4 v0, 0x3

    iput v0, v1, Lcom/kingroot/kinguser/cgd$c;->ceb:I

    move-object v0, p1

    .line 48
    check-cast v0, Lcom/kingroot/kinguser/cgc;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cgc;->fs()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/kingroot/kinguser/cgd$c;->jY:J

    .line 49
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/kingroot/kinguser/cgd$c;->name:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Ljava/lang/Thread;->getPriority()I

    move-result v0

    iput v0, v1, Lcom/kingroot/kinguser/cgd$c;->priority:I

    .line 51
    iput-wide v4, v1, Lcom/kingroot/kinguser/cgd$c;->ced:J

    .line 52
    iput-wide v4, v1, Lcom/kingroot/kinguser/cgd$c;->cee:J

    .line 54
    invoke-static {}, Lcom/kingroot/kinguser/bzj;->akl()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-static {}, Lcom/kingroot/kinguser/bzj;->jK()V

    .line 57
    invoke-static {}, Lcom/kingroot/kinguser/bzj;->akm()Lcom/kingroot/kinguser/cgd$a;

    move-result-object v0

    invoke-static {}, Lcom/kingroot/kinguser/bzj;->activeCount()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/kingroot/kinguser/cgd$a;->a(Lcom/kingroot/kinguser/cgd$c;I)V

    .line 58
    return-void
.end method

.method public final b(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    .locals 6

    .prologue
    .line 74
    invoke-static {}, Lcom/kingroot/kinguser/bzj;->akl()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/cgd$c;

    .line 75
    if-eqz v0, :cond_0

    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/kingroot/kinguser/cgd$c;->ced:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lcom/kingroot/kinguser/cgd$c;->ced:J

    .line 77
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/kingroot/kinguser/cgd$c;->cee:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lcom/kingroot/kinguser/cgd$c;->cee:J

    .line 79
    invoke-static {}, Lcom/kingroot/kinguser/bzj;->jK()V

    .line 80
    invoke-static {}, Lcom/kingroot/kinguser/bzj;->akm()Lcom/kingroot/kinguser/cgd$a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/kingroot/kinguser/cgd$a;->b(Lcom/kingroot/kinguser/cgd$c;)V

    .line 82
    :cond_0
    return-void
.end method

.method public final beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    .locals 4

    .prologue
    .line 62
    invoke-static {}, Lcom/kingroot/kinguser/bzj;->akl()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/cgd$c;

    .line 63
    if-eqz v0, :cond_0

    .line 64
    invoke-static {}, Lcom/kingroot/kinguser/bzj;->jK()V

    .line 65
    invoke-static {}, Lcom/kingroot/kinguser/bzj;->akm()Lcom/kingroot/kinguser/cgd$a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/kingroot/kinguser/cgd$a;->a(Lcom/kingroot/kinguser/cgd$c;)V

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/kingroot/kinguser/cgd$c;->ced:J

    .line 68
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/kingroot/kinguser/cgd$c;->cee:J

    .line 70
    :cond_0
    return-void
.end method
