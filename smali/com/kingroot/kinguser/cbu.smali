.class public Lcom/kingroot/kinguser/cbu;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/cbu$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/cbv;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/kingroot/kinguser/cbu;-><init>()V

    return-void
.end method

.method public static akF()Lcom/kingroot/kinguser/cbu;
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Lcom/kingroot/kinguser/cbu$a;->akG()Lcom/kingroot/kinguser/cbu;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public cO(J)Z
    .locals 11

    .prologue
    .line 39
    new-instance v0, Lcom/kingroot/kinguser/i;

    invoke-direct {v0}, Lcom/kingroot/kinguser/i;-><init>()V

    .line 40
    iput-wide p1, v0, Lcom/kingroot/kinguser/i;->et:J

    .line 41
    new-instance v7, Lcom/kingroot/kinguser/j;

    invoke-direct {v7}, Lcom/kingroot/kinguser/j;-><init>()V

    .line 43
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 44
    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {}, Lcom/kingroot/kinguser/cav;->akt()Lcom/kingroot/kinguser/cav;

    move-result-object v8

    const/16 v9, 0xc4e

    new-instance v1, Lcom/kingroot/kinguser/cbv;

    move-object v2, p0

    move-wide v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/kingroot/kinguser/cbv;-><init>(Lcom/kingroot/kinguser/cbu;Ljava/util/concurrent/atomic/AtomicBoolean;JLjava/lang/Object;)V

    invoke-virtual {v8, v9, v0, v7, v1}, Lcom/kingroot/kinguser/cav;->a(ILcom/qq/taf/jce/JceStruct;Lcom/qq/taf/jce/JceStruct;Lcom/kingroot/kinguser/cat;)V

    .line 65
    monitor-enter v6

    .line 67
    const-wide/16 v0, 0x7530

    :try_start_0
    invoke-virtual {v6, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :goto_0
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0

    .line 71
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 68
    :catch_0
    move-exception v0

    goto :goto_0
.end method
