.class public Lcom/kingroot/kinguser/cfh;
.super Lcom/kingroot/kinguser/cec;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/cff$b;
.implements Lcom/kingroot/kinguser/cff$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/cfh$b;,
        Lcom/kingroot/kinguser/cfh$c;,
        Lcom/kingroot/kinguser/cfh$d;,
        Lcom/kingroot/kinguser/cfh$a;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private bYN:Lcom/kingroot/kinguser/cff;

.field private bYt:Lcom/kingroot/kinguser/ceu;

.field private cam:Ljava/util/concurrent/ExecutorService;

.field private cav:Landroid/os/Handler;

.field private cbE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/kingroot/kinguser/cfh$a;",
            ">;"
        }
    .end annotation
.end field

.field private cbF:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/cfh$c;",
            ">;"
        }
    .end annotation
.end field

.field private cbG:Lcom/kingroot/kinguser/cfs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cfs",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private cbH:Lcom/kingroot/kinguser/cco;

.field private cbI:Z

.field private cbJ:Z

.field private cbK:Z

.field private cbL:Z

.field private cbM:Z

.field private cbN:Z

.field private cbO:Z

.field private cbP:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/kingroot/kinguser/cex;",
            ">;"
        }
    .end annotation
.end field

.field private cbQ:Z

.field private cbR:Z

.field private cbS:Z

.field private cbT:Z

.field private cbU:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/ccg;",
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
            "Lcom/kingroot/kinguser/cfp",
            "<",
            "Lcom/qq/taf/jce/JceStruct;",
            "Lcom/kingroot/kinguser/cck;",
            "Lcom/kingroot/kinguser/cfh$b;",
            ">;>;"
        }
    .end annotation
.end field

