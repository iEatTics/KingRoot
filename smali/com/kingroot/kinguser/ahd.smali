.class public Lcom/kingroot/kinguser/ahd;
.super Lcom/kingroot/kinguser/ans;
.source "SourceFile"


# instance fields
.field private Gc:I

.field private final ahN:Landroid/view/View$OnClickListener;

.field private ahP:Landroid/widget/ImageView;

.field private akD:Lcom/kingroot/kinguser/and$a;

.field private final anR:Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;

.field private anW:Lcom/kingroot/kinguser/ada;

.field private anX:Landroid/widget/ImageView;

.field private anY:Landroid/widget/ImageView;

.field private anZ:Landroid/widget/TextView;

.field private aoA:Ljava/lang/String;

.field private aoB:Ljava/lang/String;

.field private aoC:Landroid/view/View;

.field private aoD:Landroid/widget/TextView;

.field private aoE:Landroid/widget/Button;

.field private aoF:Landroid/widget/TextView;

.field private aoG:Landroid/view/View;

.field private aoH:Landroid/widget/Button;

.field private aoI:Landroid/widget/Button;

.field private aoJ:Z

.field private aoK:Landroid/widget/ProgressBar;

.field private aoL:Lcom/kingroot/kinguser/bed;

.field private aoM:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener;

.field private aoN:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener;

.field private aoO:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$b;

.field private aoa:Landroid/widget/TextView;

.field private aob:Landroid/widget/TextView;

.field private aoc:Landroid/widget/ImageView;

.field private aod:Landroid/widget/ImageView;

.field private aoe:Landroid/widget/Button;

.field private aof:Landroid/widget/Button;

.field private aog:Landroid/view/View;

.field private aoh:Landroid/widget/LinearLayout;

.field private aoi:Landroid/support/v7/widget/RecyclerView;

.field private aoj:Lcom/kingroot/kinguser/alf;

.field private aok:Landroid/view/View;

.field private aol:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/ame;",
            ">;"
        }
    .end annotation
.end field

.field private aom:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/ame;",
            ">;"
        }
    .end annotation
.end field

.field private aon:I

.field private aoo:I

.field private aop:I

.field private aoq:Lcom/kingroot/kinguser/alf;

.field private aor:Landroid/support/v7/widget/RecyclerView;

.field private aos:Landroid/view/View;

.field private aot:Landroid/widget/LinearLayout;

.field private aou:Lcom/kingroot/common/uilib/SlidingUpPanelLayout;

.field private aov:Landroid/widget/ImageView;

.field private aow:Landroid/widget/TextView;

.field private aox:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

.field private aoy:Lcom/kingroot/kinguser/bid;

