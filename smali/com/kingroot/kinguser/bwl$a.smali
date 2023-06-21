.class Lcom/kingroot/kinguser/bwl$a;
.super Lcom/kingroot/kinguser/bwn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bwl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic bRj:Lcom/kingroot/kinguser/bwl;

.field private bRq:I

.field private bRr:J

.field private mCount:I


# direct methods
.method private constructor <init>(Lcom/kingroot/kinguser/bwl;)V
    .locals 2

    .prologue
    .line 65
    iput-object p1, p0, Lcom/kingroot/kinguser/bwl$a;->bRj:Lcom/kingroot/kinguser/bwl;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bwn;-><init>()V

    .line 67
    const/4 v0, 0x1

    iput v0, p0, Lcom/kingroot/kinguser/bwl$a;->mCount:I

    .line 68
    const/4 v0, 0x3

    iput v0, p0, Lcom/kingroot/kinguser/bwl$a;->bRq:I

    .line 69
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingroot/kinguser/bwl$a;->bRr:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/bwl;Lcom/kingroot/kinguser/bwl$1;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bwl$a;-><init>(Lcom/kingroot/kinguser/bwl;)V

    return-void
.end method


# virtual methods
.method public ca()V
    .locals 6

    .prologue
    .line 80
    new-instance v0, Lcom/kingroot/kinguser/bww;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bww;-><init>()V

    .line 81
    iget-object v1, p0, Lcom/kingroot/kinguser/bwl$a;->bRj:Lcom/kingroot/kinguser/bwl;

    invoke-static {v1}, Lcom/kingroot/kinguser/bwl;->a(Lcom/kingroot/kinguser/bwl;)Lcom/kingroot/kinguser/bwk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bwk;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bww;->bW(Landroid/content/Context;)V

    .line 82
    iget-object v1, p0, Lcom/kingroot/kinguser/bwl$a;->bRj:Lcom/kingroot/kinguser/bwl;

    invoke-static {v1}, Lcom/kingroot/kinguser/bwl;->b(Lcom/kingroot/kinguser/bwl;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 83
    :try_start_0
    iget-object v2, p0, Lcom/kingroot/kinguser/bwl$a;->bRj:Lcom/kingroot/kinguser/bwl;

    invoke-static {v2}, Lcom/kingroot/kinguser/bwl;->b(Lcom/kingroot/kinguser/bwl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    iget v0, p0, Lcom/kingroot/kinguser/bwl$a;->mCount:I

    iget v1, p0, Lcom/kingroot/kinguser/bwl$a;->bRq:I

    if-lt v0, v1, :cond_1

    .line 88
    iget-object v1, p0, Lcom/kingroot/kinguser/bwl$a;->bRj:Lcom/kingroot/kinguser/bwl;

    monitor-enter v1

    .line 90
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bwl$a;->bRj:Lcom/kingroot/kinguser/bwl;

    invoke-static {v0}, Lcom/kingroot/kinguser/bwl;->c(Lcom/kingroot/kinguser/bwl;)Z

    move-result v0

    if-nez v0, :cond_0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 105
    :goto_0
    return-void

    .line 84
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 92
    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/kingroot/kinguser/bwl$a;->bRj:Lcom/kingroot/kinguser/bwl;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bwl;->aiP()Z

    .line 93
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 95
    :cond_1
    iget v0, p0, Lcom/kingroot/kinguser/bwl$a;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/kingroot/kinguser/bwl$a;->mCount:I

    .line 98
    iget-wide v0, p0, Lcom/kingroot/kinguser/bwl$a;->bRr:J

    sget-wide v2, Lcom/kingroot/kinguser/bwr;->bSs:J

    iget v4, p0, Lcom/kingroot/kinguser/bwl$a;->mCount:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 99
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    .line 100
    iget-object v2, p0, Lcom/kingroot/kinguser/bwl$a;->bRj:Lcom/kingroot/kinguser/bwl;

    invoke-static {v2}, Lcom/kingroot/kinguser/bwl;->e(Lcom/kingroot/kinguser/bwl;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/kingroot/kinguser/bwl$a;->bRj:Lcom/kingroot/kinguser/bwl;

    invoke-static {v3}, Lcom/kingroot/kinguser/bwl;->d(Lcom/kingroot/kinguser/bwl;)Lcom/kingroot/kinguser/bwl$a;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 102
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/bwl$a;->bRj:Lcom/kingroot/kinguser/bwl;

    invoke-static {v0}, Lcom/kingroot/kinguser/bwl;->e(Lcom/kingroot/kinguser/bwl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bwl$a;->bRj:Lcom/kingroot/kinguser/bwl;

    invoke-static {v1}, Lcom/kingroot/kinguser/bwl;->d(Lcom/kingroot/kinguser/bwl;)Lcom/kingroot/kinguser/bwl$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public k(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 109
    iget-object v0, p0, Lcom/kingroot/kinguser/bwl$a;->bRj:Lcom/kingroot/kinguser/bwl;

    invoke-static {v0}, Lcom/kingroot/kinguser/bwl;->f(Lcom/kingroot/kinguser/bwl;)Lcom/kingroot/kinguser/bwp;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/kingroot/kinguser/bwl$a;->bRj:Lcom/kingroot/kinguser/bwl;

    invoke-static {v0}, Lcom/kingroot/kinguser/bwl;->f(Lcom/kingroot/kinguser/bwl;)Lcom/kingroot/kinguser/bwp;

    move-result-object v0

    const-string v1, "stopTask"

    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-interface {v0, p1, v1, v2}, Lcom/kingroot/kinguser/bwp;->b(Ljava/lang/Throwable;Ljava/lang/String;[B)Z

    .line 112
    :cond_0
    return-void
.end method

.method n(IJ)V
    .locals 2

    .prologue
    .line 72
    const/4 v0, 0x1

    iput v0, p0, Lcom/kingroot/kinguser/bwl$a;->mCount:I

    .line 73
    iput p1, p0, Lcom/kingroot/kinguser/bwl$a;->bRq:I

    .line 74
    iput-wide p2, p0, Lcom/kingroot/kinguser/bwl$a;->bRr:J

    .line 75
    return-void
.end method