.field private cbk:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private yb:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 53
    invoke-direct {p0}, Lcom/kingroot/kinguser/cec;-><init>()V

    .line 55
    const-string v0, "SharkProtocolQueue"

    iput-object v0, p0, Lcom/kingroot/kinguser/cfh;->TAG:Ljava/lang/String;

    .line 94
    iput-boolean v2, p0, Lcom/kingroot/kinguser/cfh;->yb:Z

    .line 98
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/cfh;->cbj:Ljava/util/TreeMap;

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/cfh;->cbE:Ljava/util/Map;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/cfh;->cbF:Ljava/util/ArrayList;

    .line 102
    new-instance v0, Lcom/kingroot/kinguser/cfs;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/cfs;-><init>(I)V

    iput-object v0, p0, Lcom/kingroot/kinguser/cfh;->cbG:Lcom/kingroot/kinguser/cfs;

    .line 110
    iput-boolean v2, p0, Lcom/kingroot/kinguser/cfh;->cbI:Z

    .line 112
    iput-boolean v2, p0, Lcom/kingroot/kinguser/cfh;->cbJ:Z

    .line 114
    iput-boolean v2, p0, Lcom/kingroot/kinguser/cfh;->cbK:Z

    .line 116
    iput-boolean v2, p0, Lcom/kingroot/kinguser/cfh;->cbL:Z

    .line 118
    iput-boolean v2, p0, Lcom/kingroot/kinguser/cfh;->cbM:Z

    .line 120
    iput-boolean v2, p0, Lcom/kingroot/kinguser/cfh;->cbN:Z

    .line 122
    iput-boolean v2, p0, Lcom/kingroot/kinguser/cfh;->cbO:Z

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/cfh;->cbP:Ljava/util/LinkedList;

    .line 126
    iput-boolean v2, p0, Lcom/kingroot/kinguser/cfh;->cbQ:Z

    .line 128
    iput-boolean v2, p0, Lcom/kingroot/kinguser/cfh;->cbR:Z

    .line 130
    iput-boolean v2, p0, Lcom/kingroot/kinguser/cfh;->cbS:Z

    .line 132
    iput-boolean v2, p0, Lcom/kingroot/kinguser/cfh;->cbT:Z

    .line 139
    new-instance v0, Lcom/kingroot/kinguser/cfh$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/kingroot/kinguser/cfh$1;-><init>(Lcom/kingroot/kinguser/cfh;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/cfh;->cbk:Landroid/os/Handler;

    .line 159
    new-instance v0, Lcom/kingroot/kinguser/cfh$2;

    invoke-static {}, Lcom/kingroot/kinguser/cfd;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/kingroot/kinguser/cfh$2;-><init>(Lcom/kingroot/kinguser/cfh;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/cfh;->cav:Landroid/os/Handler;

    .line 1336
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/cfh;->cbU:Ljava/util/List;

    .line 1572
    return-void
.end method

.method private U(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 1312
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1313
    iget-object v1, p0, Lcom/kingroot/kinguser/cfh;->cbU:Ljava/util/List;

    monitor-enter v1

    .line 1314
    :try_start_0
    iget-object v2, p0, Lcom/kingroot/kinguser/cfh;->cbU:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1315
    iget-object v2, p0, Lcom/kingroot/kinguser/cfh;->cbU:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1316
    iget-object v2, p0, Lcom/kingroot/kinguser/cfh;->cbU:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1318
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1320
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1321
    invoke-static {}, Lcom/kingroot/kinguser/bze;->ajZ()Lcom/kingroot/kinguser/bzf;

    move-result-object v1

    new-instance v2, Lcom/kingroot/kinguser/cfh$5;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/kingroot/kinguser/cfh$5;-><init>(Lcom/kingroot/kinguser/cfh;Ljava/util/List;ILjava/lang/String;)V

    const-string v0, "shark callback: guid got"

    invoke-virtual {v1, v2, v0}, Lcom/kingroot/kinguser/bzf;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1330
    :cond_1
    return-void

    .line 1318
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/cfh;Lcom/kingroot/kinguser/cco;)Lcom/kingroot/kinguser/cco;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/kingroot/kinguser/cfh;->cbH:Lcom/kingroot/kinguser/cco;

    return-object p1
.end method

.method static synthetic a(Lcom/kingroot/kinguser/cfh;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/kingroot/kinguser/cfh;->cbF:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/cfh;Ljava/util/LinkedList;)Ljava/util/LinkedList;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/kingroot/kinguser/cfh;->cbP:Ljava/util/LinkedList;

    return-object p1
.end method

.method private a(JLcom/kingroot/kinguser/bg;[BLcom/kingroot/kinguser/cfp;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/kingroot/kinguser/bg;",
            "[B",
            "Lcom/kingroot/kinguser/cfp",
            "<",
            "Lcom/qq/taf/jce/JceStruct;",
            "Lcom/kingroot/kinguser/cck;",
            "Lcom/kingroot/kinguser/cfh$b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 513
    const/4 v8, 0x0

    .line 514
    const/4 v7, 0x0

    .line 515
    iget-object v0, p3, Lcom/kingroot/kinguser/bg;->data:[B

    if-eqz v0, :cond_2

    .line 516
    iget-object v0, p5, Lcom/kingroot/kinguser/cfp;->cdu:Ljava/lang/Object;

    check-cast v0, Lcom/kingroot/kinguser/cfh$b;

    iget-boolean v0, v0, Lcom/kingroot/kinguser/cfh$b;->ccg:Z

    if-eqz v0, :cond_1

    .line 518
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cfh;->mContext:Landroid/content/Context;

    iget-object v1, p3, Lcom/kingroot/kinguser/bg;->data:[B

    iget v2, p3, Lcom/kingroot/kinguser/bg;->flag:I

    invoke-static {v0, p4, v1, v2}, Lcom/kingroot/kinguser/ceq;->a(Landroid/content/Context;[B[BI)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    move-object v6, v8

    .line 539
    :goto_0
    :try_start_1
    iget-object v0, p5, Lcom/kingroot/kinguser/cfp;->cdu:Ljava/lang/Object;

    check-cast v0, Lcom/kingroot/kinguser/cfh$b;

    iget-boolean v0, v0, Lcom/kingroot/kinguser/cfh$b;->ccg:Z

    if-eqz v0, :cond_3

    .line 541
    iget-object v0, p5, Lcom/kingroot/kinguser/cfp;->second:Ljava/lang/Object;

    check-cast v0, Lcom/kingroot/kinguser/ccl;

    iget v1, p3, Lcom/kingroot/kinguser/bg;->seqNo:I

    iget v4, p3, Lcom/kingroot/kinguser/bg;->cmd:I

    move-wide v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/kingroot/kinguser/ccl;->a(IJI[B)Lcom/kingroot/kinguser/cfp;

    move-result-object v0

    move-object v2, v0

    .line 546
    :goto_1
    if-eqz v2, :cond_0

    .line 549
    iget v1, p3, Lcom/kingroot/kinguser/bg;->seqNo:I

    iget-object v0, v2, Lcom/kingroot/kinguser/cfp;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, v2, Lcom/kingroot/kinguser/cfp;->cdu:Ljava/lang/Object;

    check-cast v5, Lcom/qq/taf/jce/JceStruct;

    const/4 v6, 0x1

    move-object v0, p0

    move-wide v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/kingroot/kinguser/cfh;->a(IJILcom/qq/taf/jce/JceStruct;I)Ljava/lang/ref/WeakReference;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 557
    :cond_0
    :goto_2
    return-void

    .line 522
    :catch_0
    move-exception v0

    iget v1, p3, Lcom/kingroot/kinguser/bg;->seqNo:I

    iget v4, p3, Lcom/kingroot/kinguser/bg;->cmd:I

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v0, p0

    move-wide v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/kingroot/kinguser/cfh;->a(IJILcom/qq/taf/jce/JceStruct;I)Ljava/lang/ref/WeakReference;

    move-object v5, v7

    move-object v6, v8

    .line 523
    goto :goto_0

    .line 525
    :cond_1
    iget-object v0, p5, Lcom/kingroot/kinguser/cfp;->first:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 527
    :try_start_2
    iget-object v0, p0, Lcom/kingroot/kinguser/cfh;->mContext:Landroid/content/Context;

    iget-object v2, p3, Lcom/kingroot/kinguser/bg;->data:[B

    iget-object v3, p5, Lcom/kingroot/kinguser/cfp;->first:Ljava/lang/Object;

    check-cast v3, Lcom/qq/taf/jce/JceStruct;

    const/4 v4, 0x0

    iget v5, p3, Lcom/kingroot/kinguser/bg;->flag:I

    move-object v1, p4

    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/ceq;->a(Landroid/content/Context;[B[BLcom/qq/taf/jce/JceStruct;ZI)Lcom/qq/taf/jce/JceStruct;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    move-object v5, v7

    move-object v6, v0

    .line 532
    goto :goto_0

    .line 531
    :catch_1
    move-exception v0

    iget v1, p3, Lcom/kingroot/kinguser/bg;->seqNo:I

    iget v4, p3, Lcom/kingroot/kinguser/bg;->cmd:I

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v0, p0

    move-wide v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/kingroot/kinguser/cfh;->a(IJILcom/qq/taf/jce/JceStruct;I)Ljava/lang/ref/WeakReference;

    :cond_2
    move-object v5, v7

    move-object v6, v8

    goto :goto_0

    .line 543
    :cond_3
    :try_start_3
    iget-object v0, p5, Lcom/kingroot/kinguser/cfp;->second:Ljava/lang/Object;

    check-cast v0, Lcom/kingroot/kinguser/cck;

    iget v1, p3, Lcom/kingroot/kinguser/bg;->seqNo:I

    iget v4, p3, Lcom/kingroot/kinguser/bg;->cmd:I

    move-wide v2, p1

    move-object v5, v6

    invoke-interface/range {v0 .. v5}, Lcom/kingroot/kinguser/cck;->a(IJILcom/qq/taf/jce/JceStruct;)Lcom/kingroot/kinguser/cfp;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v0

    move-object v2, v0

    goto :goto_1

    .line 557
    :catch_2
    move-exception v0

    goto :goto_2
.end method

.method static synthetic a(Lcom/kingroot/kinguser/cfh;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/cfh;->U(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/cfh;JLcom/kingroot/kinguser/bg;[BLcom/kingroot/kinguser/cfp;)V
    .locals 1

    .prologue
    .line 53
    invoke-direct/range {p0 .. p5}, Lcom/kingroot/kinguser/cfh;->a(JLcom/kingroot/kinguser/bg;[BLcom/kingroot/kinguser/cfp;)V

    return-void
.end method

.method public static a(Lcom/kingroot/kinguser/bg;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 409
    if-nez p0, :cond_1

    .line 414
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/kingroot/kinguser/bg;->jX:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/cfh;Z)Z
    .locals 0

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/kingroot/kinguser/cfh;->cbR:Z

    return p1
.end method

.method private ama()V
    .locals 3

    .prologue
    .line 1508
    sget-boolean v0, Lcom/kingroot/kinguser/cfd;->bZU:Z

    if-eqz v0, :cond_0

    .line 1509
    iget-object v0, p0, Lcom/kingroot/kinguser/cfh;->bYN:Lcom/kingroot/kinguser/cff;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cff;->alK()Lcom/kingroot/kinguser/cfo;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "tcp_control"

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/cfo;->W(ILjava/lang/String;)V

    .line 1513
    :goto_0
    return-void

    .line 1511
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/cfh;->cbM:Z

    goto :goto_0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/cfh;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/kingroot/kinguser/cfh;->cav:Landroid/os/Handler;

    return-object v0
.end method

.method private b(JLcom/kingroot/kinguser/bg;[BLcom/kingroot/kinguser/cfp;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/kingroot/kinguser/bg;",
            "[B",
            "Lcom/kingroot/kinguser/cfp",
            "<",
            "Lcom/qq/taf/jce/JceStruct;",
            "Lcom/kingroot/kinguser/cck;",
            "Lcom/kingroot/kinguser/cfh$b;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 608
    .line 610
    iget-object v0, p3, Lcom/kingroot/kinguser/bg;->data:[B

    if-eqz v0, :cond_2

    .line 611
    iget-object v0, p5, Lcom/kingroot/kinguser/cfp;->cdu:Ljava/lang/Object;

    check-cast v0, Lcom/kingroot/kinguser/cfh$b;

    iget-boolean v0, v0, Lcom/kingroot/kinguser/cfh$b;->ccg:Z

    if-eqz v0, :cond_1

    .line 613
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cfh;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/kingroot/kinguser/cfh;->bYN:Lcom/kingroot/kinguser/cff;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/cff;->fw()Lcom/kingroot/kinguser/cez$b;

    move-result-object v1

    iget-object v1, v1, Lcom/kingroot/kinguser/cez$b;->bZv:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iget-object v2, p3, Lcom/kingroot/kinguser/bg;->data:[B

    iget v3, p3, Lcom/kingroot/kinguser/bg;->flag:I

    invoke-static {v0, v1, v2, v3}, Lcom/kingroot/kinguser/ceq;->a(Landroid/content/Context;[B[BI)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 630
    :goto_0
    :try_start_1
    iget-object v0, p5, Lcom/kingroot/kinguser/cfp;->cdu:Ljava/lang/Object;

    check-cast v0, Lcom/kingroot/kinguser/cfh$b;

    iget-boolean v0, v0, Lcom/kingroot/kinguser/cfh$b;->ccg:Z

    if-eqz v0, :cond_3

    .line 633
    iget-object v0, p5, Lcom/kingroot/kinguser/cfp;->second:Ljava/lang/Object;

    check-cast v0, Lcom/kingroot/kinguser/ccl;

    iget v1, p3, Lcom/kingroot/kinguser/bg;->seqNo:I

    iget v4, p3, Lcom/kingroot/kinguser/bg;->cmd:I

    move-wide v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/kingroot/kinguser/ccl;->a(IJI[B)Lcom/kingroot/kinguser/cfp;

    move-result-object v0

    move-object v1, v0

    .line 638
    :goto_1
    if-eqz v1, :cond_0

    .line 639
    iget v2, p3, Lcom/kingroot/kinguser/bg;->seqNo:I

    iget-object v0, v1, Lcom/kingroot/kinguser/cfp;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, v1, Lcom/kingroot/kinguser/cfp;->cdu:Ljava/lang/Object;

    check-cast v0, Lcom/qq/taf/jce/JceStruct;

    invoke-virtual {p0, v2, v3, v0}, Lcom/kingroot/kinguser/cfh;->a(IILcom/qq/taf/jce/JceStruct;)Ljava/lang/ref/WeakReference;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 644
    :cond_0
    :goto_2
    return-void

    .line 616
    :catch_0
    move-exception v0

    move-object v5, v6

    goto :goto_0

    .line 618
    :cond_1
    iget-object v0, p5, Lcom/kingroot/kinguser/cfp;->first:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 620
    :try_start_2
    iget-object v0, p0, Lcom/kingroot/kinguser/cfh;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/kingroot/kinguser/cfh;->bYN:Lcom/kingroot/kinguser/cff;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/cff;->fw()Lcom/kingroot/kinguser/cez$b;

    move-result-object v1

    iget-object v1, v1, Lcom/kingroot/kinguser/cez$b;->bZv:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iget-object v2, p3, Lcom/kingroot/kinguser/bg;->data:[B

    iget-object v3, p5, Lcom/kingroot/kinguser/cfp;->first:Ljava/lang/Object;

    check-cast v3, Lcom/qq/taf/jce/JceStruct;

    const/4 v4, 0x0

    iget v5, p3, Lcom/kingroot/kinguser/bg;->flag:I

    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/ceq;->a(Landroid/content/Context;[B[BLcom/qq/taf/jce/JceStruct;ZI)Lcom/qq/taf/jce/JceStruct;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    move-object v5, v6

    move-object v6, v0

    .line 624
    goto :goto_0

    :catch_1
    move-exception v0

    :cond_2
    move-object v5, v6

    goto :goto_0

    .line 635
    :cond_3
    :try_start_3
    iget-object v0, p5, Lcom/kingroot/kinguser/cfp;->second:Ljava/lang/Object;

    check-cast v0, Lcom/kingroot/kinguser/cck;

    iget v1, p3, Lcom/kingroot/kinguser/bg;->seqNo:I

    iget v4, p3, Lcom/kingroot/kinguser/bg;->cmd:I

    move-wide v2, p1

    move-object v5, v6

    invoke-interface/range {v0 .. v5}, Lcom/kingroot/kinguser/cck;->a(IJILcom/qq/taf/jce/JceStruct;)Lcom/kingroot/kinguser/cfp;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    .line 644
    :catch_2
    move-exception v0

    goto :goto_2
.end method

.method static synthetic b(Lcom/kingroot/kinguser/cfh;JLcom/kingroot/kinguser/bg;[BLcom/kingroot/kinguser/cfp;)V
    .locals 1

    .prologue
    .line 53
    invoke-direct/range {p0 .. p5}, Lcom/kingroot/kinguser/cfh;->b(JLcom/kingroot/kinguser/bg;[BLcom/kingroot/kinguser/cfp;)V

    return-void
.end method

.method public static b(Lcom/kingroot/kinguser/bg;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 418
    if-nez p0, :cond_1

    .line 433
    :cond_0
    :goto_0
    return v0

    .line 423
    :cond_1
    iget v1, p0, Lcom/kingroot/kinguser/bg;->jX:I

    if-nez v1, :cond_0

    .line 429
    iget-object v1, p0, Lcom/kingroot/kinguser/bg;->kk:Lcom/kingroot/kinguser/bf;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kingroot/kinguser/bg;->kk:Lcom/kingroot/kinguser/bf;

    iget-wide v2, v1, Lcom/kingroot/kinguser/bf;->jW:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 430
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static c(Lcom/kingroot/kinguser/bg;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 437
    if-nez p0, :cond_1

    .line 441
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/kingroot/kinguser/cfh;->a(Lcom/kingroot/kinguser/bg;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/kingroot/kinguser/cfh;->b(Lcom/kingroot/kinguser/bg;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic c(Lcom/kingroot/kinguser/cfh;)Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/kingroot/kinguser/cfh;->cbI:Z

    return v0
.end method

.method static synthetic d(Lcom/kingroot/kinguser/cfh;)Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/kingroot/kinguser/cfh;->cbJ:Z

    return v0
.end method

.method static synthetic e(Lcom/kingroot/kinguser/cfh;)Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/kingroot/kinguser/cfh;->cbK:Z

    return v0
.end method

.method static synthetic f(Lcom/kingroot/kinguser/cfh;)Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/kingroot/kinguser/cfh;->cbL:Z

    return v0
.end method

.method static synthetic g(Lcom/kingroot/kinguser/cfh;)Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/kingroot/kinguser/cfh;->cbM:Z

    return v0
.end method

.method static synthetic h(Lcom/kingroot/kinguser/cfh;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/kingroot/kinguser/cfh;->ama()V

    return-void
.end method

.method static synthetic i(Lcom/kingroot/kinguser/cfh;)Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/kingroot/kinguser/cfh;->cbN:Z

    return v0
.end method

.method static synthetic j(Lcom/kingroot/kinguser/cfh;)Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/kingroot/kinguser/cfh;->cbO:Z

    return v0
.end method

.method static synthetic k(Lcom/kingroot/kinguser/cfh;)Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/kingroot/kinguser/cfh;->cbQ:Z

    return v0
.end method

.method static synthetic l(Lcom/kingroot/kinguser/cfh;)Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/kingroot/kinguser/cfh;->cbP:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic m(Lcom/kingroot/kinguser/cfh;)Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/kingroot/kinguser/cfh;->cbR:Z

    return v0
.end method

.method static synthetic n(Lcom/kingroot/kinguser/cfh;)Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/kingroot/kinguser/cfh;->cbS:Z

    return v0
.end method

.method static synthetic o(Lcom/kingroot/kinguser/cfh;)Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/kingroot/kinguser/cfh;->cbT:Z

    return v0
.end method

.method static synthetic p(Lcom/kingroot/kinguser/cfh;)Lcom/kingroot/kinguser/cco;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/kingroot/kinguser/cfh;->cbH:Lcom/kingroot/kinguser/cco;

    return-object v0
.end method

.method static synthetic q(Lcom/kingroot/kinguser/cfh;)Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/kingroot/kinguser/cfh;->cam:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic r(Lcom/kingroot/kinguser/cfh;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/kingroot/kinguser/cfh;->cbE:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic s(Lcom/kingroot/kinguser/cfh;)Ljava/util/TreeMap;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/kingroot/kinguser/cfh;->cbj:Ljava/util/TreeMap;

    return-object v0
.end method

.method static synthetic t(Lcom/kingroot/kinguser/cfh;)Lcom/kingroot/kinguser/cff;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/kingroot/kinguser/cfh;->bYN:Lcom/kingroot/kinguser/cff;

    return-object v0
.end method

.method static synthetic u(Lcom/kingroot/kinguser/cfh;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/kingroot/kinguser/cfh;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic v(Lcom/kingroot/kinguser/cfh;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/kingroot/kinguser/cfh;->cbk:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public I(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1169
    iput-object p1, p0, Lcom/kingroot/kinguser/cfh;->mContext:Landroid/content/Context;

    .line 1170
    return-void
.end method

.method public KD()V
    .locals 1

    .prologue
    .line 1384
    sget-boolean v0, Lcom/kingroot/kinguser/cfd;->bZU:Z

    if-eqz v0, :cond_1

    .line 1385
    iget-object v0, p0, Lcom/kingroot/kinguser/cfh;->bYN:Lcom/kingroot/kinguser/cff;

    if-nez v0, :cond_0

    .line 1392
    :goto_0
    return-void

    .line 1388
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cfh;->bYN:Lcom/kingroot/kinguser/cff;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cff;->KD()V

    goto :goto_0

    .line 1390
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/cfh;->cbJ:Z

    goto :goto_0
.end method

.method public a(ZILcom/kingroot/kinguser/bg;)J
    .locals 16

    .prologue
    .line 447
    if-eqz p3, :cond_0

    invoke-static/range {p3 .. p3}, Lcom/kingroot/kinguser/cfh;->b(Lcom/kingroot/kinguser/bg;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 448
    :cond_0
    const-wide/16 v2, -0x1

    .line 497
    :goto_0
    return-wide v2

    .line 451
    :cond_1
    const-wide/16 v4, 0x0

    .line 452
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/kingroot/kinguser/bg;->kk:Lcom/kingroot/kinguser/bf;

    if-eqz v2, :cond_2

    .line 453
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/kingroot/kinguser/bg;->kk:Lcom/kingroot/kinguser/bf;

    iget-wide v4, v2, Lcom/kingroot/kinguser/bf;->jW:J

    .line 458
    :cond_2
    move-object/from16 v0, p3

    iget v6, v0, Lcom/kingroot/kinguser/bg;->cmd:I

    move-object/from16 v0, p3

    iget v8, v0, Lcom/kingroot/kinguser/bg;->seqNo:I

    const v9, -0x3b9aca01

    move-object/from16 v3, p0

    move/from16 v7, p2

    invoke-virtual/range {v3 .. v9}, Lcom/kingroot/kinguser/cfh;->a(JIIII)V

    .line 461
    move-object/from16 v0, p3

    iget v2, v0, Lcom/kingroot/kinguser/bg;->retCode:I

    if-eqz v2, :cond_3

    .line 463
    const-wide/16 v2, -0x1

    goto :goto_0

    .line 467
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/cfh;->cbG:Lcom/kingroot/kinguser/cfs;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/cfs;->x(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 469
    const-wide/16 v2, -0x1

    goto :goto_0

    .line 471
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/cfh;->cbG:Lcom/kingroot/kinguser/cfs;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/cfs;->push(Ljava/lang/Object;)V

    .line 475
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingroot/kinguser/cfh;->cbj:Ljava/util/TreeMap;

    monitor-enter v3

    .line 477
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/cfh;->cbj:Ljava/util/TreeMap;

    move-object/from16 v0, p3

    iget v6, v0, Lcom/kingroot/kinguser/bg;->cmd:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/kingroot/kinguser/cfp;

    .line 478
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 480
    if-nez v8, :cond_5

    .line 483
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingroot/kinguser/cfh;->cbE:Ljava/util/Map;

    monitor-enter v3

    .line 484
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/cfh;->cbE:Ljava/util/Map;

    move-object/from16 v0, p3

    iget v6, v0, Lcom/kingroot/kinguser/bg;->cmd:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Lcom/kingroot/kinguser/cfh$a;

    const/4 v9, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/kingroot/kinguser/cfh;->bYN:Lcom/kingroot/kinguser/cff;

    invoke-virtual {v8}, Lcom/kingroot/kinguser/cff;->fw()Lcom/kingroot/kinguser/cez$b;

    move-result-object v8

    iget-object v8, v8, Lcom/kingroot/kinguser/cez$b;->bZv:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    move-object/from16 v8, p0

    move-wide v12, v4

    move-object/from16 v14, p3

    invoke-direct/range {v7 .. v15}, Lcom/kingroot/kinguser/cfh$a;-><init>(Lcom/kingroot/kinguser/cfh;IJJLcom/kingroot/kinguser/bg;[B)V

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 487
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/cfh;->cav:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 488
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/cfh;->cav:Landroid/os/Handler;

    const/4 v3, 0x3

    const-wide/32 v4, 0x1b7740

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 489
    const-wide/16 v2, -0x1

    goto/16 :goto_0

    .line 478
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 485
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2

    .line 492
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/cfh;->bYN:Lcom/kingroot/kinguser/cff;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/cff;->fw()Lcom/kingroot/kinguser/cez$b;

    move-result-object v2

    iget-object v2, v2, Lcom/kingroot/kinguser/cez$b;->bZv:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    move-object/from16 v3, p0

    move-object/from16 v6, p3

    invoke-direct/range {v3 .. v8}, Lcom/kingroot/kinguser/cfh;->a(JLcom/kingroot/kinguser/bg;[BLcom/kingroot/kinguser/cfp;)V

    .line 494
    iget-object v2, v8, Lcom/kingroot/kinguser/cfp;->cdu:Ljava/lang/Object;

    if-eqz v2, :cond_6

    .line 495
    iget-object v2, v8, Lcom/kingroot/kinguser/cfp;->cdu:Ljava/lang/Object;

    check-cast v2, Lcom/kingroot/kinguser/cfh$b;

    iget-wide v2, v2, Lcom/kingroot/kinguser/cfh$b;->bVi:J

    goto/16 :goto_0

    .line 497
    :cond_6
    const-wide/16 v2, -0x1

    goto/16 :goto_0
.end method

.method public a(IILcom/qq/taf/jce/JceStruct;)Ljava/lang/ref/WeakReference;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/qq/taf/jce/JceStruct;",
            ")",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/kingroot/kinguser/ccn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 698
    invoke-static {}, Lcom/kingroot/kinguser/cfd;->alH()Lcom/kingroot/kinguser/cfi;

    move-result-object v0

    .line 703
    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Lcom/kingroot/kinguser/cfh$3;

    invoke-direct {v5, p0, p2}, Lcom/kingroot/kinguser/cfh$3;-><init>(Lcom/kingroot/kinguser/cfh;I)V

    move v1, p2

    move-object v2, p3

    invoke-interface/range {v0 .. v5}, Lcom/kingroot/kinguser/cfi;->a(ILcom/qq/taf/jce/JceStruct;Lcom/qq/taf/jce/JceStruct;ILcom/kingroot/kinguser/cci;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    return-object v0
.end method

.method public a(IJILcom/qq/taf/jce/JceStruct;I)Ljava/lang/ref/WeakReference;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJI",
            "Lcom/qq/taf/jce/JceStruct;",
            "I)",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/kingroot/kinguser/ccn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 668
    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/kingroot/kinguser/cfh;->a(IJILcom/qq/taf/jce/JceStruct;II)Ljava/lang/ref/WeakReference;

    move-result-object v0

    return-object v0
.end method

.method public a(IJILcom/qq/taf/jce/JceStruct;II)Ljava/lang/ref/WeakReference;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJI",
            "Lcom/qq/taf/jce/JceStruct;",
            "II)",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/kingroot/kinguser/ccn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 672
    new-instance v2, Lcom/kingroot/kinguser/ar;

    invoke-direct {v2}, Lcom/kingroot/kinguser/ar;-><init>()V

    .line 673
    move/from16 v0, p4

    iput v0, v2, Lcom/kingroot/kinguser/ar;->cmd:I

    .line 674
    move/from16 v0, p6

    iput v0, v2, Lcom/kingroot/kinguser/ar;->status:I

    .line 675
    if-eqz p5, :cond_0

    .line 676
    invoke-static/range {p5 .. p5}, Lcom/kingroot/kinguser/cew;->b(Lcom/qq/taf/jce/JceStruct;)[B

    move-result-object v3

    iput-object v3, v2, Lcom/kingroot/kinguser/ar;->iA:[B

    .line 680
    :cond_0
    invoke-static {v2}, Lcom/kingroot/kinguser/ceq;->a(Lcom/qq/taf/jce/JceStruct;)[B

    move-result-object v10

    .line 681
    new-instance v2, Lcom/kingroot/kinguser/cfh$c;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, -0x1

    const/16 v8, 0x44f

    const/4 v11, 0x0

    const/high16 v12, 0x40000000    # 2.0f

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v3, p0

    move-object/from16 v9, p5

    invoke-direct/range {v2 .. v14}, Lcom/kingroot/kinguser/cfh$c;-><init>(Lcom/kingroot/kinguser/cfh;IIJILcom/qq/taf/jce/JceStruct;[BLcom/qq/taf/jce/JceStruct;ILcom/kingroot/kinguser/cci;Lcom/kingroot/kinguser/ccj;)V

    .line 682
    move/from16 v0, p1

    iput v0, v2, Lcom/kingroot/kinguser/cfh$c;->bZA:I

    .line 683
    move-wide/from16 v0, p2

    iput-wide v0, v2, Lcom/kingroot/kinguser/cfh$c;->jW:J

    .line 684
    move/from16 v0, p7

    iput v0, v2, Lcom/kingroot/kinguser/cfh$c;->retCode:I

    .line 685
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingroot/kinguser/cfh;->cbF:Ljava/util/ArrayList;

    monitor-enter v3

    .line 686
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingroot/kinguser/cfh;->cbF:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 687
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 688
    sget-boolean v3, Lcom/kingroot/kinguser/cfd;->bZU:Z

    if-eqz v3, :cond_1

    .line 689
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingroot/kinguser/cfh;->cav:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 693
    :cond_1
    new-instance v3, Ljava/lang/ref/WeakReference;

    iget-object v2, v2, Lcom/kingroot/kinguser/cfh$c;->ccl:Lcom/kingroot/kinguser/ccn;

    invoke-direct {v3, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    return-object v3

    .line 687
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public a(JIIII)V
    .locals 15

    .prologue
    .line 733
    new-instance v2, Lcom/kingroot/kinguser/cfh$c;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    new-array v10, v3, [B

    const/4 v11, 0x0

    const/high16 v12, 0x40000000    # 2.0f

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v3, p0

    move/from16 v8, p3

    invoke-direct/range {v2 .. v14}, Lcom/kingroot/kinguser/cfh$c;-><init>(Lcom/kingroot/kinguser/cfh;IIJILcom/qq/taf/jce/JceStruct;[BLcom/qq/taf/jce/JceStruct;ILcom/kingroot/kinguser/cci;Lcom/kingroot/kinguser/ccj;)V

    .line 734
    move/from16 v0, p6

    iput v0, v2, Lcom/kingroot/kinguser/cfh$c;->retCode:I

    .line 735
    move/from16 v0, p5

    iput v0, v2, Lcom/kingroot/kinguser/cfh$c;->bZA:I

    .line 736
    move-wide/from16 v0, p1

    iput-wide v0, v2, Lcom/kingroot/kinguser/cfh$c;->jW:J

    .line 737
    iget-object v3, p0, Lcom/kingroot/kinguser/cfh;->cbF:Ljava/util/ArrayList;

    monitor-enter v3

    .line 738
    :try_start_0
    iget-object v4, p0, Lcom/kingroot/kinguser/cfh;->cbF:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 739
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 740
    sget-boolean v2, Lcom/kingroot/kinguser/cfd;->bZU:Z

    if-eqz v2, :cond_0

    .line 741
    iget-object v2, p0, Lcom/kingroot/kinguser/cfh;->cav:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 745
    :cond_0
    return-void

    .line 739
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public a(JILcom/qq/taf/jce/JceStruct;ILcom/kingroot/kinguser/cck;Z)V
    .locals 5

    .prologue
    .line 1458
    if-nez p6, :cond_1

    .line 1472
    :cond_0
    :goto_0
    return-void

    .line 1461
    :cond_1
    iget-object v1, p0, Lcom/kingroot/kinguser/cfh;->cbj:Ljava/util/TreeMap;

    monitor-enter v1

    .line 1462
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cfh;->cbj:Ljava/util/TreeMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/kingroot/kinguser/cfp;

    new-instance v4, Lcom/kingroot/kinguser/cfh$b;

    invoke-direct {v4, p7, p1, p2}, Lcom/kingroot/kinguser/cfh$b;-><init>(ZJ)V

    invoke-direct {v3, p4, p6, v4}, Lcom/kingroot/kinguser/cfp;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1463
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1466
    sget-boolean v0, Lcom/kingroot/kinguser/cfd;->bZU:Z

    if-eqz v0, :cond_0

    .line 1468
    iget-object v0, p0, Lcom/kingroot/kinguser/cfh;->cav:Landroid/os/Handler;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1463
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public aA(II)Lcom/kingroot/kinguser/cck;
    .locals 4

    .prologue
    .line 1497
    const/4 v0, 0x0

    .line 1498
    iget-object v1, p0, Lcom/kingroot/kinguser/cfh;->cbj:Ljava/util/TreeMap;

    monitor-enter v1

    .line 1499
    :try_start_0
    iget-object v2, p0, Lcom/kingroot/kinguser/cfh;->cbj:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1500
    iget-object v0, p0, Lcom/kingroot/kinguser/cfh;->cbj:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/cfp;

    .line 1501
    iget-object v0, v0, Lcom/kingroot/kinguser/cfp;->second:Ljava/lang/Object;

    check-cast v0, Lcom/kingroot/kinguser/cck;

    .line 1503
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1504
    return-object v0

    .line 1503
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public aka()I
    .locals 1

    .prologue
    .line 1175
    const/4 v0, 0x1

    return v0
.end method

.method public alL()Lcom/kingroot/kinguser/ceu;
    .locals 1

    .prologue
    .line 1259
    iget-object v0, p0, Lcom/kingroot/kinguser/cfh;->bYt:Lcom/kingroot/kinguser/ceu;

    return-object v0
.end method

.method public alM()V
    .locals 1

    .prologue
    .line 1523
    sget-boolean v0, Lcom/kingroot/kinguser/cfd;->bZU:Z

    if-eqz v0, :cond_1

    .line 1524
    iget-object v0, p0, Lcom/kingroot/kinguser/cfh;->bYN:Lcom/kingroot/kinguser/cff;

    if-eqz v0, :cond_0

    .line 1525
    iget-object v0, p0, Lcom/kingroot/kinguser/cfh;->bYN:Lcom/kingroot/kinguser/cff;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cff;->alM()V

    .line 1530
    :cond_0
    :goto_0
    return-void

    .line 1528
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/cfh;->cbN:Z

    goto :goto_0
.end method

.method public alN()V
    .locals 1

    .prologue
    .line 1533
    sget-boolean v0, Lcom/kingroot/kinguser/cfd;->bZU:Z

    if-eqz v0, :cond_0

    .line 1534
    iget-object v0, p0, Lcom/kingroot/kinguser/cfh;->bYN:Lcom/kingroot/kinguser/cff;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cff;->alN()V

    .line 1538
    :goto_0
    return-void

    .line 1536
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/cfh;->cbO:Z

    goto :goto_0
.end method

.method public alX()Z
    .locals 1

    .prologue
    .line 405
    iget-boolean v0, p0, Lcom/kingroot/kinguser/cfh;->yb:Z

    return v0
.end method

.method alY()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 650
    sget-boolean v0, Lcom/kingroot/kinguser/cfd;->bZU:Z

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lcom/kingroot/kinguser/cfh;->cav:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 652
    iget-object v0, p0, Lcom/kingroot/kinguser/cfh;->cav:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 656
    :goto_0
    return-void

    .line 654
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/cfh;->cbQ:Z

    goto :goto_0
.end method

.method public alZ()V
    .locals 1

    .prologue
    .line 1478
    sget-boolean v0, Lcom/kingroot/kinguser/cfd;->bZU:Z

    if-eqz v0, :cond_0

    .line 1479
    iget-object v0, p0, Lcom/kingroot/kinguser/cfh;->bYN:Lcom/kingroot/kinguser/cff;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cff;->alK()Lcom/kingroot/kinguser/cfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cfo;->alZ()V

    .line 1483
    :goto_0
    return-void

    .line 1481
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/cfh;->cbL:Z

    goto :goto_0
.end method

.method public amb()V
    .locals 1

    .prologue
    .line 1545
    iget-boolean v0, p0, Lcom/kingroot/kinguser/cfh;->yb:Z

    if-nez v0, :cond_0

    .line 1554
    :goto_0
    return-void

    .line 1549
    :cond_0
    sget-boolean v0, Lcom/kingroot/kinguser/cfd;->bZU:Z

    if-eqz v0, :cond_1

    .line 1550
    iget-object v0, p0, Lcom/kingroot/kinguser/cfh;->bYN:Lcom/kingroot/kinguser/cff;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cff;->alK()Lcom/kingroot/kinguser/cfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cfo;->amb()V

    goto :goto_0

    .line 1552
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/cfh;->cbS:Z

    goto :goto_0
.end method

.method public amc()V
    .locals 1

    .prologue
    .line 1561
    iget-boolean v0, p0, Lcom/kingroot/kinguser/cfh;->yb:Z

    if-nez v0, :cond_0

    .line 1570
    :goto_0
    return-void

    .line 1565
    :cond_0
    sget-boolean v0, Lcom/kingroot/kinguser/cfd;->bZU:Z

    if-eqz v0, :cond_1

    .line 1566
    iget-object v0, p0, Lcom/kingroot/kinguser/cfh;->bYN:Lcom/kingroot/kinguser/cff;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cff;->alK()Lcom/kingroot/kinguser/cfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cfo;->amc()V

    goto :goto_0

    .line 1568
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/cfh;->cbT:Z

    goto :goto_0
.end method

.method public b(ZILcom/kingroot/kinguser/bg;)J
    .locals 12

    .prologue
    .line 561
    if-eqz p3, :cond_0

    invoke-static {p3}, Lcom/kingroot/kinguser/cfh;->c(Lcom/kingroot/kinguser/bg;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 562
    :cond_0
    const-wide/16 v0, -0x1

    .line 600
    :goto_0
    return-wide v0

    .line 568
    :cond_1
    iget v0, p3, Lcom/kingroot/kinguser/bg;->retCode:I

    if-eqz v0, :cond_2

    .line 574
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 578
    :cond_2
    iget-object v1, p0, Lcom/kingroot/kinguser/cfh;->cbj:Ljava/util/TreeMap;

    monitor-enter v1

    .line 580
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cfh;->cbj:Ljava/util/TreeMap;

    iget v2, p3, Lcom/kingroot/kinguser/bg;->cmd:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/kingroot/kinguser/cfp;

    .line 581
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 583
    if-nez v6, :cond_3

    .line 586
    iget-object v10, p0, Lcom/kingroot/kinguser/cfh;->cbE:Ljava/util/Map;

    monitor-enter v10

    .line 587
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/cfh;->cbE:Ljava/util/Map;

    iget v1, p3, Lcom/kingroot/kinguser/bg;->cmd:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    new-instance v1, Lcom/kingroot/kinguser/cfh$a;

    const/4 v3, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    iget-object v2, p0, Lcom/kingroot/kinguser/cfh;->bYN:Lcom/kingroot/kinguser/cff;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/cff;->fw()Lcom/kingroot/kinguser/cez$b;

    move-result-object v2

    iget-object v2, v2, Lcom/kingroot/kinguser/cez$b;->bZv:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    move-object v2, p0

    move-object v8, p3

    invoke-direct/range {v1 .. v9}, Lcom/kingroot/kinguser/cfh$a;-><init>(Lcom/kingroot/kinguser/cfh;IJJLcom/kingroot/kinguser/bg;[B)V

    invoke-interface {v0, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 590
    iget-object v0, p0, Lcom/kingroot/kinguser/cfh;->cav:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 591
    iget-object v0, p0, Lcom/kingroot/kinguser/cfh;->cav:Landroid/os/Handler;

    const/4 v1, 0x3

    const-wide/32 v2, 0x1b7740

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 592
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 581
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 588
    :catchall_1
    move-exception v0

    monitor-exit v10

    throw v0

    .line 595
    :cond_3
    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/kingroot/kinguser/cfh;->bYN:Lcom/kingroot/kinguser/cff;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cff;->fw()Lcom/kingroot/kinguser/cez$b;

    move-result-object v0

    iget-object v0, v0, Lcom/kingroot/kinguser/cez$b;->bZv:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    move-object v1, p0

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/kingroot/kinguser/cfh;->b(JLcom/kingroot/kinguser/bg;[BLcom/kingroot/kinguser/cfp;)V

    .line 597
    iget-object v0, v6, Lcom/kingroot/kinguser/cfp;->cdu:Ljava/lang/Object;

    if-eqz v0, :cond_4

    .line 598
    iget-object v0, v6, Lcom/kingroot/kinguser/cfp;->cdu:Ljava/lang/Object;

    check-cast v0, Lcom/kingroot/kinguser/cfh$b;

    iget-wide v0, v0, Lcom/kingroot/kinguser/cfh$b;->bVi:J

    goto :goto_0

    .line 600
    :cond_4
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public b(IIIJJILcom/qq/taf/jce/JceStruct;[BLcom/qq/taf/jce/JceStruct;ILcom/kingroot/kinguser/cci;Lcom/kingroot/kinguser/ccj;JJ)Ljava/lang/ref/WeakReference;
    .locals 15
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
    .line 1425
    if-lez p3, :cond_0

    .line 1426
    const/4 v8, 0x1

    move-object v2, p0

    move/from16 v3, p3

    move-wide/from16 v4, p4

    move/from16 v6, p8

    move-object/from16 v7, p9

    invoke-virtual/range {v2 .. v8}, Lcom/kingroot/kinguser/cfh;->a(IJILcom/qq/taf/jce/JceStruct;I)Ljava/lang/ref/WeakReference;

    move-result-object v2

    .line 1446
    :goto_0
    return-object v2

    .line 1429
    :cond_0
    new-instance v2, Lcom/kingroot/kinguser/cfh$c;

    move-object v3, p0

    move/from16 v4, p1

    move/from16 v5, p2

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    invoke-direct/range {v2 .. v14}, Lcom/kingroot/kinguser/cfh$c;-><init>(Lcom/kingroot/kinguser/cfh;IIJILcom/qq/taf/jce/JceStruct;[BLcom/qq/taf/jce/JceStruct;ILcom/kingroot/kinguser/cci;Lcom/kingroot/kinguser/ccj;)V

    .line 1430
    invoke-static {}, Lcom/kingroot/kinguser/cfb;->aly()Lcom/kingroot/kinguser/cet;

    move-result-object v3

    invoke-interface {v3}, Lcom/kingroot/kinguser/cet;->alo()I

    move-result v3

    iput v3, v2, Lcom/kingroot/kinguser/cfh$c;->bZA:I

    .line 1431
    move-wide/from16 v0, p15

    iput-wide v0, v2, Lcom/kingroot/kinguser/cfh$c;->ccm:J

    .line 1432
    move-wide/from16 v0, p17

    iput-wide v0, v2, Lcom/kingroot/kinguser/cfh$c;->ccn:J

    .line 1433
    iget-object v3, p0, Lcom/kingroot/kinguser/cfh;->cbF:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1434
    :try_start_0
    iget-object v4, p0, Lcom/kingroot/kinguser/cfh;->cbF:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1435
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1437
    invoke-static {}, Lcom/kingroot/kinguser/cfc;->alC()Lcom/kingroot/kinguser/cfc;

    move-result-object v3

    iget v4, v2, Lcom/kingroot/kinguser/cfh$c;->bZA:I

    const/4 v5, 0x0

    move-wide/from16 v0, p15

    invoke-virtual {v3, v4, v0, v1, v5}, Lcom/kingroot/kinguser/cfc;->b(IJLjava/lang/String;)V

    .line 1439
    sget-boolean v3, Lcom/kingroot/kinguser/cfd;->bZU:Z

    if-eqz v3, :cond_1

    .line 1440
    iget-object v3, p0, Lcom/kingroot/kinguser/cfh;->cav:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1446
    :cond_1
    new-instance v3, Ljava/lang/ref/WeakReference;

    iget-object v2, v2, Lcom/kingroot/kinguser/cfh$c;->ccl:Lcom/kingroot/kinguser/ccn;

    invoke-direct {v3, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object v2, v3

    goto :goto_0

    .line 1435
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public c(Lcom/kingroot/kinguser/ceu;)V
    .locals 1

    .prologue
    .line 1229
    iput-object p1, p0, Lcom/kingroot/kinguser/cfh;->bYt:Lcom/kingroot/kinguser/ceu;

    .line 1230
    iget-object v0, p0, Lcom/kingroot/kinguser/cfh;->bYt:Lcom/kingroot/kinguser/ceu;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ceu;->fI()Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/cfh;->yb:Z

    .line 1231
    return-void
.end method

.method public e(ZLjava/lang/String;)V
    .locals 7

    .prologue
    .line 1203
    invoke-static {p1}, Lcom/kingroot/kinguser/cfd;->eV(Z)V

    .line 1204
    new-instance v0, Lcom/kingroot/kinguser/cff;

    invoke-static {}, Ltmsdk/common/TMSDKContext;->akS()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/cfh;->bYt:Lcom/kingroot/kinguser/ceu;

    move-object v3, p0

    move-object v4, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/kingroot/kinguser/cff;-><init>(Landroid/content/Context;Lcom/kingroot/kinguser/ceu;Lcom/kingroot/kinguser/cff$b;Lcom/kingroot/kinguser/cff$c;ZLjava/lang/String;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/cfh;->bYN:Lcom/kingroot/kinguser/cff;

    .line 1206
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/cfh;->cam:Ljava/util/concurrent/ExecutorService;

    .line 1209
    iget-boolean v0, p0, Lcom/kingroot/kinguser/cfh;->yb:Z

    if-eqz v0, :cond_0

    .line 1210
    invoke-static {}, Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;->alR()Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/cfh$4;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/cfh$4;-><init>(Lcom/kingroot/kinguser/cfh;)V

    invoke-virtual {v0, v1}, Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver;->a(Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver$b;)V

    .line 1217
    invoke-static {}, Lcom/kingroot/kinguser/cey;->alt()Lcom/kingroot/kinguser/cey;

    .line 1219
    invoke-static {}, Lcom/kingroot/kinguser/cfc;->alC()Lcom/kingroot/kinguser/cfc;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/cfh;->bYt:Lcom/kingroot/kinguser/ceu;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/cfc;->b(Lcom/kingroot/kinguser/ceu;)V

    .line 1221
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cfh;->cav:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1222
    return-void
.end method

.method public getGuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1267
    iget-object v0, p0, Lcom/kingroot/kinguser/cfh;->bYN:Lcom/kingroot/kinguser/cff;

    if-nez v0, :cond_0

    .line 1268
    const-string v0, ""

    .line 1271
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cfh;->bYN:Lcom/kingroot/kinguser/cff;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cff;->getGuid()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public m(III)V
    .locals 2

    .prologue
    .line 1486
    sget-boolean v0, Lcom/kingroot/kinguser/cfd;->bZU:Z

    if-eqz v0, :cond_0

    .line 1487
    iget-object v0, p0, Lcom/kingroot/kinguser/cfh;->bYN:Lcom/kingroot/kinguser/cff;

    invoke-virtual {v0, p1, p2, p3}, Lcom/kingroot/kinguser/cff;->m(III)V

    .line 1494
    :goto_0
    return-void

    .line 1489
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cfh;->cbP:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    .line 1490
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/cfh;->cbP:Ljava/util/LinkedList;

    .line 1492
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/cfh;->cbP:Ljava/util/LinkedList;

    new-instance v1, Lcom/kingroot/kinguser/cex;

    invoke-direct {v1, p1, p2, p3}, Lcom/kingroot/kinguser/cex;-><init>(III)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onReady()V
    .locals 1

    .prologue
    .line 1395
    sget-boolean v0, Lcom/kingroot/kinguser/cfd;->bZU:Z

    if-eqz v0, :cond_1

    .line 1396
    iget-object v0, p0, Lcom/kingroot/kinguser/cfh;->bYN:Lcom/kingroot/kinguser/cff;

    if-nez v0, :cond_0

    .line 1403
    :goto_0
    return-void

    .line 1399
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cfh;->bYN:Lcom/kingroot/kinguser/cff;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cff;->onReady()V

    goto :goto_0

    .line 1401
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/cfh;->cbK:Z

    goto :goto_0
.end method

.method public refresh()V
    .locals 1

    .prologue
    .line 1251
    sget-boolean v0, Lcom/kingroot/kinguser/cfd;->bZU:Z

    if-eqz v0, :cond_0

    .line 1252
    iget-object v0, p0, Lcom/kingroot/kinguser/cfh;->bYN:Lcom/kingroot/kinguser/cff;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cff;->refresh()V

    .line 1256
    :goto_0
    return-void

    .line 1254
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/cfh;->cbI:Z

    goto :goto_0
.end method