.field private aoz:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;Landroid/view/View$OnClickListener;)V
    .locals 5

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ans;-><init>(Landroid/content/Context;)V

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/ahd;->aol:Ljava/util/List;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/ahd;->aom:Ljava/util/List;

    .line 93
    new-instance v0, Lcom/kingroot/kinguser/and$a;

    invoke-direct {v0}, Lcom/kingroot/kinguser/and$a;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/ahd;->akD:Lcom/kingroot/kinguser/and$a;

    .line 105
    sget-object v0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;->Sf:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    iput-object v0, p0, Lcom/kingroot/kinguser/ahd;->aox:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    .line 108
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f070475

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoA:Ljava/lang/String;

    .line 109
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoB:Ljava/lang/String;

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/ahd;->aoJ:Z

    .line 563
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v3, 0x1

    new-instance v4, Lcom/kingroot/kinguser/ahd$5;

    invoke-direct {v4, p0}, Lcom/kingroot/kinguser/ahd$5;-><init>(Lcom/kingroot/kinguser/ahd;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoL:Lcom/kingroot/kinguser/bed;

    .line 604
    new-instance v0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerPage$6;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerPage$6;-><init>(Lcom/kingroot/kinguser/ahd;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoM:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener;

    .line 631
    new-instance v0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerPage$7;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerPage$7;-><init>(Lcom/kingroot/kinguser/ahd;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoN:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener;

    .line 648
    new-instance v0, Lcom/kingroot/kinguser/ahd$6;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/ahd$6;-><init>(Lcom/kingroot/kinguser/ahd;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoO:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$b;

    .line 122
    iput-object p2, p0, Lcom/kingroot/kinguser/ahd;->anR:Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;

    .line 123
    iput-object p3, p0, Lcom/kingroot/kinguser/ahd;->ahN:Landroid/view/View$OnClickListener;

    .line 124
    return-void
.end method

.method public static synthetic a(Lcom/kingroot/kinguser/ahd;I)I
    .locals 0

    .prologue
    .line 62
    iput p1, p0, Lcom/kingroot/kinguser/ahd;->aon:I

    return p1
.end method

.method static synthetic a(Lcom/kingroot/kinguser/ahd;Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;)Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/kingroot/kinguser/ahd;->aox:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    return-object p1
.end method

.method static synthetic a(Lcom/kingroot/kinguser/ahd;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/kingroot/kinguser/ahd;->wC()V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/ahd;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ahd;->r(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/ahd;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ahd;->fL(Ljava/lang/String;)V

    return-void
.end method

.method private aG(Z)V
    .locals 3

    .prologue
    .line 366
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->anW:Lcom/kingroot/kinguser/ada;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/ada;->ar(Z)V

    .line 367
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->anW:Lcom/kingroot/kinguser/ada;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ada;->aq(Z)V

    .line 368
    if-eqz p1, :cond_0

    .line 369
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->anW:Lcom/kingroot/kinguser/ada;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0200f1

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ada;->c(Landroid/graphics/drawable/Drawable;)V

    .line 370
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->anW:Lcom/kingroot/kinguser/ada;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ada;->getWholeView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f0013

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 371
    const v1, 0x7f0202ac

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 372
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->anW:Lcom/kingroot/kinguser/ada;

    new-instance v1, Lcom/kingroot/kinguser/ahd$1;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/ahd$1;-><init>(Lcom/kingroot/kinguser/ahd;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ada;->b(Landroid/view/View$OnClickListener;)V

    .line 379
    :cond_0
    return-void
.end method

.method public static synthetic b(Lcom/kingroot/kinguser/ahd;I)I
    .locals 0

    .prologue
    .line 62
    iput p1, p0, Lcom/kingroot/kinguser/ahd;->aoo:I

    return p1
.end method

.method static synthetic b(Lcom/kingroot/kinguser/ahd;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/kingroot/kinguser/ahd;->wF()V

    return-void
.end method

.method static synthetic c(Lcom/kingroot/kinguser/ahd;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/kingroot/kinguser/ahd;->wG()V

    return-void
.end method

.method public static synthetic d(Lcom/kingroot/kinguser/ahd;)Ljava/util/List;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aol:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic e(Lcom/kingroot/kinguser/ahd;)I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/kingroot/kinguser/ahd;->aon:I

    return v0
.end method

.method public static synthetic f(Lcom/kingroot/kinguser/ahd;)Ljava/util/List;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aom:Ljava/util/List;

    return-object v0
.end method

.method private fL(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 357
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    :goto_0
    return-void

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->anW:Lcom/kingroot/kinguser/ada;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/ada;->ey(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static synthetic g(Lcom/kingroot/kinguser/ahd;)I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/kingroot/kinguser/ahd;->aoo:I

    return v0
.end method

.method static synthetic h(Lcom/kingroot/kinguser/ahd;)Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aox:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    return-object v0
.end method

.method static synthetic i(Lcom/kingroot/kinguser/ahd;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aov:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic j(Lcom/kingroot/kinguser/ahd;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoB:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/kingroot/kinguser/ahd;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoA:Ljava/lang/String;

    return-object v0
.end method

.method private r(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 382
    new-instance v0, Lcom/kingroot/kinguser/aic;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/ahd;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/kingroot/kinguser/aic;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 383
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    .line 385
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 387
    const v3, 0x7f070495

    invoke-virtual {v1, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 389
    new-instance v1, Lcom/kingroot/kinguser/aic$b;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/ahd;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v3, v2, v4, v5}, Lcom/kingroot/kinguser/aic$b;-><init>(Landroid/content/Context;Ljava/util/List;ZLcom/kingroot/kinguser/aic$a;)V

    .line 390
    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/aic;->Y(Ljava/util/List;)V

    .line 391
    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aic;->a(Lcom/kingroot/kinguser/aic$b;)V

    .line 393
    new-instance v1, Lcom/kingroot/kinguser/ahd$2;

    invoke-direct {v1, p0, v0}, Lcom/kingroot/kinguser/ahd$2;-><init>(Lcom/kingroot/kinguser/ahd;Lcom/kingroot/kinguser/aic;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aic;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 405
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aic;->show()V

    .line 406
    return-void
.end method

.method private wC()V
    .locals 3

    .prologue
    .line 409
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoy:Lcom/kingroot/kinguser/bid;

    if-nez v0, :cond_0

    .line 410
    new-instance v0, Lcom/kingroot/kinguser/bid;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/ahd;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/bid;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoy:Lcom/kingroot/kinguser/bid;

    .line 411
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoy:Lcom/kingroot/kinguser/bid;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bid;->show()V

    .line 412
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoy:Lcom/kingroot/kinguser/bid;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f070495

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->setTitleText(Ljava/lang/String;)V

    .line 413
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoy:Lcom/kingroot/kinguser/bid;

    .line 414
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f070493

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 413
    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->d(Ljava/lang/CharSequence;)V

    .line 416
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoy:Lcom/kingroot/kinguser/bid;

    new-instance v1, Lcom/kingroot/kinguser/ahd$3;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/ahd$3;-><init>(Lcom/kingroot/kinguser/ahd;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->b(Lcom/kingroot/kinguser/bid$b;)V

    .line 426
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoy:Lcom/kingroot/kinguser/bid;

    new-instance v1, Lcom/kingroot/kinguser/ahd$4;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/ahd$4;-><init>(Lcom/kingroot/kinguser/ahd;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->a(Lcom/kingroot/kinguser/bid$b;)V

    .line 440
    :goto_0
    return-void

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoy:Lcom/kingroot/kinguser/bid;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bid;->dismiss()V

    .line 437
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoy:Lcom/kingroot/kinguser/bid;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bid;->show()V

    goto :goto_0
.end method

.method private wD()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 573
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aol:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 575
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoh:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 576
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoz:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 582
    :goto_0
    return-void

    .line 578
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoz:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 579
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoj:Lcom/kingroot/kinguser/alf;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alf;->notifyDataSetChanged()V

    .line 580
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoh:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private wE()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 585
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aom:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 587
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoz:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 594
    :goto_0
    return-void

    .line 589
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoz:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 590
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoq:Lcom/kingroot/kinguser/alf;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alf;->notifyDataSetChanged()V

    .line 591
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoC:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 592
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aot:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private wF()V
    .locals 5

    .prologue
    .line 597
    invoke-static {}, Lcom/kingroot/kinguser/alq;->GY()Lcom/kingroot/kinguser/ams;

    move-result-object v0

    const v1, 0x4c7bbc

    const/4 v2, 0x3

    iget v3, p0, Lcom/kingroot/kinguser/ahd;->aon:I

    iget-object v4, p0, Lcom/kingroot/kinguser/ahd;->aoM:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/ams;->a(IIILcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener;)V

    .line 598
    return-void
.end method

.method private wG()V
    .locals 5

    .prologue
    .line 601
    invoke-static {}, Lcom/kingroot/kinguser/alq;->GY()Lcom/kingroot/kinguser/ams;

    move-result-object v0

    const v1, 0x4c7bba

    const/4 v2, 0x3

    iget v3, p0, Lcom/kingroot/kinguser/ahd;->aoo:I

    iget-object v4, p0, Lcom/kingroot/kinguser/ahd;->aoN:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/ams;->a(IIILcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener;)V

    .line 602
    return-void
.end method


# virtual methods
.method protected a(Landroid/os/Message;)V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 523
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/ans;->a(Landroid/os/Message;)V

    .line 524
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 555
    :goto_0
    return-void

    .line 528
    :pswitch_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aol:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v3, :cond_0

    iget v0, p0, Lcom/kingroot/kinguser/ahd;->Gc:I

    if-ge v0, v2, :cond_0

    .line 529
    invoke-direct {p0}, Lcom/kingroot/kinguser/ahd;->wF()V

    .line 530
    iget v0, p0, Lcom/kingroot/kinguser/ahd;->Gc:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/kingroot/kinguser/ahd;->Gc:I

    goto :goto_0

    .line 533
    :cond_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/ahd;->wD()V

    .line 535
    iput v1, p0, Lcom/kingroot/kinguser/ahd;->Gc:I

    goto :goto_0

    .line 542
    :pswitch_1
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aom:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v3, :cond_1

    iget v0, p0, Lcom/kingroot/kinguser/ahd;->aop:I

    if-ge v0, v2, :cond_1

    .line 543
    invoke-direct {p0}, Lcom/kingroot/kinguser/ahd;->wG()V

    .line 544
    iget v0, p0, Lcom/kingroot/kinguser/ahd;->aop:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/kingroot/kinguser/ahd;->aop:I

    goto :goto_0

    .line 547
    :cond_1
    invoke-direct {p0}, Lcom/kingroot/kinguser/ahd;->wE()V

    .line 549
    iput v1, p0, Lcom/kingroot/kinguser/ahd;->aop:I

    goto :goto_0

    .line 524
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected ah(Ljava/util/List;)V
    .locals 1
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
    .line 559
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoj:Lcom/kingroot/kinguser/alf;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alf;->GN()V

    .line 560
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoq:Lcom/kingroot/kinguser/alf;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alf;->GN()V

    .line 561
    return-void
.end method

.method protected oG()Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 444
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ahd;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030115

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 445
    const v0, 0x7f0f02e9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;

    iput-object v0, p0, Lcom/kingroot/kinguser/ahd;->aou:Lcom/kingroot/common/uilib/SlidingUpPanelLayout;

    .line 446
    const v0, 0x7f0f0092

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoz:Landroid/view/View;

    .line 447
    const v0, 0x7f0f02ea

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/ahd;->anY:Landroid/widget/ImageView;

    .line 448
    const v0, 0x7f0f0075

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/ahd;->ahP:Landroid/widget/ImageView;

    .line 450
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->anR:Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;

    iget-object v0, v0, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->apkPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->fM(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 451
    if-eqz v0, :cond_0

    .line 452
    iget-object v2, p0, Lcom/kingroot/kinguser/ahd;->ahP:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 455
    :cond_0
    const v0, 0x7f0f02ed

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoa:Landroid/widget/TextView;

    .line 456
    const v0, 0x7f0f02ec

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/ahd;->anX:Landroid/widget/ImageView;

    .line 457
    const v0, 0x7f0f02ef

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/ahd;->aob:Landroid/widget/TextView;

    .line 458
    const v0, 0x7f0f02ee

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoc:Landroid/widget/ImageView;

    .line 459
    const v0, 0x7f0f02f1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/ahd;->anZ:Landroid/widget/TextView;

    .line 460
    const v0, 0x7f0f02f0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/ahd;->aod:Landroid/widget/ImageView;

    .line 461
    const v0, 0x7f0f01ea

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoe:Landroid/widget/Button;

    .line 462
    const v0, 0x7f0f01eb

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kingroot/kinguser/ahd;->aof:Landroid/widget/Button;

    .line 463
    const v0, 0x7f0f02f8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ahd;->aog:Landroid/view/View;

    .line 464
    const v0, 0x7f0f00f1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/ahd;->aov:Landroid/widget/ImageView;

    .line 465
    const v0, 0x7f0f02fa

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/ahd;->aow:Landroid/widget/TextView;

    .line 466
    const v0, 0x7f0f0284

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoC:Landroid/view/View;

    .line 468
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aow:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/kingroot/kinguser/ahd;->ahN:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 469
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoe:Landroid/widget/Button;

    iget-object v2, p0, Lcom/kingroot/kinguser/ahd;->ahN:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 470
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aof:Landroid/widget/Button;

    iget-object v2, p0, Lcom/kingroot/kinguser/ahd;->ahN:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 471
    const v0, 0x7f0f02f2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoD:Landroid/widget/TextView;

    .line 472
    const v0, 0x7f0f02f3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoE:Landroid/widget/Button;

    .line 473
    const v0, 0x7f0f02f4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoF:Landroid/widget/TextView;

    .line 474
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoF:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/kingroot/kinguser/ahd;->ahN:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 475
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoE:Landroid/widget/Button;

    iget-object v2, p0, Lcom/kingroot/kinguser/ahd;->ahN:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 477
    const v0, 0x7f0f02f5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoG:Landroid/view/View;

    .line 478
    const v0, 0x7f0f02f6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoH:Landroid/widget/Button;

    .line 479
    const v0, 0x7f0f02f7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoI:Landroid/widget/Button;

    .line 480
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoH:Landroid/widget/Button;

    iget-object v2, p0, Lcom/kingroot/kinguser/ahd;->ahN:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 481
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoI:Landroid/widget/Button;

    iget-object v2, p0, Lcom/kingroot/kinguser/ahd;->ahN:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 483
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aog:Landroid/view/View;

    invoke-static {v0}, Lcom/kingroot/kinguser/ws;->g(Landroid/view/View;)V

    .line 486
    const v0, 0x7f0f00ad

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoh:Landroid/widget/LinearLayout;

    .line 488
    const v0, 0x7f0f00c2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoi:Landroid/support/v7/widget/RecyclerView;

    .line 489
    new-instance v0, Lcom/kingroot/kinguser/alf;

    iget-object v2, p0, Lcom/kingroot/kinguser/ahd;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/kingroot/kinguser/ahd;->aol:Ljava/util/List;

    invoke-direct {v0, v2, v3}, Lcom/kingroot/kinguser/alf;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoj:Lcom/kingroot/kinguser/alf;

    .line 491
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoj:Lcom/kingroot/kinguser/alf;

    invoke-virtual {v0, v5}, Lcom/kingroot/kinguser/alf;->fe(I)V

    .line 492
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoj:Lcom/kingroot/kinguser/alf;

    iget-object v2, p0, Lcom/kingroot/kinguser/ahd;->akD:Lcom/kingroot/kinguser/and$a;

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/alf;->a(Lcom/kingroot/kinguser/and$a;)V

    .line 493
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoi:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/kingroot/common/uilib/FixLinearLayoutManager;

    iget-object v3, p0, Lcom/kingroot/kinguser/ahd;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v4, v4}, Lcom/kingroot/common/uilib/FixLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 494
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoi:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v2}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 495
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoi:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/kingroot/kinguser/ahd;->aoj:Lcom/kingroot/kinguser/alf;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 497
    const v0, 0x7f0f00c1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ahd;->aok:Landroid/view/View;

    .line 498
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aok:Landroid/view/View;

    iget-object v2, p0, Lcom/kingroot/kinguser/ahd;->ahN:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 500
    const v0, 0x7f0f02e6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/kingroot/kinguser/ahd;->aot:Landroid/widget/LinearLayout;

    .line 502
    const v0, 0x7f0f02e8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/kingroot/kinguser/ahd;->aor:Landroid/support/v7/widget/RecyclerView;

    .line 503
    new-instance v0, Lcom/kingroot/kinguser/alf;

    iget-object v2, p0, Lcom/kingroot/kinguser/ahd;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/kingroot/kinguser/ahd;->aom:Ljava/util/List;

    invoke-direct {v0, v2, v3}, Lcom/kingroot/kinguser/alf;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoq:Lcom/kingroot/kinguser/alf;

    .line 505
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoq:Lcom/kingroot/kinguser/alf;

    invoke-virtual {v0, v5}, Lcom/kingroot/kinguser/alf;->fe(I)V

    .line 506
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoq:Lcom/kingroot/kinguser/alf;

    iget-object v2, p0, Lcom/kingroot/kinguser/ahd;->akD:Lcom/kingroot/kinguser/and$a;

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/alf;->a(Lcom/kingroot/kinguser/and$a;)V

    .line 507
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aor:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/kingroot/common/uilib/FixLinearLayoutManager;

    iget-object v3, p0, Lcom/kingroot/kinguser/ahd;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v4, v4}, Lcom/kingroot/common/uilib/FixLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 508
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aor:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v2}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 509
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aor:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/kingroot/kinguser/ahd;->aoq:Lcom/kingroot/kinguser/alf;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 511
    const v0, 0x7f0f02e7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ahd;->aos:Landroid/view/View;

    .line 512
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aos:Landroid/view/View;

    iget-object v2, p0, Lcom/kingroot/kinguser/ahd;->ahN:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 513
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aou:Lcom/kingroot/common/uilib/SlidingUpPanelLayout;

    iget-object v2, p0, Lcom/kingroot/kinguser/ahd;->aoO:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$b;

    invoke-virtual {v0, v2}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->a(Lcom/kingroot/common/uilib/SlidingUpPanelLayout$b;)V

    .line 514
    const v0, 0x7f0f02eb

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoK:Landroid/widget/ProgressBar;

    .line 517
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v2, 0x1896c

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 518
    return-object v1
.end method

.method protected oO()Lcom/kingroot/kinguser/yp;
    .locals 4

    .prologue
    .line 346
    new-instance v0, Lcom/kingroot/kinguser/ada;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/ahd;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 347
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f070475

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/kingroot/kinguser/ada;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ahd;->anW:Lcom/kingroot/kinguser/ada;

    .line 348
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->anW:Lcom/kingroot/kinguser/ada;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ada;->getWholeView()Landroid/view/View;

    move-result-object v0

    .line 349
    if-eqz v0, :cond_0

    .line 350
    const v1, 0x7f0f0336

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 352
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/ahd;->aG(Z)V

    .line 353
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->anW:Lcom/kingroot/kinguser/ada;

    return-object v0
.end method

.method protected onBackPressed()Z
    .locals 2

    .prologue
    .line 623
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aou:Lcom/kingroot/common/uilib/SlidingUpPanelLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aou:Lcom/kingroot/common/uilib/SlidingUpPanelLayout;

    invoke-virtual {v0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->getPanelState()Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    move-result-object v0

    sget-object v1, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;->Se:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    if-ne v0, v1, :cond_0

    .line 624
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aou:Lcom/kingroot/common/uilib/SlidingUpPanelLayout;

    sget-object v1, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;->Sf:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    invoke-virtual {v0, v1}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->setPanelState(Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;)V

    .line 625
    const/4 v0, 0x1

    .line 628
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 137
    invoke-super {p0}, Lcom/kingroot/kinguser/ans;->onStart()V

    .line 139
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/ahd;->aoL:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 140
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ahd;->wB()V

    .line 141
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 128
    invoke-super {p0}, Lcom/kingroot/kinguser/ans;->onStop()V

    .line 129
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->anY:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 130
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoc:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 131
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aod:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 133
    return-void
.end method

.method public wB()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x3e8

    const v8, 0x7f020197

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 144
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ahd;->oP()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->anR:Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;

    iget v0, v0, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->state:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 150
    :pswitch_0
    iput-boolean v6, p0, Lcom/kingroot/kinguser/ahd;->aoJ:Z

    .line 151
    invoke-direct {p0, v7}, Lcom/kingroot/kinguser/ahd;->aG(Z)V

    .line 152
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoG:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoI:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->anY:Landroid/widget/ImageView;

    const v1, 0x7f020199

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 156
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->anX:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoa:Landroid/widget/TextView;

    const-string v1, "#182e43"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 158
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoa:Landroid/widget/TextView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0704aa

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/kingroot/kinguser/ahd;->anR:Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;

    iget-object v4, v4, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->appName:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoa:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoB:Ljava/lang/String;

    .line 161
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aox:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    sget-object v1, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;->Se:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    if-ne v0, v1, :cond_2

    .line 162
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoB:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/ahd;->fL(Ljava/lang/String;)V

    .line 165
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoe:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 166
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aof:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->anR:Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;

    iget-object v0, v0, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->apE:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 168
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aob:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aob:Landroid/widget/TextView;

    const v1, 0x7f070499

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 170
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoc:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoc:Landroid/widget/ImageView;

    const v1, 0x7f020208

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 172
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoc:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 173
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoc:Landroid/widget/ImageView;

    invoke-static {v0, v10, v11, v7}, Lcom/kingroot/kinguser/bhk;->a(Landroid/view/View;JZ)V

    .line 179
    :goto_1
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aod:Landroid/widget/ImageView;

    const v1, 0x7f020208

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 180
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aod:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aod:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 182
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aod:Landroid/widget/ImageView;

    invoke-static {v0, v10, v11, v7}, Lcom/kingroot/kinguser/bhk;->a(Landroid/view/View;JZ)V

    .line 183
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->anZ:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->anZ:Landroid/widget/TextView;

    const v1, 0x7f07049e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 186
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->anY:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 187
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->anY:Landroid/widget/ImageView;

    invoke-static {v0, v10, v11, v7}, Lcom/kingroot/kinguser/bhk;->a(Landroid/view/View;JZ)V

    goto/16 :goto_0

    .line 175
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aob:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoc:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 190
    :pswitch_1
    invoke-direct {p0, v6}, Lcom/kingroot/kinguser/ahd;->aG(Z)V

    .line 191
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoG:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 192
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoD:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoF:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoE:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 196
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->anX:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoK:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoa:Landroid/widget/TextView;

    const-string v1, "#182e43"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 200
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoa:Landroid/widget/TextView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0704a8

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/kingroot/kinguser/ahd;->anR:Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;

    iget-object v4, v4, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->appName:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoa:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoB:Ljava/lang/String;

    .line 203
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aox:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    sget-object v1, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;->Se:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    if-ne v0, v1, :cond_4

    .line 204
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoB:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/ahd;->fL(Ljava/lang/String;)V

    .line 207
    :cond_4
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoe:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aof:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aob:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoc:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 211
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoc:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 212
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aod:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 213
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aod:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 214
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->anZ:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->anY:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 217
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->anY:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 221
    :pswitch_2
    invoke-direct {p0, v7}, Lcom/kingroot/kinguser/ahd;->aG(Z)V

    .line 222
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoG:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 223
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->anX:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 224
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoe:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 225
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aof:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 226
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoc:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aob:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 228
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aod:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 229
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->anZ:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoK:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 231
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->anR:Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;

    iget v0, v0, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->apF:I

    if-ne v0, v7, :cond_6

    .line 232
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoe:Landroid/widget/Button;

    const v1, 0x7f070403

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 233
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aof:Landroid/widget/Button;

    const v1, 0x7f07039a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 234
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->anX:Landroid/widget/ImageView;

    const v1, 0x7f02016b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 235
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoa:Landroid/widget/TextView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0e0078

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 236
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoa:Landroid/widget/TextView;

    const v1, 0x7f07049b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 238
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f07049c

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/kingroot/kinguser/ahd;->anR:Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;

    iget-object v3, v3, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->appName:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoB:Ljava/lang/String;

    .line 239
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aox:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    sget-object v1, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;->Se:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    if-ne v0, v1, :cond_5

    .line 240
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoB:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/ahd;->fL(Ljava/lang/String;)V

    .line 260
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->anY:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 261
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->anY:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 262
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aou:Lcom/kingroot/common/uilib/SlidingUpPanelLayout;

    const/high16 v1, 0x43480000    # 200.0f

    invoke-static {v1}, Lcom/kingroot/kinguser/abg;->r(F)I

    move-result v1

    invoke-virtual {v0, v1, v7}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->l(IZ)V

    goto/16 :goto_0

    .line 243
    :cond_6
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Ge()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_7

    .line 244
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoe:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 248
    :goto_3
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aof:Landroid/widget/Button;

    const v1, 0x7f0704ac

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 249
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->anX:Landroid/widget/ImageView;

    const v1, 0x7f0202c1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 250
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoa:Landroid/widget/TextView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0e00b8

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 251
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoa:Landroid/widget/TextView;

    const v1, 0x7f070497

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 253
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f0704ab

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/kingroot/kinguser/ahd;->anR:Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;

    iget-object v3, v3, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->appName:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoB:Ljava/lang/String;

    .line 254
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aox:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    sget-object v1, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;->Se:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    if-ne v0, v1, :cond_5

    .line 255
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoB:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/ahd;->fL(Ljava/lang/String;)V

    goto :goto_2

    .line 246
    :cond_7
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoe:Landroid/widget/Button;

    const v1, 0x7f070062

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_3

    .line 265
    :pswitch_3
    invoke-direct {p0, v7}, Lcom/kingroot/kinguser/ahd;->aG(Z)V

    .line 267
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->anR:Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;

    iget v0, v0, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->apG:I

    packed-switch v0, :pswitch_data_1

    .line 301
    iput-boolean v7, p0, Lcom/kingroot/kinguser/ahd;->aoJ:Z

    .line 302
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoG:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 303
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoe:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 304
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aof:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 305
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aob:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 306
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoc:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 307
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aod:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 308
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->anZ:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 309
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->anR:Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;

    iget v0, v0, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->apG:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_a

    .line 310
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoD:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 311
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoD:Landroid/widget/TextView;

    const v1, 0x7f07049f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 319
    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoF:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 320
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoE:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 321
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->anX:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 322
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->anY:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 323
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->anY:Landroid/widget/ImageView;

    const v1, 0x7f020212

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 324
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->anX:Landroid/widget/ImageView;

    const v1, 0x7f0202c1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 325
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoa:Landroid/widget/TextView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0e00b8

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 326
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoa:Landroid/widget/TextView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0704a7

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/kingroot/kinguser/ahd;->anR:Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;

    iget-object v4, v4, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->appName:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    :goto_5
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoa:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoB:Ljava/lang/String;

    .line 332
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aox:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    sget-object v1, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;->Se:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    if-ne v0, v1, :cond_0

    .line 333
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoB:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/ahd;->fL(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 270
    :pswitch_4
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->anY:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 271
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->anY:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 272
    iput-boolean v6, p0, Lcom/kingroot/kinguser/ahd;->aoJ:Z

    .line 273
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoa:Landroid/widget/TextView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0704a9

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/kingroot/kinguser/ahd;->anR:Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;

    iget-object v4, v4, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->appName:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->anR:Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;

    iget-object v0, v0, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->apE:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 275
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aob:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 276
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aob:Landroid/widget/TextView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f070498

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/kingroot/kinguser/ahd;->anR:Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;

    iget-object v4, v4, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->apE:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoc:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 278
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoc:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 279
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoc:Landroid/widget/ImageView;

    const v1, 0x7f020104

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 285
    :goto_6
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->anZ:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 286
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->anZ:Landroid/widget/TextView;

    const v1, 0x7f0704a5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 287
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aod:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 288
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aod:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 289
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aod:Landroid/widget/ImageView;

    const v1, 0x7f020104

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 291
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoG:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 292
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoI:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 293
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoI:Landroid/widget/Button;

    const v1, 0x7f070491

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 294
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoH:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 295
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoe:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_5

    .line 281
    :cond_9
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aob:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 282
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->aoc:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6

    .line 313
    :cond_a
    iget-object v0, p0, Lcom/kingroot/kinguser/ahd;->anR:Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->xb()Ljava/lang/String;

    move-result-object v0

    .line 314
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 315
    iget-object v1, p0, Lcom/kingroot/kinguser/ahd;->aoD:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 316
    iget-object v1, p0, Lcom/kingroot/kinguser/ahd;->aoD:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 148
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 267
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method
