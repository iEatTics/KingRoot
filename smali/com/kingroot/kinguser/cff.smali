.class public Lcom/kingroot/kinguser/cff;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/cfo$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/cff$d;,
        Lcom/kingroot/kinguser/cff$c;,
        Lcom/kingroot/kinguser/cff$b;,
        Lcom/kingroot/kinguser/cff$a;
    }
.end annotation


# instance fields
.field private final avz:Ljava/lang/Object;

.field private bYW:Lcom/kingroot/kinguser/ceu;

.field private cad:Lcom/kingroot/kinguser/cfl;

.field private cae:Lcom/kingroot/kinguser/cez;

.field private caf:Lcom/kingroot/kinguser/cer;

.field private cag:Lcom/kingroot/kinguser/cfq;

.field private cah:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/kingroot/kinguser/cgf;",
            ">;"
        }
    .end annotation
.end field

.field private cai:Lcom/kingroot/kinguser/cff$d;

.field private caj:Lcom/kingroot/kinguser/cff$d;

.field private cak:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/cff$d;",
            ">;"
        }
    .end annotation
.end field

.field private cal:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/kingroot/kinguser/cff$d;",
            ">;"
        }
    .end annotation
.end field

.field private cam:Ljava/util/concurrent/ExecutorService;

.field private can:Z

.field private cao:J

.field private cap:Z

.field private caq:Z

.field private car:J

.field private cas:J

.field private cat:Lcom/kingroot/kinguser/cff$b;

.field private cau:Lcom/kingroot/kinguser/cfl$a;

.field private cav:Landroid/os/Handler;

.field private caw:J

