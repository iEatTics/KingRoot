.class public Lcom/kingroot/kinguser/anu;
.super Lcom/kingroot/kinguser/ans;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/alj$i;
.implements Lcom/kingroot/kinguser/alj$j;
.implements Lcom/kingroot/kinguser/auf$b;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final aDF:I


# instance fields
.field private aAY:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/ame;",
            ">;"
        }
    .end annotation
.end field

.field private aBD:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

.field private aBE:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

.field private aBJ:Lcom/kingroot/kinguser/and$a;

.field private aBl:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadRecommendAppsListener;

.field private aBo:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppStatusListener;

.field private aCF:Lcom/kingroot/kinguser/anx;

.field private aDG:Landroid/support/v7/widget/RecyclerView;

.field private aDH:Lcom/kingroot/kinguser/alj;

.field private aDI:Lcom/kingroot/kinguser/auf$a;

.field private aDJ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/amm;",
            ">;"
        }
    .end annotation
.end field

.field private aDK:Landroid/view/View;

.field private aDL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;",
            ">;"
        }
    .end annotation
.end field

.field private aDM:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;",
            ">;"
        }
    .end annotation
.end field

.field private aDN:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;",
            ">;"
        }
    .end annotation
.end field

.field private aDO:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;",
            ">;"
        }
    .end annotation
.end field

.field private aDP:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;",
            ">;"
        }
    .end annotation
.end field

.field private aDQ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;",
            ">;"
        }
    .end annotation
.end field

.field private aDR:Landroid/view/View;

.field private aDS:Landroid/widget/ImageView;

.field private aDT:Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;

.field private aDU:I

.field private aDV:Landroid/widget/TextView;

.field private aDW:Landroid/widget/ImageView;

.field private aDX:Z

.field private aDY:Landroid/view/View;

.field private aDZ:Z

.field private aDv:Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;

.field private aEa:Z

.field private aEb:Ljava/lang/Runnable;

.field private aEc:I

.field private akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

.field private akD:Lcom/kingroot/kinguser/and$a;

.field private amm:Lcom/kingcore/uilib/ProgressWhell;

.field private aoj:Lcom/kingroot/kinguser/alf;

