.class public final Lcom/kingroot/kinguser/bpb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kingroot/kinguser/bob;
.implements Lcom/kingroot/kinguser/bog;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/bpb$a;
    }
.end annotation


# instance fields
.field private bGj:Lcom/kingroot/kinguser/bph;

.field private bGk:Lcom/kingroot/kinguser/bog;

.field private bGl:Lcom/kingroot/kinguser/bpa;

.field public bGm:Lcom/kingroot/kinguser/boz;

.field public bGn:Lcom/kingroot/kinguser/bpg;

.field private bGo:Z

.field private bGp:Z

.field private bGq:J

.field private bGr:Lcom/kingroot/kinguser/boc;

.field private bGs:Ljava/lang/Object;

.field private bGt:Lcom/kingroot/kinguser/bpe;

.field private c:Z

.field private e:J

.field private h:Ljava/util/Map;

.field private i:I

.field private j:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Z


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/bph;ZJLcom/kingroot/kinguser/bog;Lcom/kingroot/kinguser/bpa;Ljava/util/Map;Z)V
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v3, p0, Lcom/kingroot/kinguser/bpb;->c:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/kingroot/kinguser/bpb;->e:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/bpb;->h:Ljava/util/Map;

    iput v2, p0, Lcom/kingroot/kinguser/bpb;->i:I

    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/bpb;->j:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/kingroot/kinguser/bpb;->bGo:Z

    iput-boolean v2, p0, Lcom/kingroot/kinguser/bpb;->bGp:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingroot/kinguser/bpb;->bGq:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bpb;->bGs:Ljava/lang/Object;

    new-instance v0, Lcom/kingroot/kinguser/bpe;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bpe;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bpb;->bGt:Lcom/kingroot/kinguser/bpe;

    iput-boolean v3, p0, Lcom/kingroot/kinguser/bpb;->r:Z

    iput-object p1, p0, Lcom/kingroot/kinguser/bpb;->bGj:Lcom/kingroot/kinguser/bph;

    iput-boolean p2, p0, Lcom/kingroot/kinguser/bpb;->c:Z

    iput-wide p3, p0, Lcom/kingroot/kinguser/bpb;->e:J

    iget-object v0, p0, Lcom/kingroot/kinguser/bpb;->bGt:Lcom/kingroot/kinguser/bpe;

    iput-boolean p2, v0, Lcom/kingroot/kinguser/bpe;->a:Z

    iput-object p5, p0, Lcom/kingroot/kinguser/bpb;->bGk:Lcom/kingroot/kinguser/bog;

    iput-object p6, p0, Lcom/kingroot/kinguser/bpb;->bGl:Lcom/kingroot/kinguser/bpa;

    iput-object p7, p0, Lcom/kingroot/kinguser/bpb;->h:Ljava/util/Map;

    iput-boolean p8, p0, Lcom/kingroot/kinguser/bpb;->r:Z

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/kingroot/kinguser/bpb;->bGo:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/kingroot/kinguser/bpb;->bGk:Lcom/kingroot/kinguser/bog;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/bpb;->bGk:Lcom/kingroot/kinguser/bog;

    invoke-interface {v0}, Lcom/kingroot/kinguser/bog;->a()Z

    move-result v0

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/kingroot/kinguser/bpb;->i:I

    return v0
.end method

