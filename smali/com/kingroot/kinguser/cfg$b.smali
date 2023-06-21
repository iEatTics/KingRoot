.class Lcom/kingroot/kinguser/cfg$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/cfg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field private cbD:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/kingroot/kinguser/cfg$a;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic cbm:Lcom/kingroot/kinguser/cfg;


# direct methods
.method private constructor <init>(Lcom/kingroot/kinguser/cfg;)V
    .locals 1

    .prologue
    .line 376
    iput-object p1, p0, Lcom/kingroot/kinguser/cfg$b;->cbm:Lcom/kingroot/kinguser/cfg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 378
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/cfg$b;->cbD:Ljava/util/TreeMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/cfg;Lcom/kingroot/kinguser/cfg$1;)V
    .locals 0

    .prologue
    .line 376
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/cfg$b;-><init>(Lcom/kingroot/kinguser/cfg;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;Lcom/kingroot/kinguser/cfg$a;)V
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/kingroot/kinguser/cfg$b;->cbD:Ljava/util/TreeMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    return-void
.end method

.method public alW()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/kingroot/kinguser/cfg$a;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 382
    iget-object v1, p0, Lcom/kingroot/kinguser/cfg$b;->cbD:Ljava/util/TreeMap;

    monitor-enter v1

    .line 384
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cfg$b;->cbD:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeMap;

    .line 385
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 386
    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 385
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public run()V
    .locals 22

    .prologue
    .line 395
    invoke-static {}, Lcom/kingroot/kinguser/cgr;->amN()Z

    move-result v20

    .line 396
    invoke-virtual/range {p0 .. p0}, Lcom/kingroot/kinguser/cfg$b;->alW()Ljava/util/Set;

    move-result-object v2

    .line 397
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_0
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Ljava/util/Map$Entry;

    .line 398
    if-nez v20, :cond_0

    .line 400
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/cfg$b;->cbm:Lcom/kingroot/kinguser/cfg;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kingroot/kinguser/cfg$a;

    iget v4, v4, Lcom/kingroot/kinguser/cfg$a;->cbu:I

    const/4 v5, 0x0

    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/kingroot/kinguser/cfg$a;

    iget v6, v6, Lcom/kingroot/kinguser/cfg$a;->mCmdId:I

    const/4 v7, 0x0

    const v8, -0xf4242

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/kingroot/kinguser/cfg;->a(IIII[BII)V

    goto :goto_0

    .line 404
    :cond_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingroot/kinguser/cfg$a;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/cfg$a;->alO()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 405
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/cfg$b;->cbm:Lcom/kingroot/kinguser/cfg;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kingroot/kinguser/cfg$a;

    iget v4, v4, Lcom/kingroot/kinguser/cfg$a;->cbu:I

    const/4 v5, 0x0

    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/kingroot/kinguser/cfg$a;

    iget v6, v6, Lcom/kingroot/kinguser/cfg$a;->mCmdId:I

    const/4 v7, 0x0

    const v8, -0xf4251

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/kingroot/kinguser/cfg;->a(IIII[BII)V

    .line 409
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/cfg$b;->cbm:Lcom/kingroot/kinguser/cfg;

    invoke-static {v2}, Lcom/kingroot/kinguser/cfg;->e(Lcom/kingroot/kinguser/cfg;)Lcom/kingroot/kinguser/ceu;

    move-result-object v3

    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingroot/kinguser/cfg$a;

    iget v2, v2, Lcom/kingroot/kinguser/cfg$a;->mCmdId:I

    const v4, -0xf4251

    invoke-virtual {v3, v2, v4}, Lcom/kingroot/kinguser/ceu;->i(II)V

    goto :goto_0

    .line 418
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/cfg$b;->cbm:Lcom/kingroot/kinguser/cfg;

    invoke-static {v2}, Lcom/kingroot/kinguser/cfg;->f(Lcom/kingroot/kinguser/cfg;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 419
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingroot/kinguser/cfg$b;->cbm:Lcom/kingroot/kinguser/cfg;

    invoke-static {v3}, Lcom/kingroot/kinguser/cfg;->f(Lcom/kingroot/kinguser/cfg;)Landroid/os/Handler;

    move-result-object v3

    const-wide/32 v4, 0x2d2a8

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 423
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingroot/kinguser/cfg$a;

    iget-object v2, v2, Lcom/kingroot/kinguser/cfg$a;->cby:Lcom/qq/taf/jce/JceStruct;

    invoke-static {v2}, Lcom/kingroot/kinguser/ceq;->a(Lcom/qq/taf/jce/JceStruct;)[B

    move-result-object v12

    .line 424
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/cfg$b;->cbm:Lcom/kingroot/kinguser/cfg;

    invoke-static {v2}, Lcom/kingroot/kinguser/cfg;->e(Lcom/kingroot/kinguser/cfg;)Lcom/kingroot/kinguser/ceu;

    move-result-object v3

    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingroot/kinguser/cfg$a;

    iget v4, v2, Lcom/kingroot/kinguser/cfg$a;->bux:I

    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingroot/kinguser/cfg$a;

    iget-wide v5, v2, Lcom/kingroot/kinguser/cfg$a;->cbx:J

    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingroot/kinguser/cfg$a;

    iget v7, v2, Lcom/kingroot/kinguser/cfg$a;->cbu:I

    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingroot/kinguser/cfg$a;

    iget v8, v2, Lcom/kingroot/kinguser/cfg$a;->cbv:I

    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingroot/kinguser/cfg$a;

    iget-wide v9, v2, Lcom/kingroot/kinguser/cfg$a;->cbw:J

    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingroot/kinguser/cfg$a;

    iget v11, v2, Lcom/kingroot/kinguser/cfg$a;->mCmdId:I

    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingroot/kinguser/cfg$a;

    iget v13, v2, Lcom/kingroot/kinguser/cfg$a;->mFlag:I

    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingroot/kinguser/cfg$a;

    iget-wide v14, v2, Lcom/kingroot/kinguser/cfg$a;->mTimeout:J

    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingroot/kinguser/cfg$a;

    iget-wide v0, v2, Lcom/kingroot/kinguser/cfg$a;->cbB:J

    move-wide/from16 v16, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingroot/kinguser/cfg$a;

    iget-wide v0, v2, Lcom/kingroot/kinguser/cfg$a;->cbC:J

    move-wide/from16 v18, v0

    invoke-virtual/range {v3 .. v19}, Lcom/kingroot/kinguser/ceu;->a(IJIIJI[BIJJJ)V

    goto/16 :goto_0

    .line 427
    :cond_2
    return-void
.end method