.field private axb:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/kingroot/kinguser/aiq;->arY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_AppsMarketMainPage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/anu;->TAG:Ljava/lang/String;

    .line 98
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f0e010a

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v0

    sput v0, Lcom/kingroot/kinguser/anu;->aDF:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 170
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ans;-><init>(Landroid/content/Context;)V

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/anu;->aDL:Ljava/util/List;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/anu;->aDM:Ljava/util/List;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/anu;->aDN:Ljava/util/List;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/anu;->aDO:Ljava/util/List;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/anu;->axb:Ljava/util/List;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/anu;->aDP:Ljava/util/List;

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/anu;->aDQ:Ljava/util/List;

    .line 135
    iput v1, p0, Lcom/kingroot/kinguser/anu;->aDU:I

    .line 138
    iput-boolean v1, p0, Lcom/kingroot/kinguser/anu;->aDX:Z

    .line 140
    iput-boolean v1, p0, Lcom/kingroot/kinguser/anu;->aDZ:Z

    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/anu;->aEa:Z

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/anu;->aAY:Ljava/util/ArrayList;

    .line 152
    new-instance v0, Lcom/kingroot/kinguser/anu$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/anu$1;-><init>(Lcom/kingroot/kinguser/anu;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/anu;->aBJ:Lcom/kingroot/kinguser/and$a;

    .line 159
    new-instance v0, Lcom/kingroot/kinguser/anu$12;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/anu$12;-><init>(Lcom/kingroot/kinguser/anu;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/anu;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    .line 167
    const/16 v0, 0x8

    iput v0, p0, Lcom/kingroot/kinguser/anu;->aEc:I

    .line 861
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$20;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$20;-><init>(Lcom/kingroot/kinguser/anu;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/anu;->aDv:Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;

    .line 922
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$22;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$22;-><init>(Lcom/kingroot/kinguser/anu;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/anu;->akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    .line 940
    new-instance v0, Lcom/kingroot/kinguser/anu$14;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/anu$14;-><init>(Lcom/kingroot/kinguser/anu;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/anu;->akD:Lcom/kingroot/kinguser/and$a;

    .line 957
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$24;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$24;-><init>(Lcom/kingroot/kinguser/anu;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/anu;->aBl:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadRecommendAppsListener;

    .line 998
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$25;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$25;-><init>(Lcom/kingroot/kinguser/anu;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/anu;->aBo:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppStatusListener;

    .line 171
    return-void
.end method

.method public static synthetic A(Lcom/kingroot/kinguser/anu;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/kingroot/kinguser/anu;->aBE:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    return-object v0
.end method

.method public static synthetic B(Lcom/kingroot/kinguser/anu;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/kingroot/kinguser/anu;->aAY:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic C(Lcom/kingroot/kinguser/anu;)Lcom/kingroot/kinguser/alf;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/kingroot/kinguser/anu;->aoj:Lcom/kingroot/kinguser/alf;

    return-object v0
.end method

.method private JE()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 285
    iget-object v0, p0, Lcom/kingroot/kinguser/anu;->aDG:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 286
    iget-object v0, p0, Lcom/kingroot/kinguser/anu;->aDK:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 287
    invoke-direct {p0}, Lcom/kingroot/kinguser/anu;->JJ()V

    .line 288
    iget-object v0, p0, Lcom/kingroot/kinguser/anu;->aDI:Lcom/kingroot/kinguser/auf$a;

    invoke-interface {v0}, Lcom/kingroot/kinguser/auf$a;->PK()V

    .line 289
    iget-object v0, p0, Lcom/kingroot/kinguser/anu;->aDI:Lcom/kingroot/kinguser/auf$a;

    invoke-interface {v0}, Lcom/kingroot/kinguser/auf$a;->PL()V

    .line 290
    iget-object v0, p0, Lcom/kingroot/kinguser/anu;->aDI:Lcom/kingroot/kinguser/auf$a;

    invoke-interface {v0}, Lcom/kingroot/kinguser/auf$a;->PM()V

    .line 291
    iget-object v0, p0, Lcom/kingroot/kinguser/anu;->aDI:Lcom/kingroot/kinguser/auf$a;

    invoke-interface {v0}, Lcom/kingroot/kinguser/auf$a;->PN()V

    .line 292
    iget-object v0, p0, Lcom/kingroot/kinguser/anu;->aDI:Lcom/kingroot/kinguser/auf$a;

    invoke-interface {v0}, Lcom/kingroot/kinguser/auf$a;->PO()V

    .line 293
    iget-object v0, p0, Lcom/kingroot/kinguser/anu;->aDI:Lcom/kingroot/kinguser/auf$a;

    invoke-interface {v0}, Lcom/kingroot/kinguser/auf$a;->PP()V

    .line 294
    iget-object v0, p0, Lcom/kingroot/kinguser/anu;->aDI:Lcom/kingroot/kinguser/auf$a;

    invoke-interface {v0}, Lcom/kingroot/kinguser/auf$a;->PQ()V

    .line 295
    iget-object v0, p0, Lcom/kingroot/kinguser/anu;->aDI:Lcom/kingroot/kinguser/auf$a;

    invoke-interface {v0}, Lcom/kingroot/kinguser/auf$a;->PR()V

    .line 296
    return-void
.end method

.method private JH()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 553
    iget-object v0, p0, Lcom/kingroot/kinguser/anu;->aDH:Lcom/kingroot/kinguser/alj;

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/alj;->cx(Z)V

    .line 555
    iget-object v0, p0, Lcom/kingroot/kinguser/anu;->aDJ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/anu;->aDJ:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/kingroot/kinguser/ami;

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/kingroot/kinguser/anu;->aDJ:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 558
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/anu;->aDJ:Ljava/util/List;

    new-instance v1, Lcom/kingroot/kinguser/ami;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v1, v2}, Lcom/kingroot/kinguser/ami;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 559
    iget-object v0, p0, Lcom/kingroot/kinguser/anu;->aDH:Lcom/kingroot/kinguser/alj;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alj;->notifyDataSetChanged()V

    .line 560
    return-void
.end method

.method private JI()V
    .locals 2

    .prologue
    .line 563
    iget-object v0, p0, Lcom/kingroot/kinguser/anu;->amm:Lcom/kingcore/uilib/ProgressWhell;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/kingcore/uilib/ProgressWhell;->setVisibility(I)V

    .line 564
    iget-object v0, p0, Lcom/kingroot/kinguser/anu;->amm:Lcom/kingcore/uilib/ProgressWhell;

    invoke-virtual {v0}, Lcom/kingcore/uilib/ProgressWhell;->gT()V

    .line 565
    return-void
.end method

.method private JJ()V
    .locals 2

    .prologue
    .line 568
    iget-object v0, p0, Lcom/kingroot/kinguser/anu;->amm:Lcom/kingcore/uilib/ProgressWhell;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingcore/uilib/ProgressWhell;->setVisibility(I)V

    .line 569
    iget-object v0, p0, Lcom/kingroot/kinguser/anu;->amm:Lcom/kingcore/uilib/ProgressWhell;

    invoke-virtual {v0}, Lcom/kingcore/uilib/ProgressWhell;->gU()V

    .line 570
    return-void
.end method

.method private Jf()V
    .locals 7

    .prologue
    .line 336
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/kingroot/kinguser/anu;->aDL:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 338
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v1

    new-instance v2, Lcom/kingroot/kinguser/bed;

    sget-object v3, Lcom/kingroot/kinguser/bem;->bll:Lcom/kingroot/kinguser/bem;

    sget-object v4, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    const/4 v5, 0x0

    new-instance v6, Lcom/kingroot/kinguser/anu$20;

    invoke-direct {v6, p0, v0}, Lcom/kingroot/kinguser/anu$20;-><init>(Lcom/kingroot/kinguser/anu;Ljava/util/List;)V

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 351
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/anu;I)I
    .locals 0

    .prologue
    .line 94
    iput p1, p0, Lcom/kingroot/kinguser/anu;->aEc:I

    return p1
.end method

.method public static synthetic a(Lcom/kingroot/kinguser/anu;)Lcom/kingroot/kinguser/anx;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/kingroot/kinguser/anu;->aCF:Lcom/kingroot/kinguser/anx;

    return-object v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/anu;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/kingroot/kinguser/anu;->aBE:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    return-object p1
.end method

.method public static synthetic a(Lcom/kingroot/kinguser/anu;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/anu;->a(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;
    .locals 3

    .prologue
    .line 849
    iget v0, p0, Lcom/kingroot/kinguser/anu;->aEc:I

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 850
    iget-object v0, p0, Lcom/kingroot/kinguser/anu;->aDL:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    .line 851
    iget-object v2, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->pkgName:Ljava/lang/String;

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 857
    :goto_1
    return-object v0

    .line 854
    :cond_0
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_0

    .line 856
    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 857
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic a(Lcom/kingroot/kinguser/anu;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/kingroot/kinguser/anu;->aEb:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic a(Lcom/kingroot/kinguser/anu;III)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0, p1, p2, p3}, Lcom/kingroot/kinguser/anu;->h(III)V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/anu;Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/anu;->b(Landroid/support/v7/widget/RecyclerView;I)V

    return-void
.end method

.method public static synthetic a(Lcom/kingroot/kinguser/anu;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/anu;->hE(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/anu;Z)Z
    .locals 0

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/kingroot/kinguser/anu;->aDZ:Z

    return p1
.end method

.method static synthetic b(Lcom/kingroot/kinguser/anu;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/kingroot/kinguser/anu;->aBD:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    return-object p1
.end method

.method private b(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 9

    .prologue
    const v8, 0x7f0e0014

    const/4 v7, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    .line 799
    iget v0, p0, Lcom/kingroot/kinguser/anu;->aDU:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/kingroot/kinguser/anu;->aDU:I

    .line 801
    iget v0, p0, Lcom/kingroot/kinguser/anu;->aDU:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40a00000    # 5.0f

    div-float/2addr v1, v2

    div-float/2addr v0, v1

    invoke-static {v0, v6}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 802
    iget-object v1, p0, Lcom/kingroot/kinguser/anu;->aDR:Landroid/view/View;

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v2, v0

    float-to-int v2, v2

    const v3, 0x7f0e0122

    invoke-static {v2, v3}, Lcom/kingroot/kinguser/bgi;->getColor(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 804
    float-to-double v2, v0

    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_1

    .line 805
    iget-boolean v1, p0, Lcom/kingroot/kinguser/anu;->aDX:Z

    if-nez v1, :cond_0

    .line 806
    iget-object v1, p0, Lcom/kingroot/kinguser/anu;->aDS:Landroid/widget/ImageView;

    const v2, 0x7f0200d4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 807
    iget-object v1, p0, Lcom/kingroot/kinguser/anu;->aDT:Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;

    const v2, 0x7f020086

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;->setBackgroundResource(I)V

    .line 808
    iget-object v1, p0, Lcom/kingroot/kinguser/anu;->aDV:Landroid/widget/TextView;

    const v2, 0x7f0e000d

    invoke-static {v2}, Lcom/kingroot/kinguser/bgi;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 809
    iget-object v1, p0, Lcom/kingroot/kinguser/anu;->aCF:Lcom/kingroot/kinguser/anx;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/anx;->JO()V

    .line 810
    iget-object v1, p0, Lcom/kingroot/kinguser/anu;->aDW:Landroid/widget/ImageView;

    const v2, 0x7f020164

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 811
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/kingroot/kinguser/anu;->aDX:Z

    .line 827
    :cond_0
    :goto_0
    cmpl-float v0, v0, v6

    if-nez v0, :cond_2

    .line 828
    iget-object v0, p0, Lcom/kingroot/kinguser/anu;->aDY:Landroid/view/View;

    const/16 v1, 0x64

    .line 829
    invoke-static {v1, v8}, Lcom/kingroot/kinguser/bgi;->getColor(II)I

    move-result v1

    sget v2, Lcom/kingroot/kinguser/anu;->aDF:I

    .line 828
    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/ws;->a(Landroid/view/View;II)V

    .line 836
    :goto_1
    return-void

    .line 816
    :cond_1
    iget-boolean v1, p0, Lcom/kingroot/kinguser/anu;->aDX:Z

    if-eqz v1, :cond_0

    .line 817
    iget-object v1, p0, Lcom/kingroot/kinguser/anu;->aDS:Landroid/widget/ImageView;

    const v2, 0x7f020090

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 818
    iget-object v1, p0, Lcom/kingroot/kinguser/anu;->aDT:Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;

    const v2, 0x7f02008c

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;->setBackgroundResource(I)V

    .line 819
    iget-object v1, p0, Lcom/kingroot/kinguser/anu;->aDV:Landroid/widget/TextView;

    const v2, 0x7f0e00f8

    invoke-static {v2}, Lcom/kingroot/kinguser/bgi;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 820
    iget-object v1, p0, Lcom/kingroot/kinguser/anu;->aCF:Lcom/kingroot/kinguser/anx;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/anx;->JM()V

    .line 821
    iget-object v1, p0, Lcom/kingroot/kinguser/anu;->aDW:Landroid/widget/ImageView;

    const v2, 0x7f020166

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 822
    iput-boolean v7, p0, Lcom/kingroot/kinguser/anu;->aDX:Z

    goto :goto_0

    .line 832
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/anu;->aDY:Landroid/view/View;

    .line 833
    invoke-static {v7, v8}, Lcom/kingroot/kinguser/bgi;->getColor(II)I

    move-result v1

    sget v2, Lcom/kingroot/kinguser/anu;->aDF:I

    .line 832
    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/ws;->a(Landroid/view/View;II)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/kingroot/kinguser/anu;)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/kingroot/kinguser/anu;->JE()V

    return-void
.end method

.method static synthetic c(Lcom/kingroot/kinguser/anu;)Lcom/kingroot/kinguser/auf$a;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/kingroot/kinguser/anu;->aDI:Lcom/kingroot/kinguser/auf$a;

    return-object v0
.end method

.method static synthetic d(Lcom/kingroot/kinguser/anu;)Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/kingroot/kinguser/anu;->aDT:Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;

    return-object v0
.end method

.method static synthetic e(Lcom/kingroot/kinguser/anu;)Lcom/kingcore/uilib/ProgressWhell;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/kingroot/kinguser/anu;->amm:Lcom/kingcore/uilib/ProgressWhell;

    return-object v0
.end method

.method static synthetic f(Lcom/kingroot/kinguser/anu;)Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/kingroot/kinguser/anu;->aDv:Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;

    return-object v0
.end method

.method public static synthetic g(Lcom/kingroot/kinguser/anu;)Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/kingroot/kinguser/anu;->akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    return-object v0
.end method

.method static synthetic h(Lcom/kingroot/kinguser/anu;)Ljava/util/List;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/kingroot/kinguser/anu;->aDM:Ljava/util/List;

    return-object v0
.end method

.method private h(III)V
    .locals 6

    .prologue
    .line 786
    add-int v2, p1, p2

    .line 788
    iget-object v0, p0, Lcom/kingroot/kinguser/anu;->aDL:Ljava/util/List;

    add-int v1, p2, p3

    invoke-interface {v0, p2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    .line 789
    iget-object v4, p0, Lcom/kingroot/kinguser/anu;->aDJ:Ljava/util/List;

    new-instance v5, Lcom/kingroot/kinguser/amd;

    invoke-direct {v5, v0}, Lcom/kingroot/kinguser/amd;-><init>(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;)V

    invoke-interface {v4, v1, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 790
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 791
    goto :goto_0

    .line 793
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/anu;->aDH:Lcom/kingroot/kinguser/alj;

    invoke-virtual {v0, v2, p3}, Lcom/kingroot/kinguser/alj;->notifyItemRangeChanged(II)V

    .line 795
    return-void
.end method

.method private hE(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 910
    new-instance v0, Lcom/kingroot/kinguser/anu$13;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/anu$13;-><init>(Lcom/kingroot/kinguser/anu;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 920
    return-void
.end method

.method static synthetic i(Lcom/kingroot/kinguser/anu;)Ljava/util/List;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/kingroot/kinguser/anu;->aDN:Ljava/util/List;

    return-object v0
.end method

.method static synthetic j(Lcom/kingroot/kinguser/anu;)Ljava/util/List;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/kingroot/kinguser/anu;->aDO:Ljava/util/List;

    return-object v0
.end method

.method static synthetic k(Lcom/kingroot/kinguser/anu;)Ljava/util/List;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/kingroot/kinguser/anu;->axb:Ljava/util/List;

    return-object v0
.end method

.method static synthetic l(Lcom/kingroot/kinguser/anu;)Ljava/util/List;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/kingroot/kinguser/anu;->aDP:Ljava/util/List;

    return-object v0
.end method

.method static synthetic m(Lcom/kingroot/kinguser/anu;)Ljava/util/List;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/kingroot/kinguser/anu;->aDQ:Ljava/util/List;

    return-object v0
.end method

.method static synthetic n(Lcom/kingroot/kinguser/anu;)Ljava/util/List;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/kingroot/kinguser/anu;->aDL:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic o(Lcom/kingroot/kinguser/anu;)Lcom/kingroot/kinguser/alj;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/kingroot/kinguser/anu;->aDH:Lcom/kingroot/kinguser/alj;

    return-object v0
.end method

.method static synthetic p(Lcom/kingroot/kinguser/anu;)Ljava/util/List;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/kingroot/kinguser/anu;->aDJ:Ljava/util/List;

    return-object v0
.end method

.method static synthetic q(Lcom/kingroot/kinguser/anu;)I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/kingroot/kinguser/anu;->aEc:I

    return v0
.end method

.method static synthetic r(Lcom/kingroot/kinguser/anu;)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/kingroot/kinguser/anu;->Jf()V

    return-void
.end method

.method static synthetic s(Lcom/kingroot/kinguser/anu;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/kingroot/kinguser/anu;->aDG:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic t(Lcom/kingroot/kinguser/anu;)Landroid/view/View;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/kingroot/kinguser/anu;->aDK:Landroid/view/View;

    return-object v0
.end method

.method static synthetic u(Lcom/kingroot/kinguser/anu;)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/kingroot/kinguser/anu;->JH()V

    return-void
.end method

.method static synthetic v(Lcom/kingroot/kinguser/anu;)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/kingroot/kinguser/anu;->JI()V

    return-void
.end method

.method static synthetic w(Lcom/kingroot/kinguser/anu;)Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/kingroot/kinguser/anu;->aDZ:Z

    return v0
.end method

.method static synthetic x(Lcom/kingroot/kinguser/anu;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/kingroot/kinguser/anu;->aEb:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static synthetic y(Lcom/kingroot/kinguser/anu;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/kingroot/kinguser/anu;->aBD:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    return-object v0
.end method

.method static synthetic z(Lcom/kingroot/kinguser/anu;)Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadRecommendAppsListener;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/kingroot/kinguser/anu;->aBl:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadRecommendAppsListener;

    return-object v0
.end method


# virtual methods
.method public GP()V
    .locals 1

    .prologue
    .line 840
    iget-object v0, p0, Lcom/kingroot/kinguser/anu;->aDI:Lcom/kingroot/kinguser/auf$a;

    invoke-interface {v0}, Lcom/kingroot/kinguser/auf$a;->PS()V

    .line 841
    return-void
.end method

.method public JF()V
    .locals 1

    .prologue
    .line 394
    new-instance v0, Lcom/kingroot/kinguser/anu$2;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/anu$2;-><init>(Lcom/kingroot/kinguser/anu;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 400
    return-void
.end method

.method public JG()V
    .locals 1

    .prologue
    .line 540
    new-instance v0, Lcom/kingroot/kinguser/anu$9;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/anu$9;-><init>(Lcom/kingroot/kinguser/anu;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 549
    return-void
.end method

.method public JK()V
    .locals 1

    .prologue
    .line 575
    new-instance v0, Lcom/kingroot/kinguser/anu$10;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/anu$10;-><init>(Lcom/kingroot/kinguser/anu;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 763
    return-void
.end method

.method public a(Lcom/kingroot/kinguser/auf$a;)V
    .locals 0

    .prologue
    .line 371
    iput-object p1, p0, Lcom/kingroot/kinguser/anu;->aDI:Lcom/kingroot/kinguser/auf$a;

    .line 372
    return-void
.end method

.method public a(Ljava/util/List;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 492
    new-instance v0, Lcom/kingroot/kinguser/anu$8;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/kingroot/kinguser/anu$8;-><init>(Lcom/kingroot/kinguser/anu;ZLjava/util/List;Z)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 535
    return-void
.end method

.method public aM(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 376
    if-nez p1, :cond_0

    .line 389
    :goto_0
    return-void

    .line 380
    :cond_0
    new-instance v0, Lcom/kingroot/kinguser/anu$21;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/anu$21;-><init>(Lcom/kingroot/kinguser/anu;Ljava/util/List;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public aN(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 405
    new-instance v0, Lcom/kingroot/kinguser/anu$3;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/anu$3;-><init>(Lcom/kingroot/kinguser/anu;Ljava/util/List;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 419
    return-void
.end method

.method public aO(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 424
    new-instance v0, Lcom/kingroot/kinguser/anu$4;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/anu$4;-><init>(Lcom/kingroot/kinguser/anu;Ljava/util/List;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 437
    return-void
.end method

.method public aP(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 442
    new-instance v0, Lcom/kingroot/kinguser/anu$5;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/anu$5;-><init>(Lcom/kingroot/kinguser/anu;Ljava/util/List;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 454
    return-void
.end method

.method public aQ(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 459
    new-instance v0, Lcom/kingroot/kinguser/anu$6;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/anu$6;-><init>(Lcom/kingroot/kinguser/anu;Ljava/util/List;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 471
    return-void
.end method

.method public aR(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 476
    new-instance v0, Lcom/kingroot/kinguser/anu$7;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/anu$7;-><init>(Lcom/kingroot/kinguser/anu;Ljava/util/List;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 487
    return-void
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
    .line 175
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 176
    iget-object v0, p0, Lcom/kingroot/kinguser/anu;->aDL:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    .line 177
    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/anu;->aDv:Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;

    iget-object v2, p0, Lcom/kingroot/kinguser/anu;->akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    invoke-static {p1, v1, v0, v2}, Lcom/kingroot/kinguser/anf;->a(Ljava/util/List;Ljava/util/List;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;)V

    .line 180
    iget-object v0, p0, Lcom/kingroot/kinguser/anu;->aoj:Lcom/kingroot/kinguser/alf;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alf;->GN()V

    .line 181
    return-void
.end method

.method public c(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;)V
    .locals 4

    .prologue
    .line 845
    invoke-virtual {p0}, Lcom/kingroot/kinguser/anu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/anu;->aDv:Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;

    iget-object v2, p0, Lcom/kingroot/kinguser/anu;->akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    iget-object v3, p0, Lcom/kingroot/kinguser/anu;->akD:Lcom/kingroot/kinguser/and$a;

    invoke-static {v0, p1, v1, v2, v3}, Lcom/kingroot/kinguser/and;->a(Landroid/content/Context;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;Lcom/kingroot/kinguser/and$a;)V

    .line 846
    return-void
.end method

.method public i(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)V
    .locals 1
    .param p1    # Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 767
    new-instance v0, Lcom/kingroot/kinguser/anu$11;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/anu$11;-><init>(Lcom/kingroot/kinguser/anu;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 778
    return-void
.end method

.method protected oG()Landroid/view/View;
    .locals 5

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/kingroot/kinguser/anu;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03002a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 196
    const v0, 0x7f0f00d7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/anu;->aDR:Landroid/view/View;

    .line 197
    const v0, 0x7f0f00d6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/anu;->aDY:Landroid/view/View;

    .line 199
    const v0, 0x7f0f00d9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/anu;->aDS:Landroid/widget/ImageView;

    .line 200
    new-instance v0, Lcom/kingroot/kinguser/anx;

    iget-object v2, p0, Lcom/kingroot/kinguser/anu;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/kingroot/kinguser/anx;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/anu;->aCF:Lcom/kingroot/kinguser/anx;

    .line 201
    const v0, 0x7f0f00da

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/kingroot/kinguser/anu;->aCF:Lcom/kingroot/kinguser/anx;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/anx;->getWholeView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 202
    iget-object v0, p0, Lcom/kingroot/kinguser/anu;->aCF:Lcom/kingroot/kinguser/anx;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/anx;->JM()V

    .line 203
    const v0, 0x7f0f00d8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;

    iput-object v0, p0, Lcom/kingroot/kinguser/anu;->aDT:Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;

    .line 205
    const v0, 0x7f0f031d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/anu;->aDV:Landroid/widget/TextView;

    .line 206
    const v0, 0x7f0f031c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/anu;->aDW:Landroid/widget/ImageView;

    .line 208
    const v0, 0x7f0f00d5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/kingroot/kinguser/anu;->aDG:Landroid/support/v7/widget/RecyclerView;

    .line 209
    const v0, 0x7f0f00dc

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/anu;->aDK:Landroid/view/View;

    .line 210
    iget-object v0, p0, Lcom/kingroot/kinguser/anu;->aDK:Landroid/view/View;

    new-instance v2, Lcom/kingroot/kinguser/anu$15;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/anu$15;-><init>(Lcom/kingroot/kinguser/anu;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iget-object v0, p0, Lcom/kingroot/kinguser/anu;->aDG:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/kingroot/common/uilib/FixLinearLayoutManager;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/anu;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/kingroot/common/uilib/FixLinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 217
    iget-object v0, p0, Lcom/kingroot/kinguser/anu;->aDG:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setOverScrollMode(I)V

    .line 219
    iget-object v0, p0, Lcom/kingroot/kinguser/anu;->aDG:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/kingroot/kinguser/anu;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/anu;->aDJ:Ljava/util/List;

    .line 221
    new-instance v0, Lcom/kingroot/kinguser/alj;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/anu;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/kingroot/kinguser/anu;->aDJ:Ljava/util/List;

    iget-object v4, p0, Lcom/kingroot/kinguser/anu;->axb:Ljava/util/List;

    invoke-direct {v0, v2, v3, v4}, Lcom/kingroot/kinguser/alj;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/anu;->aDH:Lcom/kingroot/kinguser/alj;

    .line 222
    iget-object v0, p0, Lcom/kingroot/kinguser/anu;->aDH:Lcom/kingroot/kinguser/alj;

    invoke-virtual {v0, p0}, Lcom/kingroot/kinguser/alj;->a(Lcom/kingroot/kinguser/alj$j;)V

    .line 223
    iget-object v0, p0, Lcom/kingroot/kinguser/anu;->aDH:Lcom/kingroot/kinguser/alj;

    invoke-virtual {v0, p0}, Lcom/kingroot/kinguser/alj;->a(Lcom/kingroot/kinguser/alj$i;)V

    .line 224
    iget-object v0, p0, Lcom/kingroot/kinguser/anu;->aDG:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/kingroot/kinguser/anu;->aDH:Lcom/kingroot/kinguser/alj;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 225
    iget-object v0, p0, Lcom/kingroot/kinguser/anu;->aDG:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v2}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 226
    iget-object v0, p0, Lcom/kingroot/kinguser/anu;->aCF:Lcom/kingroot/kinguser/anx;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/anx;->Jm()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v2, Lcom/kingroot/kinguser/anu$16;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/anu$16;-><init>(Lcom/kingroot/kinguser/anu;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    iget-object v0, p0, Lcom/kingroot/kinguser/anu;->aDS:Landroid/widget/ImageView;

    new-instance v2, Lcom/kingroot/kinguser/anu$17;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/anu$17;-><init>(Lcom/kingroot/kinguser/anu;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    iget-object v0, p0, Lcom/kingroot/kinguser/anu;->aDT:Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;

    new-instance v2, Lcom/kingroot/kinguser/anu$18;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/anu$18;-><init>(Lcom/kingroot/kinguser/anu;)V

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    const v0, 0x7f0f00db

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kingcore/uilib/ProgressWhell;

    iput-object v0, p0, Lcom/kingroot/kinguser/anu;->amm:Lcom/kingcore/uilib/ProgressWhell;

    .line 253
    iget-object v0, p0, Lcom/kingroot/kinguser/anu;->amm:Lcom/kingcore/uilib/ProgressWhell;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/kingcore/uilib/ProgressWhell;->setVisibility(I)V

    .line 254
    iget-object v0, p0, Lcom/kingroot/kinguser/anu;->amm:Lcom/kingcore/uilib/ProgressWhell;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f0e0018

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/kingcore/uilib/ProgressWhell;->setBarColor(I)V

    .line 255
    iget-object v0, p0, Lcom/kingroot/kinguser/anu;->amm:Lcom/kingcore/uilib/ProgressWhell;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/kingcore/uilib/ProgressWhell;->setProgress(F)V

    .line 256
    iget-object v0, p0, Lcom/kingroot/kinguser/anu;->amm:Lcom/kingcore/uilib/ProgressWhell;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lcom/kingroot/kinguser/abg;->r(F)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/kingcore/uilib/ProgressWhell;->setBarWidth(I)V

    .line 257
    iget-object v0, p0, Lcom/kingroot/kinguser/anu;->amm:Lcom/kingcore/uilib/ProgressWhell;

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v2}, Lcom/kingroot/kinguser/abg;->r(F)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/kingcore/uilib/ProgressWhell;->setCircleRadius(I)V

    .line 258
    iget-object v0, p0, Lcom/kingroot/kinguser/anu;->amm:Lcom/kingcore/uilib/ProgressWhell;

    new-instance v2, Lcom/kingroot/kinguser/anu$19;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/anu$19;-><init>(Lcom/kingroot/kinguser/anu;)V

    invoke-virtual {v0, v2}, Lcom/kingcore/uilib/ProgressWhell;->setCallback(Lcom/kingcore/uilib/ProgressWhell$a;)V

    .line 270
    new-instance v0, Lcom/kingroot/kinguser/alf;

    iget-object v2, p0, Lcom/kingroot/kinguser/anu;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/kingroot/kinguser/anu;->aAY:Ljava/util/ArrayList;

    invoke-direct {v0, v2, v3}, Lcom/kingroot/kinguser/alf;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/anu;->aoj:Lcom/kingroot/kinguser/alf;

    .line 272
    iget-object v0, p0, Lcom/kingroot/kinguser/anu;->aoj:Lcom/kingroot/kinguser/alf;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/alf;->fe(I)V

    .line 273
    iget-object v0, p0, Lcom/kingroot/kinguser/anu;->aoj:Lcom/kingroot/kinguser/alf;

    iget-object v2, p0, Lcom/kingroot/kinguser/anu;->aBJ:Lcom/kingroot/kinguser/and$a;

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/alf;->a(Lcom/kingroot/kinguser/and$a;)V

    .line 275
    iget-object v0, p0, Lcom/kingroot/kinguser/anu;->aDH:Lcom/kingroot/kinguser/alj;

    iget-object v2, p0, Lcom/kingroot/kinguser/anu;->aoj:Lcom/kingroot/kinguser/alf;

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/alj;->a(Lcom/kingroot/kinguser/alf;)V

    .line 277
    invoke-direct {p0}, Lcom/kingroot/kinguser/anu;->JE()V

    .line 279
    invoke-virtual {p0}, Lcom/kingroot/kinguser/anu;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0xb

    iget-object v3, p0, Lcom/kingroot/kinguser/anu;->aDG:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, v2, v3}, Lcom/kingroot/kinguser/bfl;->a(Landroid/os/Handler;ILandroid/view/View;)V

    .line 281
    return-object v1
.end method

.method protected oI()V
    .locals 0

    .prologue
    .line 185
    invoke-super {p0}, Lcom/kingroot/kinguser/ans;->oI()V

    .line 186
    return-void
.end method

.method protected oO()Lcom/kingroot/kinguser/yp;
    .locals 1

    .prologue
    .line 190
    invoke-super {p0}, Lcom/kingroot/kinguser/ans;->oO()Lcom/kingroot/kinguser/yp;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 301
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/ans;->onCreate(Landroid/os/Bundle;)V

    .line 302
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 782
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/ans;->onNewIntent(Landroid/content/Intent;)V

    .line 783
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 355
    invoke-super {p0}, Lcom/kingroot/kinguser/ans;->onPause()V

    .line 356
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 312
    iget-object v0, p0, Lcom/kingroot/kinguser/anu;->aDT:Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/kingroot/kinguser/anu;->aDT:Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;

    const v2, 0x4c7a8f

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/distribution/appsmarket/view/SearchView;->fN(I)V

    :cond_0
    move v0, v1

    .line 317
    :goto_0
    iget-object v2, p0, Lcom/kingroot/kinguser/anu;->aDL:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 318
    iget-object v2, p0, Lcom/kingroot/kinguser/anu;->aDH:Lcom/kingroot/kinguser/alj;

    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/alj;->fg(I)V

    .line 317
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 321
    :cond_1
    invoke-direct {p0}, Lcom/kingroot/kinguser/anu;->Jf()V

    .line 323
    invoke-static {}, Lcom/kingroot/kinguser/amz;->II()Lcom/kingroot/kinguser/amz;

    move-result-object v0

    iget-object v2, p0, Lcom/kingroot/kinguser/anu;->aBo:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppStatusListener;

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/amz;->b(Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppStatusListener;)V

    .line 327
    iget-boolean v0, p0, Lcom/kingroot/kinguser/anu;->aEa:Z

    if-eqz v0, :cond_2

    .line 328
    iget-object v0, p0, Lcom/kingroot/kinguser/anu;->aDG:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    .line 329
    iput-boolean v1, p0, Lcom/kingroot/kinguser/anu;->aEa:Z

    .line 331
    :cond_2
    invoke-super {p0}, Lcom/kingroot/kinguser/ans;->onResume()V

    .line 332
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 306
    invoke-super {p0}, Lcom/kingroot/kinguser/ans;->onStart()V

    .line 307
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 360
    invoke-static {}, Lcom/kingroot/kinguser/amz;->II()Lcom/kingroot/kinguser/amz;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/anu;->aBo:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppStatusListener;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/amz;->a(Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppStatusListener;)V

    .line 361
    invoke-static {}, Lcom/kingroot/kinguser/amz;->II()Lcom/kingroot/kinguser/amz;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/anu;->aDv:Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/amz;->a(Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;)V

    .line 362
    invoke-static {}, Lcom/kingroot/kinguser/aso;->Ol()Lcom/kingroot/kinguser/aso;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/anu;->akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aso;->a(Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;)V

    .line 363
    iget-object v0, p0, Lcom/kingroot/kinguser/anu;->aEb:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/kingroot/kinguser/anu;->aEb:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->d(Ljava/lang/Runnable;)V

    .line 366
    :cond_0
    invoke-super {p0}, Lcom/kingroot/kinguser/ans;->onStop()V

    .line 367
    return-void
.end method
