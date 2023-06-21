.class public Lcom/kingroot/kinguser/aut;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/auk$a;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final aSJ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/bcy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final aSI:Lcom/kingroot/kinguser/auk$b;

.field private final aSK:Lcom/kingroot/kinguser/bdd;

.field private aSL:Z

.field private aSM:Z

.field private aSN:Lcom/kingroot/kinguser/bed;

.field private acW:Lcom/kingroot/kinguser/bis;

.field private final alI:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/bcy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/kingroot/kinguser/aiq;->asc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_Presenter"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/aut;->TAG:Ljava/lang/String;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/aut;->aSJ:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/kingroot/kinguser/auk$b;)V
    .locals 5
    .param p1    # Lcom/kingroot/kinguser/auk$b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x1

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/aut;->alI:Ljava/util/List;

    .line 101
    new-instance v0, Lcom/kingroot/kinguser/bdd;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bdd;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/aut;->aSK:Lcom/kingroot/kinguser/bdd;

    .line 104
    iput-boolean v4, p0, Lcom/kingroot/kinguser/aut;->aSL:Z

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/aut;->aSM:Z

    .line 106
    new-instance v0, Lcom/kingroot/kinguser/bis;

    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/bis;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aut;->acW:Lcom/kingroot/kinguser/bis;

    .line 129
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/aut$1;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/aut$1;-><init>(Lcom/kingroot/kinguser/aut;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aut;->aSN:Lcom/kingroot/kinguser/bed;

    .line 109
    invoke-static {p1}, Lcom/kingroot/kinguser/zd;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/auk$b;

    iput-object v0, p0, Lcom/kingroot/kinguser/aut;->aSI:Lcom/kingroot/kinguser/auk$b;

    .line 110
    return-void
.end method

.method private QP()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/bcy;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    .line 657
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    .line 660
    invoke-static {}, Lcom/kingroot/kinguser/bfw;->aaS()Lcom/kingroot/kinguser/bfw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bfw;->aaU()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/kingroot/kinguser/bfp;->aay()Lcom/kingroot/kinguser/bfp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bfp;->isEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 661
    sget-object v0, Lcom/kingroot/kinguser/aut;->aSJ:Ljava/util/List;

    .line 697
    :goto_0
    return-object v0

    .line 665
    :cond_0
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Gg()J

    move-result-wide v2

    .line 666
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/32 v4, 0x19bfcc00

    cmp-long v1, v2, v4

    if-gtz v1, :cond_1

    .line 667
    sget-object v0, Lcom/kingroot/kinguser/aut;->aSJ:Ljava/util/List;

    goto :goto_0

    .line 671
    :cond_1
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Gh()I

    move-result v0

    .line 672
    if-lt v0, v6, :cond_2

    .line 673
    sget-object v0, Lcom/kingroot/kinguser/aut;->aSJ:Ljava/util/List;

    goto :goto_0

    .line 677
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/bfw;->aaS()Lcom/kingroot/kinguser/bfw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bfw;->abg()I

    move-result v0

    if-lt v0, v6, :cond_3

    .line 678
    sget-object v0, Lcom/kingroot/kinguser/aut;->aSJ:Ljava/util/List;

    goto :goto_0

    .line 681
    :cond_3
    iget-boolean v0, p0, Lcom/kingroot/kinguser/aut;->aSM:Z

    if-nez v0, :cond_4

    .line 682
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x1886f

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 686
    :cond_4
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    .line 687
    const v1, 0x7f02022c

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 688
    const v2, 0x7f070500

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 689
    const v3, 0x7f0704e8

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 690
    const v4, 0x7f0702dc

    invoke-virtual {v0, v4}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 692
    new-instance v4, Lcom/kingroot/kinguser/bdc;

    invoke-direct {v4, v1, v2, v3, v0}, Lcom/kingroot/kinguser/bdc;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 695
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private QQ()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/bcy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 802
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Fq()J

    move-result-wide v0

    .line 803
    invoke-static {v0, v1}, Lcom/kingroot/kinguser/aut;->ca(J)Z

    move-result v0

    .line 804
    if-nez v0, :cond_0

    .line 806
    sget-object v0, Lcom/kingroot/kinguser/aut;->aSJ:Ljava/util/List;

    .line 873
    :goto_0
    return-object v0

    .line 810
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Fp()J

    move-result-wide v0

    .line 811
    invoke-static {v0, v1}, Lcom/kingroot/kinguser/aut;->ca(J)Z

    move-result v0

    .line 812
    if-nez v0, :cond_1

    .line 814
    sget-object v0, Lcom/kingroot/kinguser/aut;->aSJ:Ljava/util/List;

    goto :goto_0

    .line 818
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/apc;->KS()Lcom/kingroot/kinguser/apc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/apc;->JY()Ljava/util/List;

    move-result-object v0

    .line 819
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 821
    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->e(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;

    .line 822
    if-eqz v0, :cond_2

    .line 825
    invoke-virtual {v0}, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->Km()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 826
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 830
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 832
    sget-object v0, Lcom/kingroot/kinguser/aut;->aSJ:Ljava/util/List;

    goto :goto_0

    .line 838
    :cond_4
    const/4 v1, 0x0

    .line 839
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Fo()Ljava/lang/String;

    move-result-object v3

    .line 840
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 842
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;

    .line 843
    iget-object v5, v0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move-object v1, v0

    .line 852
    :cond_6
    if-nez v1, :cond_7

    .line 853
    const/4 v0, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bdi;->ag(II)I

    move-result v0

    .line 854
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;

    .line 855
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v1

    iget-object v2, v0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/aks;->hl(Ljava/lang/String;)V

    move-object v1, v0

    .line 859
    :cond_7
    iget-boolean v0, p0, Lcom/kingroot/kinguser/aut;->aSM:Z

    if-nez v0, :cond_8

    .line 860
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v2, 0x18872

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 863
    :cond_8
    invoke-static {}, Lcom/kingroot/kinguser/apv;->LO()Lcom/kingroot/kinguser/apv;

    move-result-object v0

    iget-object v2, v1, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->iconUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/apv;->ic(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 864
    invoke-static {v0}, Lcom/kingroot/kinguser/bdi;->f(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 866
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    .line 867
    const v3, 0x7f0702dc

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 868
    new-instance v0, Lcom/kingroot/kinguser/bdi;

    iget-object v3, v1, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->mainTitle:Ljava/lang/String;

    iget-object v4, v1, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->softTitle:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/kingroot/kinguser/bdi;-><init>(Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 871
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    .line 873
    goto/16 :goto_0
.end method

.method private QS()Lcom/kingroot/kinguser/bde;
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1088
    invoke-static {}, Lcom/kingroot/kinguser/bfw;->aaS()Lcom/kingroot/kinguser/bfw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bfw;->aaU()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1101
    :cond_0
    :goto_0
    return-object v0

    .line 1092
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/bfs;->aaI()Lcom/kingroot/kinguser/bfs;

    move-result-object v1

    const-wide/32 v2, 0x36ee80

    invoke-virtual {v1, v5, v2, v3}, Lcom/kingroot/kinguser/bfs;->a(ZJ)Ljava/util/List;

    move-result-object v1

    .line 1094
    invoke-static {v1}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1098
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 1099
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;

    .line 1101
    new-instance v1, Lcom/kingroot/kinguser/bde;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v3

    const v4, 0x7f070511

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/kingroot/kinguser/zi;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-wide v4, v0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->bnv:J

    invoke-direct {v1, v2, v4, v5}, Lcom/kingroot/kinguser/bde;-><init>(Ljava/lang/String;J)V

    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/aut;)Ljava/util/List;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/kingroot/kinguser/aut;->alI:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/aut;Z)Ljava/util/List;
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/aut;->db(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Lcom/kingroot/kinguser/aut;->aSK:Lcom/kingroot/kinguser/bdd;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/bdd;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 570
    iget-object v0, p0, Lcom/kingroot/kinguser/aut;->aSK:Lcom/kingroot/kinguser/bdd;

    invoke-virtual {v0, p3}, Lcom/kingroot/kinguser/bdd;->setTitleColor(I)V

    .line 571
    iget-object v0, p0, Lcom/kingroot/kinguser/aut;->aSK:Lcom/kingroot/kinguser/bdd;

    invoke-virtual {v0, p2}, Lcom/kingroot/kinguser/bdd;->setTitle(Ljava/lang/String;)V

    .line 572
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/aut;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/aut;->br(Ljava/util/List;)V

    return-void
.end method

.method private a(Lcom/kingroot/kinguser/bdg;I)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 236
    invoke-virtual {p1, v5}, Lcom/kingroot/kinguser/bdg;->ik(I)V

    .line 237
    iget-object v0, p0, Lcom/kingroot/kinguser/aut;->aSI:Lcom/kingroot/kinguser/auk$b;

    invoke-interface {v0, p2, p1}, Lcom/kingroot/kinguser/auk$b;->a(ILcom/kingroot/kinguser/bdg;)V

    .line 239
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 241
    invoke-virtual {p1}, Lcom/kingroot/kinguser/bdg;->YB()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 242
    invoke-static {}, Lcom/kingroot/kinguser/bcs;->Yc()Lcom/kingroot/kinguser/bcs;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/String;

    .line 243
    invoke-virtual {p1}, Lcom/kingroot/kinguser/bdg;->getTitle()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 242
    invoke-virtual {v2, v3, v5}, Lcom/kingroot/kinguser/bcs;->h(Ljava/util/List;I)Z

    .line 248
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    .line 251
    invoke-static {v7, v0, v1}, Lcom/kingroot/kinguser/aut;->f(IJ)V

    .line 252
    invoke-virtual {p1, v7}, Lcom/kingroot/kinguser/bdg;->ik(I)V

    .line 253
    iget-object v0, p0, Lcom/kingroot/kinguser/aut;->aSI:Lcom/kingroot/kinguser/auk$b;

    invoke-interface {v0, p2, p1}, Lcom/kingroot/kinguser/auk$b;->a(ILcom/kingroot/kinguser/bdg;)V

    .line 256
    const-wide/16 v0, 0x0

    invoke-static {v5, v0, v1}, Lcom/kingroot/kinguser/aut;->f(IJ)V

    .line 257
    invoke-virtual {p1, v6}, Lcom/kingroot/kinguser/bdg;->ik(I)V

    .line 258
    return-void

    .line 245
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/bcr;->XT()Lcom/kingroot/kinguser/bcr;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/String;

    .line 246
    invoke-virtual {p1}, Lcom/kingroot/kinguser/bdg;->getTitle()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 245
    invoke-virtual {v2, v3, v5}, Lcom/kingroot/kinguser/bcr;->h(Ljava/util/List;I)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/aut;Lcom/kingroot/kinguser/bdg;I)Z
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/aut;->b(Lcom/kingroot/kinguser/bdg;I)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/aut;)Lcom/kingroot/kinguser/bdd;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/kingroot/kinguser/aut;->aSK:Lcom/kingroot/kinguser/bdd;

    return-object v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/aut;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/aut;->bq(Ljava/util/List;)V

    return-void
.end method

.method private static b(Lcom/kingroot/kinguser/bcy;)V
    .locals 6

    .prologue
    .line 311
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    const/4 v4, 0x0

    new-instance v5, Lcom/kingroot/kinguser/aut$4;

    invoke-direct {v5, p0}, Lcom/kingroot/kinguser/aut$4;-><init>(Lcom/kingroot/kinguser/bcy;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 333
    return-void
.end method

.method private b(Lcom/kingroot/kinguser/bdg;I)Z
    .locals 2

    .prologue
    .line 261
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x1886a

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 263
    invoke-virtual {p1}, Lcom/kingroot/kinguser/bdg;->YB()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/abc;->isRootPermition()Z

    move-result v0

    if-nez v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/kingroot/kinguser/aut;->aSI:Lcom/kingroot/kinguser/auk$b;

    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/auk$b;->d(Lcom/kingroot/kinguser/bdg;)V

    .line 266
    const/4 v0, 0x0

    .line 269
    :goto_0
    return v0

    .line 268
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/aut;->a(Lcom/kingroot/kinguser/bdg;I)V

    .line 269
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private bq(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/bcy;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 404
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 405
    iget-object v0, p0, Lcom/kingroot/kinguser/aut;->aSI:Lcom/kingroot/kinguser/auk$b;

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/auk$b;->cW(Z)V

    .line 409
    :goto_0
    return-void

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/aut;->aSI:Lcom/kingroot/kinguser/auk$b;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/auk$b;->cW(Z)V

    goto :goto_0
.end method

.method private br(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/bcy;",
            ">;)V"
        }
    .end annotation

    .prologue
    const v4, 0x7f0e0014

    const v3, 0x7f020229

    .line 490
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    .line 496
    iget-object v0, p0, Lcom/kingroot/kinguser/aut;->aSK:Lcom/kingroot/kinguser/bdd;

    const v1, 0x7f0702f1

    invoke-virtual {v2, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bdd;->kK(Ljava/lang/String;)V

    .line 499
    invoke-static {p1}, Lcom/kingroot/kinguser/aut;->bs(Ljava/util/List;)I

    move-result v0

    .line 500
    if-lez v0, :cond_0

    .line 501
    const v1, 0x7f0702f5

    invoke-virtual {v2, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 502
    const v1, 0x7f02022d

    invoke-virtual {v2, v1}, Lcom/kingroot/kinguser/zi;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 503
    const v3, 0x7f0e0108

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v2

    .line 504
    invoke-direct {p0, v1, v0, v2}, Lcom/kingroot/kinguser/aut;->a(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V

    .line 538
    :goto_0
    return-void

    .line 509
    :cond_0
    invoke-static {p1}, Lcom/kingroot/kinguser/aut;->bt(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 510
    const v0, 0x7f0702f2

    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 511
    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 512
    invoke-virtual {v2, v4}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v2

    .line 513
    invoke-direct {p0, v1, v0, v2}, Lcom/kingroot/kinguser/aut;->a(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V

    goto :goto_0

    .line 518
    :cond_1
    invoke-static {p1}, Lcom/kingroot/kinguser/aut;->bu(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 519
    const v0, 0x7f0702e3

    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 520
    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 521
    invoke-virtual {v2, v4}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v2

    .line 522
    invoke-direct {p0, v1, v0, v2}, Lcom/kingroot/kinguser/aut;->a(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V

    goto :goto_0

    .line 527
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/ahl;->xm()Lcom/kingroot/kinguser/ahl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ahl;->xo()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 528
    const v0, 0x7f0702f4

    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 529
    const v0, 0x7f02022b

    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/zi;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 535
    :goto_1
    const v3, 0x7f0e0078

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v2

    .line 537
    invoke-direct {p0, v0, v1, v2}, Lcom/kingroot/kinguser/aut;->a(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V

    goto :goto_0

    .line 531
    :cond_3
    const v0, 0x7f0702f3

    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 532
    const v0, 0x7f02022a

    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/zi;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1
.end method

.method private static bs(Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/bcy;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 541
    const/4 v0, 0x0

    .line 542
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bcy;

    .line 543
    instance-of v0, v0, Lcom/kingroot/kinguser/bcz;

    if-eqz v0, :cond_1

    .line 544
    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    .line 546
    goto :goto_0

    .line 547
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private static bt(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/bcy;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 551
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bcy;

    .line 552
    instance-of v2, v0, Lcom/kingroot/kinguser/bdc;

    if-eqz v2, :cond_0

    instance-of v0, v0, Lcom/kingroot/kinguser/bdi;

    if-nez v0, :cond_0

    .line 553
    const/4 v0, 0x1

    .line 556
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static bu(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/bcy;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 560
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bcy;

    .line 561
    instance-of v0, v0, Lcom/kingroot/kinguser/bdi;

    if-eqz v0, :cond_0

    .line 562
    const/4 v0, 0x1

    .line 565
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static bv(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/bcy;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1218
    new-instance v0, Lcom/kingroot/kinguser/aut$7;

    invoke-direct {v0}, Lcom/kingroot/kinguser/aut$7;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1224
    return-void
.end method

.method private static bw(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/bde;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1227
    new-instance v0, Lcom/kingroot/kinguser/aut$8;

    invoke-direct {v0}, Lcom/kingroot/kinguser/aut$8;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1233
    return-void
.end method

.method static synthetic c(Lcom/kingroot/kinguser/aut;)Lcom/kingroot/kinguser/auk$b;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/kingroot/kinguser/aut;->aSI:Lcom/kingroot/kinguser/auk$b;

    return-object v0
.end method

.method private static ca(J)Z
    .locals 6

    .prologue
    .line 889
    .line 891
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xf731400

    move-wide v0, p0

    .line 889
    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/adk;->b(JJJ)Z

    move-result v0

    .line 893
    return v0
.end method

.method private cb(J)Lcom/kingroot/kinguser/bde;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 986
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/aks;->Gi()J

    move-result-wide v2

    .line 987
    invoke-static {p1, p2, v2, v3}, Lcom/kingroot/kinguser/aut;->h(JJ)Z

    move-result v1

    if-nez v1, :cond_1

    .line 998
    :cond_0
    :goto_0
    return-object v0

    .line 992
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/bfw;->aaS()Lcom/kingroot/kinguser/bfw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bfw;->aaU()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 993
    invoke-static {}, Lcom/kingroot/kinguser/bfp;->aay()Lcom/kingroot/kinguser/bfp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bfp;->isEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 997
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f07050f

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 998
    new-instance v0, Lcom/kingroot/kinguser/bde;

    invoke-direct {v0, v1, v2, v3}, Lcom/kingroot/kinguser/bde;-><init>(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method private cc(J)Lcom/kingroot/kinguser/bde;
    .locals 5

    .prologue
    .line 1003
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->EX()J

    move-result-wide v2

    .line 1004
    invoke-static {p1, p2, v2, v3}, Lcom/kingroot/kinguser/aut;->h(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1005
    const/4 v0, 0x0

    .line 1010
    :goto_0
    return-object v0

    .line 1008
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f0702db

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1010
    new-instance v0, Lcom/kingroot/kinguser/bde;

    invoke-direct {v0, v1, v2, v3}, Lcom/kingroot/kinguser/bde;-><init>(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method private cd(J)Lcom/kingroot/kinguser/bde;
    .locals 5

    .prologue
    .line 1015
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Fa()J

    move-result-wide v2

    .line 1016
    invoke-static {p1, p2, v2, v3}, Lcom/kingroot/kinguser/aut;->h(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1017
    const/4 v0, 0x0

    .line 1022
    :goto_0
    return-object v0

    .line 1020
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f0702d5

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1022
    new-instance v0, Lcom/kingroot/kinguser/bde;

    invoke-direct {v0, v1, v2, v3}, Lcom/kingroot/kinguser/bde;-><init>(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method private ce(J)Lcom/kingroot/kinguser/bde;
    .locals 13

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1028
    invoke-static {}, Lcom/kingroot/kinguser/bcs;->Yc()Lcom/kingroot/kinguser/bcs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bcs;->XL()Ljava/util/List;

    move-result-object v0

    .line 1029
    invoke-static {}, Lcom/kingroot/kinguser/bcr;->XT()Lcom/kingroot/kinguser/bcr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bcr;->XL()Ljava/util/List;

    move-result-object v1

    .line 1030
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v5

    .line 1058
    :goto_0
    return-object v0

    .line 1033
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1034
    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1035
    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1040
    const-wide/16 v0, 0x0

    .line 1041
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-wide v2, v0

    move v1, v4

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/security/entity/ActionRecord;

    .line 1042
    iget-wide v8, v0, Lcom/kingroot/kinguser/security/entity/ActionRecord;->when:J

    invoke-static {p1, p2, v8, v9}, Lcom/kingroot/kinguser/aut;->h(JJ)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1043
    add-int/lit8 v1, v1, 0x1

    .line 1044
    iget-wide v8, v0, Lcom/kingroot/kinguser/security/entity/ActionRecord;->when:J

    cmp-long v7, v8, v2

    if-lez v7, :cond_3

    .line 1045
    iget-wide v2, v0, Lcom/kingroot/kinguser/security/entity/ActionRecord;->when:J

    move-wide v10, v2

    move v2, v1

    move-wide v0, v10

    :goto_2
    move-wide v10, v0

    move v1, v2

    move-wide v2, v10

    .line 1048
    goto :goto_1

    .line 1051
    :cond_1
    if-nez v1, :cond_2

    move-object v0, v5

    .line 1052
    goto :goto_0

    .line 1055
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v5, 0x7f0702e5

    invoke-virtual {v0, v5}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1056
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v4

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1058
    new-instance v0, Lcom/kingroot/kinguser/bde;

    invoke-direct {v0, v1, v2, v3}, Lcom/kingroot/kinguser/bde;-><init>(Ljava/lang/String;J)V

    goto :goto_0

    :cond_3
    move-wide v10, v2

    move v2, v1

    move-wide v0, v10

    goto :goto_2
.end method

.method private cf(J)Lcom/kingroot/kinguser/bde;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 1064
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/aks;->FM()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1083
    :cond_0
    :goto_0
    return-object v0

    .line 1068
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/aks;->FO()J

    move-result-wide v2

    .line 1071
    invoke-static {p1, p2, v2, v3}, Lcom/kingroot/kinguser/aut;->h(JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1075
    invoke-static {}, Lcom/kingroot/kinguser/biq;->ada()Lcom/kingroot/kinguser/biq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/biq;->adc()I

    move-result v1

    const/16 v4, 0xd

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1076
    if-eqz v1, :cond_0

    .line 1080
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v4, 0x7f0704bd

    invoke-virtual {v0, v4}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1081
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1083
    new-instance v0, Lcom/kingroot/kinguser/bde;

    invoke-direct {v0, v1, v2, v3}, Lcom/kingroot/kinguser/bde;-><init>(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method private cg(J)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/bde;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1107
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1109
    invoke-static {}, Lcom/kingroot/kinguser/security/ProtectRecorder;->XX()Lcom/kingroot/kinguser/security/ProtectRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/security/ProtectRecorder;->XY()Ljava/util/Set;

    move-result-object v0

    .line 1110
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v3

    .line 1111
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v4, 0x7f0702fa

    invoke-virtual {v1, v4}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1112
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/security/ProtectRecorder$TrustRiskInfo;

    .line 1113
    iget-wide v6, v0, Lcom/kingroot/kinguser/security/ProtectRecorder$TrustRiskInfo;->when:J

    invoke-static {p1, p2, v6, v7}, Lcom/kingroot/kinguser/aut;->h(JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1117
    iget-object v1, v0, Lcom/kingroot/kinguser/security/ProtectRecorder$TrustRiskInfo;->name:Ljava/lang/String;

    .line 1119
    iget v6, v0, Lcom/kingroot/kinguser/security/ProtectRecorder$TrustRiskInfo;->type:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 1121
    :try_start_0
    iget-object v1, v0, Lcom/kingroot/kinguser/security/ProtectRecorder$TrustRiskInfo;->name:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v3, v1, v6}, Lcom/kingroot/kinguser/zh;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/kingroot/kinguser/zh;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1128
    :cond_1
    new-instance v6, Lcom/kingroot/kinguser/bde;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-wide v8, v0, Lcom/kingroot/kinguser/security/ProtectRecorder$TrustRiskInfo;->when:J

    invoke-direct {v6, v1, v8, v9}, Lcom/kingroot/kinguser/bde;-><init>(Ljava/lang/String;J)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1131
    :cond_2
    return-object v2

    .line 1122
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private ch(J)Lcom/kingroot/kinguser/bde;
    .locals 5

    .prologue
    .line 1135
    invoke-static {}, Lcom/kingroot/kinguser/bcu;->Yk()J

    move-result-wide v2

    .line 1136
    invoke-static {p1, p2, v2, v3}, Lcom/kingroot/kinguser/aut;->h(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1137
    const/4 v0, 0x0

    .line 1141
    :goto_0
    return-object v0

    .line 1140
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f0702c4

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1141
    new-instance v0, Lcom/kingroot/kinguser/bde;

    invoke-direct {v0, v1, v2, v3}, Lcom/kingroot/kinguser/bde;-><init>(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method private ci(J)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/bde;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1146
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1147
    invoke-static {}, Lcom/kingroot/kinguser/security/ProtectRecorder;->XX()Lcom/kingroot/kinguser/security/ProtectRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/security/ProtectRecorder;->XZ()Ljava/util/Set;

    move-result-object v0

    .line 1148
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v3

    .line 1149
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v4, 0x7f0702eb

    invoke-virtual {v1, v4}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1151
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/security/ProtectRecorder$SafeApk;

    .line 1152
    iget-wide v6, v0, Lcom/kingroot/kinguser/security/ProtectRecorder$SafeApk;->when:J

    invoke-static {p1, p2, v6, v7}, Lcom/kingroot/kinguser/aut;->h(JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1158
    :try_start_0
    iget-object v1, v0, Lcom/kingroot/kinguser/security/ProtectRecorder$SafeApk;->pkgName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v3, v1, v6}, Lcom/kingroot/kinguser/zh;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/kingroot/kinguser/zh;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1164
    new-instance v6, Lcom/kingroot/kinguser/bde;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-wide v8, v0, Lcom/kingroot/kinguser/security/ProtectRecorder$SafeApk;->when:J

    invoke-direct {v6, v1, v8, v9}, Lcom/kingroot/kinguser/bde;-><init>(Ljava/lang/String;J)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1168
    :cond_1
    return-object v2

    .line 1159
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private cj(J)Lcom/kingroot/kinguser/bde;
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 1173
    invoke-static {}, Lcom/kingroot/kinguser/security/ProtectRecorder;->XX()Lcom/kingroot/kinguser/security/ProtectRecorder;

    move-result-object v0

    .line 1174
    invoke-virtual {v0}, Lcom/kingroot/kinguser/security/ProtectRecorder;->Ya()Ljava/util/Set;

    move-result-object v0

    .line 1175
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 1205
    :goto_0
    return-object v0

    .line 1180
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1181
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/security/ProtectRecorder$RiskApkDeniedRootAuth;

    .line 1182
    iget-wide v4, v0, Lcom/kingroot/kinguser/security/ProtectRecorder$RiskApkDeniedRootAuth;->when:J

    invoke-static {p1, p2, v4, v5}, Lcom/kingroot/kinguser/aut;->h(JJ)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1185
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1189
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v1

    .line 1190
    goto :goto_0

    .line 1194
    :cond_3
    new-instance v0, Lcom/kingroot/kinguser/aut$6;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/aut$6;-><init>(Lcom/kingroot/kinguser/aut;)V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1200
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/security/ProtectRecorder$RiskApkDeniedRootAuth;

    iget-wide v4, v0, Lcom/kingroot/kinguser/security/ProtectRecorder$RiskApkDeniedRootAuth;->when:J

    .line 1202
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f0702e4

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1203
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1205
    new-instance v0, Lcom/kingroot/kinguser/bde;

    invoke-direct {v0, v1, v4, v5}, Lcom/kingroot/kinguser/bde;-><init>(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method private d(Ljava/util/List;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/bcy;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/bcy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 611
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p2, :cond_0

    .line 614
    :goto_0
    return-object p1

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    goto :goto_0
.end method

.method private db(Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/bcy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 436
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/aut;->gW(I)Ljava/util/List;

    move-result-object v0

    .line 437
    iget-boolean v1, p0, Lcom/kingroot/kinguser/aut;->aSM:Z

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 438
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v1

    const v2, 0x18869

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 441
    :cond_0
    if-eqz p1, :cond_1

    .line 463
    :goto_0
    return-object v0

    .line 445
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/abc;->isRootPermition()Z

    move-result v1

    .line 448
    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/aut;->de(Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 451
    invoke-direct {p0}, Lcom/kingroot/kinguser/aut;->QQ()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 454
    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/aut;->dg(Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 457
    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/aut;->df(Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 459
    invoke-static {v0}, Lcom/kingroot/kinguser/aut;->bv(Ljava/util/List;)V

    .line 461
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/kingroot/kinguser/aut;->aSM:Z

    goto :goto_0
.end method

.method private dc(Z)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/bcy;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 575
    new-instance v0, Ljava/util/HashSet;

    invoke-static {}, Lcom/kingroot/kinguser/bcs;->Yc()Lcom/kingroot/kinguser/bcs;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/kingroot/kinguser/bcs;->dF(Z)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 577
    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->c(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 579
    sget-object v0, Lcom/kingroot/kinguser/aut;->aSJ:Ljava/util/List;

    .line 590
    :goto_0
    return-object v0

    .line 584
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 586
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bdh;

    .line 587
    const v3, 0x7f0702fd

    invoke-virtual {p0, p1, v0, v3, v4}, Lcom/kingroot/kinguser/aut;->a(ZLcom/kingroot/kinguser/bdh;IZ)Lcom/kingroot/kinguser/bdg;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 590
    goto :goto_0
.end method

.method private dd(Z)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/bcy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 595
    new-instance v0, Ljava/util/HashSet;

    invoke-static {}, Lcom/kingroot/kinguser/bcr;->XT()Lcom/kingroot/kinguser/bcr;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/bcr;->dF(Z)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 596
    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->c(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 598
    sget-object v0, Lcom/kingroot/kinguser/aut;->aSJ:Ljava/util/List;

    .line 607
    :goto_0
    return-object v0

    .line 602
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 603
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bdh;

    .line 604
    const v3, 0x7f0702c7

    const/4 v4, 0x0

    invoke-virtual {p0, p1, v0, v3, v4}, Lcom/kingroot/kinguser/aut;->a(ZLcom/kingroot/kinguser/bdh;IZ)Lcom/kingroot/kinguser/bdg;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 607
    goto :goto_0
.end method

.method private de(Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/bcy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 642
    if-nez p1, :cond_0

    .line 643
    sget-object v0, Lcom/kingroot/kinguser/aut;->aSJ:Ljava/util/List;

    .line 651
    :goto_0
    return-object v0

    .line 647
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/bfw;->aaS()Lcom/kingroot/kinguser/bfw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bfw;->abe()Z

    move-result v0

    if-nez v0, :cond_1

    .line 648
    sget-object v0, Lcom/kingroot/kinguser/aut;->aSJ:Ljava/util/List;

    goto :goto_0

    .line 651
    :cond_1
    invoke-direct {p0}, Lcom/kingroot/kinguser/aut;->QP()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method private df(Z)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/bcy;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide v4, 0x9a7ec800L

    const/4 v7, 0x0

    .line 742
    if-nez p1, :cond_0

    .line 743
    sget-object v0, Lcom/kingroot/kinguser/aut;->aSJ:Ljava/util/List;

    .line 797
    :goto_0
    return-object v0

    .line 746
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/aii;->xL()Lcom/kingroot/kinguser/aii;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aii;->xO()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->FM()Z

    move-result v0

    if-nez v0, :cond_1

    .line 747
    sget-object v0, Lcom/kingroot/kinguser/aut;->aSJ:Ljava/util/List;

    goto :goto_0

    .line 750
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/ahl;->xm()Lcom/kingroot/kinguser/ahl;

    move-result-object v0

    .line 751
    invoke-virtual {v0}, Lcom/kingroot/kinguser/ahl;->xo()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ahl;->jX()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ai/fore/IAntiInjectClientManager;

    invoke-interface {v0}, Lcom/kingroot/kinguser/ai/fore/IAntiInjectClientManager;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-nez v0, :cond_3

    .line 752
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->FM()Z

    move-result v0

    if-nez v0, :cond_3

    .line 753
    sget-object v0, Lcom/kingroot/kinguser/aut;->aSJ:Ljava/util/List;

    goto :goto_0

    .line 756
    :cond_3
    invoke-static {}, Lcom/kingroot/kinguser/ahl;->xm()Lcom/kingroot/kinguser/ahl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ahl;->getAllLogs()Ljava/util/List;

    move-result-object v8

    .line 758
    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    .line 759
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    move v6, v7

    .line 760
    :goto_1
    if-ge v6, v10, :cond_5

    .line 761
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ai/AntiInjectLogModel;

    iget-wide v0, v0, Lcom/kingroot/kinguser/ai/AntiInjectLogModel;->time:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/acu;->b(JJJ)Z

    move-result v0

    if-nez v0, :cond_4

    .line 762
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 760
    :cond_4
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1

    .line 765
    :cond_5
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 766
    iget-object v0, p0, Lcom/kingroot/kinguser/aut;->acW:Lcom/kingroot/kinguser/bis;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bis;->adj()Ljava/util/List;

    move-result-object v0

    .line 767
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_6
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/kingroot/kinguser/xmod/dao/ExploitLog;

    .line 768
    iget-wide v0, v6, Lcom/kingroot/kinguser/xmod/dao/ExploitLog;->mTimeStamp:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/acu;->b(JJJ)Z

    move-result v0

    if-nez v0, :cond_6

    .line 769
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 777
    :cond_7
    iget-boolean v0, p0, Lcom/kingroot/kinguser/aut;->aSM:Z

    if-nez v0, :cond_8

    .line 778
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x1887c

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 781
    :cond_8
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    .line 783
    const v1, 0x7f0702c1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 784
    const v2, 0x7f02012c

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/zi;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 785
    const v3, 0x7f0702c9

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 787
    const-string v0, ""

    .line 788
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v4, v5

    .line 789
    if-eqz v4, :cond_9

    .line 790
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 793
    :cond_9
    new-instance v3, Lcom/kingroot/kinguser/bcw;

    invoke-direct {v3, v2, v1, v0, v7}, Lcom/kingroot/kinguser/bcw;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 794
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 795
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private dg(Z)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/bcy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 897
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 899
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 902
    if-eqz p1, :cond_0

    .line 903
    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/aut;->cb(J)Lcom/kingroot/kinguser/bde;

    move-result-object v3

    .line 904
    if-eqz v3, :cond_0

    .line 905
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 910
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/aut;->cc(J)Lcom/kingroot/kinguser/bde;

    move-result-object v3

    .line 911
    if-eqz v3, :cond_1

    .line 912
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 916
    :cond_1
    if-eqz p1, :cond_2

    .line 917
    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/aut;->cd(J)Lcom/kingroot/kinguser/bde;

    move-result-object v3

    .line 918
    if-eqz v3, :cond_2

    .line 919
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 924
    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/aut;->ce(J)Lcom/kingroot/kinguser/bde;

    move-result-object v3

    .line 925
    if-eqz v3, :cond_3

    .line 926
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 930
    :cond_3
    if-eqz p1, :cond_4

    .line 931
    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/aut;->cj(J)Lcom/kingroot/kinguser/bde;

    move-result-object v3

    .line 932
    if-eqz v3, :cond_4

    .line 933
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 938
    :cond_4
    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/aut;->ch(J)Lcom/kingroot/kinguser/bde;

    move-result-object v3

    .line 939
    if-eqz v3, :cond_5

    .line 940
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 944
    :cond_5
    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/aut;->ci(J)Ljava/util/List;

    move-result-object v3

    .line 945
    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 948
    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/aut;->cg(J)Ljava/util/List;

    move-result-object v3

    .line 949
    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 952
    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/aut;->cf(J)Lcom/kingroot/kinguser/bde;

    move-result-object v0

    .line 953
    if-eqz v0, :cond_6

    .line 954
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 958
    :cond_6
    invoke-direct {p0}, Lcom/kingroot/kinguser/aut;->QS()Lcom/kingroot/kinguser/bde;

    move-result-object v0

    .line 959
    if-eqz v0, :cond_7

    .line 960
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 964
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 965
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_8

    .line 966
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    .line 967
    const v3, 0x7f020155

    invoke-virtual {v1, v3}, Lcom/kingroot/kinguser/zi;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 968
    const v4, 0x7f0702da

    invoke-virtual {v1, v4}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 969
    const v5, 0x7f0702c9

    invoke-virtual {v1, v5}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 972
    invoke-static {v2}, Lcom/kingroot/kinguser/aut;->bw(Ljava/util/List;)V

    .line 974
    new-instance v5, Lcom/kingroot/kinguser/bdb;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v3, v4, v1, v2}, Lcom/kingroot/kinguser/bdb;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 975
    iget-boolean v1, p0, Lcom/kingroot/kinguser/aut;->aSL:Z

    invoke-virtual {v5, v1}, Lcom/kingroot/kinguser/bdb;->dG(Z)V

    .line 977
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 980
    :cond_8
    return-object v0
.end method

.method private static f(IJ)V
    .locals 5

    .prologue
    .line 275
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 276
    invoke-virtual {v0, p0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 279
    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    .line 280
    sub-long/2addr v0, p1

    .line 283
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 291
    :goto_0
    return-void

    .line 288
    :cond_0
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 289
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private gW(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/bcy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 467
    invoke-static {}, Lcom/kingroot/kinguser/zb;->pk()Z

    move-result v0

    .line 469
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 471
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/aut;->dc(Z)Ljava/util/List;

    move-result-object v2

    .line 472
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 475
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/aut;->dd(Z)Ljava/util/List;

    move-result-object v0

    .line 476
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 479
    invoke-virtual {p0}, Lcom/kingroot/kinguser/aut;->QR()Lcom/kingroot/kinguser/bcy;

    move-result-object v0

    .line 480
    if-eqz v0, :cond_0

    .line 481
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 485
    :cond_0
    invoke-static {v1}, Lcom/kingroot/kinguser/aut;->bv(Ljava/util/List;)V

    .line 486
    invoke-direct {p0, v1, p1}, Lcom/kingroot/kinguser/aut;->d(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static gX(I)Ljava/lang/String;
    .locals 2

    .prologue
    const v1, 0x7f0702ea

    .line 730
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 731
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f0702e9

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 737
    :goto_0
    return-object v0

    .line 732
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 733
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 734
    :cond_1
    if-nez p0, :cond_2

    .line 735
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f0702e7

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 737
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static h(JJ)Z
    .locals 4

    .prologue
    .line 1210
    sub-long v0, p0, p2

    const-wide v2, 0x9a7ec800L

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 1211
    const/4 v0, 0x1

    .line 1213
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public QR()Lcom/kingroot/kinguser/bcy;
    .locals 4

    .prologue
    .line 877
    invoke-static {}, Lcom/kingroot/kinguser/biq;->ada()Lcom/kingroot/kinguser/biq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/biq;->adb()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->FL()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 878
    :cond_0
    const/4 v0, 0x0

    .line 884
    :goto_0
    return-object v0

    .line 880
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/biq;->ada()Lcom/kingroot/kinguser/biq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/biq;->adc()I

    move-result v1

    .line 882
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v2, 0x188dd

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 884
    new-instance v0, Lcom/kingroot/kinguser/bda;

    invoke-static {}, Lcom/kingroot/kinguser/biq;->ada()Lcom/kingroot/kinguser/biq;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/biq;->jf(I)Ljava/util/List;

    move-result-object v2

    const/16 v3, 0xd

    .line 885
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-direct {v0, v2, v1}, Lcom/kingroot/kinguser/bda;-><init>(Ljava/util/List;I)V

    goto :goto_0
.end method

.method public QT()Z
    .locals 2

    .prologue
    .line 1247
    iget-object v0, p0, Lcom/kingroot/kinguser/aut;->alI:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bcy;

    .line 1248
    instance-of v0, v0, Lcom/kingroot/kinguser/bcz;

    if-eqz v0, :cond_0

    .line 1249
    const/4 v0, 0x1

    .line 1252
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(ZLcom/kingroot/kinguser/bdh;IZ)Lcom/kingroot/kinguser/bdg;
    .locals 11
    .param p2    # Lcom/kingroot/kinguser/bdh;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const v2, 0x7f0702e6

    .line 619
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    .line 620
    invoke-virtual {v1, p3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 622
    const v0, 0x7f0702e8

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 623
    iget v0, p2, Lcom/kingroot/kinguser/bdh;->level:I

    invoke-static {v0}, Lcom/kingroot/kinguser/aut;->gX(I)Ljava/lang/String;

    move-result-object v9

    .line 625
    if-eqz p4, :cond_0

    const v0, 0x7f0702ff

    :goto_0
    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 626
    if-eqz p4, :cond_1

    const v0, 0x7f0702fb

    :goto_1
    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 629
    iget-object v0, p2, Lcom/kingroot/kinguser/bdh;->desc:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 632
    :goto_2
    if-eqz p1, :cond_3

    .line 635
    :goto_3
    new-instance v0, Lcom/kingroot/kinguser/bdg;

    const v1, 0x7f020226

    iget-object v2, p2, Lcom/kingroot/kinguser/bdh;->name:Ljava/lang/String;

    iget v3, p2, Lcom/kingroot/kinguser/bdh;->level:I

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move v9, p4

    invoke-direct/range {v0 .. v9}, Lcom/kingroot/kinguser/bdg;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0

    .line 625
    :cond_0
    const v0, 0x7f0702cb

    goto :goto_0

    .line 626
    :cond_1
    const v0, 0x7f0702ca

    goto :goto_1

    .line 629
    :cond_2
    iget-object v5, p2, Lcom/kingroot/kinguser/bdh;->desc:Ljava/lang/String;

    goto :goto_2

    .line 632
    :cond_3
    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_3
.end method

.method public a(ILcom/kingroot/kinguser/bcy;Z)V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/kingroot/kinguser/aut;->alI:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bcy;

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/aut;->c(Lcom/kingroot/kinguser/bcy;)V

    .line 158
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/kingroot/kinguser/aks;->bY(Z)Z

    .line 159
    invoke-static {p2}, Lcom/kingroot/kinguser/aut;->b(Lcom/kingroot/kinguser/bcy;)V

    .line 160
    return-void
.end method

.method public a(Landroid/widget/Button;I)V
    .locals 7

    .prologue
    .line 190
    if-ltz p2, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/aut;->alI:Ljava/util/List;

    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->c(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/aut;->alI:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_1

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/aut;->alI:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bcy;

    .line 196
    if-eqz v0, :cond_0

    .line 200
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v1

    new-instance v2, Lcom/kingroot/kinguser/bed;

    sget-object v3, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v4, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    const/4 v5, 0x0

    new-instance v6, Lcom/kingroot/kinguser/aut$3;

    invoke-direct {v6, p0, v0, p2}, Lcom/kingroot/kinguser/aut$3;-><init>(Lcom/kingroot/kinguser/aut;Lcom/kingroot/kinguser/bcy;I)V

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    goto :goto_0
.end method

.method public c(Lcom/kingroot/kinguser/bcy;)V
    .locals 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/kingroot/kinguser/aut;->alI:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 383
    iget-object v1, p0, Lcom/kingroot/kinguser/aut;->alI:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 384
    iget-object v1, p0, Lcom/kingroot/kinguser/aut;->aSI:Lcom/kingroot/kinguser/auk$b;

    invoke-interface {v1, v0}, Lcom/kingroot/kinguser/auk$b;->notifyItemRemoved(I)V

    .line 387
    iget-object v0, p0, Lcom/kingroot/kinguser/aut;->alI:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/aut;->br(Ljava/util/List;)V

    .line 388
    iget-object v0, p0, Lcom/kingroot/kinguser/aut;->aSI:Lcom/kingroot/kinguser/auk$b;

    iget-object v1, p0, Lcom/kingroot/kinguser/aut;->aSK:Lcom/kingroot/kinguser/bdd;

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/auk$b;->b(Lcom/kingroot/kinguser/bdd;)V

    .line 391
    iget-object v0, p0, Lcom/kingroot/kinguser/aut;->alI:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/aut;->bq(Ljava/util/List;)V

    .line 395
    instance-of v0, p1, Lcom/kingroot/kinguser/bcz;

    if-eqz v0, :cond_0

    .line 396
    invoke-virtual {p0}, Lcom/kingroot/kinguser/aut;->QT()Z

    move-result v0

    if-nez v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/kingroot/kinguser/aut;->aSI:Lcom/kingroot/kinguser/auk$b;

    invoke-interface {v0}, Lcom/kingroot/kinguser/auk$b;->Qs()V

    .line 401
    :cond_0
    return-void
.end method

.method public c(Lcom/kingroot/kinguser/bdg;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 167
    invoke-virtual {p1}, Lcom/kingroot/kinguser/bdg;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 168
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/zh;->du(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    :goto_0
    return-void

    .line 174
    :cond_0
    new-instance v1, Lcom/kingroot/kinguser/aut$2;

    invoke-direct {v1, p0, p1}, Lcom/kingroot/kinguser/aut$2;-><init>(Lcom/kingroot/kinguser/aut;Lcom/kingroot/kinguser/bdg;)V

    invoke-static {v1}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 182
    invoke-static {}, Lcom/kingroot/kinguser/bcs;->Yc()Lcom/kingroot/kinguser/bcs;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 183
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 182
    invoke-virtual {v1, v0, v4}, Lcom/kingroot/kinguser/bcs;->h(Ljava/util/List;I)Z

    goto :goto_0
.end method

.method public cU(Z)V
    .locals 3

    .prologue
    .line 122
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 123
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/aut;->aSN:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v1, v2, v0}, Lcom/kingroot/kinguser/beg;->a(Lcom/kingroot/kinguser/bed;Ljava/util/List;)Z

    .line 126
    return-void
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 118
    return-void
.end method

.method public gJ(I)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 414
    iget-object v0, p0, Lcom/kingroot/kinguser/aut;->alI:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bcy;

    .line 415
    if-nez v0, :cond_1

    .line 432
    :cond_0
    :goto_0
    return-void

    .line 419
    :cond_1
    instance-of v2, v0, Lcom/kingroot/kinguser/bcv;

    if-nez v2, :cond_2

    instance-of v2, v0, Lcom/kingroot/kinguser/bcx;

    if-eqz v2, :cond_3

    .line 420
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/aut;->aSI:Lcom/kingroot/kinguser/auk$b;

    invoke-interface {v0}, Lcom/kingroot/kinguser/auk$b;->Qq()V

    goto :goto_0

    .line 421
    :cond_3
    instance-of v2, v0, Lcom/kingroot/kinguser/bcw;

    if-eqz v2, :cond_4

    .line 422
    iget-object v0, p0, Lcom/kingroot/kinguser/aut;->aSI:Lcom/kingroot/kinguser/auk$b;

    invoke-interface {v0}, Lcom/kingroot/kinguser/auk$b;->Qr()V

    goto :goto_0

    .line 423
    :cond_4
    instance-of v2, v0, Lcom/kingroot/kinguser/bdb;

    if-eqz v2, :cond_6

    .line 424
    check-cast v0, Lcom/kingroot/kinguser/bdb;

    .line 425
    invoke-virtual {v0}, Lcom/kingroot/kinguser/bdb;->gI()Z

    move-result v2

    if-nez v2, :cond_5

    const/4 v1, 0x1

    :cond_5
    iput-boolean v1, p0, Lcom/kingroot/kinguser/aut;->aSL:Z

    .line 426
    iget-boolean v1, p0, Lcom/kingroot/kinguser/aut;->aSL:Z

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bdb;->dG(Z)V

    .line 428
    iget-object v1, p0, Lcom/kingroot/kinguser/aut;->aSI:Lcom/kingroot/kinguser/auk$b;

    invoke-interface {v1, p1, v0}, Lcom/kingroot/kinguser/auk$b;->a(ILcom/kingroot/kinguser/bdb;)V

    goto :goto_0

    .line 429
    :cond_6
    instance-of v0, v0, Lcom/kingroot/kinguser/bda;

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/kingroot/kinguser/aut;->aSI:Lcom/kingroot/kinguser/auk$b;

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/auk$b;->cV(Z)V

    goto :goto_0
.end method

.method public gR(I)V
    .locals 3

    .prologue
    .line 295
    iget-object v0, p0, Lcom/kingroot/kinguser/aut;->alI:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bcy;

    .line 296
    if-nez v0, :cond_0

    .line 308
    :goto_0
    return-void

    .line 300
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v1

    const v2, 0x1886b

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 302
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/aks;->EU()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 303
    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/aut;->c(Lcom/kingroot/kinguser/bcy;)V

    .line 304
    invoke-static {v0}, Lcom/kingroot/kinguser/aut;->b(Lcom/kingroot/kinguser/bcy;)V

    goto :goto_0

    .line 306
    :cond_1
    iget-object v1, p0, Lcom/kingroot/kinguser/aut;->aSI:Lcom/kingroot/kinguser/auk$b;

    invoke-interface {v1, p1, v0}, Lcom/kingroot/kinguser/auk$b;->a(ILcom/kingroot/kinguser/bcy;)V

    goto :goto_0
.end method

.method public gS(I)V
    .locals 7

    .prologue
    .line 337
    iget-object v0, p0, Lcom/kingroot/kinguser/aut;->alI:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bcy;

    .line 338
    if-nez v0, :cond_0

    .line 375
    :goto_0
    return-void

    .line 342
    :cond_0
    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/aut;->c(Lcom/kingroot/kinguser/bcy;)V

    .line 344
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v1

    new-instance v2, Lcom/kingroot/kinguser/bed;

    sget-object v3, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v4, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    const/4 v5, 0x0

    new-instance v6, Lcom/kingroot/kinguser/aut$5;

    invoke-direct {v6, p0, v0}, Lcom/kingroot/kinguser/aut$5;-><init>(Lcom/kingroot/kinguser/aut;Lcom/kingroot/kinguser/bcy;)V

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    goto :goto_0
.end method

.method public start()V
    .locals 0

    .prologue
    .line 114
    return-void
.end method
