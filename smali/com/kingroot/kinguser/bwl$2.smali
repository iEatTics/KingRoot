.class Lcom/kingroot/kinguser/bwl$2;
.super Lcom/kingroot/kinguser/bwn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bwl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bRj:Lcom/kingroot/kinguser/bwl;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bwl;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/kingroot/kinguser/bwl$2;->bRj:Lcom/kingroot/kinguser/bwl;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bwn;-><init>()V

    return-void
.end method


# virtual methods
.method public ca()V
    .locals 8

    .prologue
    .line 118
    iget-object v1, p0, Lcom/kingroot/kinguser/bwl$2;->bRj:Lcom/kingroot/kinguser/bwl;

    monitor-enter v1

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bwl$2;->bRj:Lcom/kingroot/kinguser/bwl;

    invoke-static {v0}, Lcom/kingroot/kinguser/bwl;->c(Lcom/kingroot/kinguser/bwl;)Z

    move-result v0

    if-nez v0, :cond_0

    monitor-exit v1

    .line 140
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bwl$2;->bRj:Lcom/kingroot/kinguser/bwl;

    invoke-static {v0}, Lcom/kingroot/kinguser/bwl;->g(Lcom/kingroot/kinguser/bwl;)Lcom/kingroot/kinguser/bws;

    move-result-object v0

    if-nez v0, :cond_1

    .line 123
    monitor-exit v1

    goto :goto_0

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 126
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bwl$2;->bRj:Lcom/kingroot/kinguser/bwl;

    invoke-static {v0}, Lcom/kingroot/kinguser/bwl;->g(Lcom/kingroot/kinguser/bwl;)Lcom/kingroot/kinguser/bws;

    move-result-object v0

    iget-object v2, p0, Lcom/kingroot/kinguser/bwl$2;->bRj:Lcom/kingroot/kinguser/bwl;

    invoke-static {v2}, Lcom/kingroot/kinguser/bwl;->a(Lcom/kingroot/kinguser/bwl;)Lcom/kingroot/kinguser/bwk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/bwk;->aiL()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/bws;->cK(J)Z

    move-result v0

    .line 129
    if-eqz v0, :cond_2

    .line 130
    iget-object v0, p0, Lcom/kingroot/kinguser/bwl$2;->bRj:Lcom/kingroot/kinguser/bwl;

    invoke-static {v0}, Lcom/kingroot/kinguser/bwl;->g(Lcom/kingroot/kinguser/bwl;)Lcom/kingroot/kinguser/bws;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bws;->aiS()J

    move-result-wide v2

    .line 131
    iget-object v0, p0, Lcom/kingroot/kinguser/bwl$2;->bRj:Lcom/kingroot/kinguser/bwl;

    invoke-static {v0}, Lcom/kingroot/kinguser/bwl;->d(Lcom/kingroot/kinguser/bwl;)Lcom/kingroot/kinguser/bwl$a;

    move-result-object v0

    iget-object v4, p0, Lcom/kingroot/kinguser/bwl$2;->bRj:Lcom/kingroot/kinguser/bwl;

    invoke-static {v4}, Lcom/kingroot/kinguser/bwl;->a(Lcom/kingroot/kinguser/bwl;)Lcom/kingroot/kinguser/bwk;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kingroot/kinguser/bwk;->aiL()J

    move-result-wide v4

    sget-wide v6, Lcom/kingroot/kinguser/bwr;->bSs:J

    div-long/2addr v4, v6

    long-to-int v4, v4

    invoke-virtual {v0, v4, v2, v3}, Lcom/kingroot/kinguser/bwl$a;->n(IJ)V

    .line 132
    sget-wide v4, Lcom/kingroot/kinguser/bwr;->bSs:J

    add-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 133
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    .line 134
    iget-object v0, p0, Lcom/kingroot/kinguser/bwl$2;->bRj:Lcom/kingroot/kinguser/bwl;

    invoke-static {v0}, Lcom/kingroot/kinguser/bwl;->e(Lcom/kingroot/kinguser/bwl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v4, p0, Lcom/kingroot/kinguser/bwl$2;->bRj:Lcom/kingroot/kinguser/bwl;

    invoke-static {v4}, Lcom/kingroot/kinguser/bwl;->d(Lcom/kingroot/kinguser/bwl;)Lcom/kingroot/kinguser/bwl$a;

    move-result-object v4

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 139
    :cond_2
    :goto_1
    monitor-exit v1

    goto :goto_0

    .line 136
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/bwl$2;->bRj:Lcom/kingroot/kinguser/bwl;

    invoke-static {v0}, Lcom/kingroot/kinguser/bwl;->e(Lcom/kingroot/kinguser/bwl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/kingroot/kinguser/bwl$2;->bRj:Lcom/kingroot/kinguser/bwl;

    invoke-static {v2}, Lcom/kingroot/kinguser/bwl;->d(Lcom/kingroot/kinguser/bwl;)Lcom/kingroot/kinguser/bwl$a;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public k(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 145
    iget-object v0, p0, Lcom/kingroot/kinguser/bwl$2;->bRj:Lcom/kingroot/kinguser/bwl;

    invoke-static {v0}, Lcom/kingroot/kinguser/bwl;->f(Lcom/kingroot/kinguser/bwl;)Lcom/kingroot/kinguser/bwp;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/kingroot/kinguser/bwl$2;->bRj:Lcom/kingroot/kinguser/bwl;

    invoke-static {v0}, Lcom/kingroot/kinguser/bwl;->f(Lcom/kingroot/kinguser/bwl;)Lcom/kingroot/kinguser/bwp;

    move-result-object v0

    const-string v1, "startTask"

    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-interface {v0, p1, v1, v2}, Lcom/kingroot/kinguser/bwp;->b(Ljava/lang/Throwable;Ljava/lang/String;[B)Z

    .line 148
    :cond_0
    return-void
.end method
