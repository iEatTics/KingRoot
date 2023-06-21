.class public Lcom/kingroot/kinguser/anq;
.super Lcom/kingroot/kinguser/ans;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/aoa;


# instance fields
.field private Gc:I

.field private aDc:I

.field private aDd:Ljava/lang/String;

.field private aDe:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final aDf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/ame;",
            ">;"
        }
    .end annotation
.end field

.field private aDg:Lcom/kingroot/kinguser/zi;

.field private aDh:Lcom/kingroot/kinguser/aoi;

.field private aDi:Lcom/kingroot/kinguser/anz;

.field private aDj:Lcom/kingroot/kinguser/anr;

.field private aDk:Lcom/kingroot/kinguser/aoc;

.field private aDl:Lcom/kingroot/kinguser/aof;

.field private aDm:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

.field private aDn:Lcom/kingroot/kinguser/alg$a;

.field private aDo:Lcom/kingroot/kinguser/alh$c;

.field private aDp:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ISearchAppsListener;

.field private aDq:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IReqSuggWordListener;

.field private akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

.field private amm:Lcom/kingcore/uilib/ProgressWhell;

.field private awu:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

.field private mHandler:Landroid/os/Handler;

.field private mOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 211
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ans;-><init>(Landroid/content/Context;)V

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/anq;->aDf:Ljava/util/List;

    .line 90
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/anq;->aDg:Lcom/kingroot/kinguser/zi;

    .line 100
    new-instance v0, Lcom/kingroot/kinguser/anq$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/anq$1;-><init>(Lcom/kingroot/kinguser/anq;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/anq;->mHandler:Landroid/os/Handler;

    .line 497
    new-instance v0, Lcom/kingroot/kinguser/anq$4;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/anq$4;-><init>(Lcom/kingroot/kinguser/anq;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/anq;->aDn:Lcom/kingroot/kinguser/alg$a;

    .line 510
    new-instance v0, Lcom/kingroot/kinguser/anq$5;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/anq$5;-><init>(Lcom/kingroot/kinguser/anq;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/anq;->aDo:Lcom/kingroot/kinguser/alh$c;

    .line 531
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$7;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$7;-><init>(Lcom/kingroot/kinguser/anq;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/anq;->aDp:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ISearchAppsListener;

    .line 578
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$8;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$8;-><init>(Lcom/kingroot/kinguser/anq;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/anq;->aDq:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IReqSuggWordListener;

    .line 591
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$9;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$9;-><init>(Lcom/kingroot/kinguser/anq;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/anq;->awu:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

    .line 703
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$10;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$10;-><init>(Lcom/kingroot/kinguser/anq;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/anq;->akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    .line 212
    return-void
.end method

.method private JA()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 728
    iget-object v0, p0, Lcom/kingroot/kinguser/anq;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 729
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 730
    iput v1, v0, Landroid/os/Message;->what:I

    .line 731
    iget-object v1, p0, Lcom/kingroot/kinguser/anq;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 732
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/anq;I)I
    .locals 0

    .prologue
    .line 68
    iput p1, p0, Lcom/kingroot/kinguser/anq;->Gc:I

    return p1
.end method

.method static synthetic a(Lcom/kingroot/kinguser/anq;)Lcom/kingroot/kinguser/anz;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/kingroot/kinguser/anq;->aDi:Lcom/kingroot/kinguser/anz;

    return-object v0
.end method

.method public static synthetic a(Lcom/kingroot/kinguser/anq;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/kingroot/kinguser/anq;->aDm:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    return-object p1
.end method

.method static synthetic a(Lcom/kingroot/kinguser/anq;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/kingroot/kinguser/anq;->aDe:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/kingroot/kinguser/anq;Ljava/util/List;I)Ljava/util/List;
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/anq;->c(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic a(Lcom/kingroot/kinguser/anq;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/anq;->d(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private aJ(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 720
    iget-object v0, p0, Lcom/kingroot/kinguser/anq;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 721
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 722
    iput v1, v0, Landroid/os/Message;->what:I

    .line 723
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 724
    iget-object v1, p0, Lcom/kingroot/kinguser/anq;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 725
    return-void
.end method

.method private aK(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x3

    .line 735
    iget-object v0, p0, Lcom/kingroot/kinguser/anq;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 736
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 737
    iput v1, v0, Landroid/os/Message;->what:I

    .line 738
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 739
    iget-object v1, p0, Lcom/kingroot/kinguser/anq;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 740
    return-void
.end method

.method private aL(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x5

    .line 751
    iget-object v0, p0, Lcom/kingroot/kinguser/anq;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 752
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 753
    iput v1, v0, Landroid/os/Message;->what:I

    .line 754
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 755
    iget-object v1, p0, Lcom/kingroot/kinguser/anq;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 756
    return-void
.end method

.method public static synthetic b(Lcom/kingroot/kinguser/anq;I)I
    .locals 0

    .prologue
    .line 68
    iput p1, p0, Lcom/kingroot/kinguser/anq;->mOffset:I

    return p1
.end method

.method static synthetic b(Lcom/kingroot/kinguser/anq;)Lcom/kingroot/kinguser/anr;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/kingroot/kinguser/anq;->aDj:Lcom/kingroot/kinguser/anr;

    return-object v0
.end method

.method public static synthetic b(Lcom/kingroot/kinguser/anq;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/anq;->e(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b(Lcom/kingroot/kinguser/anq;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/anq;->h(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)V

    return-void
.end method

.method static synthetic b(Lcom/kingroot/kinguser/anq;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/anq;->aJ(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic c(Lcom/kingroot/kinguser/anq;I)I
    .locals 0

    .prologue
    .line 68
    iput p1, p0, Lcom/kingroot/kinguser/anq;->aDc:I

    return p1
.end method

.method static synthetic c(Lcom/kingroot/kinguser/anq;)Lcom/kingroot/kinguser/aoc;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/kingroot/kinguser/anq;->aDk:Lcom/kingroot/kinguser/aoc;

    return-object v0
.end method

.method private c(Ljava/util/List;I)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 430
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 431
    invoke-static {p1}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 454
    :cond_0
    return-object v0

    .line 435
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 437
    new-array v3, v2, [Z

    .line 440
    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 441
    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    .line 443
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_0

    .line 445
    :cond_2
    invoke-virtual {v5, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    .line 446
    aget-boolean v7, v3, v6

    if-nez v7, :cond_2

    .line 449
    const/4 v7, 0x1

    aput-boolean v7, v3, v6

    .line 451
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static synthetic c(Lcom/kingroot/kinguser/anq;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/anq;->aL(Ljava/util/List;)V

    return-void
.end method

.method static synthetic d(Lcom/kingroot/kinguser/anq;)Lcom/kingroot/kinguser/aof;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/kingroot/kinguser/anq;->aDl:Lcom/kingroot/kinguser/aof;

    return-object v0
.end method

.method private d(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 459
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 461
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 462
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    .line 463
    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->pkgName:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 467
    :cond_1
    return-void
.end method

.method public static synthetic e(Lcom/kingroot/kinguser/anq;)Ljava/util/List;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/kingroot/kinguser/anq;->aDf:Ljava/util/List;

    return-object v0
.end method

.method private e(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/ame;",
            ">;"
        }
    .end annotation

    .prologue
    .line 470
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 472
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 475
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    .line 476
    const/4 v1, 0x0

    move v2, v1

    .line 478
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 479
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;

    .line 480
    iget-object v6, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->pkgName:Ljava/lang/String;

    iget-object v7, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->pkgName:Ljava/lang/String;

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 482
    invoke-static {v1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->b(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 483
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 485
    const/4 v1, 0x1

    :goto_2
    move v2, v1

    .line 487
    goto :goto_1

    .line 488
    :cond_1
    if-nez v2, :cond_0

    .line 490
    new-instance v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    invoke-direct {v1, v0}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;-><init>(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 494
    :cond_2
    return-object v3

    :cond_3
    move v1, v2

    goto :goto_2
.end method

.method static synthetic f(Lcom/kingroot/kinguser/anq;)I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/kingroot/kinguser/anq;->Gc:I

    return v0
.end method

.method static synthetic g(Lcom/kingroot/kinguser/anq;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/kingroot/kinguser/anq;->aDd:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/kingroot/kinguser/anq;)I
    .locals 2

    .prologue
    .line 68
    iget v0, p0, Lcom/kingroot/kinguser/anq;->Gc:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/kingroot/kinguser/anq;->Gc:I

    return v0
.end method

.method private h(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)V
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 759
    iget-object v0, p0, Lcom/kingroot/kinguser/anq;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 760
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 761
    iput v1, v0, Landroid/os/Message;->what:I

    .line 762
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 763
    iget-object v1, p0, Lcom/kingroot/kinguser/anq;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 764
    return-void
.end method

.method private hD(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 743
    iget-object v0, p0, Lcom/kingroot/kinguser/anq;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 744
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 745
    iput v1, v0, Landroid/os/Message;->what:I

    .line 746
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 747
    iget-object v1, p0, Lcom/kingroot/kinguser/anq;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 748
    return-void
.end method

.method static synthetic i(Lcom/kingroot/kinguser/anq;)Lcom/kingcore/uilib/ProgressWhell;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/kingroot/kinguser/anq;->amm:Lcom/kingcore/uilib/ProgressWhell;

    return-object v0
.end method

.method static synthetic j(Lcom/kingroot/kinguser/anq;)Ljava/util/List;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/kingroot/kinguser/anq;->aDe:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic k(Lcom/kingroot/kinguser/anq;)I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/kingroot/kinguser/anq;->mOffset:I

    return v0
.end method

.method public static synthetic l(Lcom/kingroot/kinguser/anq;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/kingroot/kinguser/anq;->aDm:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    return-object v0
.end method

.method static synthetic m(Lcom/kingroot/kinguser/anq;)Lcom/kingroot/kinguser/aoi;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/kingroot/kinguser/anq;->aDh:Lcom/kingroot/kinguser/aoi;

    return-object v0
.end method

.method public static synthetic n(Lcom/kingroot/kinguser/anq;)Lcom/kingroot/kinguser/zi;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/kingroot/kinguser/anq;->aDg:Lcom/kingroot/kinguser/zi;

    return-object v0
.end method

.method public static synthetic o(Lcom/kingroot/kinguser/anq;)I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/kingroot/kinguser/anq;->aDc:I

    return v0
.end method

.method public static synthetic p(Lcom/kingroot/kinguser/anq;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/kingroot/kinguser/anq;->JA()V

    return-void
.end method

.method public static synthetic q(Lcom/kingroot/kinguser/anq;)Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/kingroot/kinguser/anq;->akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    return-object v0
.end method


# virtual methods
.method public AV()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 418
    invoke-static {}, Lcom/kingroot/kinguser/akl;->AS()Lcom/kingroot/kinguser/akl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/akl;->AV()V

    .line 419
    invoke-virtual {p0, v1}, Lcom/kingroot/kinguser/anq;->cB(Z)V

    .line 420
    invoke-virtual {p0, v1}, Lcom/kingroot/kinguser/anq;->cC(Z)V

    .line 421
    return-void
.end method

.method public B(Ljava/lang/String;Z)V
    .locals 6

    .prologue
    .line 277
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    const-string v0, "commonappsearchpage"

    const-string v1, "mCurrentWord.equals(mPreviousWord), \u4e0d\u8fdb\u884c\u641c\u7d22"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/cgp;->h(Ljava/lang/String;Ljava/lang/Object;)V

    .line 299
    :goto_0
    return-void

    .line 283
    :cond_0
    if-nez p2, :cond_1

    .line 284
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/anq;->aDc:I

    .line 285
    iget-object v1, p0, Lcom/kingroot/kinguser/anq;->aDf:Ljava/util/List;

    monitor-enter v1

    .line 286
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/anq;->aDf:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 287
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    iput-object p1, p0, Lcom/kingroot/kinguser/anq;->aDd:Ljava/lang/String;

    .line 291
    invoke-static {}, Lcom/kingroot/kinguser/akl;->AS()Lcom/kingroot/kinguser/akl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/akl;->gK(Ljava/lang/String;)V

    .line 294
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/anq;->hD(Ljava/lang/String;)V

    .line 297
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/alq;->GY()Lcom/kingroot/kinguser/ams;

    move-result-object v0

    const v1, 0x4c7a21

    const/16 v3, 0x1e

    iget v4, p0, Lcom/kingroot/kinguser/anq;->aDc:I

    iget-object v5, p0, Lcom/kingroot/kinguser/anq;->aDp:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ISearchAppsListener;

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/kingroot/kinguser/ams;->a(ILjava/lang/String;IILcom/kingroot/kinguser/distribution/appsmarket/interfaces/ISearchAppsListener;)V

    goto :goto_0

    .line 287
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public Jx()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 370
    invoke-virtual {p0}, Lcom/kingroot/kinguser/anq;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 371
    invoke-virtual {p0}, Lcom/kingroot/kinguser/anq;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 372
    return-void
.end method

.method public Jy()V
    .locals 3

    .prologue
    .line 376
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/anq;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 377
    if-eqz v0, :cond_0

    .line 378
    invoke-virtual {p0}, Lcom/kingroot/kinguser/anq;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 379
    if-eqz v1, :cond_0

    .line 380
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    :cond_0
    :goto_0
    return-void

    .line 383
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public Jz()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 403
    invoke-static {}, Lcom/kingroot/kinguser/akl;->AS()Lcom/kingroot/kinguser/akl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/akl;->AU()Ljava/util/List;

    move-result-object v0

    .line 404
    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 405
    invoke-virtual {p0, v2}, Lcom/kingroot/kinguser/anq;->cB(Z)V

    .line 406
    invoke-virtual {p0, v2}, Lcom/kingroot/kinguser/anq;->cC(Z)V

    .line 414
    :goto_0
    return-void

    .line 410
    :cond_0
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/anq;->aK(Ljava/util/List;)V

    .line 413
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x188f2

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    goto :goto_0
.end method

.method protected ah(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 216
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 217
    iget-object v0, p0, Lcom/kingroot/kinguser/anq;->aDf:Ljava/util/List;

    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/kingroot/kinguser/anq;->aDf:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ame;

    .line 219
    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->pkgName:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/anq;->awu:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

    iget-object v2, p0, Lcom/kingroot/kinguser/anq;->akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    invoke-static {p1, v1, v0, v2}, Lcom/kingroot/kinguser/anf;->a(Ljava/util/List;Ljava/util/List;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;)V

    .line 224
    iget-object v0, p0, Lcom/kingroot/kinguser/anq;->aDl:Lcom/kingroot/kinguser/aof;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/aof;->ah(Ljava/util/List;)V

    .line 225
    return-void
.end method

.method public cB(Z)V
    .locals 3

    .prologue
    .line 303
    invoke-static {}, Lcom/kingroot/kinguser/anh;->IW()Lcom/kingroot/kinguser/anh;

    move-result-object v0

    const v1, 0x4c7a8f

    new-instance v2, Lcom/kingroot/kinguser/anq$3;

    invoke-direct {v2, p0, p1}, Lcom/kingroot/kinguser/anq$3;-><init>(Lcom/kingroot/kinguser/anq;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/anh;->a(ILcom/kingroot/kinguser/anh$a;)V

    .line 313
    return-void
.end method

.method public cC(Z)V
    .locals 5

    .prologue
    .line 317
    invoke-static {}, Lcom/kingroot/kinguser/alq;->GY()Lcom/kingroot/kinguser/ams;

    move-result-object v0

    const v1, 0x4c7a22

    const/16 v2, 0x1e

    iget v3, p0, Lcom/kingroot/kinguser/anq;->mOffset:I

    new-instance v4, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$4;

    invoke-direct {v4, p0, p1}, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$4;-><init>(Lcom/kingroot/kinguser/anq;Z)V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/ams;->a(IIILcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener;)V

    .line 359
    return-void
.end method

.method public hC(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 365
    invoke-static {}, Lcom/kingroot/kinguser/alq;->GY()Lcom/kingroot/kinguser/ams;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/anq;->aDq:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IReqSuggWordListener;

    invoke-interface {v0, p1, v1}, Lcom/kingroot/kinguser/ams;->a(Ljava/lang/String;Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IReqSuggWordListener;)V

    .line 366
    return-void
.end method

.method protected oG()Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 235
    invoke-virtual {p0}, Lcom/kingroot/kinguser/anq;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v6, v6}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 236
    invoke-virtual {p0}, Lcom/kingroot/kinguser/anq;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 237
    const-string v1, "app_search_hint_hot_word"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 239
    invoke-virtual {p0}, Lcom/kingroot/kinguser/anq;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 240
    const v2, 0x7f030032

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 241
    const v0, 0x7f0f00f5

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 242
    const v0, 0x7f0f000c

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kingcore/uilib/ProgressWhell;

    iput-object v0, p0, Lcom/kingroot/kinguser/anq;->amm:Lcom/kingcore/uilib/ProgressWhell;

    .line 243
    iget-object v0, p0, Lcom/kingroot/kinguser/anq;->amm:Lcom/kingcore/uilib/ProgressWhell;

    invoke-virtual {v0, v6}, Lcom/kingcore/uilib/ProgressWhell;->setVisibility(I)V

    .line 244
    iget-object v0, p0, Lcom/kingroot/kinguser/anq;->amm:Lcom/kingcore/uilib/ProgressWhell;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v4

    const v5, 0x7f0e0018

    invoke-virtual {v4, v5}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/kingcore/uilib/ProgressWhell;->setBarColor(I)V

    .line 245
    iget-object v0, p0, Lcom/kingroot/kinguser/anq;->amm:Lcom/kingcore/uilib/ProgressWhell;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/kingcore/uilib/ProgressWhell;->setProgress(F)V

    .line 246
    iget-object v0, p0, Lcom/kingroot/kinguser/anq;->amm:Lcom/kingcore/uilib/ProgressWhell;

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v4}, Lcom/kingroot/kinguser/abg;->r(F)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/kingcore/uilib/ProgressWhell;->setBarWidth(I)V

    .line 247
    iget-object v0, p0, Lcom/kingroot/kinguser/anq;->amm:Lcom/kingcore/uilib/ProgressWhell;

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-static {v4}, Lcom/kingroot/kinguser/abg;->r(F)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/kingcore/uilib/ProgressWhell;->setCircleRadius(I)V

    .line 248
    iget-object v0, p0, Lcom/kingroot/kinguser/anq;->amm:Lcom/kingcore/uilib/ProgressWhell;

    new-instance v4, Lcom/kingroot/kinguser/anq$2;

    invoke-direct {v4, p0}, Lcom/kingroot/kinguser/anq$2;-><init>(Lcom/kingroot/kinguser/anq;)V

    invoke-virtual {v0, v4}, Lcom/kingcore/uilib/ProgressWhell;->setCallback(Lcom/kingcore/uilib/ProgressWhell$a;)V

    .line 258
    new-instance v0, Lcom/kingroot/kinguser/aoi;

    invoke-direct {v0, v3, v1, p0}, Lcom/kingroot/kinguser/aoi;-><init>(Landroid/view/View;Ljava/lang/String;Lcom/kingroot/kinguser/aoa;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/anq;->aDh:Lcom/kingroot/kinguser/aoi;

    .line 259
    const v0, 0x7f0f01b6

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 260
    new-instance v1, Lcom/kingroot/kinguser/anz;

    iget-object v4, p0, Lcom/kingroot/kinguser/anq;->aDn:Lcom/kingroot/kinguser/alg$a;

    invoke-direct {v1, v0, p0, v4}, Lcom/kingroot/kinguser/anz;-><init>(Landroid/view/View;Lcom/kingroot/kinguser/aoa;Lcom/kingroot/kinguser/alg$a;)V

    iput-object v1, p0, Lcom/kingroot/kinguser/anq;->aDi:Lcom/kingroot/kinguser/anz;

    .line 261
    const v0, 0x7f0f00c3

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 262
    new-instance v1, Lcom/kingroot/kinguser/anr;

    iget-object v4, p0, Lcom/kingroot/kinguser/anq;->awu:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

    iget-object v5, p0, Lcom/kingroot/kinguser/anq;->akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    invoke-direct {v1, v0, v4, v5, p0}, Lcom/kingroot/kinguser/anr;-><init>(Landroid/view/View;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;Lcom/kingroot/kinguser/aoa;)V

    iput-object v1, p0, Lcom/kingroot/kinguser/anq;->aDj:Lcom/kingroot/kinguser/anr;

    .line 263
    iget-object v0, p0, Lcom/kingroot/kinguser/anq;->aDj:Lcom/kingroot/kinguser/anr;

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/anr;->i(Landroid/view/View;)V

    .line 264
    const v0, 0x7f0f01bc

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 265
    new-instance v1, Lcom/kingroot/kinguser/aoc;

    iget-object v3, p0, Lcom/kingroot/kinguser/anq;->aDo:Lcom/kingroot/kinguser/alh$c;

    invoke-direct {v1, v0, p0, v3}, Lcom/kingroot/kinguser/aoc;-><init>(Landroid/view/View;Lcom/kingroot/kinguser/aoa;Lcom/kingroot/kinguser/alh$c;)V

    iput-object v1, p0, Lcom/kingroot/kinguser/anq;->aDk:Lcom/kingroot/kinguser/aoc;

    .line 267
    const v0, 0x7f0f00fa

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 268
    new-instance v1, Lcom/kingroot/kinguser/aof;

    invoke-direct {v1, v0, p0}, Lcom/kingroot/kinguser/aof;-><init>(Landroid/view/View;Lcom/kingroot/kinguser/aoa;)V

    iput-object v1, p0, Lcom/kingroot/kinguser/anq;->aDl:Lcom/kingroot/kinguser/aof;

    .line 269
    iget-object v0, p0, Lcom/kingroot/kinguser/anq;->aDl:Lcom/kingroot/kinguser/aof;

    invoke-virtual {v0, v6}, Lcom/kingroot/kinguser/aof;->cD(Z)V

    .line 271
    return-object v2
.end method

.method protected oI()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 176
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x188ef

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 178
    invoke-virtual {p0}, Lcom/kingroot/kinguser/anq;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 179
    if-eqz v0, :cond_0

    .line 180
    const-string v1, "app_search_key_word"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 181
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 182
    iget-object v1, p0, Lcom/kingroot/kinguser/anq;->aDh:Lcom/kingroot/kinguser/aoi;

    invoke-virtual {v1, v0, v3}, Lcom/kingroot/kinguser/aoi;->C(Ljava/lang/String;Z)V

    .line 183
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/anq;->B(Ljava/lang/String;Z)V

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/bfm;->aah()Lcom/kingroot/kinguser/bfi;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Lcom/kingroot/kinguser/bfi;->ai(II)V

    .line 187
    iget-object v0, p0, Lcom/kingroot/kinguser/anq;->aDh:Lcom/kingroot/kinguser/aoi;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aoi;->JS()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/anq;->s(Landroid/view/View;)V

    .line 188
    invoke-virtual {p0, v3}, Lcom/kingroot/kinguser/anq;->cB(Z)V

    .line 189
    invoke-virtual {p0, v3}, Lcom/kingroot/kinguser/anq;->cC(Z)V

    goto :goto_0
.end method

.method protected oO()Lcom/kingroot/kinguser/yp;
    .locals 1

    .prologue
    .line 229
    invoke-super {p0}, Lcom/kingroot/kinguser/ans;->oO()Lcom/kingroot/kinguser/yp;

    move-result-object v0

    return-object v0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 196
    invoke-super {p0}, Lcom/kingroot/kinguser/ans;->onResume()V

    .line 197
    iget-object v0, p0, Lcom/kingroot/kinguser/anq;->aDl:Lcom/kingroot/kinguser/aof;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/kingroot/kinguser/anq;->aDl:Lcom/kingroot/kinguser/aof;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aof;->resume()V

    .line 200
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 204
    invoke-static {}, Lcom/kingroot/kinguser/amz;->II()Lcom/kingroot/kinguser/amz;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/anq;->awu:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/amz;->a(Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;)V

    .line 205
    invoke-static {}, Lcom/kingroot/kinguser/aso;->Ol()Lcom/kingroot/kinguser/aso;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/anq;->akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aso;->a(Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;)V

    .line 206
    iget-object v0, p0, Lcom/kingroot/kinguser/anq;->aDl:Lcom/kingroot/kinguser/aof;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aof;->recycle()V

    .line 207
    invoke-super {p0}, Lcom/kingroot/kinguser/ans;->onStop()V

    .line 208
    return-void
.end method

.method public s(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 389
    if-nez p1, :cond_0

    .line 399
    :goto_0
    return-void

    .line 393
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 394
    invoke-virtual {p0}, Lcom/kingroot/kinguser/anq;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 395
    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 396
    :catch_0
    move-exception v0

    goto :goto_0
.end method