.method public final b([BIZ)Z
    .locals 8

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/kingroot/kinguser/bpb;->bGl:Lcom/kingroot/kinguser/bpa;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kingroot/kinguser/bpb;->bGm:Lcom/kingroot/kinguser/boz;

    iget-wide v2, v1, Lcom/kingroot/kinguser/boz;->f:J

    int-to-long v4, p2

    add-long/2addr v2, v4

    iget-object v1, p0, Lcom/kingroot/kinguser/bpb;->bGm:Lcom/kingroot/kinguser/boz;

    iget-wide v4, v1, Lcom/kingroot/kinguser/boz;->g:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_1

    iget-object v0, p0, Lcom/kingroot/kinguser/bpb;->bGm:Lcom/kingroot/kinguser/boz;

    iget-wide v0, v0, Lcom/kingroot/kinguser/boz;->g:J

    iget-object v2, p0, Lcom/kingroot/kinguser/bpb;->bGm:Lcom/kingroot/kinguser/boz;

    iget-wide v2, v2, Lcom/kingroot/kinguser/boz;->f:J

    sub-long/2addr v0, v2

    long-to-int v5, v0

    const/4 v0, 0x0

    move v7, v0

    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bpb;->bGl:Lcom/kingroot/kinguser/bpa;

    iget-object v1, p0, Lcom/kingroot/kinguser/bpb;->bGm:Lcom/kingroot/kinguser/boz;

    iget-wide v2, v1, Lcom/kingroot/kinguser/boz;->f:J

    move-object v1, p0

    move-object v4, p1

    move v6, p3

    invoke-interface/range {v0 .. v6}, Lcom/kingroot/kinguser/bpa;->a(Lcom/kingroot/kinguser/bpb;J[BIZ)Z

    move-result v0

    and-int/2addr v0, v7

    iget-wide v2, p0, Lcom/kingroot/kinguser/bpb;->bGq:J

    int-to-long v4, v5

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/kingroot/kinguser/bpb;->bGq:J

    :cond_0
    return v0

    :cond_1
    move v7, v0

    move v5, p2

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kingroot/kinguser/bpb;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final d()V
    .locals 2

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/kingroot/kinguser/bpb;->bGo:Z

    iget-object v0, p0, Lcom/kingroot/kinguser/bpb;->bGr:Lcom/kingroot/kinguser/boc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/bpb;->bGr:Lcom/kingroot/kinguser/boc;

    invoke-interface {v0}, Lcom/kingroot/kinguser/boc;->agx()V

    :cond_0
    iget-object v1, p0, Lcom/kingroot/kinguser/bpb;->bGs:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bpb;->bGs:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/kingroot/kinguser/bpb;->bGp:Z

    return v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kingroot/kinguser/bpb;->bGt:Lcom/kingroot/kinguser/bpe;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/bpb;->bGt:Lcom/kingroot/kinguser/bpe;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bpe;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kingroot/kinguser/bpb;->bGt:Lcom/kingroot/kinguser/bpe;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/bpb;->bGt:Lcom/kingroot/kinguser/bpe;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bpe;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public final h()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v0, p0, Lcom/kingroot/kinguser/bpb;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/kingroot/kinguser/bpb;->q:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/kingroot/kinguser/bpb;->i:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public final run()V
    .locals 25

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/bpb;->bGt:Lcom/kingroot/kinguser/bpe;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/kingroot/kinguser/bpe;->b:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    move v8, v2

    move-object v9, v3

    move-wide v10, v4

    move v12, v6

    move v13, v7

    :goto_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/kingroot/kinguser/bpb;->bGo:Z

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/bpb;->bGk:Lcom/kingroot/kinguser/bog;

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/bpb;->bGk:Lcom/kingroot/kinguser/bog;

    invoke-interface {v2}, Lcom/kingroot/kinguser/bog;->a()Z

    move-result v2

    :goto_1
    if-nez v2, :cond_6

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/kingroot/kinguser/bpb;->c:Z

    if-nez v2, :cond_0

    invoke-static {}, Lcom/kingroot/kinguser/boe;->b()V

    sget-object v14, Lcom/kingroot/kinguser/boe;->a:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/bpb;->bGj:Lcom/kingroot/kinguser/bph;

    invoke-virtual {v2, v14}, Lcom/kingroot/kinguser/bph;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/kingroot/kinguser/bot;->agK()Lcom/kingroot/kinguser/bot;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/bot;->agM()Lcom/kingroot/kinguser/bnv;

    move-result-object v4

    if-eqz v4, :cond_0

    new-instance v2, Lcom/kingroot/kinguser/bpb$a;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingroot/kinguser/bpb;->bGj:Lcom/kingroot/kinguser/bph;

    iget-object v3, v3, Lcom/kingroot/kinguser/bph;->bGL:Lcom/kingroot/kinguser/bpg;

    iget-object v5, v3, Lcom/kingroot/kinguser/bpg;->a:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/kingroot/kinguser/bpb;->e:J

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/kingroot/kinguser/bpb$a;-><init>(Lcom/kingroot/kinguser/bpb;Lcom/kingroot/kinguser/bnv;Ljava/lang/String;J)V

    invoke-virtual {v2}, Lcom/kingroot/kinguser/bpb$a;->a()V

    iget-object v3, v2, Lcom/kingroot/kinguser/bpb$a;->bFl:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/kingroot/kinguser/bpb$a;->bFl:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    invoke-static {}, Lcom/kingroot/kinguser/boe;->b()V

    sget-object v4, Lcom/kingroot/kinguser/boe;->a:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_8

    :cond_0
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/kingroot/kinguser/bpb;->bGo:Z

    if-nez v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/bpb;->bGk:Lcom/kingroot/kinguser/bog;

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/bpb;->bGk:Lcom/kingroot/kinguser/bog;

    invoke-interface {v2}, Lcom/kingroot/kinguser/bog;->a()Z

    move-result v2

    :goto_3
    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/kingroot/kinguser/bpb;->c:Z

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/kingroot/kinguser/bpb;->r:Z

    if-eqz v2, :cond_6

    :cond_1
    if-lez v8, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingroot/kinguser/bpb;->bGs:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/bpb;->bGs:Ljava/lang/Object;

    int-to-long v4, v8

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/kingroot/kinguser/bpb;->bGo:Z

    if-nez v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/bpb;->bGk:Lcom/kingroot/kinguser/bog;

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/bpb;->bGk:Lcom/kingroot/kinguser/bog;

    invoke-interface {v2}, Lcom/kingroot/kinguser/bog;->a()Z

    move-result v2

    :goto_5
    if-nez v2, :cond_6

    const-wide/16 v2, 0x0

    cmp-long v2, v10, v2

    if-nez v2, :cond_34

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    :goto_6
    if-eqz v13, :cond_e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/kingroot/kinguser/bpb;->i:I

    const/16 v3, 0x194

    if-eq v2, v3, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/kingroot/kinguser/bpb;->i:I

    const/16 v3, -0xa

    if-ne v2, v3, :cond_d

    :cond_3
    const/4 v2, 0x1

    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingroot/kinguser/bpb;->bGj:Lcom/kingroot/kinguser/bph;

    sget-object v4, Lcom/kingroot/kinguser/boe;->a:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingroot/kinguser/bpb;->bGn:Lcom/kingroot/kinguser/bpg;

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/kingroot/kinguser/bpb;->c:Z

    invoke-virtual {v3, v4, v5, v6, v2}, Lcom/kingroot/kinguser/bph;->a(Ljava/lang/String;Lcom/kingroot/kinguser/bpg;ZZ)Lcom/kingroot/kinguser/bpg;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/kingroot/kinguser/bpb;->bGn:Lcom/kingroot/kinguser/bpg;

    :cond_4
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/bpb;->bGl:Lcom/kingroot/kinguser/bpa;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lcom/kingroot/kinguser/bpa;->a(Lcom/kingroot/kinguser/bpb;)Lcom/kingroot/kinguser/boz;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/kingroot/kinguser/bpb;->bGm:Lcom/kingroot/kinguser/boz;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/bpb;->bGm:Lcom/kingroot/kinguser/boz;

    if-eqz v2, :cond_6

    if-eqz v12, :cond_33

    :try_start_3
    invoke-static {}, Lcom/kingroot/kinguser/boe;->e()Z

    move-result v2

    if-nez v2, :cond_33

    const/4 v12, 0x0

    move v6, v12

    :goto_9
    const/4 v2, -0x1

    if-eqz v6, :cond_5

    invoke-static {}, Lcom/kingroot/kinguser/bnz;->d()I

    move-result v2

    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingroot/kinguser/bpb;->bGm:Lcom/kingroot/kinguser/boz;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingroot/kinguser/bpb;->bGl:Lcom/kingroot/kinguser/bpa;

    invoke-interface {v4}, Lcom/kingroot/kinguser/bpa;->b()Z

    move-result v4

    invoke-virtual {v3, v2, v4}, Lcom/kingroot/kinguser/boz;->H(IZ)Lcom/kingroot/kinguser/boa$a;

    move-result-object v5

    new-instance v2, Lcom/kingroot/kinguser/bod;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingroot/kinguser/bpb;->bGn:Lcom/kingroot/kinguser/bpg;

    iget-object v3, v3, Lcom/kingroot/kinguser/bpg;->a:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingroot/kinguser/bpb;->h:Ljava/util/Map;

    move-object/from16 v7, p0

    invoke-direct/range {v2 .. v7}, Lcom/kingroot/kinguser/bod;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/kingroot/kinguser/boa$a;ZLcom/kingroot/kinguser/bog;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/kingroot/kinguser/bpb;->bGr:Lcom/kingroot/kinguser/boc;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/kingroot/kinguser/bpb;->bGo:Z

    if-nez v3, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingroot/kinguser/bpb;->bGk:Lcom/kingroot/kinguser/bog;

    if-eqz v3, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingroot/kinguser/bpb;->bGk:Lcom/kingroot/kinguser/bog;

    invoke-interface {v3}, Lcom/kingroot/kinguser/bog;->a()Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result v3

    :goto_a
    if-eqz v3, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingroot/kinguser/bpb;->bGl:Lcom/kingroot/kinguser/bpa;

    move-object/from16 v0, p0

    invoke-interface {v3, v0}, Lcom/kingroot/kinguser/bpa;->b(Lcom/kingroot/kinguser/bpb;)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/kingroot/kinguser/bpb;->bGr:Lcom/kingroot/kinguser/boc;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/bod;->d()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/kingroot/kinguser/bpb;->q:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/bod;->cC()V

    :cond_6
    :goto_b
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/kingroot/kinguser/bpb;->bGp:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/bpb;->bGt:Lcom/kingroot/kinguser/bpe;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingroot/kinguser/bpb;->bGt:Lcom/kingroot/kinguser/bpe;

    iget-wide v6, v3, Lcom/kingroot/kinguser/bpe;->b:J

    sub-long/2addr v4, v6

    iput-wide v4, v2, Lcom/kingroot/kinguser/bpe;->c:J

    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/bpb;->bGl:Lcom/kingroot/kinguser/bpa;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lcom/kingroot/kinguser/bpa;->c(Lcom/kingroot/kinguser/bpb;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    :goto_c
    return-void

    :cond_7
    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_8
    :try_start_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingroot/kinguser/bpb;->bGj:Lcom/kingroot/kinguser/bph;

    invoke-virtual {v3, v4}, Lcom/kingroot/kinguser/bph;->c(Ljava/lang/String;)V

    iget-object v2, v2, Lcom/kingroot/kinguser/bpb$a;->bFl:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_9
    :goto_d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    sget-object v3, Lcom/kingroot/kinguser/bpg$a;->bGF:Lcom/kingroot/kinguser/bpg$a;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "https://"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    sget-object v3, Lcom/kingroot/kinguser/bpg$a;->bGJ:Lcom/kingroot/kinguser/bpg$a;

    :cond_a
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kingroot/kinguser/bpb;->bGj:Lcom/kingroot/kinguser/bph;

    invoke-virtual {v6, v4, v2, v3}, Lcom/kingroot/kinguser/bph;->a(Ljava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/bpg$a;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_d

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2

    :cond_b
    const/4 v2, 0x1

    goto/16 :goto_3

    :catch_1
    move-exception v2

    :try_start_7
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_4

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_c
    const/4 v2, 0x1

    goto/16 :goto_5

    :cond_d
    const/4 v2, 0x0

    goto/16 :goto_7

    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/bpb;->bGn:Lcom/kingroot/kinguser/bpg;

    iget-object v2, v2, Lcom/kingroot/kinguser/bpg;->bGA:Lcom/kingroot/kinguser/bpg$a;

    sget-object v3, Lcom/kingroot/kinguser/bpg$a;->bGA:Lcom/kingroot/kinguser/bpg$a;

    if-eq v2, v3, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/bpb;->bGn:Lcom/kingroot/kinguser/bpg;

    iget-object v2, v2, Lcom/kingroot/kinguser/bpg;->bGA:Lcom/kingroot/kinguser/bpg$a;

    sget-object v3, Lcom/kingroot/kinguser/bpg$a;->bGB:Lcom/kingroot/kinguser/bpg$a;

    if-ne v2, v3, :cond_4

    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/bpb;->bGj:Lcom/kingroot/kinguser/bph;

    sget-object v3, Lcom/kingroot/kinguser/boe;->a:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingroot/kinguser/bpb;->bGn:Lcom/kingroot/kinguser/bpg;

    invoke-virtual {v2, v3, v4}, Lcom/kingroot/kinguser/bph;->a(Ljava/lang/String;Lcom/kingroot/kinguser/bpg;)Lcom/kingroot/kinguser/bpg;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/kingroot/kinguser/bpb;->bGn:Lcom/kingroot/kinguser/bpg;

    goto/16 :goto_8

    :cond_10
    const/4 v3, 0x1

    goto/16 :goto_a

    :cond_11
    :try_start_8
    new-instance v3, Lcom/kingroot/kinguser/bpe$a;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingroot/kinguser/bpb;->bGt:Lcom/kingroot/kinguser/bpe;

    iget v7, v4, Lcom/kingroot/kinguser/bpe;->d:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v4, Lcom/kingroot/kinguser/bpe;->d:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingroot/kinguser/bpb;->bGn:Lcom/kingroot/kinguser/bpg;

    invoke-direct {v3, v7, v4}, Lcom/kingroot/kinguser/bpe$a;-><init>(ILcom/kingroot/kinguser/bpg;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v8, v8, v22

    iput-wide v8, v3, Lcom/kingroot/kinguser/bpe$a;->c:J

    iput-boolean v6, v3, Lcom/kingroot/kinguser/bpe$a;->a:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingroot/kinguser/bpb;->bGm:Lcom/kingroot/kinguser/boz;

    invoke-virtual {v4}, Lcom/kingroot/kinguser/boz;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/kingroot/kinguser/bpe$a;->b:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/kingroot/kinguser/boa$a;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/kingroot/kinguser/bpe$a;->f:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    invoke-virtual {v2}, Lcom/kingroot/kinguser/bod;->agw()V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/kingroot/kinguser/bpb;->bGo:Z

    if-nez v4, :cond_12

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingroot/kinguser/bpb;->bGk:Lcom/kingroot/kinguser/bog;

    if-eqz v4, :cond_12

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingroot/kinguser/bpb;->bGk:Lcom/kingroot/kinguser/bog;

    invoke-interface {v4}, Lcom/kingroot/kinguser/bog;->a()Z
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-result v4

    :goto_e
    if-eqz v4, :cond_13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingroot/kinguser/bpb;->bGl:Lcom/kingroot/kinguser/bpa;

    move-object/from16 v0, p0

    invoke-interface {v3, v0}, Lcom/kingroot/kinguser/bpa;->b(Lcom/kingroot/kinguser/bpb;)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/kingroot/kinguser/bpb;->bGr:Lcom/kingroot/kinguser/boc;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/bod;->d()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/kingroot/kinguser/bpb;->q:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/bod;->cC()V

    goto/16 :goto_b

    :cond_12
    const/4 v4, 0x1

    goto :goto_e

    :cond_13
    :try_start_9
    invoke-virtual {v2}, Lcom/kingroot/kinguser/bod;->a()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/kingroot/kinguser/bpb;->i:I

    invoke-virtual {v2}, Lcom/kingroot/kinguser/bod;->b()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/kingroot/kinguser/bpb;->j:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/kingroot/kinguser/bpb;->i:I

    iput v4, v3, Lcom/kingroot/kinguser/bpe$a;->e:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v4, v4, v22

    iput-wide v4, v3, Lcom/kingroot/kinguser/bpe$a;->d:J

    invoke-virtual {v2}, Lcom/kingroot/kinguser/bod;->g()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/kingroot/kinguser/bpe$a;->g:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/bod;->i()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/kingroot/kinguser/bpe$a;->i:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/bod;->j()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/kingroot/kinguser/bpe$a;->j:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/bod;->c()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/kingroot/kinguser/bpe$a;->h:J

    invoke-virtual {v2}, Lcom/kingroot/kinguser/bod;->h()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/kingroot/kinguser/bpe$a;->k:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/bod;->k()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/kingroot/kinguser/bpe$a;->l:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/bod;->l()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/kingroot/kinguser/bpe$a;->m:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/kingroot/kinguser/bod;->a(Z)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/kingroot/kinguser/bpe$a;->r:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/bod;->f()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/kingroot/kinguser/bpe$a;->s:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingroot/kinguser/bpb;->bGt:Lcom/kingroot/kinguser/bpe;

    invoke-virtual {v4, v3}, Lcom/kingroot/kinguser/bpe;->a(Lcom/kingroot/kinguser/bpe$a;)V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/kingroot/kinguser/bpb;->i:I

    const/16 v5, -0x35

    if-ne v4, v5, :cond_32

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingroot/kinguser/bpb;->bGl:Lcom/kingroot/kinguser/bpa;

    invoke-interface {v4}, Lcom/kingroot/kinguser/bpa;->b()Z

    move-result v4

    if-nez v4, :cond_32

    new-instance v7, Lcom/kingroot/kinguser/bod;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingroot/kinguser/bpb;->bGn:Lcom/kingroot/kinguser/bpg;

    iget-object v8, v3, Lcom/kingroot/kinguser/bpg;->a:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kingroot/kinguser/bpb;->h:Ljava/util/Map;

    const/4 v10, 0x0

    move v11, v6

    move-object/from16 v12, p0

    invoke-direct/range {v7 .. v12}, Lcom/kingroot/kinguser/bod;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/kingroot/kinguser/boa$a;ZLcom/kingroot/kinguser/bog;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/kingroot/kinguser/bpb;->bGr:Lcom/kingroot/kinguser/boc;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/kingroot/kinguser/bpb;->bGo:Z

    if-nez v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/bpb;->bGk:Lcom/kingroot/kinguser/bog;

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/bpb;->bGk:Lcom/kingroot/kinguser/bog;

    invoke-interface {v2}, Lcom/kingroot/kinguser/bog;->a()Z
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    move-result v2

    :goto_f
    if-eqz v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/bpb;->bGl:Lcom/kingroot/kinguser/bpa;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lcom/kingroot/kinguser/bpa;->b(Lcom/kingroot/kinguser/bpb;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/kingroot/kinguser/bpb;->bGr:Lcom/kingroot/kinguser/boc;

    invoke-virtual {v7}, Lcom/kingroot/kinguser/bod;->d()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/kingroot/kinguser/bpb;->q:Ljava/lang/String;

    invoke-virtual {v7}, Lcom/kingroot/kinguser/bod;->cC()V

    goto/16 :goto_b

    :cond_14
    const/4 v2, 0x1

    goto :goto_f

    :cond_15
    :try_start_b
    new-instance v2, Lcom/kingroot/kinguser/bpe$a;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingroot/kinguser/bpb;->bGt:Lcom/kingroot/kinguser/bpe;

    iget v4, v3, Lcom/kingroot/kinguser/bpe;->d:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v3, Lcom/kingroot/kinguser/bpe;->d:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingroot/kinguser/bpb;->bGn:Lcom/kingroot/kinguser/bpg;

    invoke-direct {v2, v4, v3}, Lcom/kingroot/kinguser/bpe$a;-><init>(ILcom/kingroot/kinguser/bpg;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v4, v4, v22

    iput-wide v4, v2, Lcom/kingroot/kinguser/bpe$a;->c:J

    iput-boolean v6, v2, Lcom/kingroot/kinguser/bpe$a;->a:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingroot/kinguser/bpb;->bGm:Lcom/kingroot/kinguser/boz;

    invoke-virtual {v3}, Lcom/kingroot/kinguser/boz;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/kingroot/kinguser/bpe$a;->b:Ljava/lang/String;

    const-string v3, ""

    iput-object v3, v2, Lcom/kingroot/kinguser/bpe$a;->f:Ljava/lang/String;

    invoke-virtual {v7}, Lcom/kingroot/kinguser/bod;->agw()V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/kingroot/kinguser/bpb;->bGo:Z

    if-nez v3, :cond_16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingroot/kinguser/bpb;->bGk:Lcom/kingroot/kinguser/bog;

    if-eqz v3, :cond_16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingroot/kinguser/bpb;->bGk:Lcom/kingroot/kinguser/bog;

    invoke-interface {v3}, Lcom/kingroot/kinguser/bog;->a()Z
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    move-result v3

    :goto_10
    if-eqz v3, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/bpb;->bGl:Lcom/kingroot/kinguser/bpa;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lcom/kingroot/kinguser/bpa;->b(Lcom/kingroot/kinguser/bpb;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/kingroot/kinguser/bpb;->bGr:Lcom/kingroot/kinguser/boc;

    invoke-virtual {v7}, Lcom/kingroot/kinguser/bod;->d()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/kingroot/kinguser/bpb;->q:Ljava/lang/String;

    invoke-virtual {v7}, Lcom/kingroot/kinguser/bod;->cC()V

    goto/16 :goto_b

    :cond_16
    const/4 v3, 0x1

    goto :goto_10

    :cond_17
    :try_start_c
    invoke-virtual {v7}, Lcom/kingroot/kinguser/bod;->a()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/kingroot/kinguser/bpb;->i:I

    invoke-virtual {v7}, Lcom/kingroot/kinguser/bod;->b()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/kingroot/kinguser/bpb;->j:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v4, v4, v22

    iput-wide v4, v2, Lcom/kingroot/kinguser/bpe$a;->d:J

    invoke-virtual {v7}, Lcom/kingroot/kinguser/bod;->g()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/kingroot/kinguser/bpe$a;->g:Ljava/lang/String;

    invoke-virtual {v7}, Lcom/kingroot/kinguser/bod;->i()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/kingroot/kinguser/bpe$a;->i:Ljava/lang/String;

    invoke-virtual {v7}, Lcom/kingroot/kinguser/bod;->j()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/kingroot/kinguser/bpe$a;->j:Ljava/lang/String;

    invoke-virtual {v7}, Lcom/kingroot/kinguser/bod;->c()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/kingroot/kinguser/bpe$a;->h:J

    invoke-virtual {v7}, Lcom/kingroot/kinguser/bod;->h()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/kingroot/kinguser/bpe$a;->k:Ljava/lang/String;

    invoke-virtual {v7}, Lcom/kingroot/kinguser/bod;->k()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/kingroot/kinguser/bpe$a;->l:Ljava/lang/String;

    invoke-virtual {v7}, Lcom/kingroot/kinguser/bod;->l()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/kingroot/kinguser/bpe$a;->m:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v7, v3}, Lcom/kingroot/kinguser/bod;->a(Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/kingroot/kinguser/bpe$a;->r:Ljava/lang/String;

    invoke-virtual {v7}, Lcom/kingroot/kinguser/bod;->f()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/kingroot/kinguser/bpe$a;->s:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingroot/kinguser/bpb;->bGt:Lcom/kingroot/kinguser/bpe;

    invoke-virtual {v3, v2}, Lcom/kingroot/kinguser/bpe;->a(Lcom/kingroot/kinguser/bpe$a;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    move-object v3, v7

    move-object v7, v2

    :goto_11
    :try_start_d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v8, v4, v14

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/kingroot/kinguser/bpb;->i:I

    if-eqz v2, :cond_1e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/kingroot/kinguser/bpb;->i:I
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    const/16 v5, -0xb

    if-ne v2, v5, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/bpb;->bGl:Lcom/kingroot/kinguser/bpa;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lcom/kingroot/kinguser/bpa;->b(Lcom/kingroot/kinguser/bpb;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/kingroot/kinguser/bpb;->bGr:Lcom/kingroot/kinguser/boc;

    invoke-virtual {v3}, Lcom/kingroot/kinguser/bod;->d()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/kingroot/kinguser/bpb;->q:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/kingroot/kinguser/bod;->cC()V

    goto/16 :goto_b

    :cond_18
    :try_start_e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/kingroot/kinguser/bpb;->i:I

    const/16 v5, -0x3b

    if-ne v2, v5, :cond_19

    const/4 v6, 0x1

    const/4 v7, 0x0

    :goto_12
    const-wide/16 v10, 0x2710

    cmp-long v2, v8, v10

    if-lez v2, :cond_1a

    const/4 v2, 0x0

    move v8, v4

    move-wide/from16 v4, v20

    :goto_13
    if-eqz v8, :cond_30

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long v8, v10, v4

    invoke-static {}, Lcom/kingroot/kinguser/bnz;->g()I
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    const-wide/32 v12, 0xea60

    cmp-long v8, v8, v12

    if-lez v8, :cond_29

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/bpb;->bGl:Lcom/kingroot/kinguser/bpa;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lcom/kingroot/kinguser/bpa;->b(Lcom/kingroot/kinguser/bpb;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/kingroot/kinguser/bpb;->bGr:Lcom/kingroot/kinguser/boc;

    invoke-virtual {v3}, Lcom/kingroot/kinguser/bod;->d()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/kingroot/kinguser/bpb;->q:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/kingroot/kinguser/bod;->cC()V

    goto/16 :goto_b

    :cond_19
    const/4 v7, 0x1

    goto :goto_12

    :cond_1a
    :try_start_f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/kingroot/kinguser/bpb;->i:I

    const/16 v5, -0x10

    if-eq v2, v5, :cond_1b

    const/16 v5, -0xf

    if-eq v2, v5, :cond_1b

    const/16 v5, -0x34

    if-ne v2, v5, :cond_1c

    :cond_1b
    const/4 v2, 0x1

    :goto_14
    if-eqz v2, :cond_1d

    const/16 v2, 0xbb8

    move v8, v4

    move-wide/from16 v4, v20

    goto :goto_13

    :cond_1c
    const/4 v2, 0x0

    goto :goto_14

    :cond_1d
    const/16 v2, 0x3e8

    move v8, v4

    move-wide/from16 v4, v20

    goto :goto_13

    :cond_1e
    const/16 v5, 0x3e8

    if-eqz v3, :cond_1f

    invoke-virtual {v3}, Lcom/kingroot/kinguser/boa;->agv()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1f

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_1f

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_15
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kingroot/kinguser/bpb;->bGj:Lcom/kingroot/kinguser/bph;

    sget-object v10, Lcom/kingroot/kinguser/boe;->a:Ljava/lang/String;

    sget-object v11, Lcom/kingroot/kinguser/bpg$a;->bGE:Lcom/kingroot/kinguser/bpg$a;

    invoke-virtual {v9, v10, v2, v11}, Lcom/kingroot/kinguser/bph;->a(Ljava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/bpg$a;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    goto :goto_15

    :catch_2
    move-exception v2

    move-object v7, v3

    :goto_16
    :try_start_10
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    const/16 v3, -0x3d

    move-object/from16 v0, p0

    iput v3, v0, Lcom/kingroot/kinguser/bpb;->i:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/kingroot/kinguser/bpb;->j:Ljava/lang/String;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/bpb;->bGl:Lcom/kingroot/kinguser/bpa;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lcom/kingroot/kinguser/bpa;->b(Lcom/kingroot/kinguser/bpb;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/kingroot/kinguser/bpb;->bGr:Lcom/kingroot/kinguser/boc;

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Lcom/kingroot/kinguser/bod;->d()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/kingroot/kinguser/bpb;->q:Ljava/lang/String;

    invoke-virtual {v7}, Lcom/kingroot/kinguser/bod;->cC()V

    goto/16 :goto_b

    :cond_1f
    :try_start_11
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/kingroot/kinguser/bpb;->bGo:Z

    if-nez v2, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/bpb;->bGk:Lcom/kingroot/kinguser/bog;

    if-eqz v2, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/bpb;->bGk:Lcom/kingroot/kinguser/bog;

    invoke-interface {v2}, Lcom/kingroot/kinguser/bog;->a()Z
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_2
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    move-result v2

    :goto_17
    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/bpb;->bGl:Lcom/kingroot/kinguser/bpa;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lcom/kingroot/kinguser/bpa;->b(Lcom/kingroot/kinguser/bpb;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/kingroot/kinguser/bpb;->bGr:Lcom/kingroot/kinguser/boc;

    invoke-virtual {v3}, Lcom/kingroot/kinguser/bod;->d()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/kingroot/kinguser/bpb;->q:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/kingroot/kinguser/bod;->cC()V

    goto/16 :goto_b

    :cond_20
    const/4 v2, 0x1

    goto :goto_17

    :cond_21
    :try_start_12
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/kingroot/kinguser/bpb;->bGl:Lcom/kingroot/kinguser/bpa;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/kingroot/kinguser/bpb;->bGn:Lcom/kingroot/kinguser/bpg;

    invoke-virtual {v3}, Lcom/kingroot/kinguser/bod;->e()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3}, Lcom/kingroot/kinguser/bod;->c()J

    move-result-wide v12

    invoke-virtual {v3}, Lcom/kingroot/kinguser/bod;->o()Z

    move-result v14

    invoke-virtual {v3}, Lcom/kingroot/kinguser/bod;->k()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3}, Lcom/kingroot/kinguser/bod;->l()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v3}, Lcom/kingroot/kinguser/bod;->h()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v3}, Lcom/kingroot/kinguser/bod;->m()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v9, p0

    invoke-interface/range {v8 .. v18}, Lcom/kingroot/kinguser/bpa;->a(Lcom/kingroot/kinguser/bpb;Lcom/kingroot/kinguser/bpg;Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kingroot/kinguser/boh;

    move-result-object v8

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/kingroot/kinguser/bpb;->bGo:Z

    if-nez v2, :cond_22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/bpb;->bGk:Lcom/kingroot/kinguser/bog;

    if-eqz v2, :cond_22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/bpb;->bGk:Lcom/kingroot/kinguser/bog;

    invoke-interface {v2}, Lcom/kingroot/kinguser/bog;->a()Z
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_2
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    move-result v2

    :goto_18
    if-eqz v2, :cond_23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/bpb;->bGl:Lcom/kingroot/kinguser/bpa;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lcom/kingroot/kinguser/bpa;->b(Lcom/kingroot/kinguser/bpb;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/kingroot/kinguser/bpb;->bGr:Lcom/kingroot/kinguser/boc;

    invoke-virtual {v3}, Lcom/kingroot/kinguser/bod;->d()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/kingroot/kinguser/bpb;->q:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/kingroot/kinguser/bod;->cC()V

    goto/16 :goto_b

    :cond_22
    const/4 v2, 0x1

    goto :goto_18

    :cond_23
    :try_start_13
    iget v2, v8, Lcom/kingroot/kinguser/boh;->a:I

    iput v2, v7, Lcom/kingroot/kinguser/bpe$a;->n:I

    iget v2, v8, Lcom/kingroot/kinguser/boh;->a:I

    if-nez v2, :cond_27

    const-wide/16 v8, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/kingroot/kinguser/bpb;->bGo:Z

    if-nez v5, :cond_24

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingroot/kinguser/bpb;->bGk:Lcom/kingroot/kinguser/bog;

    if-eqz v5, :cond_24

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingroot/kinguser/bpb;->bGk:Lcom/kingroot/kinguser/bog;

    invoke-interface {v5}, Lcom/kingroot/kinguser/bog;->a()Z
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_2
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    move-result v5

    :goto_19
    if-eqz v5, :cond_25

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/bpb;->bGl:Lcom/kingroot/kinguser/bpa;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lcom/kingroot/kinguser/bpa;->b(Lcom/kingroot/kinguser/bpb;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/kingroot/kinguser/bpb;->bGr:Lcom/kingroot/kinguser/boc;

    invoke-virtual {v3}, Lcom/kingroot/kinguser/bod;->d()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/kingroot/kinguser/bpb;->q:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/kingroot/kinguser/bod;->cC()V

    goto/16 :goto_b

    :cond_24
    const/4 v5, 0x1

    goto :goto_19

    :cond_25
    :try_start_14
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/kingroot/kinguser/bod;->a(Lcom/kingroot/kinguser/bob;)V

    invoke-virtual {v3}, Lcom/kingroot/kinguser/bod;->a()I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/kingroot/kinguser/bpb;->i:I

    invoke-virtual {v3}, Lcom/kingroot/kinguser/bod;->b()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/kingroot/kinguser/bpb;->j:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/kingroot/kinguser/bpb;->i:I

    iput v5, v7, Lcom/kingroot/kinguser/bpe$a;->o:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingroot/kinguser/bpb;->bGm:Lcom/kingroot/kinguser/boz;

    invoke-virtual {v5}, Lcom/kingroot/kinguser/boz;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v7, Lcom/kingroot/kinguser/bpe$a;->p:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long v10, v10, v22

    iput-wide v10, v7, Lcom/kingroot/kinguser/bpe$a;->bEH:J

    move-object/from16 v0, p0

    iget v5, v0, Lcom/kingroot/kinguser/bpb;->i:I

    if-eqz v5, :cond_26

    const/4 v7, 0x1

    move/from16 v24, v2

    move v2, v4

    move-wide v4, v8

    move/from16 v8, v24

    goto/16 :goto_13

    :cond_26
    const/4 v7, 0x0

    move/from16 v24, v2

    move v2, v4

    move-wide v4, v8

    move/from16 v8, v24

    goto/16 :goto_13

    :cond_27
    iget v2, v8, Lcom/kingroot/kinguser/boh;->a:I

    if-gez v2, :cond_28

    iget v2, v8, Lcom/kingroot/kinguser/boh;->a:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/kingroot/kinguser/bpb;->i:I

    iget-object v2, v8, Lcom/kingroot/kinguser/boh;->b:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/kingroot/kinguser/bpb;->j:Ljava/lang/String;

    const/4 v7, 0x1

    move v8, v4

    move v2, v5

    move-wide/from16 v4, v20

    goto/16 :goto_13

    :cond_28
    const/4 v7, 0x0

    move v8, v4

    move v2, v5

    move-wide/from16 v4, v20

    goto/16 :goto_13

    :cond_29
    move-object/from16 v0, p0

    iget v8, v0, Lcom/kingroot/kinguser/bpb;->i:I

    const/16 v9, -0x10

    if-eq v8, v9, :cond_2a

    const/16 v9, -0xf

    if-eq v8, v9, :cond_2a

    const/16 v9, -0x34

    if-ne v8, v9, :cond_2b

    :cond_2a
    const/4 v8, 0x1

    :goto_1a
    if-eqz v8, :cond_2c

    sub-long v8, v10, v4

    invoke-static {}, Lcom/kingroot/kinguser/bnz;->h()I
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_2
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    const-wide/16 v12, 0x4e20

    cmp-long v8, v8, v12

    if-lez v8, :cond_2c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/bpb;->bGl:Lcom/kingroot/kinguser/bpa;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lcom/kingroot/kinguser/bpa;->b(Lcom/kingroot/kinguser/bpb;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/kingroot/kinguser/bpb;->bGr:Lcom/kingroot/kinguser/boc;

    invoke-virtual {v3}, Lcom/kingroot/kinguser/bod;->d()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/kingroot/kinguser/bpb;->q:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/kingroot/kinguser/bod;->cC()V

    goto/16 :goto_b

    :cond_2b
    const/4 v8, 0x0

    goto :goto_1a

    :cond_2c
    :try_start_15
    move-object/from16 v0, p0

    iget v8, v0, Lcom/kingroot/kinguser/bpb;->i:I

    sparse-switch v8, :sswitch_data_0

    const/16 v9, 0xc8

    if-lt v8, v9, :cond_2d

    const/16 v9, 0x12c

    if-le v8, v9, :cond_2e

    :cond_2d
    const/4 v8, 0x1

    :goto_1b
    if-eqz v8, :cond_2f

    sub-long v8, v10, v4

    invoke-static {}, Lcom/kingroot/kinguser/bnz;->i()I
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_2
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    const-wide/16 v12, 0x2710

    cmp-long v8, v8, v12

    if-lez v8, :cond_2f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/bpb;->bGl:Lcom/kingroot/kinguser/bpa;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lcom/kingroot/kinguser/bpa;->b(Lcom/kingroot/kinguser/bpb;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/kingroot/kinguser/bpb;->bGr:Lcom/kingroot/kinguser/boc;

    invoke-virtual {v3}, Lcom/kingroot/kinguser/bod;->d()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/kingroot/kinguser/bpb;->q:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/kingroot/kinguser/bod;->cC()V

    goto/16 :goto_b

    :sswitch_0
    const/4 v8, 0x1

    goto :goto_1b

    :cond_2e
    const/4 v8, 0x0

    goto :goto_1b

    :cond_2f
    :try_start_16
    move-object/from16 v0, p0

    iget v8, v0, Lcom/kingroot/kinguser/bpb;->i:I

    const/16 v9, -0xf

    if-ne v8, v9, :cond_30

    sub-long v8, v10, v4

    invoke-static {}, Lcom/kingroot/kinguser/bnz;->j()I
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_2
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    move-result v10

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-lez v8, :cond_30

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/bpb;->bGl:Lcom/kingroot/kinguser/bpa;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lcom/kingroot/kinguser/bpa;->b(Lcom/kingroot/kinguser/bpb;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/kingroot/kinguser/bpb;->bGr:Lcom/kingroot/kinguser/boc;

    invoke-virtual {v3}, Lcom/kingroot/kinguser/bod;->d()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/kingroot/kinguser/bpb;->q:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/kingroot/kinguser/bod;->cC()V

    goto/16 :goto_b

    :cond_30
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/kingroot/kinguser/bpb;->bGl:Lcom/kingroot/kinguser/bpa;

    move-object/from16 v0, p0

    invoke-interface {v8, v0}, Lcom/kingroot/kinguser/bpa;->b(Lcom/kingroot/kinguser/bpb;)V

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/kingroot/kinguser/bpb;->bGr:Lcom/kingroot/kinguser/boc;

    invoke-virtual {v3}, Lcom/kingroot/kinguser/bod;->d()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/kingroot/kinguser/bpb;->q:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/kingroot/kinguser/bod;->cC()V

    const/4 v3, 0x0

    move v8, v2

    move-object v9, v3

    move-wide v10, v4

    move v12, v6

    move v13, v7

    goto/16 :goto_0

    :catchall_1
    move-exception v2

    move-object v3, v9

    :goto_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingroot/kinguser/bpb;->bGl:Lcom/kingroot/kinguser/bpa;

    move-object/from16 v0, p0

    invoke-interface {v4, v0}, Lcom/kingroot/kinguser/bpa;->b(Lcom/kingroot/kinguser/bpb;)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/kingroot/kinguser/bpb;->bGr:Lcom/kingroot/kinguser/boc;

    if-eqz v3, :cond_31

    invoke-virtual {v3}, Lcom/kingroot/kinguser/bod;->d()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/kingroot/kinguser/bpb;->q:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/kingroot/kinguser/bod;->cC()V

    :cond_31
    throw v2

    :catch_3
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_c

    :catchall_2
    move-exception v3

    move-object/from16 v24, v3

    move-object v3, v2

    move-object/from16 v2, v24

    goto :goto_1c

    :catchall_3
    move-exception v2

    move-object v3, v7

    goto :goto_1c

    :catchall_4
    move-exception v2

    goto :goto_1c

    :catchall_5
    move-exception v2

    move-object v3, v7

    goto :goto_1c

    :catch_4
    move-exception v2

    move-object v7, v9

    goto/16 :goto_16

    :catch_5
    move-exception v3

    move-object v7, v2

    move-object v2, v3

    goto/16 :goto_16

    :catch_6
    move-exception v2

    goto/16 :goto_16

    :cond_32
    move-object v7, v3

    move-object v3, v2

    goto/16 :goto_11

    :cond_33
    move v6, v12

    goto/16 :goto_9

    :cond_34
    move-wide/from16 v20, v10

    goto/16 :goto_6

    nop

    :sswitch_data_0
    .sparse-switch
        -0x44 -> :sswitch_0
        -0x38 -> :sswitch_0
        -0x37 -> :sswitch_0
        -0x36 -> :sswitch_0
        -0x2c -> :sswitch_0
        -0x2b -> :sswitch_0
        -0xa -> :sswitch_0
    .end sparse-switch
.end method
