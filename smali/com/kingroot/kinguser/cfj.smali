.class public Lcom/kingroot/kinguser/cfj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/cfi;


# static fields
.field private static ccy:Z


# instance fields
.field protected bVi:J

.field private ccw:Lcom/kingroot/kinguser/cfh;

.field private ccx:Lcom/kingroot/kinguser/cfg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    sput-boolean v0, Lcom/kingroot/kinguser/cfj;->ccy:Z

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-wide p1, p0, Lcom/kingroot/kinguser/cfj;->bVi:J

    .line 33
    return-void
.end method

.method public static declared-synchronized a(Lcom/kingroot/kinguser/ceu;ZZLjava/lang/String;)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 43
    const-class v1, Lcom/kingroot/kinguser/cfj;

    monitor-enter v1

    :try_start_0
    sget-boolean v2, Lcom/kingroot/kinguser/cfd;->bZT:Z

    if-nez v2, :cond_0

    .line 44
    invoke-static {p2}, Lcom/kingroot/kinguser/cfd;->eV(Z)V

    .line 45
    invoke-static {p3}, Lcom/kingroot/kinguser/cfd;->nU(Ljava/lang/String;)V

    .line 46
    if-nez p1, :cond_1

    :goto_0
    invoke-static {v0}, Lcom/kingroot/kinguser/cfd;->eX(Z)V

    .line 47
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ceu;->fI()Z

    move-result v0

    invoke-static {v0}, Lcom/kingroot/kinguser/cfd;->eW(Z)V

    .line 49
    const-class v0, Lcom/kingroot/kinguser/cfh;

    invoke-static {v0}, Lcom/kingroot/kinguser/ced;->j(Ljava/lang/Class;)Lcom/kingroot/kinguser/cec;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/cfh;

    .line 50
    invoke-virtual {v0, p0}, Lcom/kingroot/kinguser/cfh;->c(Lcom/kingroot/kinguser/ceu;)V

    .line 52
    const/4 v0, 0x1

    sput-boolean v0, Lcom/kingroot/kinguser/cfd;->bZT:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    :cond_0
    monitor-exit v1

    return-void

    .line 46
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized amd()V
    .locals 4

    .prologue
    .line 64
    const-class v1, Lcom/kingroot/kinguser/cfj;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/cfd;->alG()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/kingroot/kinguser/cfd;->bZT:Z

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "must call initSync() before initAsync()!"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 68
    :cond_0
    :try_start_1
    sget-boolean v0, Lcom/kingroot/kinguser/cfj;->ccy:Z

    if-nez v0, :cond_1

    .line 69
    const/4 v0, 0x1

    sput-boolean v0, Lcom/kingroot/kinguser/cfj;->ccy:Z

    .line 71
    invoke-static {}, Lcom/kingroot/kinguser/bze;->ajZ()Lcom/kingroot/kinguser/bzf;

    move-result-object v0

    new-instance v2, Lcom/kingroot/kinguser/cfj$1;

    invoke-direct {v2}, Lcom/kingroot/kinguser/cfj$1;-><init>()V

    const-string v3, "init SharkProtocolQueue async"

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/bzf;->a(Ljava/lang/Runnable;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    :cond_1
    monitor-exit v1

    return-void
.end method

.method private ame()Lcom/kingroot/kinguser/cfg;
    .locals 2

    .prologue
    .line 413
    invoke-static {}, Lcom/kingroot/kinguser/cfd;->alG()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/kingroot/kinguser/cfd;->bZT:Z

    if-nez v0, :cond_0

    .line 414
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "getSharkProcessProxy too early"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 417
    :cond_0
    monitor-enter p0

    .line 418
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cfj;->ccx:Lcom/kingroot/kinguser/cfg;

    if-nez v0, :cond_1

    .line 419
    invoke-static {}, Lcom/kingroot/kinguser/cfg;->alV()Lcom/kingroot/kinguser/cfg;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/cfj;->ccx:Lcom/kingroot/kinguser/cfg;

    .line 421
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 422
    iget-object v0, p0, Lcom/kingroot/kinguser/cfj;->ccx:Lcom/kingroot/kinguser/cfg;

    return-object v0

    .line 421
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private amf()Lcom/kingroot/kinguser/cfh;
    .locals 2

    .prologue
    .line 426
    invoke-static {}, Lcom/kingroot/kinguser/cfd;->alG()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/kingroot/kinguser/cfd;->bZT:Z

    if-nez v0, :cond_0

    .line 427
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "getSharkProtocolQueue too early"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 430
    :cond_0
    monitor-enter p0

    .line 431
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cfj;->ccw:Lcom/kingroot/kinguser/cfh;

    if-nez v0, :cond_1

    .line 432
    const-class v0, Lcom/kingroot/kinguser/cfh;

    invoke-static {v0}, Lcom/kingroot/kinguser/ced;->j(Ljava/lang/Class;)Lcom/kingroot/kinguser/cec;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/cfh;

    iput-object v0, p0, Lcom/kingroot/kinguser/cfj;->ccw:Lcom/kingroot/kinguser/cfh;

    .line 434
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 435
    iget-object v0, p0, Lcom/kingroot/kinguser/cfj;->ccw:Lcom/kingroot/kinguser/cfh;

    return-object v0

    .line 434
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a(ILcom/qq/taf/jce/JceStruct;Lcom/qq/taf/jce/JceStruct;ILcom/kingroot/kinguser/cci;)Ljava/lang/ref/WeakReference;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/qq/taf/jce/JceStruct;",
            "Lcom/qq/taf/jce/JceStruct;",
            "I",
            "Lcom/kingroot/kinguser/cci;",
            ")",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/kingroot/kinguser/ccn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    const-wide/16 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/kingroot/kinguser/cfj;->a(ILcom/qq/taf/jce/JceStruct;Lcom/qq/taf/jce/JceStruct;ILcom/kingroot/kinguser/cci;J)Ljava/lang/ref/WeakReference;

    move-result-object v0

    return-object v0
.end method

.method public a(ILcom/qq/taf/jce/JceStruct;Lcom/qq/taf/jce/JceStruct;ILcom/kingroot/kinguser/cci;J)Ljava/lang/ref/WeakReference;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/qq/taf/jce/JceStruct;",
            "Lcom/qq/taf/jce/JceStruct;",
            "I",
            "Lcom/kingroot/kinguser/cci;",
            "J)",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/kingroot/kinguser/ccn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    const-wide/16 v8, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-wide/from16 v6, p6

    invoke-virtual/range {v0 .. v9}, Lcom/kingroot/kinguser/cfj;->a(ILcom/qq/taf/jce/JceStruct;Lcom/qq/taf/jce/JceStruct;ILcom/kingroot/kinguser/cci;JJ)Ljava/lang/ref/WeakReference;

    move-result-object v0

    return-object v0
.end method

.method public a(ILcom/qq/taf/jce/JceStruct;Lcom/qq/taf/jce/JceStruct;ILcom/kingroot/kinguser/cci;JJ)Ljava/lang/ref/WeakReference;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/qq/taf/jce/JceStruct;",
            "Lcom/qq/taf/jce/JceStruct;",
            "I",
            "Lcom/kingroot/kinguser/cci;",
            "JJ)",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/kingroot/kinguser/ccn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/kingroot/kinguser/cfj;->bVi:J

    const/4 v11, 0x0

    const/4 v15, 0x0

    move-object/from16 v1, p0

    move/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v12, p3

    move/from16 v13, p4

    move-object/from16 v14, p5

    move-wide/from16 v16, p6

    move-wide/from16 v18, p8

    invoke-virtual/range {v1 .. v19}, Lcom/kingroot/kinguser/cfj;->b(IIIJJILcom/qq/taf/jce/JceStruct;[BLcom/qq/taf/jce/JceStruct;ILcom/kingroot/kinguser/cci;Lcom/kingroot/kinguser/ccj;JJ)Ljava/lang/ref/WeakReference;

    move-result-object v1

    return-object v1
.end method

.method public a(ILcom/qq/taf/jce/JceStruct;ILcom/kingroot/kinguser/cck;)V
    .locals 9

    .prologue
    .line 231
    const-wide/16 v2, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    invoke-virtual/range {v1 .. v8}, Lcom/kingroot/kinguser/cfj;->a(JILcom/qq/taf/jce/JceStruct;ILcom/kingroot/kinguser/cck;Z)V

    .line 232
    return-void
.end method

.method public a(JILcom/qq/taf/jce/JceStruct;ILcom/kingroot/kinguser/cck;Z)V
    .locals 9

    .prologue
    .line 236
    invoke-direct {p0}, Lcom/kingroot/kinguser/cfj;->amf()Lcom/kingroot/kinguser/cfh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cfh;->alX()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 238
    if-eqz p7, :cond_0

    move-wide v2, p1

    .line 239
    :goto_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/cfj;->amf()Lcom/kingroot/kinguser/cfh;

    move-result-object v1

    move v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/kingroot/kinguser/cfh;->a(JILcom/qq/taf/jce/JceStruct;ILcom/kingroot/kinguser/cck;Z)V

    .line 244
    :goto_1
    return-void

    .line 238
    :cond_0
    iget-wide v2, p0, Lcom/kingroot/kinguser/cfj;->bVi:J

    goto :goto_0

    .line 242
    :cond_1
    invoke-direct {p0}, Lcom/kingroot/kinguser/cfj;->ame()Lcom/kingroot/kinguser/cfg;

    move-result-object v1

    iget-wide v2, p0, Lcom/kingroot/kinguser/cfj;->bVi:J

    move v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/kingroot/kinguser/cfg;->a(JILcom/qq/taf/jce/JceStruct;ILcom/kingroot/kinguser/cck;)V

    goto :goto_1
.end method

.method public aA(II)Lcom/kingroot/kinguser/cck;
    .locals 1

    .prologue
    .line 255
    invoke-direct {p0}, Lcom/kingroot/kinguser/cfj;->amf()Lcom/kingroot/kinguser/cfh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cfh;->alX()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    invoke-direct {p0}, Lcom/kingroot/kinguser/cfj;->amf()Lcom/kingroot/kinguser/cfh;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/kingroot/kinguser/cfh;->aA(II)Lcom/kingroot/kinguser/cck;

    move-result-object v0

    .line 258
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/cfj;->ame()Lcom/kingroot/kinguser/cfg;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/kingroot/kinguser/cfg;->aA(II)Lcom/kingroot/kinguser/cck;

    move-result-object v0

    goto :goto_0
.end method

.method public amb()V
    .locals 1

    .prologue
    .line 333
    invoke-direct {p0}, Lcom/kingroot/kinguser/cfj;->amf()Lcom/kingroot/kinguser/cfh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cfh;->amb()V

    .line 334
    return-void
.end method

.method public b(IIIJJILcom/qq/taf/jce/JceStruct;[BLcom/qq/taf/jce/JceStruct;ILcom/kingroot/kinguser/cci;Lcom/kingroot/kinguser/ccj;JJ)Ljava/lang/ref/WeakReference;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIJJI",
            "Lcom/qq/taf/jce/JceStruct;",
            "[B",
            "Lcom/qq/taf/jce/JceStruct;",
            "I",
            "Lcom/kingroot/kinguser/cci;",
            "Lcom/kingroot/kinguser/ccj;",
            "JJ)",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/kingroot/kinguser/ccn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 204
    invoke-direct/range {p0 .. p0}, Lcom/kingroot/kinguser/cfj;->amf()Lcom/kingroot/kinguser/cfh;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/cfh;->alX()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 205
    invoke-static/range {p12 .. p12}, Lcom/kingroot/kinguser/ccm;->kV(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 206
    invoke-direct/range {p0 .. p0}, Lcom/kingroot/kinguser/cfj;->amf()Lcom/kingroot/kinguser/cfh;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/cfh;->alL()Lcom/kingroot/kinguser/ceu;

    move-result-object v2

    .line 207
    if-nez v2, :cond_0

    .line 208
    const/4 v2, 0x0

    .line 217
    :goto_0
    return-object v2

    :cond_0
    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    move-wide/from16 v17, p15

    move-wide/from16 v19, p17

    .line 210
    invoke-virtual/range {v2 .. v20}, Lcom/kingroot/kinguser/ceu;->a(IIIJJILcom/qq/taf/jce/JceStruct;[BLcom/qq/taf/jce/JceStruct;ILcom/kingroot/kinguser/cci;Lcom/kingroot/kinguser/ccj;JJ)Ljava/lang/ref/WeakReference;

    move-result-object v2

    goto :goto_0

    .line 213
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/kingroot/kinguser/cfj;->amf()Lcom/kingroot/kinguser/cfh;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    move-wide/from16 v17, p15

    move-wide/from16 v19, p17

    invoke-virtual/range {v2 .. v20}, Lcom/kingroot/kinguser/cfh;->b(IIIJJILcom/qq/taf/jce/JceStruct;[BLcom/qq/taf/jce/JceStruct;ILcom/kingroot/kinguser/cci;Lcom/kingroot/kinguser/ccj;JJ)Ljava/lang/ref/WeakReference;

    move-result-object v2

    goto :goto_0

    .line 216
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/kingroot/kinguser/cfj;->ame()Lcom/kingroot/kinguser/cfg;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/kingroot/kinguser/cfj;->bVi:J

    move/from16 v3, p1

    move/from16 v6, p3

    move-wide/from16 v7, p4

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p11

    move/from16 v12, p12

    move-object/from16 v13, p13

    move-wide/from16 v14, p15

    move-wide/from16 v16, p17

    invoke-virtual/range {v2 .. v17}, Lcom/kingroot/kinguser/cfg;->a(IJIJILcom/qq/taf/jce/JceStruct;Lcom/qq/taf/jce/JceStruct;ILcom/kingroot/kinguser/cci;JJ)V

    .line 217
    const/4 v2, 0x0

    goto :goto_0
.end method
