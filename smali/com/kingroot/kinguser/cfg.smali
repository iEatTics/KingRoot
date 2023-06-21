.class public final Lcom/kingroot/kinguser/cfg;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/cfg$b;,
        Lcom/kingroot/kinguser/cfg$a;
    }
.end annotation


# static fields
.field private static cbl:Lcom/kingroot/kinguser/cfg;


# instance fields
.field private bYW:Lcom/kingroot/kinguser/ceu;

.field private bux:I

.field private cav:Landroid/os/Handler;

.field private cax:Landroid/os/Handler;

.field private cbf:Lcom/kingroot/kinguser/cfb$a;

.field private cbg:Ljava/util/concurrent/ExecutorService;

.field private cbh:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/cfg$a;",
            ">;"
        }
    .end annotation
.end field

.field private cbi:Ljava/util/TreeMap;
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

.field private cbj:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/util/Pair",
            "<",
            "Lcom/qq/taf/jce/JceStruct;",
            "Lcom/kingroot/kinguser/cck;",
            ">;>;"
        }
    .end annotation
.end field

.field private cbk:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    sput-object v0, Lcom/kingroot/kinguser/cfg;->cbl:Lcom/kingroot/kinguser/cfg;

    return-void
.end method

.method private constructor <init>(Lcom/kingroot/kinguser/ceu;)V
    .locals 2

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/cfg;->bux:I

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/cfg;->cbh:Ljava/util/ArrayList;

    .line 42
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/cfg;->cbi:Ljava/util/TreeMap;

    .line 43
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/cfg;->cbj:Ljava/util/TreeMap;

    .line 56
    new-instance v0, Lcom/kingroot/kinguser/cfg$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/kingroot/kinguser/cfg$1;-><init>(Lcom/kingroot/kinguser/cfg;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/cfg;->cbk:Landroid/os/Handler;

    .line 72
    new-instance v0, Lcom/kingroot/kinguser/cfg$2;

    invoke-static {}, Lcom/kingroot/kinguser/cfd;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/kingroot/kinguser/cfg$2;-><init>(Lcom/kingroot/kinguser/cfg;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/cfg;->cav:Landroid/os/Handler;

    .line 107
    new-instance v0, Lcom/kingroot/kinguser/cfg$3;

    invoke-static {}, Lcom/kingroot/kinguser/cfd;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/kingroot/kinguser/cfg$3;-><init>(Lcom/kingroot/kinguser/cfg;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/cfg;->cax:Landroid/os/Handler;

    .line 130
    iput-object p1, p0, Lcom/kingroot/kinguser/cfg;->bYW:Lcom/kingroot/kinguser/ceu;

    .line 131
    new-instance v0, Lcom/kingroot/kinguser/cfb$a;

    invoke-direct {v0}, Lcom/kingroot/kinguser/cfb$a;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/cfg;->cbf:Lcom/kingroot/kinguser/cfb$a;

    .line 132
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/cfg;->cbg:Ljava/util/concurrent/ExecutorService;

    .line 133
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/cfg;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/kingroot/kinguser/cfg;->cav:Landroid/os/Handler;

    return-object v0
.end method

.method private a(Lcom/kingroot/kinguser/cfg$a;)V
    .locals 3

    .prologue
    .line 284
    iget-object v0, p0, Lcom/kingroot/kinguser/cfg;->cax:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 286
    iget-object v0, p0, Lcom/kingroot/kinguser/cfg;->cbi:Ljava/util/TreeMap;

    iget v1, p1, Lcom/kingroot/kinguser/cfg$a;->cbu:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 287
    if-nez v0, :cond_0

    .line 299
    :goto_0
    return-void

    .line 291
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/bze;->ajZ()Lcom/kingroot/kinguser/bzf;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/cfg$7;

    invoke-direct {v1, p0, p1}, Lcom/kingroot/kinguser/cfg$7;-><init>(Lcom/kingroot/kinguser/cfg;Lcom/kingroot/kinguser/cfg$a;)V

    const-string v2, "sharkProcessProxyTimeout"

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/bzf;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/cfg;Lcom/kingroot/kinguser/cfg$a;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/cfg;->a(Lcom/kingroot/kinguser/cfg$a;)V

    return-void
.end method

.method public static declared-synchronized alV()Lcom/kingroot/kinguser/cfg;
    .locals 3

    .prologue
    .line 122
    const-class v1, Lcom/kingroot/kinguser/cfg;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/cfg;->cbl:Lcom/kingroot/kinguser/cfg;

    if-nez v0, :cond_0

    .line 123
    const-class v0, Lcom/kingroot/kinguser/cfh;

    invoke-static {v0}, Lcom/kingroot/kinguser/ced;->j(Ljava/lang/Class;)Lcom/kingroot/kinguser/cec;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/cfh;

    .line 124
    new-instance v2, Lcom/kingroot/kinguser/cfg;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cfh;->alL()Lcom/kingroot/kinguser/ceu;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/kingroot/kinguser/cfg;-><init>(Lcom/kingroot/kinguser/ceu;)V

    sput-object v2, Lcom/kingroot/kinguser/cfg;->cbl:Lcom/kingroot/kinguser/cfg;

    .line 126
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/cfg;->cbl:Lcom/kingroot/kinguser/cfg;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/cfg;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/kingroot/kinguser/cfg;->cbh:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic c(Lcom/kingroot/kinguser/cfg;)Ljava/util/TreeMap;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/kingroot/kinguser/cfg;->cbi:Ljava/util/TreeMap;

    return-object v0
.end method

.method static synthetic d(Lcom/kingroot/kinguser/cfg;)Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/kingroot/kinguser/cfg;->cbg:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic e(Lcom/kingroot/kinguser/cfg;)Lcom/kingroot/kinguser/ceu;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/kingroot/kinguser/cfg;->bYW:Lcom/kingroot/kinguser/ceu;

    return-object v0
.end method

.method static synthetic f(Lcom/kingroot/kinguser/cfg;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/kingroot/kinguser/cfg;->cax:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final a(IIII[BII)V
    .locals 9

    .prologue
    .line 249
    iget v0, p0, Lcom/kingroot/kinguser/cfg;->bux:I

    if-eq v0, p1, :cond_0

    .line 280
    :goto_0
    return-void

    .line 254
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/bze;->ajZ()Lcom/kingroot/kinguser/bzf;

    move-result-object v8

    new-instance v0, Lcom/kingroot/kinguser/cfg$6;

    move-object v1, p0

    move v2, p2

    move-object v3, p5

    move v4, p4

    move v5, p3

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/kingroot/kinguser/cfg$6;-><init>(Lcom/kingroot/kinguser/cfg;I[BIIII)V

    const-string v1, "shark callback"

    invoke-virtual {v8, v0, v1}, Lcom/kingroot/kinguser/bzf;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(IJIJILcom/qq/taf/jce/JceStruct;Lcom/qq/taf/jce/JceStruct;ILcom/kingroot/kinguser/cci;JJ)V
    .locals 20

    .prologue
    .line 192
    new-instance v1, Lcom/kingroot/kinguser/cfg$a;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/cfg;->cbf:Lcom/kingroot/kinguser/cfb$a;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/cfb$a;->alo()I

    move-result v4

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v5, p4

    move-wide/from16 v6, p5

    move-wide/from16 v8, p2

    move/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move/from16 v13, p10

    move-object/from16 v14, p11

    move-wide/from16 v15, p12

    move-wide/from16 v17, p14

    invoke-direct/range {v1 .. v18}, Lcom/kingroot/kinguser/cfg$a;-><init>(Lcom/kingroot/kinguser/cfg;IIIJJILcom/qq/taf/jce/JceStruct;Lcom/qq/taf/jce/JceStruct;ILcom/kingroot/kinguser/cci;JJ)V

    .line 194
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/cfg;->cbh:Ljava/util/ArrayList;

    monitor-enter v2

    .line 195
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingroot/kinguser/cfg;->cbh:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kingroot/kinguser/cfg;->cav:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 198
    return-void

    .line 196
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public final a(JILcom/qq/taf/jce/JceStruct;ILcom/kingroot/kinguser/cck;)V
    .locals 9

    .prologue
    .line 145
    iget-object v6, p0, Lcom/kingroot/kinguser/cfg;->cbj:Ljava/util/TreeMap;

    monitor-enter v6

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cfg;->cbj:Ljava/util/TreeMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/kingroot/kinguser/cfg;->cbj:Ljava/util/TreeMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, p4, p6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    invoke-static {}, Lcom/kingroot/kinguser/bze;->ajZ()Lcom/kingroot/kinguser/bzf;

    move-result-object v7

    new-instance v0, Lcom/kingroot/kinguser/cfg$4;

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/kingroot/kinguser/cfg$4;-><init>(Lcom/kingroot/kinguser/cfg;JII)V

    const-string v1, "shark register push"

    invoke-virtual {v7, v0, v1}, Lcom/kingroot/kinguser/bzf;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 165
    :cond_0
    monitor-exit v6

    return-void

    .line 158
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[shark_push]registerSharkPush(), only one listener is allowed for current version! callIdent: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cmdId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " flag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 159
    invoke-static {}, Lcom/kingroot/kinguser/cfd;->alG()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method protected final a(Lcom/kingroot/kinguser/cfg$a;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 302
    iget-object v0, p1, Lcom/kingroot/kinguser/cfg$a;->cbA:Lcom/kingroot/kinguser/cci;

    if-nez v0, :cond_0

    .line 322
    :goto_0
    return-void

    .line 304
    :cond_0
    const-string v0, "ocean"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[ocean]procallback: ECmd|"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/kingroot/kinguser/cfg$a;->mCmdId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|ipcSeqNo|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/kingroot/kinguser/cfg$a;->cbu:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|seqNo|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|ret|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|dataRetCode|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|ident|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/kingroot/kinguser/cfg$a;->cbx:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4, v4}, Lcom/kingroot/kinguser/cfe;->a(Ljava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/az;Lcom/kingroot/kinguser/bg;)V

    .line 307
    iget v0, p1, Lcom/kingroot/kinguser/cfg$a;->mFlag:I

    invoke-static {v0}, Lcom/kingroot/kinguser/ccm;->kT(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 319
    iget-object v0, p1, Lcom/kingroot/kinguser/cfg$a;->cbA:Lcom/kingroot/kinguser/cci;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p1, Lcom/kingroot/kinguser/cfg$a;->mCmdId:I

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p1, Lcom/kingroot/kinguser/cfg$a;->cbz:Lcom/qq/taf/jce/JceStruct;

    invoke-interface/range {v0 .. v5}, Lcom/kingroot/kinguser/cci;->a(IIIILcom/qq/taf/jce/JceStruct;)V

    goto :goto_0

    .line 309
    :sswitch_0
    iget-object v0, p1, Lcom/kingroot/kinguser/cfg$a;->cbA:Lcom/kingroot/kinguser/cci;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p1, Lcom/kingroot/kinguser/cfg$a;->mCmdId:I

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p1, Lcom/kingroot/kinguser/cfg$a;->cbz:Lcom/qq/taf/jce/JceStruct;

    invoke-interface/range {v0 .. v5}, Lcom/kingroot/kinguser/cci;->a(IIIILcom/qq/taf/jce/JceStruct;)V

    goto/16 :goto_0

    .line 313
    :sswitch_1
    iget-object v0, p0, Lcom/kingroot/kinguser/cfg;->cbk:Landroid/os/Handler;

    const/16 v1, 0xb

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    aput-object p4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 314
    iget-object v1, p0, Lcom/kingroot/kinguser/cfg;->cbk:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 307
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method public final aA(II)Lcom/kingroot/kinguser/cck;
    .locals 5

    .prologue
    .line 169
    const/4 v0, 0x0

    .line 170
    iget-object v1, p0, Lcom/kingroot/kinguser/cfg;->cbj:Ljava/util/TreeMap;

    monitor-enter v1

    .line 172
    :try_start_0
    iget-object v2, p0, Lcom/kingroot/kinguser/cfg;->cbj:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 173
    iget-object v0, p0, Lcom/kingroot/kinguser/cfg;->cbj:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 174
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/kingroot/kinguser/cck;

    .line 177
    invoke-static {}, Lcom/kingroot/kinguser/bze;->ajZ()Lcom/kingroot/kinguser/bzf;

    move-result-object v2

    new-instance v3, Lcom/kingroot/kinguser/cfg$5;

    invoke-direct {v3, p0, p1, p2}, Lcom/kingroot/kinguser/cfg$5;-><init>(Lcom/kingroot/kinguser/cfg;II)V

    const-string v4, "shark unregist push"

    invoke-virtual {v2, v3, v4}, Lcom/kingroot/kinguser/bzf;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 184
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    return-object v0

    .line 184
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
