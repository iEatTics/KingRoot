.class public Lcom/kingroot/kinguser/aus;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcloudsdk/ext/kr/KrRootCallback;
.implements Lcloudsdk/ext/kr/OnRootListener;
.implements Lcom/kingroot/kinguser/auj$a;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private aRU:Lcom/kingroot/kinguser/bed;

.field private volatile aRh:Z

.field private aRz:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private aSk:Lcom/kingroot/kinguser/auj$b;

.field private aSl:I

.field private aSm:I

.field private final aSn:Ljava/lang/Object;

.field private final aSo:Ljava/lang/Object;

.field private final aSp:Ljava/lang/Object;

.field private volatile aSq:J

.field private aSr:Z

.field private aSs:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private aSt:Lcom/kingroot/kinguser/bed;

.field private aSu:Lcom/kingroot/kinguser/bed;

.field aSv:Lcom/kingroot/common/network/download/INetworkLoadTaskCallback;

.field private aSw:Lcom/kingroot/kinguser/bed;

.field private aSx:Lcom/kingroot/kinguser/bed;

.field private aSy:Lcom/kingroot/kinguser/bed;

.field private aSz:Lcom/kingroot/kinguser/bed;

.field private anQ:Lcom/kingroot/kinguser/tk;

.field private mProgress:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/kingroot/kinguser/aiq;->asd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "RootProcessPagePresenter"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/aus;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/kingroot/kinguser/auj$b;Landroid/app/Activity;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/aus;->anQ:Lcom/kingroot/kinguser/tk;

    .line 89
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/aus;->aSn:Ljava/lang/Object;

    .line 90
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/aus;->aSo:Ljava/lang/Object;

    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/aus;->aSp:Ljava/lang/Object;

    .line 92
    iput-boolean v2, p0, Lcom/kingroot/kinguser/aus;->aRh:Z

    .line 95
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingroot/kinguser/aus;->aSq:J

    .line 99
    iput-boolean v2, p0, Lcom/kingroot/kinguser/aus;->aSr:Z

    .line 102
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aus;->aSs:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 502
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/aus$9;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/aus$9;-><init>(Lcom/kingroot/kinguser/aus;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aus;->aSt:Lcom/kingroot/kinguser/bed;

    .line 519
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/aus$10;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/aus$10;-><init>(Lcom/kingroot/kinguser/aus;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aus;->aSu:Lcom/kingroot/kinguser/bed;

    .line 595
    new-instance v0, Lcom/kingroot/kinguser/mvp/presenter/RootProcessPagePresenter$7;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/mvp/presenter/RootProcessPagePresenter$7;-><init>(Lcom/kingroot/kinguser/aus;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aus;->aSv:Lcom/kingroot/common/network/download/INetworkLoadTaskCallback;

    .line 661
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->bll:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/aus$11;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/aus$11;-><init>(Lcom/kingroot/kinguser/aus;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aus;->aSw:Lcom/kingroot/kinguser/bed;

    .line 743
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->bll:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/aus$12;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/aus$12;-><init>(Lcom/kingroot/kinguser/aus;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aus;->aSx:Lcom/kingroot/kinguser/bed;

    .line 801
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/aus$2;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/aus$2;-><init>(Lcom/kingroot/kinguser/aus;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aus;->aSy:Lcom/kingroot/kinguser/bed;

    .line 840
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/aus$3;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/aus$3;-><init>(Lcom/kingroot/kinguser/aus;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aus;->aRU:Lcom/kingroot/kinguser/bed;

    .line 901
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/aus$5;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/aus$5;-><init>(Lcom/kingroot/kinguser/aus;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aus;->aSz:Lcom/kingroot/kinguser/bed;

    .line 105
    invoke-static {p1}, Lcom/kingroot/kinguser/zd;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/auj$b;

    iput-object v0, p0, Lcom/kingroot/kinguser/aus;->aSk:Lcom/kingroot/kinguser/auj$b;

    .line 106
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-static {p2}, Lcom/kingroot/kinguser/zd;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aus;->aRz:Ljava/lang/ref/WeakReference;

    .line 107
    return-void
.end method

.method public static EQ()I
    .locals 2

    .prologue
    .line 395
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->EQ()I

    move-result v0

    .line 396
    if-nez v0, :cond_0

    .line 397
    const/16 v0, 0xb

    const/16 v1, 0x32

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/aus;->T(II)I

    move-result v0

    .line 398
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/aks;->eG(I)V

    .line 400
    :cond_0
    return v0
.end method

.method private QL()V
    .locals 4

    .prologue
    .line 647
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Gd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 648
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/kingroot/kinguser/ags;->aF(Z)V

    .line 651
    :cond_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/aus;->QM()V

    .line 653
    iget-object v1, p0, Lcom/kingroot/kinguser/aus;->aSo:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 654
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/aus;->aSo:Ljava/lang/Object;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 655
    monitor-exit v1

    .line 659
    :goto_0
    return-void

    .line 655
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 656
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private QM()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 724
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/kingroot/kinguser/aus;->aRh:Z

    .line 725
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/aus;->aSx:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 727
    iget-object v1, p0, Lcom/kingroot/kinguser/aus;->aSp:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 728
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/aus;->aSp:Ljava/lang/Object;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 729
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 735
    :goto_0
    invoke-static {}, Lcom/kingroot/kinguser/bap;->VF()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/kingroot/kinguser/aus;->aRh:Z

    if-nez v0, :cond_0

    .line 738
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aks;->bG(Z)V

    .line 739
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/kingroot/kinguser/aks;->es(I)V

    .line 741
    :cond_0
    return-void

    .line 729
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 730
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private QO()V
    .locals 4

    .prologue
    .line 875
    iget-object v0, p0, Lcom/kingroot/kinguser/aus;->aRz:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 876
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v1

    .line 877
    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/kingroot/kinguser/aks;->FJ()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 899
    :cond_0
    :goto_0
    return-void

    .line 881
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v2

    const v3, 0x1891e

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 882
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    .line 883
    new-instance v3, Lcom/kingroot/kinguser/bid;

    invoke-direct {v3, v0}, Lcom/kingroot/kinguser/bid;-><init>(Landroid/content/Context;)V

    .line 884
    invoke-virtual {v3}, Lcom/kingroot/kinguser/bid;->show()V

    .line 885
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lcom/kingroot/kinguser/bid;->setCanceledOnTouchOutside(Z)V

    .line 886
    const v0, 0x7f0704b3

    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/kingroot/kinguser/bid;->setTitleText(Ljava/lang/String;)V

    .line 887
    const v0, 0x7f0704b2

    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/kingroot/kinguser/bid;->d(Ljava/lang/CharSequence;)V

    .line 888
    const/16 v0, 0x8

    invoke-virtual {v3, v0}, Lcom/kingroot/kinguser/bid;->iX(I)V

    .line 889
    const v0, 0x7f0704b1

    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/kingroot/kinguser/bid;->lL(Ljava/lang/String;)V

    .line 890
    new-instance v0, Lcom/kingroot/kinguser/aus$4;

    invoke-direct {v0, p0, v3}, Lcom/kingroot/kinguser/aus$4;-><init>(Lcom/kingroot/kinguser/aus;Lcom/kingroot/kinguser/bid;)V

    invoke-virtual {v3, v0}, Lcom/kingroot/kinguser/bid;->b(Lcom/kingroot/kinguser/bid$b;)V

    .line 898
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/aks;->cn(Z)V

    goto :goto_0
.end method

.method public static T(II)I
    .locals 2

    .prologue
    .line 384
    if-le p0, p1, :cond_0

    .line 388
    :goto_0
    return p0

    .line 387
    :cond_0
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 388
    invoke-virtual {v0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    sub-int v1, p1, p0

    add-int/lit8 v1, v1, 0x1

    rem-int/2addr v0, v1

    add-int/2addr p0, v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/aus;I)I
    .locals 0

    .prologue
    .line 74
    iput p1, p0, Lcom/kingroot/kinguser/aus;->aSl:I

    return p1
.end method

.method static synthetic a(Lcom/kingroot/kinguser/aus;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/kingroot/kinguser/aus;->QL()V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/aus;Z)Z
    .locals 0

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/kingroot/kinguser/aus;->aRh:Z

    return p1
.end method

.method static synthetic b(Lcom/kingroot/kinguser/aus;)I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/kingroot/kinguser/aus;->aSl:I

    return v0
.end method

.method static synthetic c(Lcom/kingroot/kinguser/aus;)I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/kingroot/kinguser/aus;->aSm:I

    return v0
.end method

.method static synthetic d(Lcom/kingroot/kinguser/aus;)Lcom/kingroot/kinguser/auj$b;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/kingroot/kinguser/aus;->aSk:Lcom/kingroot/kinguser/auj$b;

    return-object v0
.end method

.method private da(Z)V
    .locals 3

    .prologue
    .line 449
    iget-object v0, p0, Lcom/kingroot/kinguser/aus;->aRz:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 450
    if-nez v0, :cond_0

    .line 458
    :goto_0
    return-void

    .line 453
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 454
    const-string v2, "root_result"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 455
    const/16 v2, 0x3e9

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 457
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public static synthetic e(Lcom/kingroot/kinguser/aus;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/kingroot/kinguser/aus;->aSo:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic f(Lcom/kingroot/kinguser/aus;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/kingroot/kinguser/aus;->aSp:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic g(Lcom/kingroot/kinguser/aus;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/kingroot/kinguser/aus;->aRz:Ljava/lang/ref/WeakReference;

    return-object v0
.end method


# virtual methods
.method public QK()V
    .locals 4

    .prologue
    .line 428
    iget-object v0, p0, Lcom/kingroot/kinguser/aus;->aRz:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 429
    if-nez v0, :cond_0

    .line 446
    :goto_0
    return-void

    .line 432
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 434
    const-class v2, Lcom/kingroot/kinguser/activitys/DeviceActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 436
    const-string v2, "root_process_state"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 439
    new-instance v2, Lcom/kingroot/kinguser/aus$8;

    invoke-direct {v2, p0, v0, v1}, Lcom/kingroot/kinguser/aus$8;-><init>(Lcom/kingroot/kinguser/aus;Landroid/app/Activity;Landroid/content/Intent;)V

    const-wide/16 v0, 0x7d0

    invoke-static {v2, v0, v1}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method public QN()V
    .locals 2

    .prologue
    .line 792
    iget-object v1, p0, Lcom/kingroot/kinguser/aus;->aSn:Ljava/lang/Object;

    monitor-enter v1

    .line 793
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/aus;->anQ:Lcom/kingroot/kinguser/tk;

    if-eqz v0, :cond_0

    .line 794
    iget-object v0, p0, Lcom/kingroot/kinguser/aus;->anQ:Lcom/kingroot/kinguser/tk;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/tk;->release()V

    .line 795
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/aus;->anQ:Lcom/kingroot/kinguser/tk;

    .line 797
    :cond_0
    monitor-exit v1

    .line 798
    return-void

    .line 797
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public Qj()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/kingroot/kinguser/aus;->aSs:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 123
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/aus;->cX(I)V

    .line 124
    return-void
.end method

.method public Qk()V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/kingroot/kinguser/aus;->aSs:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 130
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/aus;->cX(I)V

    .line 131
    return-void
.end method

.method public bZ(J)V
    .locals 3

    .prologue
    .line 781
    iget-object v1, p0, Lcom/kingroot/kinguser/aus;->aSn:Ljava/lang/Object;

    monitor-enter v1

    .line 782
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/aus;->anQ:Lcom/kingroot/kinguser/tk;

    if-nez v0, :cond_0

    .line 783
    invoke-static {}, Lcom/kingroot/kinguser/tk;->jM()Lcom/kingroot/kinguser/tk;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/aus;->anQ:Lcom/kingroot/kinguser/tk;

    .line 785
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/aus;->anQ:Lcom/kingroot/kinguser/tk;

    if-eqz v0, :cond_1

    .line 786
    iget-object v0, p0, Lcom/kingroot/kinguser/aus;->anQ:Lcom/kingroot/kinguser/tk;

    invoke-virtual {v0, p1, p2}, Lcom/kingroot/kinguser/tk;->s(J)V

    .line 788
    :cond_1
    monitor-exit v1

    .line 789
    return-void

    .line 788
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public cQ(Z)V
    .locals 0

    .prologue
    .line 424
    iput-boolean p1, p0, Lcom/kingroot/kinguser/aus;->aSr:Z

    .line 425
    return-void
.end method

.method public cX(I)V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v0, -0x1

    const/4 v3, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 314
    packed-switch p1, :pswitch_data_0

    .line 368
    iget-object v0, p0, Lcom/kingroot/kinguser/aus;->aSk:Lcom/kingroot/kinguser/auj$b;

    invoke-interface {v0}, Lcom/kingroot/kinguser/auj$b;->Ql()V

    .line 369
    invoke-static {}, Lcloudsdk/ext/kr/RootSdk;->getInstance()Lcloudsdk/ext/kr/RootSdk;

    move-result-object v0

    invoke-virtual {v0, v1, p0, p0}, Lcloudsdk/ext/kr/RootSdk;->dispatchRoot(ILcloudsdk/ext/kr/OnRootListener;Lcloudsdk/ext/kr/KrRootCallback;)V

    .line 373
    :goto_0
    return-void

    .line 317
    :pswitch_0
    iget-object v0, p0, Lcom/kingroot/kinguser/aus;->aSk:Lcom/kingroot/kinguser/auj$b;

    invoke-interface {v0}, Lcom/kingroot/kinguser/auj$b;->Ql()V

    goto :goto_0

    .line 321
    :pswitch_1
    iget-object v0, p0, Lcom/kingroot/kinguser/aus;->aSk:Lcom/kingroot/kinguser/auj$b;

    invoke-interface {v0}, Lcom/kingroot/kinguser/auj$b;->Ql()V

    .line 322
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/aus;->aSz:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    goto :goto_0

    .line 326
    :pswitch_2
    iput v3, p0, Lcom/kingroot/kinguser/aus;->aSm:I

    .line 328
    invoke-virtual {p0, v0, v1, v1, v2}, Lcom/kingroot/kinguser/aus;->onRooting(IIII)V

    .line 330
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    iget v1, p0, Lcom/kingroot/kinguser/aus;->aSm:I

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aks;->eH(I)V

    .line 331
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/aus;->aSy:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    goto :goto_0

    .line 335
    :pswitch_3
    iput v4, p0, Lcom/kingroot/kinguser/aus;->aSm:I

    .line 337
    invoke-virtual {p0, v0, v1, v1, v2}, Lcom/kingroot/kinguser/aus;->onRooting(IIII)V

    .line 339
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    iget v1, p0, Lcom/kingroot/kinguser/aus;->aSm:I

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aks;->eH(I)V

    .line 341
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/aus;->aRU:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    goto :goto_0

    .line 344
    :pswitch_4
    invoke-static {}, Lcloudsdk/ext/kr/RootSdk;->getInstance()Lcloudsdk/ext/kr/RootSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcloudsdk/ext/kr/RootSdk;->getCurrStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 345
    iput v4, p0, Lcom/kingroot/kinguser/aus;->aSm:I

    .line 350
    :goto_1
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/aks;->bI(Z)V

    .line 352
    invoke-static {}, Lcloudsdk/ext/kr/RootSdk;->getInstance()Lcloudsdk/ext/kr/RootSdk;

    move-result-object v0

    invoke-virtual {v0, v3, p0, p0}, Lcloudsdk/ext/kr/RootSdk;->dispatchRoot(ILcloudsdk/ext/kr/OnRootListener;Lcloudsdk/ext/kr/KrRootCallback;)V

    goto :goto_0

    .line 347
    :cond_0
    iput v3, p0, Lcom/kingroot/kinguser/aus;->aSm:I

    goto :goto_1

    .line 356
    :pswitch_5
    iget-object v0, p0, Lcom/kingroot/kinguser/aus;->aSk:Lcom/kingroot/kinguser/auj$b;

    invoke-interface {v0}, Lcom/kingroot/kinguser/auj$b;->Ql()V

    .line 357
    iget-object v0, p0, Lcom/kingroot/kinguser/aus;->aSs:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 359
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->ER()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/aus;->aSm:I

    .line 360
    invoke-static {}, Lcloudsdk/ext/kr/RootSdk;->getInstance()Lcloudsdk/ext/kr/RootSdk;

    move-result-object v0

    invoke-virtual {v0, v1, p0, p0}, Lcloudsdk/ext/kr/RootSdk;->dispatchRoot(ILcloudsdk/ext/kr/OnRootListener;Lcloudsdk/ext/kr/KrRootCallback;)V

    goto :goto_0

    .line 364
    :pswitch_6
    invoke-static {}, Lcloudsdk/ext/kr/RootSdk;->getInstance()Lcloudsdk/ext/kr/RootSdk;

    move-result-object v0

    invoke-virtual {v0, v1, p0, p0}, Lcloudsdk/ext/kr/RootSdk;->dispatchRoot(ILcloudsdk/ext/kr/OnRootListener;Lcloudsdk/ext/kr/KrRootCallback;)V

    goto/16 :goto_0

    .line 314
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 116
    return-void
.end method

.method public gQ(I)V
    .locals 3

    .prologue
    .line 405
    iget-object v0, p0, Lcom/kingroot/kinguser/aus;->aRz:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 406
    if-nez v0, :cond_0

    .line 420
    :goto_0
    return-void

    .line 409
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 411
    const-class v2, Lcom/kingroot/kinguser/activitys/MainActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 413
    new-instance v2, Lcom/kingroot/kinguser/aus$7;

    invoke-direct {v2, p0, v0, v1}, Lcom/kingroot/kinguser/aus$7;-><init>(Lcom/kingroot/kinguser/aus;Landroid/app/Activity;Landroid/content/Intent;)V

    int-to-long v0, p1

    invoke-static {v2, v0, v1}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method public lockMainLifeLock(ZJ)V
    .locals 0

    .prologue
    .line 491
    if-eqz p1, :cond_0

    .line 492
    invoke-virtual {p0, p2, p3}, Lcom/kingroot/kinguser/aus;->bZ(J)V

    .line 496
    :goto_0
    return-void

    .line 494
    :cond_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/aus;->QN()V

    goto :goto_0
.end method

.method public onCheckRoot()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/kingroot/kinguser/aus;->aSk:Lcom/kingroot/kinguser/auj$b;

    invoke-interface {v0}, Lcom/kingroot/kinguser/auj$b;->Ql()V

    .line 140
    return-void
.end method

.method public onCheckRootFinish(Lcloudsdk/ext/kr/RootExtInfo;Lcloudsdk/ext/kr/RootExtInfo;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 147
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/akj;->aT(Landroid/content/Context;)Lcom/kingroot/kinguser/akj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/akj;->AN()V

    .line 149
    if-eqz p1, :cond_3

    .line 152
    iget v0, p1, Lcloudsdk/ext/kr/RootExtInfo;->canRoot:I

    if-ne v0, v2, :cond_2

    .line 154
    invoke-static {p1}, Lcom/kingroot/kinguser/bbs;->b(Lcloudsdk/ext/kr/RootExtInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/kingroot/kinguser/aus;->aSk:Lcom/kingroot/kinguser/auj$b;

    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/auj$b;->a(Lcloudsdk/ext/kr/RootExtInfo;)V

    move v0, v1

    .line 167
    :goto_0
    if-eqz v0, :cond_0

    .line 169
    invoke-static {p2}, Lcom/kingroot/kinguser/bbs;->b(Lcloudsdk/ext/kr/RootExtInfo;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p2, Lcloudsdk/ext/kr/RootExtInfo;->canRoot:I

    if-ne v0, v2, :cond_4

    .line 172
    iget-object v0, p0, Lcom/kingroot/kinguser/aus;->aSk:Lcom/kingroot/kinguser/auj$b;

    invoke-interface {v0, p2, v1}, Lcom/kingroot/kinguser/auj$b;->a(Lcloudsdk/ext/kr/RootExtInfo;Z)V

    .line 178
    :cond_0
    :goto_1
    return-void

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/aus;->aSk:Lcom/kingroot/kinguser/auj$b;

    invoke-interface {v0}, Lcom/kingroot/kinguser/auj$b;->Qm()V

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 162
    goto :goto_0

    :cond_3
    move v0, v2

    .line 165
    goto :goto_0

    .line 175
    :cond_4
    invoke-virtual {p0, v1}, Lcom/kingroot/kinguser/aus;->gQ(I)V

    goto :goto_1
.end method

.method public onRootFail(Lcloudsdk/ext/kr/RootExtInfo;Lcloudsdk/ext/kr/RootExtInfo;)V
    .locals 12

    .prologue
    const-wide/16 v10, 0x1770

    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 188
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 190
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/akj;->aT(Landroid/content/Context;)Lcom/kingroot/kinguser/akj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/akj;->AN()V

    .line 191
    iget-wide v8, p0, Lcom/kingroot/kinguser/aus;->aSq:J

    sub-long v8, v6, v8

    cmp-long v0, v8, v10

    if-gez v0, :cond_0

    .line 193
    new-instance v0, Lcom/kingroot/kinguser/aus$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/kingroot/kinguser/aus$1;-><init>(Lcom/kingroot/kinguser/aus;Lcloudsdk/ext/kr/RootExtInfo;Lcloudsdk/ext/kr/RootExtInfo;)V

    iget-wide v2, p0, Lcom/kingroot/kinguser/aus;->aSq:J

    sub-long/2addr v2, v6

    add-long/2addr v2, v10

    invoke-static {v0, v2, v3}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;J)V

    .line 253
    :goto_0
    return-void

    .line 201
    :cond_0
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/kingroot/kinguser/aus;->aSq:J

    .line 204
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/aks;->bR(Z)V

    .line 206
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v2, 0x188b5

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 209
    iget v0, p0, Lcom/kingroot/kinguser/aus;->aSm:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_3

    .line 213
    iget-boolean v0, p0, Lcom/kingroot/kinguser/aus;->aSr:Z

    if-eqz v0, :cond_2

    .line 215
    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/aus;->da(Z)V

    move v3, v4

    .line 249
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/kingroot/kinguser/aus;->QO()V

    .line 251
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    move v2, v1

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/kingroot/kinguser/ady;->c(IIIII)V

    goto :goto_0

    .line 218
    :cond_2
    invoke-virtual {p0}, Lcom/kingroot/kinguser/aus;->QK()V

    move v3, v4

    goto :goto_1

    .line 224
    :cond_3
    invoke-static {p1}, Lcom/kingroot/kinguser/bbs;->b(Lcloudsdk/ext/kr/RootExtInfo;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p1, Lcloudsdk/ext/kr/RootExtInfo;->canRoot:I

    if-ne v0, v3, :cond_6

    .line 227
    iget-object v0, p0, Lcom/kingroot/kinguser/aus;->aSk:Lcom/kingroot/kinguser/auj$b;

    invoke-interface {v0}, Lcom/kingroot/kinguser/auj$b;->Qn()V

    move v0, v3

    .line 230
    :goto_2
    if-nez v0, :cond_1

    .line 232
    invoke-static {p2}, Lcom/kingroot/kinguser/bbs;->b(Lcloudsdk/ext/kr/RootExtInfo;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p2, Lcloudsdk/ext/kr/RootExtInfo;->canRoot:I

    if-ne v0, v3, :cond_4

    .line 234
    iget-object v0, p0, Lcom/kingroot/kinguser/aus;->aSk:Lcom/kingroot/kinguser/auj$b;

    invoke-interface {v0, p2, v3}, Lcom/kingroot/kinguser/auj$b;->a(Lcloudsdk/ext/kr/RootExtInfo;Z)V

    goto :goto_1

    .line 237
    :cond_4
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/akj;->aT(Landroid/content/Context;)Lcom/kingroot/kinguser/akj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/akj;->AI()Z

    move-result v0

    .line 238
    if-eqz v0, :cond_5

    .line 240
    invoke-static {}, Lcom/kingroot/kinguser/bbk;->Wo()Lcom/kingroot/kinguser/bbk;

    move-result-object v0

    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/bbk;->bk(Landroid/content/Context;)V

    .line 241
    iget-object v0, p0, Lcom/kingroot/kinguser/aus;->aSk:Lcom/kingroot/kinguser/auj$b;

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/auj$b;->cS(Z)V

    goto :goto_1

    .line 243
    :cond_5
    iget-object v0, p0, Lcom/kingroot/kinguser/aus;->aSk:Lcom/kingroot/kinguser/auj$b;

    invoke-interface {v0, v3}, Lcom/kingroot/kinguser/auj$b;->cT(Z)V

    goto :goto_1

    :cond_6
    move v0, v1

    goto :goto_2
.end method

.method public onRootSuc(I)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x1770

    .line 260
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 261
    iget-wide v2, p0, Lcom/kingroot/kinguser/aus;->aSq:J

    sub-long v2, v0, v2

    cmp-long v2, v2, v6

    if-gez v2, :cond_0

    .line 263
    new-instance v2, Lcom/kingroot/kinguser/aus$6;

    invoke-direct {v2, p0, p1}, Lcom/kingroot/kinguser/aus$6;-><init>(Lcom/kingroot/kinguser/aus;I)V

    iget-wide v4, p0, Lcom/kingroot/kinguser/aus;->aSq:J

    sub-long v0, v4, v0

    add-long/2addr v0, v6

    invoke-static {v2, v0, v1}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;J)V

    .line 276
    :goto_0
    return-void

    .line 271
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingroot/kinguser/aus;->aSq:J

    .line 274
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/aus;->aSu:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    goto :goto_0
.end method

.method public onRooting(IIII)V
    .locals 6

    .prologue
    .line 296
    iget v0, p0, Lcom/kingroot/kinguser/aus;->mProgress:I

    if-le p4, v0, :cond_1

    :goto_0
    iput p4, p0, Lcom/kingroot/kinguser/aus;->mProgress:I

    .line 298
    iget-wide v0, p0, Lcom/kingroot/kinguser/aus;->aSq:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 299
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/aus;->aSq:J

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/aus;->aSs:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 303
    iget-object v0, p0, Lcom/kingroot/kinguser/aus;->aSk:Lcom/kingroot/kinguser/auj$b;

    iget v1, p0, Lcom/kingroot/kinguser/aus;->aSm:I

    iget v5, p0, Lcom/kingroot/kinguser/aus;->mProgress:I

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/kingroot/kinguser/auj$b;->e(IIIII)V

    .line 308
    :goto_1
    return-void

    .line 296
    :cond_1
    iget p4, p0, Lcom/kingroot/kinguser/aus;->mProgress:I

    goto :goto_0

    .line 305
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/aus;->aSk:Lcom/kingroot/kinguser/auj$b;

    iget v1, p0, Lcom/kingroot/kinguser/aus;->aSm:I

    iget v5, p0, Lcom/kingroot/kinguser/aus;->mProgress:I

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/kingroot/kinguser/auj$b;->d(IIIII)V

    goto :goto_1
.end method

.method public onSettingNetwork()V
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/kingroot/kinguser/aus;->aSk:Lcom/kingroot/kinguser/auj$b;

    invoke-interface {v0}, Lcom/kingroot/kinguser/auj$b;->Qo()V

    .line 284
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method public verifyClientRootSuc(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 471
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/aus;->aSt:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 472
    const-string v1, "su"

    invoke-static {v1}, Lcom/kingroot/kinguser/abj;->en(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 473
    const-string v1, "su"

    invoke-static {v1}, Lcom/kingroot/kinguser/abj;->ep(Ljava/lang/String;)Lcom/kingroot/kinguser/abm;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 474
    const/4 v0, 0x1

    .line 479
    :cond_0
    return v0
.end method