.field private cax:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/kingroot/kinguser/ceu;Lcom/kingroot/kinguser/cff$b;Lcom/kingroot/kinguser/cff$c;ZLjava/lang/String;)V
    .locals 10

    .prologue
    .line 841
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/cff;->cah:Landroid/util/SparseArray;

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/cff;->avz:Ljava/lang/Object;

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/cff;->cai:Lcom/kingroot/kinguser/cff$d;

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/cff;->caj:Lcom/kingroot/kinguser/cff$d;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/cff;->cak:Ljava/util/ArrayList;

    .line 84
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/cff;->cal:Ljava/util/LinkedHashMap;

    .line 88
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingroot/kinguser/cff;->cao:J

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/cff;->cap:Z

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/cff;->caq:Z

    .line 91
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingroot/kinguser/cff;->car:J

    .line 92
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingroot/kinguser/cff;->cas:J

    .line 96
    new-instance v0, Lcom/kingroot/kinguser/cff$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/cff$1;-><init>(Lcom/kingroot/kinguser/cff;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/cff;->cau:Lcom/kingroot/kinguser/cfl$a;

    .line 231
    new-instance v0, Lcom/kingroot/kinguser/cff$2;

    invoke-static {}, Lcom/kingroot/kinguser/cfd;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/kingroot/kinguser/cff$2;-><init>(Lcom/kingroot/kinguser/cff;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/cff;->cav:Landroid/os/Handler;

    .line 624
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingroot/kinguser/cff;->caw:J

    .line 717
    new-instance v0, Lcom/kingroot/kinguser/cff$3;

    invoke-static {}, Lcom/kingroot/kinguser/cfd;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/kingroot/kinguser/cff$3;-><init>(Lcom/kingroot/kinguser/cff;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/cff;->cax:Landroid/os/Handler;

    .line 843
    iput-object p1, p0, Lcom/kingroot/kinguser/cff;->mContext:Landroid/content/Context;

    .line 844
    iput-object p2, p0, Lcom/kingroot/kinguser/cff;->bYW:Lcom/kingroot/kinguser/ceu;

    .line 845
    iput-object p3, p0, Lcom/kingroot/kinguser/cff;->cat:Lcom/kingroot/kinguser/cff$b;

    .line 846
    new-instance v0, Lcom/kingroot/kinguser/cez;

    invoke-direct {v0, p1, p0}, Lcom/kingroot/kinguser/cez;-><init>(Landroid/content/Context;Lcom/kingroot/kinguser/cff;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/cff;->cae:Lcom/kingroot/kinguser/cez;

    .line 847
    new-instance v0, Lcom/kingroot/kinguser/cer;

    invoke-direct {v0, p1, p0, p5}, Lcom/kingroot/kinguser/cer;-><init>(Landroid/content/Context;Lcom/kingroot/kinguser/cff;Z)V

    iput-object v0, p0, Lcom/kingroot/kinguser/cff;->caf:Lcom/kingroot/kinguser/cer;

    .line 848
    new-instance v0, Lcom/kingroot/kinguser/cfq;

    invoke-direct {v0, p1, p0, p5}, Lcom/kingroot/kinguser/cfq;-><init>(Landroid/content/Context;Lcom/kingroot/kinguser/cff;Z)V

    iput-object v0, p0, Lcom/kingroot/kinguser/cff;->cag:Lcom/kingroot/kinguser/cfq;

    .line 849
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/cff;->cam:Ljava/util/concurrent/ExecutorService;

    .line 850
    new-instance v0, Lcom/kingroot/kinguser/cfl;

    iget-object v1, p0, Lcom/kingroot/kinguser/cff;->bYW:Lcom/kingroot/kinguser/ceu;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/ceu;->fI()Z

    move-result v1

    iget-object v5, p0, Lcom/kingroot/kinguser/cff;->cau:Lcom/kingroot/kinguser/cfl$a;

    move-object v2, p1

    move-object v3, p2

    move v4, p5

    move-object v6, p0

    move-object v7, p4

    move-object v8, p0

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/kingroot/kinguser/cfl;-><init>(ZLandroid/content/Context;Lcom/kingroot/kinguser/ceu;ZLcom/kingroot/kinguser/cfl$a;Lcom/kingroot/kinguser/cfo$d;Lcom/kingroot/kinguser/cff$c;Lcom/kingroot/kinguser/cff;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/cff;->cad:Lcom/kingroot/kinguser/cfl;

    .line 853
    iget-object v0, p0, Lcom/kingroot/kinguser/cff;->bYW:Lcom/kingroot/kinguser/ceu;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ceu;->fI()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 854
    invoke-direct {p0, p4}, Lcom/kingroot/kinguser/cff;->a(Lcom/kingroot/kinguser/cff$c;)V

    .line 856
    iget-object v0, p0, Lcom/kingroot/kinguser/cff;->cag:Lcom/kingroot/kinguser/cfq;

    invoke-virtual {v0, p4}, Lcom/kingroot/kinguser/cfq;->c(Lcom/kingroot/kinguser/cff$c;)V

    .line 857
    invoke-direct {p0}, Lcom/kingroot/kinguser/cff;->alI()V

    .line 858
    invoke-direct {p0}, Lcom/kingroot/kinguser/cff;->alJ()V

    .line 860
    :cond_0
    return-void
.end method

.method private static G(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/bg;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1364
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 1379
    :cond_0
    :goto_0
    return-void

    .line 1368
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bg;

    .line 1369
    if-eqz v0, :cond_2

    .line 1373
    iget v0, v0, Lcom/kingroot/kinguser/bg;->retCode:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 1375
    invoke-static {}, Lcom/kingroot/kinguser/ceq;->akZ()V

    goto :goto_0
.end method

.method private H(Ljava/util/ArrayList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/bg;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1387
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v0, v2, :cond_1

    :cond_0
    move v0, v1

    .line 1403
    :goto_0
    return v0

    .line 1391
    :cond_1
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bg;

    .line 1392
    if-nez v0, :cond_2

    move v0, v1

    .line 1393
    goto :goto_0

    .line 1397
    :cond_2
    const/4 v3, 0x2

    iget v0, v0, Lcom/kingroot/kinguser/bg;->retCode:I

    if-ne v3, v0, :cond_3

    move v0, v2

    .line 1398
    :goto_1
    if-nez v0, :cond_4

    move v0, v1

    .line 1399
    goto :goto_0

    :cond_3
    move v0, v1

    .line 1397
    goto :goto_1

    :cond_4
    move v0, v2

    .line 1403
    goto :goto_0
.end method

.method static synthetic I(Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 48
    invoke-static {p0}, Lcom/kingroot/kinguser/cff;->G(Ljava/util/ArrayList;)V

    return-void
.end method

.method private Rd()V
    .locals 3

    .prologue
    .line 661
    iget-object v0, p0, Lcom/kingroot/kinguser/cff;->bYW:Lcom/kingroot/kinguser/ceu;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ceu;->fL()Ljava/lang/String;

    move-result-object v0

    .line 662
    iget-object v1, p0, Lcom/kingroot/kinguser/cff;->bYW:Lcom/kingroot/kinguser/ceu;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/ceu;->fM()Ljava/lang/String;

    move-result-object v1

    .line 664
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 668
    invoke-virtual {p0}, Lcom/kingroot/kinguser/cff;->alM()V

    .line 678
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cff;->bYW:Lcom/kingroot/kinguser/ceu;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ceu;->fV()Ljava/lang/String;

    move-result-object v0

    .line 679
    iget-object v1, p0, Lcom/kingroot/kinguser/cff;->bYW:Lcom/kingroot/kinguser/ceu;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/ceu;->fW()Ljava/lang/String;

    move-result-object v1

    .line 681
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 685
    invoke-virtual {p0}, Lcom/kingroot/kinguser/cff;->alN()V

    .line 693
    :cond_1
    :goto_1
    return-void

    .line 669
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 672
    iget-object v1, p0, Lcom/kingroot/kinguser/cff;->bYW:Lcom/kingroot/kinguser/ceu;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/ceu;->cf(Ljava/lang/String;)V

    goto :goto_0

    .line 686
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 689
    iget-object v1, p0, Lcom/kingroot/kinguser/cff;->bYW:Lcom/kingroot/kinguser/ceu;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/kingroot/kinguser/ceu;->i(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/kingroot/kinguser/cff;J)J
    .locals 1

    .prologue
    .line 48
    iput-wide p1, p0, Lcom/kingroot/kinguser/cff;->car:J

    return-wide p1
.end method

.method private a(JILcom/kingroot/kinguser/ao;)Lcom/kingroot/kinguser/cfp;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Lcom/kingroot/kinguser/ao;",
            ")",
            "Lcom/kingroot/kinguser/cfp",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Lcom/qq/taf/jce/JceStruct;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1426
    if-nez p4, :cond_0

    .line 1428
    const/4 v0, 0x0

    .line 1441
    :goto_0
    return-object v0

    .line 1432
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cff;->cad:Lcom/kingroot/kinguser/cfl;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cfl;->amq()Lcom/kingroot/kinguser/cfu;

    move-result-object v0

    .line 1433
    if-eqz v0, :cond_1

    .line 1434
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/kingroot/kinguser/cfu;->a(JILcom/qq/taf/jce/JceStruct;)V

    .line 1439
    :cond_1
    new-instance v1, Lcom/kingroot/kinguser/ak;

    invoke-direct {v1}, Lcom/kingroot/kinguser/ak;-><init>()V

    .line 1440
    iget v0, p4, Lcom/kingroot/kinguser/ao;->hr:I

    iput v0, v1, Lcom/kingroot/kinguser/ak;->hr:I

    .line 1441
    new-instance v0, Lcom/kingroot/kinguser/cfp;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v3, 0x9c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v2, v3, v1}, Lcom/kingroot/kinguser/cfp;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/cff;JILcom/kingroot/kinguser/ao;)Lcom/kingroot/kinguser/cfp;
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/kingroot/kinguser/cff;->a(JILcom/kingroot/kinguser/ao;)Lcom/kingroot/kinguser/cfp;

    move-result-object v0

    return-object v0
.end method

.method private final a(Lcom/kingroot/kinguser/cff$d;ZLcom/kingroot/kinguser/bh;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kingroot/kinguser/cff$d;",
            "Z",
            "Lcom/kingroot/kinguser/bh;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/bg;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/bg;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1329
    if-nez p4, :cond_0

    .line 1330
    const/4 v0, 0x0

    .line 1353
    :goto_0
    return-object v0

    .line 1333
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1334
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1336
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_3

    .line 1337
    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bg;

    .line 1338
    if-nez v0, :cond_2

    .line 1336
    :cond_1
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 1346
    :cond_2
    invoke-direct {p0, p2, p3, v0}, Lcom/kingroot/kinguser/cff;->a(ZLcom/kingroot/kinguser/bh;Lcom/kingroot/kinguser/bg;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1347
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    move-object v0, v1

    .line 1353
    goto :goto_0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/cff;Lcom/kingroot/kinguser/cff$d;ZLcom/kingroot/kinguser/bh;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/kingroot/kinguser/cff;->a(Lcom/kingroot/kinguser/cff$d;ZLcom/kingroot/kinguser/bh;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/cff;)Ljava/util/LinkedHashMap;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/kingroot/kinguser/cff;->cal:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method private a(Lcom/kingroot/kinguser/cff$c;)V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 863
    new-instance v7, Lcom/kingroot/kinguser/cff$4;

    invoke-direct {v7, p0}, Lcom/kingroot/kinguser/cff$4;-><init>(Lcom/kingroot/kinguser/cff;)V

    .line 881
    const-wide/16 v2, 0x0

    const/16 v4, 0x27ab

    new-instance v5, Lcom/kingroot/kinguser/ao;

    invoke-direct {v5}, Lcom/kingroot/kinguser/ao;-><init>()V

    move-object v1, p1

    move v8, v6

    invoke-interface/range {v1 .. v8}, Lcom/kingroot/kinguser/cff$c;->a(JILcom/qq/taf/jce/JceStruct;ILcom/kingroot/kinguser/cck;Z)V

    .line 883
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/cff;I)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/cff;->li(I)V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/cff;Lcom/kingroot/kinguser/cff$d;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/cff;->c(Lcom/kingroot/kinguser/cff$d;)V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/cff;ZILcom/kingroot/kinguser/cff$d;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/kingroot/kinguser/cff;->a(ZILcom/kingroot/kinguser/cff$d;)V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/cff;ZLcom/kingroot/kinguser/cff$d;IILjava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct/range {p0 .. p5}, Lcom/kingroot/kinguser/cff;->a(ZLcom/kingroot/kinguser/cff$d;IILjava/util/ArrayList;)V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/cff;ZZI)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/kingroot/kinguser/cff;->a(ZZI)V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/cff;ZZLcom/kingroot/kinguser/cff$d;IILcom/kingroot/kinguser/bg;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct/range {p0 .. p6}, Lcom/kingroot/kinguser/cff;->a(ZZLcom/kingroot/kinguser/cff$d;IILcom/kingroot/kinguser/bg;)V

    return-void
.end method

.method private a(ZILcom/kingroot/kinguser/cff$d;)V
    .locals 7

    .prologue
    .line 1066
    if-nez p3, :cond_1

    .line 1102
    :cond_0
    return-void

    .line 1072
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1074
    iget-object v1, p0, Lcom/kingroot/kinguser/cff;->cai:Lcom/kingroot/kinguser/cff$d;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/kingroot/kinguser/cff;->cai:Lcom/kingroot/kinguser/cff$d;

    iget v1, v1, Lcom/kingroot/kinguser/cff$d;->caN:I

    iget v2, p3, Lcom/kingroot/kinguser/cff$d;->caN:I

    if-ne v1, v2, :cond_2

    .line 1077
    iget-object v1, p0, Lcom/kingroot/kinguser/cff;->cai:Lcom/kingroot/kinguser/cff$d;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1078
    iget-object v1, p0, Lcom/kingroot/kinguser/cff;->cai:Lcom/kingroot/kinguser/cff$d;

    iget v1, v1, Lcom/kingroot/kinguser/cff$d;->caN:I

    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/cff;->lj(I)Lcom/kingroot/kinguser/cff$d;

    .line 1099
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingroot/kinguser/cff$d;

    .line 1100
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/kingroot/kinguser/cff;->a(ZLcom/kingroot/kinguser/cff$d;IILjava/util/ArrayList;)V

    goto :goto_1

    .line 1079
    :cond_2
    iget-object v1, p0, Lcom/kingroot/kinguser/cff;->caj:Lcom/kingroot/kinguser/cff$d;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/kingroot/kinguser/cff;->caj:Lcom/kingroot/kinguser/cff$d;

    iget v1, v1, Lcom/kingroot/kinguser/cff$d;->caN:I

    iget v2, p3, Lcom/kingroot/kinguser/cff$d;->caN:I

    if-ne v1, v2, :cond_3

    .line 1082
    iget-object v1, p0, Lcom/kingroot/kinguser/cff;->caj:Lcom/kingroot/kinguser/cff$d;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1083
    iget-object v1, p0, Lcom/kingroot/kinguser/cff;->caj:Lcom/kingroot/kinguser/cff$d;

    iget v1, v1, Lcom/kingroot/kinguser/cff$d;->caN:I

    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/cff;->lj(I)Lcom/kingroot/kinguser/cff$d;

    goto :goto_0

    .line 1087
    :cond_3
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1088
    iget v1, p3, Lcom/kingroot/kinguser/cff$d;->caN:I

    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/cff;->lj(I)Lcom/kingroot/kinguser/cff$d;

    .line 1091
    iget-object v1, p0, Lcom/kingroot/kinguser/cff;->cak:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1093
    :try_start_0
    iget-object v2, p0, Lcom/kingroot/kinguser/cff;->cak:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1094
    iget-object v2, p0, Lcom/kingroot/kinguser/cff;->cak:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1095
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(ZLcom/kingroot/kinguser/cff$d;IILjava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/kingroot/kinguser/cff$d;",
            "II",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/bg;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1163
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/kingroot/kinguser/cff;->a(ZZLcom/kingroot/kinguser/cff$d;IILjava/util/ArrayList;)V

    .line 1164
    return-void
.end method

.method private a(ZZI)V
    .locals 7

    .prologue
    .line 1113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1115
    iget-object v1, p0, Lcom/kingroot/kinguser/cff;->cal:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 1117
    :try_start_0
    iget-object v2, p0, Lcom/kingroot/kinguser/cff;->cal:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1118
    iget-object v2, p0, Lcom/kingroot/kinguser/cff;->cal:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->clear()V

    .line 1119
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1121
    iget-object v1, p0, Lcom/kingroot/kinguser/cff;->cak:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1123
    :try_start_1
    iget-object v2, p0, Lcom/kingroot/kinguser/cff;->cak:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1124
    iget-object v2, p0, Lcom/kingroot/kinguser/cff;->cak:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1125
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1127
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingroot/kinguser/cff$d;

    .line 1128
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/kingroot/kinguser/cff;->a(ZLcom/kingroot/kinguser/cff$d;IILjava/util/ArrayList;)V

    goto :goto_0

    .line 1119
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1125
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1130
    :cond_0
    return-void
.end method

.method private a(ZZLcom/kingroot/kinguser/cff$d;IILcom/kingroot/kinguser/bg;)V
    .locals 7

    .prologue
    .line 1169
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1170
    invoke-virtual {v6, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 1171
    invoke-direct/range {v0 .. v6}, Lcom/kingroot/kinguser/cff;->a(ZZLcom/kingroot/kinguser/cff$d;IILjava/util/ArrayList;)V

    .line 1172
    return-void
.end method

.method private a(ZZLcom/kingroot/kinguser/cff$d;IILjava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lcom/kingroot/kinguser/cff$d;",
            "II",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/bg;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1187
    if-eqz p3, :cond_2

    .line 1188
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p3, Lcom/kingroot/kinguser/cff$d;->caQ:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p3, Lcom/kingroot/kinguser/cff$d;->caQ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 1189
    :cond_0
    iget v0, p3, Lcom/kingroot/kinguser/cff$d;->caN:I

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/cff;->lj(I)Lcom/kingroot/kinguser/cff$d;

    .line 1192
    :cond_1
    iget-object v0, p3, Lcom/kingroot/kinguser/cff$d;->caR:Lcom/kingroot/kinguser/cff$a;

    invoke-interface {v0, p2, p4, p5, p6}, Lcom/kingroot/kinguser/cff$a;->a(ZIILjava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1197
    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/cff;Ljava/util/ArrayList;)Z
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/cff;->H(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/cff;Z)Z
    .locals 0

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/kingroot/kinguser/cff;->can:Z

    return p1
.end method

.method private a(ZLcom/kingroot/kinguser/bh;Lcom/kingroot/kinguser/bg;)Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    const v6, 0x10005

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1200
    if-nez p3, :cond_0

    .line 1221
    :goto_0
    return v2

    .line 1205
    :cond_0
    invoke-static {p3}, Lcom/kingroot/kinguser/cfh;->b(Lcom/kingroot/kinguser/bg;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1206
    iget-object v0, p0, Lcom/kingroot/kinguser/cff;->cat:Lcom/kingroot/kinguser/cff$b;

    iget v3, p2, Lcom/kingroot/kinguser/bh;->seqNo:I

    invoke-interface {v0, p1, v3, p3}, Lcom/kingroot/kinguser/cff$b;->a(ZILcom/kingroot/kinguser/bg;)J

    .line 1207
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "[ocean]guid|"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/kingroot/kinguser/cff;->caf:Lcom/kingroot/kinguser/cer;

    invoke-virtual {v3}, Lcom/kingroot/kinguser/cer;->getGuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "|push|\u901a\u9053|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_1

    const-string v0, "tcp|"

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "sharkSeqNo|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p2, Lcom/kingroot/kinguser/bh;->seqNo:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "|ECmd|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p3, Lcom/kingroot/kinguser/bg;->cmd:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "|seqNo|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p3, Lcom/kingroot/kinguser/bg;->seqNo:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "|refSeqNo|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p3, Lcom/kingroot/kinguser/bg;->jX:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "|ret|0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p3, Lcom/kingroot/kinguser/bg;->kk:Lcom/kingroot/kinguser/bf;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "|pushId|"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p3, Lcom/kingroot/kinguser/bg;->kk:Lcom/kingroot/kinguser/bf;

    iget-wide v4, v4, Lcom/kingroot/kinguser/bf;->jW:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1209
    const-string v3, "ocean"

    invoke-static {v3, v0, v7, p3}, Lcom/kingroot/kinguser/cfe;->b(Ljava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/az;Lcom/kingroot/kinguser/bg;)V

    .line 1210
    new-array v3, v1, [Ljava/lang/Object;

    aput-object v0, v3, v2

    invoke-static {v6, v3}, Lcom/kingroot/kinguser/cgl;->d(I[Ljava/lang/Object;)V

    move v0, v1

    :goto_3
    move v2, v0

    .line 1221
    goto/16 :goto_0

    .line 1207
    :cond_1
    const-string v0, "http|"

    goto :goto_1

    :cond_2
    const-string v0, ""

    goto :goto_2

    .line 1212
    :cond_3
    invoke-static {p3}, Lcom/kingroot/kinguser/cfh;->c(Lcom/kingroot/kinguser/bg;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1213
    iget-object v0, p0, Lcom/kingroot/kinguser/cff;->cat:Lcom/kingroot/kinguser/cff$b;

    iget v3, p2, Lcom/kingroot/kinguser/bh;->seqNo:I

    invoke-interface {v0, p1, v3, p3}, Lcom/kingroot/kinguser/cff$b;->b(ZILcom/kingroot/kinguser/bg;)J

    .line 1214
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "[ocean]guid|"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/kingroot/kinguser/cff;->caf:Lcom/kingroot/kinguser/cer;

    invoke-virtual {v3}, Lcom/kingroot/kinguser/cer;->getGuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "|gift|\u901a\u9053|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_4

    const-string v0, "tcp|"

    :goto_4
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "sharkSeqNo|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p2, Lcom/kingroot/kinguser/bh;->seqNo:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "|ECmd|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p3, Lcom/kingroot/kinguser/bg;->cmd:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "|seqNo|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p3, Lcom/kingroot/kinguser/bg;->seqNo:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "|refSeqNo|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p3, Lcom/kingroot/kinguser/bg;->jX:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "|ret|0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p3, Lcom/kingroot/kinguser/bg;->kk:Lcom/kingroot/kinguser/bf;

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "|pushId|"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p3, Lcom/kingroot/kinguser/bg;->kk:Lcom/kingroot/kinguser/bf;

    iget-wide v4, v4, Lcom/kingroot/kinguser/bf;->jW:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1216
    const-string v3, "ocean"

    invoke-static {v3, v0, v7, p3}, Lcom/kingroot/kinguser/cfe;->b(Ljava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/az;Lcom/kingroot/kinguser/bg;)V

    .line 1217
    new-array v3, v1, [Ljava/lang/Object;

    aput-object v0, v3, v2

    invoke-static {v6, v3}, Lcom/kingroot/kinguser/cgl;->d(I[Ljava/lang/Object;)V

    move v0, v1

    .line 1218
    goto/16 :goto_3

    .line 1214
    :cond_4
    const-string v0, "http|"

    goto :goto_4

    :cond_5
    const-string v0, ""

    goto :goto_5

    :cond_6
    move v0, v2

    goto/16 :goto_3
.end method

.method private declared-synchronized alI()V
    .locals 4

    .prologue
    .line 629
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cff;->bYW:Lcom/kingroot/kinguser/ceu;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ceu;->fI()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 642
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 633
    :cond_1
    :try_start_1
    iget-wide v0, p0, Lcom/kingroot/kinguser/cff;->caw:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/kingroot/kinguser/cff;->caw:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x493e0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 638
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/cff;->caw:J

    .line 639
    iget-object v0, p0, Lcom/kingroot/kinguser/cff;->cav:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 640
    iget-object v0, p0, Lcom/kingroot/kinguser/cff;->cav:Landroid/os/Handler;

    const/16 v1, 0x8

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 629
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized alJ()V
    .locals 4

    .prologue
    .line 645
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cff;->bYW:Lcom/kingroot/kinguser/ceu;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ceu;->fI()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 652
    :goto_0
    monitor-exit p0

    return-void

    .line 649
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/cff;->cav:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 650
    iget-object v0, p0, Lcom/kingroot/kinguser/cff;->cav:Landroid/os/Handler;

    const/16 v1, 0xa

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 645
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/cff;J)J
    .locals 1

    .prologue
    .line 48
    iput-wide p1, p0, Lcom/kingroot/kinguser/cff;->cas:J

    return-wide p1
.end method

.method static synthetic b(Lcom/kingroot/kinguser/cff;)Lcom/kingroot/kinguser/cff$d;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/kingroot/kinguser/cff;->cai:Lcom/kingroot/kinguser/cff$d;

    return-object v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/cff;I)Lcom/kingroot/kinguser/cff$d;
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/cff;->lj(I)Lcom/kingroot/kinguser/cff$d;

    move-result-object v0

    return-object v0
.end method

.method private b(Lcom/kingroot/kinguser/cff$d;)V
    .locals 3

    .prologue
    .line 1133
    if-nez p1, :cond_0

    .line 1160
    :goto_0
    return-void

    .line 1138
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cff;->cax:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1140
    invoke-static {}, Lcom/kingroot/kinguser/bze;->ajZ()Lcom/kingroot/kinguser/bzf;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/cff$5;

    invoke-direct {v1, p0, p1}, Lcom/kingroot/kinguser/cff$5;-><init>(Lcom/kingroot/kinguser/cff;Lcom/kingroot/kinguser/cff$d;)V

    const-string v2, "runTimeout"

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/bzf;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/cff;Lcom/kingroot/kinguser/cff$d;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/cff;->b(Lcom/kingroot/kinguser/cff$d;)V

    return-void
.end method

.method static synthetic b(Lcom/kingroot/kinguser/cff;Z)Z
    .locals 0

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/kingroot/kinguser/cff;->cap:Z

    return p1
.end method

.method static synthetic c(Lcom/kingroot/kinguser/cff;J)J
    .locals 1

    .prologue
    .line 48
    iput-wide p1, p0, Lcom/kingroot/kinguser/cff;->cao:J

    return-wide p1
.end method

.method static synthetic c(Lcom/kingroot/kinguser/cff;)Lcom/kingroot/kinguser/cff$d;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/kingroot/kinguser/cff;->caj:Lcom/kingroot/kinguser/cff$d;

    return-object v0
.end method

.method private c(Lcom/kingroot/kinguser/cff$d;)V
    .locals 7

    .prologue
    .line 1225
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/kingroot/kinguser/cff$d;->caQ:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/kingroot/kinguser/cff$d;->caO:Lcom/kingroot/kinguser/cez$b;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/kingroot/kinguser/cff$d;->caO:Lcom/kingroot/kinguser/cez$b;

    iget-object v0, v0, Lcom/kingroot/kinguser/cez$b;->bZv:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1248
    :cond_0
    return-void

    .line 1231
    :cond_1
    iget-object v0, p1, Lcom/kingroot/kinguser/cff$d;->caQ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kingroot/kinguser/az;

    .line 1232
    if-eqz v4, :cond_2

    iget-object v0, v4, Lcom/kingroot/kinguser/az;->data:[B

    if-eqz v0, :cond_2

    .line 1236
    iget v0, v4, Lcom/kingroot/kinguser/az;->flag:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    .line 1237
    iget-object v0, v4, Lcom/kingroot/kinguser/az;->data:[B

    iget-object v1, p1, Lcom/kingroot/kinguser/cff$d;->caO:Lcom/kingroot/kinguser/cez$b;

    iget-object v1, v1, Lcom/kingroot/kinguser/cez$b;->bZv:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/ceq;->decrypt([B[B)[B

    move-result-object v0

    iput-object v0, v4, Lcom/kingroot/kinguser/az;->data:[B

    .line 1240
    :cond_3
    iget-object v0, v4, Lcom/kingroot/kinguser/az;->data:[B

    .line 1246
    invoke-static {}, Lcom/kingroot/kinguser/cfc;->alC()Lcom/kingroot/kinguser/cfc;

    move-result-object v0

    const-string v1, "SharkNetwork"

    iget v2, v4, Lcom/kingroot/kinguser/az;->cmd:I

    iget v3, v4, Lcom/kingroot/kinguser/az;->seqNo:I

    const/16 v5, 0xd

    invoke-virtual/range {v0 .. v5}, Lcom/kingroot/kinguser/cfc;->a(Ljava/lang/String;IILcom/kingroot/kinguser/az;I)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/kingroot/kinguser/cff;Z)Z
    .locals 0

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/kingroot/kinguser/cff;->caq:Z

    return p1
.end method

.method static synthetic d(Lcom/kingroot/kinguser/cff;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/kingroot/kinguser/cff;->cav:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lcom/kingroot/kinguser/cff;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/kingroot/kinguser/cff;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic f(Lcom/kingroot/kinguser/cff;)Lcom/kingroot/kinguser/ceu;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/kingroot/kinguser/cff;->bYW:Lcom/kingroot/kinguser/ceu;

    return-object v0
.end method

.method static synthetic g(Lcom/kingroot/kinguser/cff;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/kingroot/kinguser/cff;->alI()V

    return-void
.end method

.method static synthetic h(Lcom/kingroot/kinguser/cff;)Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/kingroot/kinguser/cff;->cah:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic i(Lcom/kingroot/kinguser/cff;)Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/kingroot/kinguser/cff;->cam:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic j(Lcom/kingroot/kinguser/cff;)Lcom/kingroot/kinguser/cez;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/kingroot/kinguser/cff;->cae:Lcom/kingroot/kinguser/cez;

    return-object v0
.end method

.method static synthetic k(Lcom/kingroot/kinguser/cff;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/kingroot/kinguser/cff;->avz:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic l(Lcom/kingroot/kinguser/cff;)Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/kingroot/kinguser/cff;->cap:Z

    return v0
.end method

.method private li(I)V
    .locals 8

    .prologue
    .line 697
    iget-object v1, p0, Lcom/kingroot/kinguser/cff;->cak:Ljava/util/ArrayList;

    monitor-enter v1

    .line 699
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cff;->cak:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 700
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 701
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 702
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/cff$d;

    .line 703
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/kingroot/kinguser/cff$d;->caQ:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/kingroot/kinguser/cff$d;->caQ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 704
    iget-object v0, v0, Lcom/kingroot/kinguser/cff$d;->caQ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kingroot/kinguser/az;

    .line 707
    if-eqz v4, :cond_1

    .line 708
    invoke-static {}, Lcom/kingroot/kinguser/cfc;->alC()Lcom/kingroot/kinguser/cfc;

    move-result-object v0

    const-string v1, "SharkNetwork"

    iget v2, v4, Lcom/kingroot/kinguser/az;->cmd:I

    iget v3, v4, Lcom/kingroot/kinguser/az;->seqNo:I

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/kingroot/kinguser/cfc;->a(Ljava/lang/String;IILcom/kingroot/kinguser/az;I)V

    goto :goto_0

    .line 700
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 714
    :cond_2
    return-void
.end method

.method private lj(I)Lcom/kingroot/kinguser/cff$d;
    .locals 3

    .prologue
    .line 981
    iget-object v1, p0, Lcom/kingroot/kinguser/cff;->cal:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 982
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cff;->cal:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/cff$d;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 983
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic m(Lcom/kingroot/kinguser/cff;)J
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/kingroot/kinguser/cff;->car:J

    return-wide v0
.end method

.method static synthetic n(Lcom/kingroot/kinguser/cff;)Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/kingroot/kinguser/cff;->can:Z

    return v0
.end method

.method static synthetic o(Lcom/kingroot/kinguser/cff;)Lcom/kingroot/kinguser/cer;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/kingroot/kinguser/cff;->caf:Lcom/kingroot/kinguser/cer;

    return-object v0
.end method

.method static synthetic p(Lcom/kingroot/kinguser/cff;)Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/kingroot/kinguser/cff;->caq:Z

    return v0
.end method

.method static synthetic q(Lcom/kingroot/kinguser/cff;)J
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/kingroot/kinguser/cff;->cas:J

    return-wide v0
.end method

.method static synthetic r(Lcom/kingroot/kinguser/cff;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/kingroot/kinguser/cff;->cak:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic s(Lcom/kingroot/kinguser/cff;)J
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/kingroot/kinguser/cff;->cao:J

    return-wide v0
.end method

.method static synthetic t(Lcom/kingroot/kinguser/cff;)Lcom/kingroot/kinguser/cfq;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/kingroot/kinguser/cff;->cag:Lcom/kingroot/kinguser/cfq;

    return-object v0
.end method

.method static synthetic u(Lcom/kingroot/kinguser/cff;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/kingroot/kinguser/cff;->Rd()V

    return-void
.end method


# virtual methods
.method public KD()V
    .locals 1

    .prologue
    .line 1410
    iget-object v0, p0, Lcom/kingroot/kinguser/cff;->bYW:Lcom/kingroot/kinguser/ceu;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ceu;->fI()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1418
    :cond_0
    :goto_0
    return-void

    .line 1414
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/cff;->cad:Lcom/kingroot/kinguser/cfl;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cfl;->amq()Lcom/kingroot/kinguser/cfu;

    move-result-object v0

    .line 1415
    if-eqz v0, :cond_0

    .line 1416
    invoke-interface {v0}, Lcom/kingroot/kinguser/cfu;->KD()V

    goto :goto_0
.end method

.method protected a(ZLcom/kingroot/kinguser/cff$d;)Lcom/kingroot/kinguser/cez$b;
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v8, 0x1

    .line 987
    if-nez p2, :cond_0

    .line 1054
    :goto_0
    return-object v0

    .line 993
    :cond_0
    if-eqz p1, :cond_7

    .line 994
    iget-object v0, p0, Lcom/kingroot/kinguser/cff;->cae:Lcom/kingroot/kinguser/cez;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cez;->fw()Lcom/kingroot/kinguser/cez$b;

    move-result-object v1

    .line 995
    iput-object v1, p2, Lcom/kingroot/kinguser/cff$d;->caO:Lcom/kingroot/kinguser/cez$b;

    .line 997
    iget-object v0, p2, Lcom/kingroot/kinguser/cff$d;->caQ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/az;

    .line 998
    if-eqz v0, :cond_1

    .line 1002
    iget-object v3, v0, Lcom/kingroot/kinguser/az;->data:[B

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/kingroot/kinguser/az;->data:[B

    array-length v3, v3

    if-lez v3, :cond_1

    .line 1003
    iget v3, v0, Lcom/kingroot/kinguser/az;->flag:I

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_1

    .line 1004
    iget-object v3, v0, Lcom/kingroot/kinguser/az;->data:[B

    iget-object v4, v1, Lcom/kingroot/kinguser/cez$b;->bZv:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v3, v4}, Lcom/kingroot/kinguser/ceq;->encrypt([B[B)[B

    move-result-object v3

    iput-object v3, v0, Lcom/kingroot/kinguser/az;->data:[B

    .line 1005
    iget-object v0, v0, Lcom/kingroot/kinguser/az;->data:[B

    goto :goto_1

    :cond_2
    move-object v6, v1

    .line 1015
    :goto_2
    iget-object v0, p2, Lcom/kingroot/kinguser/cff$d;->caQ:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    iget-object v0, p2, Lcom/kingroot/kinguser/cff$d;->caQ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 1016
    iget-object v0, p2, Lcom/kingroot/kinguser/cff$d;->caQ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kingroot/kinguser/az;

    .line 1017
    if-eqz v4, :cond_3

    .line 1022
    iget v0, v4, Lcom/kingroot/kinguser/az;->jX:I

    if-nez v0, :cond_4

    .line 1023
    iput-boolean v8, p2, Lcom/kingroot/kinguser/cff$d;->caM:Z

    .line 1026
    :cond_4
    invoke-static {}, Lcom/kingroot/kinguser/cfc;->alC()Lcom/kingroot/kinguser/cfc;

    move-result-object v0

    const-string v1, "SharkNetwork"

    iget v2, v4, Lcom/kingroot/kinguser/az;->cmd:I

    iget v3, v4, Lcom/kingroot/kinguser/az;->seqNo:I

    const/4 v5, 0x5

    invoke-virtual/range {v0 .. v5}, Lcom/kingroot/kinguser/cfc;->a(Ljava/lang/String;IILcom/kingroot/kinguser/az;I)V

    goto :goto_3

    .line 1031
    :cond_5
    iget-object v1, p0, Lcom/kingroot/kinguser/cff;->cal:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 1033
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cff;->cal:Ljava/util/LinkedHashMap;

    iget v2, p2, Lcom/kingroot/kinguser/cff$d;->caN:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1034
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1037
    iget-wide v0, p2, Lcom/kingroot/kinguser/cff$d;->caV:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_6

    iget-wide v0, p2, Lcom/kingroot/kinguser/cff$d;->caV:J

    .line 1038
    :goto_4
    iget-object v2, p0, Lcom/kingroot/kinguser/cff;->cax:Landroid/os/Handler;

    invoke-static {v2, v8, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1039
    iget-object v3, p0, Lcom/kingroot/kinguser/cff;->cax:Landroid/os/Handler;

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1052
    iget-object v0, p0, Lcom/kingroot/kinguser/cff;->cad:Lcom/kingroot/kinguser/cfl;

    invoke-virtual {v0, p2}, Lcom/kingroot/kinguser/cfl;->d(Lcom/kingroot/kinguser/cff$d;)V

    move-object v0, v6

    .line 1054
    goto/16 :goto_0

    .line 1034
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1037
    :cond_6
    const-wide/32 v0, 0x2bf20

    goto :goto_4

    :cond_7
    move-object v6, v0

    goto :goto_2
.end method

.method public a(IJZLjava/util/ArrayList;Lcom/kingroot/kinguser/cff$a;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJZ",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/az;",
            ">;",
            "Lcom/kingroot/kinguser/cff$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 893
    new-instance v1, Lcom/kingroot/kinguser/cff$d;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v10, 0x0

    move v2, p1

    move-wide v6, p2

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v11}, Lcom/kingroot/kinguser/cff$d;-><init>(IZZZJLjava/util/ArrayList;Lcom/kingroot/kinguser/cff$a;J)V

    invoke-virtual {p0, v1}, Lcom/kingroot/kinguser/cff;->a(Lcom/kingroot/kinguser/cff$d;)V

    .line 894
    if-eqz p4, :cond_0

    .line 895
    iget-object v0, p0, Lcom/kingroot/kinguser/cff;->caf:Lcom/kingroot/kinguser/cer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/cer;->eI(Z)V

    .line 897
    :cond_0
    return-void
.end method

.method public a(Lcom/kingroot/kinguser/cff$d;)V
    .locals 7

    .prologue
    const/4 v5, 0x1

    .line 901
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/kingroot/kinguser/cff$d;->caR:Lcom/kingroot/kinguser/cff$a;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/kingroot/kinguser/cff$d;->caQ:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/kingroot/kinguser/cff$d;->caQ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 919
    :cond_0
    :goto_0
    return-void

    .line 906
    :cond_1
    iget-object v1, p0, Lcom/kingroot/kinguser/cff;->cak:Ljava/util/ArrayList;

    monitor-enter v1

    .line 907
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cff;->cak:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 909
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 911
    iget-object v0, p1, Lcom/kingroot/kinguser/cff$d;->caQ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kingroot/kinguser/az;

    .line 912
    if-eqz v4, :cond_2

    .line 913
    invoke-static {}, Lcom/kingroot/kinguser/cfc;->alC()Lcom/kingroot/kinguser/cfc;

    move-result-object v0

    const-string v1, "SharkNetwork"

    iget v2, v4, Lcom/kingroot/kinguser/az;->cmd:I

    iget v3, v4, Lcom/kingroot/kinguser/az;->seqNo:I

    invoke-virtual/range {v0 .. v5}, Lcom/kingroot/kinguser/cfc;->a(Ljava/lang/String;IILcom/kingroot/kinguser/az;I)V

    goto :goto_1

    .line 909
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 918
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/cff;->cav:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method protected a(Ljava/util/ArrayList;Lcom/kingroot/kinguser/cff$a;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/az;",
            ">;",
            "Lcom/kingroot/kinguser/cff$a;",
            ")V"
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 942
    new-instance v1, Lcom/kingroot/kinguser/cff$d;

    move v4, v2

    move v5, v2

    move-object v8, p1

    move-object v9, p2

    move-wide v10, v6

    invoke-direct/range {v1 .. v11}, Lcom/kingroot/kinguser/cff$d;-><init>(IZZZJLjava/util/ArrayList;Lcom/kingroot/kinguser/cff$a;J)V

    iput-object v1, p0, Lcom/kingroot/kinguser/cff;->cai:Lcom/kingroot/kinguser/cff$d;

    .line 943
    iget-object v0, p0, Lcom/kingroot/kinguser/cff;->cai:Lcom/kingroot/kinguser/cff$d;

    iput-boolean v3, v0, Lcom/kingroot/kinguser/cff$d;->caG:Z

    .line 944
    iget-object v0, p0, Lcom/kingroot/kinguser/cff;->cav:Landroid/os/Handler;

    invoke-virtual {v0, v2, v3, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 945
    return-void
.end method

.method public alK()Lcom/kingroot/kinguser/cfo;
    .locals 1

    .prologue
    .line 955
    iget-object v0, p0, Lcom/kingroot/kinguser/cff;->cad:Lcom/kingroot/kinguser/cfl;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cfl;->alK()Lcom/kingroot/kinguser/cfo;

    move-result-object v0

    return-object v0
.end method

.method protected alL()Lcom/kingroot/kinguser/ceu;
    .locals 1

    .prologue
    .line 972
    iget-object v0, p0, Lcom/kingroot/kinguser/cff;->bYW:Lcom/kingroot/kinguser/ceu;

    return-object v0
.end method

.method public alM()V
    .locals 4

    .prologue
    const/4 v1, 0x4

    .line 1445
    iget-object v0, p0, Lcom/kingroot/kinguser/cff;->cav:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1447
    iget-object v0, p0, Lcom/kingroot/kinguser/cff;->cav:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1449
    iget-object v0, p0, Lcom/kingroot/kinguser/cff;->cav:Landroid/os/Handler;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1451
    :cond_0
    return-void
.end method

.method public alN()V
    .locals 4

    .prologue
    const/16 v1, 0x9

    .line 1454
    iget-object v0, p0, Lcom/kingroot/kinguser/cff;->cav:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1456
    iget-object v0, p0, Lcom/kingroot/kinguser/cff;->cav:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1457
    iget-object v0, p0, Lcom/kingroot/kinguser/cff;->cav:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1459
    :cond_0
    return-void
.end method

.method protected b(Ljava/util/ArrayList;Lcom/kingroot/kinguser/cff$a;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/az;",
            ">;",
            "Lcom/kingroot/kinguser/cff$a;",
            ")V"
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 949
    new-instance v1, Lcom/kingroot/kinguser/cff$d;

    move v4, v2

    move v5, v2

    move-object v8, p1

    move-object v9, p2

    move-wide v10, v6

    invoke-direct/range {v1 .. v11}, Lcom/kingroot/kinguser/cff$d;-><init>(IZZZJLjava/util/ArrayList;Lcom/kingroot/kinguser/cff$a;J)V

    iput-object v1, p0, Lcom/kingroot/kinguser/cff;->caj:Lcom/kingroot/kinguser/cff$d;

    .line 950
    iget-object v0, p0, Lcom/kingroot/kinguser/cff;->caj:Lcom/kingroot/kinguser/cff$d;

    iput-boolean v3, v0, Lcom/kingroot/kinguser/cff$d;->caH:Z

    .line 951
    iget-object v0, p0, Lcom/kingroot/kinguser/cff;->cav:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v2, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 952
    return-void
.end method

.method protected fw()Lcom/kingroot/kinguser/cez$b;
    .locals 1

    .prologue
    .line 976
    iget-object v0, p0, Lcom/kingroot/kinguser/cff;->cae:Lcom/kingroot/kinguser/cez;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cez;->fw()Lcom/kingroot/kinguser/cez$b;

    move-result-object v0

    return-object v0
.end method

.method public getGuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 968
    iget-object v0, p0, Lcom/kingroot/kinguser/cff;->caf:Lcom/kingroot/kinguser/cer;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cer;->getGuid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m(III)V
    .locals 4

    .prologue
    .line 923
    if-gtz p2, :cond_0

    .line 937
    :goto_0
    return-void

    .line 926
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cff;->cah:Landroid/util/SparseArray;

    if-nez v0, :cond_2

    .line 927
    const-class v1, Lcom/kingroot/kinguser/cff;

    monitor-enter v1

    .line 928
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cff;->cah:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    .line 929
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/cff;->cah:Landroid/util/SparseArray;

    .line 931
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 933
    :cond_2
    new-instance v0, Lcom/kingroot/kinguser/cgf;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "network_control_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    mul-int/lit16 v2, p2, 0x3e8

    int-to-long v2, v2

    invoke-direct {v0, v1, v2, v3, p3}, Lcom/kingroot/kinguser/cgf;-><init>(Ljava/lang/String;JI)V

    .line 934
    iget-object v1, p0, Lcom/kingroot/kinguser/cff;->cah:Landroid/util/SparseArray;

    monitor-enter v1

    .line 935
    :try_start_1
    iget-object v2, p0, Lcom/kingroot/kinguser/cff;->cah:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 937
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 931
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onReady()V
    .locals 2

    .prologue
    .line 1422
    iget-object v0, p0, Lcom/kingroot/kinguser/cff;->caf:Lcom/kingroot/kinguser/cer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/cer;->eI(Z)V

    .line 1423
    return-void
.end method

.method public refresh()V
    .locals 1

    .prologue
    .line 960
    iget-object v0, p0, Lcom/kingroot/kinguser/cff;->caf:Lcom/kingroot/kinguser/cer;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cer;->alc()V

    .line 961
    return-void
.end method
