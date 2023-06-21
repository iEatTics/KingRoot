.class public Lcom/kingroot/kinguser/ank;
.super Lcom/kingroot/kinguser/ans;
.source "SourceFile"


# instance fields
.field private Gc:I

.field private aAM:Landroid/widget/TextView;

.field private aAN:Landroid/widget/TextView;

.field private aAO:Landroid/widget/TextView;

.field private aAP:Landroid/widget/TextView;

.field private aAQ:Landroid/widget/TextView;

.field private aAR:Landroid/widget/TextView;

.field private aAS:Landroid/widget/RelativeLayout;

.field private aAT:Lcom/kingcore/uilib/ExpandableTextView;

.field private aAU:Ljava/lang/String;

.field private aAV:Ljava/lang/String;

.field private aAW:Landroid/widget/ImageView;

.field private aAX:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

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

.field private aAZ:Lcom/kingroot/kinguser/alc;

.field private aBa:Landroid/support/v7/widget/RecyclerView;

.field private aBb:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/amc;",
            ">;"
        }
    .end annotation
.end field

.field public aBc:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

.field private aBd:Landroid/graphics/Bitmap;

.field private aBe:Lcom/kingroot/kinguser/qd;

.field private aBf:Lcom/kingroot/common/uilib/NestedScrollView;

.field private aBg:Lcom/kingroot/kinguser/ano;

.field protected aBh:Lcom/kingroot/kinguser/apf;

.field private aBi:I

.field private aBj:Z

.field private aBk:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsDetailListener;

.field private aBl:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadRecommendAppsListener;

.field protected aBm:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private aBn:Lcom/kingroot/kinguser/alc$a;

.field private aBo:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppStatusListener;

.field private aBp:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener;

.field private age:Landroid/widget/TextView;

.field protected aiM:Landroid/widget/FrameLayout;

.field private akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

.field private akD:Lcom/kingroot/kinguser/and$a;

.field protected akE:Lcom/kingroot/kinguser/apv$b;

.field private aoh:Landroid/widget/LinearLayout;

.field private aoi:Landroid/support/v7/widget/RecyclerView;

.field private aoj:Lcom/kingroot/kinguser/alf;

.field private aon:I

.field private awu:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

.field private mIconView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 154
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ans;-><init>(Landroid/content/Context;)V

    .line 115
    iput v1, p0, Lcom/kingroot/kinguser/ank;->Gc:I

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/ank;->aAY:Ljava/util/ArrayList;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/ank;->aBb:Ljava/util/ArrayList;

    .line 131
    iput v1, p0, Lcom/kingroot/kinguser/ank;->aon:I

    .line 150
    const/4 v0, -0x1

    iput v0, p0, Lcom/kingroot/kinguser/ank;->aBi:I

    .line 151
    iput-boolean v1, p0, Lcom/kingroot/kinguser/ank;->aBj:Z

    .line 521
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$7;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$7;-><init>(Lcom/kingroot/kinguser/ank;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ank;->aBk:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsDetailListener;

    .line 556
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$8;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$8;-><init>(Lcom/kingroot/kinguser/ank;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ank;->aBl:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadRecommendAppsListener;

    .line 582
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$9;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$9;-><init>(Lcom/kingroot/kinguser/ank;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ank;->awu:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

    .line 687
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$10;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$10;-><init>(Lcom/kingroot/kinguser/ank;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ank;->akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    .line 706
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/ank;->aBm:Ljava/util/HashMap;

    .line 708
    new-instance v0, Lcom/kingroot/kinguser/ank$2;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/ank$2;-><init>(Lcom/kingroot/kinguser/ank;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ank;->akE:Lcom/kingroot/kinguser/apv$b;

    .line 733
    new-instance v0, Lcom/kingroot/kinguser/and$a;

    invoke-direct {v0}, Lcom/kingroot/kinguser/and$a;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/ank;->akD:Lcom/kingroot/kinguser/and$a;

    .line 776
    new-instance v0, Lcom/kingroot/kinguser/ank$3;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/ank$3;-><init>(Lcom/kingroot/kinguser/ank;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ank;->aBn:Lcom/kingroot/kinguser/alc$a;

    .line 802
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$13;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$13;-><init>(Lcom/kingroot/kinguser/ank;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ank;->aBo:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppStatusListener;

    .line 847
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$14;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$14;-><init>(Lcom/kingroot/kinguser/ank;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ank;->aBp:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener;

    .line 155
    return-void
.end method

.method private IY()V
    .locals 3

    .prologue
    .line 406
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 407
    new-instance v1, Lcom/kingroot/kinguser/amc;

    invoke-direct {v1}, Lcom/kingroot/kinguser/amc;-><init>()V

    .line 408
    iget-object v2, p0, Lcom/kingroot/kinguser/ank;->aBd:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/amc;->d(Landroid/graphics/Bitmap;)V

    .line 409
    iget-object v2, p0, Lcom/kingroot/kinguser/ank;->aBb:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 411
    :cond_0
    return-void
.end method

.method private IZ()V
    .locals 10

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 426
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v2, Lcom/kingroot/kinguser/bed;

    sget-object v3, Lcom/kingroot/kinguser/bem;->bll:Lcom/kingroot/kinguser/bem;

    sget-object v4, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    new-instance v5, Lcom/kingroot/kinguser/ank$8;

    invoke-direct {v5, p0}, Lcom/kingroot/kinguser/ank$8;-><init>(Lcom/kingroot/kinguser/ank;)V

    invoke-direct {v2, v3, v4, v1, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 437
    iget-object v0, p0, Lcom/kingroot/kinguser/ank;->aAX:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    instance-of v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;

    if-nez v0, :cond_1

    .line 506
    :cond_0
    :goto_0
    return-void

    .line 441
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/ank;->aAX:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;

    .line 442
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    .line 443
    iget-object v3, p0, Lcom/kingroot/kinguser/ank;->age:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/kingroot/kinguser/ank;->aAX:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    iget-object v4, v4, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->appName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 444
    iget-object v3, p0, Lcom/kingroot/kinguser/ank;->aAM:Landroid/widget/TextView;

    const v4, 0x7f0703e1

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/kingroot/kinguser/ank;->aAX:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    iget v6, v6, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->downloadCount:I

    int-to-long v6, v6

    invoke-static {v6, v7}, Lcom/kingroot/kinguser/anf;->bP(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v2, v4, v5}, Lcom/kingroot/kinguser/zi;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 445
    iget-object v3, p0, Lcom/kingroot/kinguser/ank;->aAX:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    iget-object v3, v3, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->version:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 446
    iget-object v3, p0, Lcom/kingroot/kinguser/ank;->aAN:Landroid/widget/TextView;

    const v4, 0x7f0703dc

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/kingroot/kinguser/ank;->aAX:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    iget-object v6, v6, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->version:Ljava/lang/String;

    aput-object v6, v5, v1

    invoke-virtual {v2, v4, v5}, Lcom/kingroot/kinguser/zi;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 448
    :cond_2
    iget-object v3, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;->publishTime:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 449
    iget-object v3, p0, Lcom/kingroot/kinguser/ank;->aAO:Landroid/widget/TextView;

    const v4, 0x7f0703d9

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;->publishTime:Ljava/lang/String;

    aput-object v6, v5, v1

    invoke-virtual {v2, v4, v5}, Lcom/kingroot/kinguser/zi;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 451
    :cond_3
    iget-object v2, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;->description:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 457
    iget-object v2, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;->description:Ljava/lang/String;

    iput-object v2, p0, Lcom/kingroot/kinguser/ank;->aAU:Ljava/lang/String;

    .line 458
    iget-object v2, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;->description:Ljava/lang/String;

    const-string v3, "\\n"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kingroot/kinguser/ank;->aAV:Ljava/lang/String;

    .line 459
    iget-object v2, p0, Lcom/kingroot/kinguser/ank;->aAT:Lcom/kingcore/uilib/ExpandableTextView;

    iget-object v3, p0, Lcom/kingroot/kinguser/ank;->aAV:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/kingcore/uilib/ExpandableTextView;->setText(Ljava/lang/CharSequence;)V

    .line 461
    :cond_4
    iget v2, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;->official:I

    if-ne v2, v8, :cond_5

    .line 462
    iget-object v2, p0, Lcom/kingroot/kinguser/ank;->aAP:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 465
    :cond_5
    iget v2, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;->sign:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_6

    .line 466
    iget-object v2, p0, Lcom/kingroot/kinguser/ank;->aAQ:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 468
    :cond_6
    iget v2, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;->plugintype:I

    if-eqz v2, :cond_7

    .line 469
    iget-object v2, p0, Lcom/kingroot/kinguser/ank;->aAR:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 471
    :cond_7
    iget-object v2, p0, Lcom/kingroot/kinguser/ank;->aBe:Lcom/kingroot/kinguser/qd;

    if-eqz v2, :cond_8

    .line 472
    iget-object v2, p0, Lcom/kingroot/kinguser/ank;->aBe:Lcom/kingroot/kinguser/qd;

    iget v3, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;->score:I

    iget v4, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;->suser:I

    invoke-virtual {v2, v3, v4}, Lcom/kingroot/kinguser/qd;->r(II)V

    .line 475
    :cond_8
    iget v2, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;->appStatus:I

    if-nez v2, :cond_9

    iget-wide v2, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;->fileSize:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_9

    .line 478
    iget-object v2, p0, Lcom/kingroot/kinguser/ank;->aAX:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    iget-object v3, p0, Lcom/kingroot/kinguser/ank;->aBc:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    .line 479
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v4

    const v5, 0x7f0703e8

    invoke-virtual {v4, v5}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 478
    invoke-static {v2, v3, v4}, Lcom/kingroot/kinguser/and;->a(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Lcom/kingcore/uilib/TextRoundCornerProgressBar;Ljava/lang/String;)V

    .line 486
    :cond_9
    iget-object v2, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;->picurls:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;->srcpicurls:Ljava/util/ArrayList;

    .line 487
    invoke-static {v2}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;->picurls:Ljava/util/ArrayList;

    .line 488
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;->srcpicurls:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 490
    iget-object v2, p0, Lcom/kingroot/kinguser/ank;->aBb:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    move v2, v1

    .line 492
    :goto_1
    iget-object v1, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;->picurls:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_a

    .line 494
    iget-object v1, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;->picurls:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 495
    new-instance v3, Lcom/kingroot/kinguser/amc;

    invoke-direct {v3}, Lcom/kingroot/kinguser/amc;-><init>()V

    .line 496
    invoke-virtual {v3, v1}, Lcom/kingroot/kinguser/amc;->hu(Ljava/lang/String;)V

    .line 497
    iget-object v1, p0, Lcom/kingroot/kinguser/ank;->aBm:Ljava/util/HashMap;

    iget-object v4, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;->picurls:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    iget-object v1, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;->srcpicurls:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 500
    invoke-virtual {v3, v1}, Lcom/kingroot/kinguser/amc;->hv(Ljava/lang/String;)V

    .line 501
    iget-object v1, p0, Lcom/kingroot/kinguser/ank;->aBb:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 492
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 504
    :cond_a
    invoke-static {}, Lcom/kingroot/kinguser/apv;->LO()Lcom/kingroot/kinguser/apv;

    move-result-object v1

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;->picurls:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/kingroot/kinguser/ank;->akE:Lcom/kingroot/kinguser/apv$b;

    invoke-virtual {v1, v0, v2}, Lcom/kingroot/kinguser/apv;->b(Ljava/util/List;Lcom/kingroot/kinguser/apv$b;)V

    goto/16 :goto_0
.end method

.method private Ja()V
    .locals 9

    .prologue
    .line 510
    invoke-static {}, Lcom/kingroot/kinguser/alq;->GY()Lcom/kingroot/kinguser/ams;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/ank;->aAX:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    iget-object v2, p0, Lcom/kingroot/kinguser/ank;->aBk:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsDetailListener;

    invoke-interface {v0, v1, v2}, Lcom/kingroot/kinguser/ams;->a(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsDetailListener;)V

    .line 511
    invoke-static {}, Lcom/kingroot/kinguser/alq;->GY()Lcom/kingroot/kinguser/ams;

    move-result-object v1

    const v2, 0x4c7bbd

    iget-object v0, p0, Lcom/kingroot/kinguser/ank;->aAX:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    iget-object v3, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->pkgName:Ljava/lang/String;

    const/16 v4, 0x1e

    iget v5, p0, Lcom/kingroot/kinguser/ank;->aon:I

    iget-object v0, p0, Lcom/kingroot/kinguser/ank;->aAX:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    iget-wide v6, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->groupId:J

    iget-object v8, p0, Lcom/kingroot/kinguser/ank;->aBl:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadRecommendAppsListener;

    invoke-interface/range {v1 .. v8}, Lcom/kingroot/kinguser/ams;->a(ILjava/lang/String;IIJLcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadRecommendAppsListener;)V

    .line 513
    return-void
.end method

.method private Jb()V
    .locals 9

    .prologue
    .line 516
    invoke-static {}, Lcom/kingroot/kinguser/alq;->GY()Lcom/kingroot/kinguser/ams;

    move-result-object v1

    const v2, 0x4c7bbd

    iget-object v0, p0, Lcom/kingroot/kinguser/ank;->aAX:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    iget-object v3, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->pkgName:Ljava/lang/String;

    const/16 v4, 0x1e

    iget v5, p0, Lcom/kingroot/kinguser/ank;->aon:I

    iget-object v0, p0, Lcom/kingroot/kinguser/ank;->aAX:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    iget-wide v6, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->groupId:J

    iget-object v8, p0, Lcom/kingroot/kinguser/ank;->aBl:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadRecommendAppsListener;

    invoke-interface/range {v1 .. v8}, Lcom/kingroot/kinguser/ams;->a(ILjava/lang/String;IIJLcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadRecommendAppsListener;)V

    .line 518
    return-void
.end method

.method private Jc()Ljava/util/List;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 742
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 743
    iget-object v0, p0, Lcom/kingroot/kinguser/ank;->aAX:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    instance-of v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;

    if-nez v0, :cond_0

    move-object v0, v3

    .line 753
    :goto_0
    return-object v0

    .line 746
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ank;->aAX:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;

    .line 747
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    iget-object v1, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;->picurls:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    .line 748
    iget-object v1, p0, Lcom/kingroot/kinguser/ank;->aBa:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 749
    if-eqz v1, :cond_1

    .line 750
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 747
    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_2
    move-object v0, v3

    .line 753
    goto :goto_0
.end method

.method private Jd()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 762
    iget-object v0, p0, Lcom/kingroot/kinguser/ank;->aAX:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;->srcpicurls:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic a(Lcom/kingroot/kinguser/ank;I)I
    .locals 0

    .prologue
    .line 95
    iput p1, p0, Lcom/kingroot/kinguser/ank;->aon:I

    return p1
.end method

.method static synthetic a(Lcom/kingroot/kinguser/ank;)Lcom/kingcore/uilib/ExpandableTextView;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/kingroot/kinguser/ank;->aAT:Lcom/kingcore/uilib/ExpandableTextView;

    return-object v0
.end method

.method public static synthetic a(Lcom/kingroot/kinguser/ank;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/kingroot/kinguser/ank;->aAX:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    return-object p1
.end method

.method static synthetic b(Lcom/kingroot/kinguser/ank;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/kingroot/kinguser/ank;->aAU:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/kingroot/kinguser/ank;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/kingroot/kinguser/ank;->aAS:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic d(Lcom/kingroot/kinguser/ank;)Lcom/kingroot/common/uilib/NestedScrollView;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/kingroot/kinguser/ank;->aBf:Lcom/kingroot/common/uilib/NestedScrollView;

    return-object v0
.end method

.method static synthetic e(Lcom/kingroot/kinguser/ank;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/kingroot/kinguser/ank;->aAW:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic f(Lcom/kingroot/kinguser/ank;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/kingroot/kinguser/ank;->aAV:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic g(Lcom/kingroot/kinguser/ank;)I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/kingroot/kinguser/ank;->aBi:I

    return v0
.end method

.method public static synthetic h(Lcom/kingroot/kinguser/ank;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/kingroot/kinguser/ank;->aAX:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    return-object v0
.end method

.method static synthetic i(Lcom/kingroot/kinguser/ank;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/kingroot/kinguser/ank;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic j(Lcom/kingroot/kinguser/ank;)Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/kingroot/kinguser/ank;->awu:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

    return-object v0
.end method

.method public static synthetic k(Lcom/kingroot/kinguser/ank;)Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/kingroot/kinguser/ank;->akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    return-object v0
.end method

.method static synthetic l(Lcom/kingroot/kinguser/ank;)Lcom/kingroot/kinguser/and$a;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/kingroot/kinguser/ank;->akD:Lcom/kingroot/kinguser/and$a;

    return-object v0
.end method

.method public static synthetic m(Lcom/kingroot/kinguser/ank;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/kingroot/kinguser/ank;->mIconView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public static synthetic n(Lcom/kingroot/kinguser/ank;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/kingroot/kinguser/ank;->aAY:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic o(Lcom/kingroot/kinguser/ank;)I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/kingroot/kinguser/ank;->aon:I

    return v0
.end method

.method public static synthetic p(Lcom/kingroot/kinguser/ank;)I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/kingroot/kinguser/ank;->Gc:I

    return v0
.end method

.method static synthetic q(Lcom/kingroot/kinguser/ank;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/kingroot/kinguser/ank;->aBb:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic r(Lcom/kingroot/kinguser/ank;)Lcom/kingroot/kinguser/alc;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/kingroot/kinguser/ank;->aAZ:Lcom/kingroot/kinguser/alc;

    return-object v0
.end method

.method static synthetic s(Lcom/kingroot/kinguser/ank;)Ljava/util/List;
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/kingroot/kinguser/ank;->Jd()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic t(Lcom/kingroot/kinguser/ank;)Ljava/util/List;
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/kingroot/kinguser/ank;->Jc()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic u(Lcom/kingroot/kinguser/ank;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/kingroot/kinguser/ank;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic v(Lcom/kingroot/kinguser/ank;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/kingroot/kinguser/ank;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic w(Lcom/kingroot/kinguser/ank;)Lcom/kingroot/kinguser/ano;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/kingroot/kinguser/ank;->aBg:Lcom/kingroot/kinguser/ano;

    return-object v0
.end method

.method private wD()V
    .locals 2

    .prologue
    .line 414
    iget-object v0, p0, Lcom/kingroot/kinguser/ank;->aAY:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 416
    iget-object v0, p0, Lcom/kingroot/kinguser/ank;->aoh:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 421
    :goto_0
    return-void

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ank;->aoj:Lcom/kingroot/kinguser/alf;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alf;->notifyDataSetChanged()V

    .line 419
    iget-object v0, p0, Lcom/kingroot/kinguser/ank;->aoh:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public static synthetic x(Lcom/kingroot/kinguser/ank;)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/kingroot/kinguser/ank;->Ja()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/os/Message;)V
    .locals 5

    .prologue
    const/16 v1, 0x8

    .line 354
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/ans;->a(Landroid/os/Message;)V

    .line 355
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 358
    :pswitch_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/ank;->IZ()V

    .line 359
    iget-object v0, p0, Lcom/kingroot/kinguser/ank;->aiM:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 360
    iget-object v0, p0, Lcom/kingroot/kinguser/ank;->aiM:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 363
    :cond_1
    iget-boolean v0, p0, Lcom/kingroot/kinguser/ank;->aBj:Z

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/kingroot/kinguser/ank;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/kingroot/kinguser/ank;->aAX:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    iget-object v2, p0, Lcom/kingroot/kinguser/ank;->awu:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

    iget-object v3, p0, Lcom/kingroot/kinguser/ank;->akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    iget-object v4, p0, Lcom/kingroot/kinguser/ank;->akD:Lcom/kingroot/kinguser/and$a;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/and;->a(Landroid/content/Context;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;Lcom/kingroot/kinguser/and$a;)V

    goto :goto_0

    .line 372
    :pswitch_1
    iget-object v0, p0, Lcom/kingroot/kinguser/ank;->aiM:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 373
    iget-object v0, p0, Lcom/kingroot/kinguser/ank;->aiM:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 381
    :pswitch_2
    iget-object v0, p0, Lcom/kingroot/kinguser/ank;->aAY:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_2

    iget v0, p0, Lcom/kingroot/kinguser/ank;->Gc:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    .line 382
    invoke-direct {p0}, Lcom/kingroot/kinguser/ank;->Jb()V

    .line 383
    iget v0, p0, Lcom/kingroot/kinguser/ank;->Gc:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/kingroot/kinguser/ank;->Gc:I

    goto :goto_0

    .line 386
    :cond_2
    invoke-direct {p0}, Lcom/kingroot/kinguser/ank;->wD()V

    .line 388
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/ank;->Gc:I

    goto :goto_0

    .line 355
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
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
    .line 159
    iget-object v0, p0, Lcom/kingroot/kinguser/ank;->aAX:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    if-eqz v0, :cond_0

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 161
    iget-object v1, p0, Lcom/kingroot/kinguser/ank;->aAX:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    iget-object v1, p0, Lcom/kingroot/kinguser/ank;->awu:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

    iget-object v2, p0, Lcom/kingroot/kinguser/ank;->akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    invoke-static {p1, v0, v1, v2}, Lcom/kingroot/kinguser/anf;->a(Ljava/util/List;Ljava/util/List;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;)V

    .line 163
    iget-object v0, p0, Lcom/kingroot/kinguser/ank;->aoj:Lcom/kingroot/kinguser/alf;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alf;->GN()V

    .line 165
    :cond_0
    return-void
.end method

.method protected oG()Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 202
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ank;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 203
    const v1, 0x7f03001b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 205
    const v0, 0x7f0f0098

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/uilib/NestedScrollView;

    iput-object v0, p0, Lcom/kingroot/kinguser/ank;->aBf:Lcom/kingroot/common/uilib/NestedScrollView;

    .line 206
    iget-object v0, p0, Lcom/kingroot/kinguser/ank;->aBf:Lcom/kingroot/common/uilib/NestedScrollView;

    iget-object v2, p0, Lcom/kingroot/kinguser/ank;->aBg:Lcom/kingroot/kinguser/ano;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/ano;->sg()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/kingroot/common/uilib/NestedScrollView;->i(Landroid/view/View;)V

    .line 207
    iget-object v0, p0, Lcom/kingroot/kinguser/ank;->aBf:Lcom/kingroot/common/uilib/NestedScrollView;

    invoke-static {v0}, Lcom/kingroot/kinguser/qk;->a(Landroid/widget/ScrollView;)Lcom/kingroot/kinguser/qf;

    .line 209
    const v0, 0x7f0f009a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/ank;->mIconView:Landroid/widget/ImageView;

    .line 211
    const v0, 0x7f0f009b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/ank;->age:Landroid/widget/TextView;

    .line 212
    const v0, 0x7f0f009c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/ank;->aAM:Landroid/widget/TextView;

    .line 213
    const v0, 0x7f0f00a3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/ank;->aAN:Landroid/widget/TextView;

    .line 214
    const v0, 0x7f0f00a4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/ank;->aAO:Landroid/widget/TextView;

    .line 215
    const v0, 0x7f0f009e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/ank;->aAP:Landroid/widget/TextView;

    .line 216
    const v0, 0x7f0f009f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/ank;->aAQ:Landroid/widget/TextView;

    .line 217
    const v0, 0x7f0f00a0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/ank;->aAR:Landroid/widget/TextView;

    .line 218
    const v0, 0x7f0f00a5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/kingroot/kinguser/ank;->aAS:Landroid/widget/RelativeLayout;

    .line 221
    const v0, 0x7f0f00a8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kingcore/uilib/ExpandableTextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/ank;->aAT:Lcom/kingcore/uilib/ExpandableTextView;

    .line 222
    const v0, 0x7f0f00a7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/ank;->aAW:Landroid/widget/ImageView;

    .line 224
    iget-object v0, p0, Lcom/kingroot/kinguser/ank;->aAT:Lcom/kingcore/uilib/ExpandableTextView;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Lcom/kingcore/uilib/ExpandableTextView;->setAnimationDuration(J)V

    .line 225
    iget-object v0, p0, Lcom/kingroot/kinguser/ank;->aAW:Landroid/widget/ImageView;

    new-instance v2, Lcom/kingroot/kinguser/ank$1;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/ank$1;-><init>(Lcom/kingroot/kinguser/ank;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    iget-object v0, p0, Lcom/kingroot/kinguser/ank;->aAT:Lcom/kingcore/uilib/ExpandableTextView;

    new-instance v2, Lcom/kingroot/kinguser/ank$4;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/ank$4;-><init>(Lcom/kingroot/kinguser/ank;)V

    invoke-virtual {v0, v2}, Lcom/kingcore/uilib/ExpandableTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    iget-object v0, p0, Lcom/kingroot/kinguser/ank;->aAT:Lcom/kingcore/uilib/ExpandableTextView;

    new-instance v2, Lcom/kingroot/kinguser/ank$5;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/ank$5;-><init>(Lcom/kingroot/kinguser/ank;)V

    invoke-virtual {v0, v2}, Lcom/kingcore/uilib/ExpandableTextView;->setExpandListener(Lcom/kingcore/uilib/ExpandableTextView$a;)V

    .line 265
    const v0, 0x7f0f00a9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    iput-object v0, p0, Lcom/kingroot/kinguser/ank;->aBc:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    .line 266
    iget-object v0, p0, Lcom/kingroot/kinguser/ank;->aBc:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    new-instance v2, Lcom/kingroot/kinguser/ank$6;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/ank$6;-><init>(Lcom/kingroot/kinguser/ank;)V

    invoke-virtual {v0, v2}, Lcom/kingcore/uilib/TextRoundCornerProgressBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    iget-object v0, p0, Lcom/kingroot/kinguser/ank;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/kingroot/kinguser/apf;->aW(Landroid/content/Context;)Lcom/kingroot/kinguser/apf;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ank;->aBh:Lcom/kingroot/kinguser/apf;

    .line 282
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v2, 0x7f02011c

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ank;->aBd:Landroid/graphics/Bitmap;

    .line 283
    const v0, 0x7f0f00a2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/kingroot/kinguser/ank;->aBa:Landroid/support/v7/widget/RecyclerView;

    .line 284
    invoke-direct {p0}, Lcom/kingroot/kinguser/ank;->IY()V

    .line 285
    new-instance v0, Lcom/kingroot/kinguser/alc;

    iget-object v2, p0, Lcom/kingroot/kinguser/ank;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/kingroot/kinguser/ank;->aBb:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/kingroot/kinguser/ank;->aBn:Lcom/kingroot/kinguser/alc$a;

    invoke-direct {v0, v2, v3, v4}, Lcom/kingroot/kinguser/alc;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/kingroot/kinguser/alc$a;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ank;->aAZ:Lcom/kingroot/kinguser/alc;

    .line 286
    iget-object v0, p0, Lcom/kingroot/kinguser/ank;->aBa:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/kingroot/kinguser/ank$7;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/ank$7;-><init>(Lcom/kingroot/kinguser/ank;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 292
    iget-object v0, p0, Lcom/kingroot/kinguser/ank;->aBa:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/kingroot/common/uilib/FixLinearLayoutManager;

    iget-object v3, p0, Lcom/kingroot/kinguser/ank;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v5, v5}, Lcom/kingroot/common/uilib/FixLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 293
    iget-object v0, p0, Lcom/kingroot/kinguser/ank;->aBa:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v2}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 294
    iget-object v0, p0, Lcom/kingroot/kinguser/ank;->aBa:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/kingroot/kinguser/ank;->aAZ:Lcom/kingroot/kinguser/alc;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 295
    iget-object v0, p0, Lcom/kingroot/kinguser/ank;->aBa:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, v6}, Lcom/kingroot/kinguser/qk;->a(Landroid/support/v7/widget/RecyclerView;I)Lcom/kingroot/kinguser/qf;

    .line 299
    const v0, 0x7f0f00bf

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/kingroot/kinguser/ank;->aoh:Landroid/widget/LinearLayout;

    .line 301
    const v0, 0x7f0f00c2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/kingroot/kinguser/ank;->aoi:Landroid/support/v7/widget/RecyclerView;

    .line 302
    new-instance v0, Lcom/kingroot/kinguser/alf;

    iget-object v2, p0, Lcom/kingroot/kinguser/ank;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/kingroot/kinguser/ank;->aAY:Ljava/util/ArrayList;

    invoke-direct {v0, v2, v3}, Lcom/kingroot/kinguser/alf;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ank;->aoj:Lcom/kingroot/kinguser/alf;

    .line 304
    iget-object v0, p0, Lcom/kingroot/kinguser/ank;->aoj:Lcom/kingroot/kinguser/alf;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/alf;->fe(I)V

    .line 305
    iget-object v0, p0, Lcom/kingroot/kinguser/ank;->aoj:Lcom/kingroot/kinguser/alf;

    iget-object v2, p0, Lcom/kingroot/kinguser/ank;->akD:Lcom/kingroot/kinguser/and$a;

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/alf;->a(Lcom/kingroot/kinguser/and$a;)V

    .line 306
    iget-object v0, p0, Lcom/kingroot/kinguser/ank;->aoi:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/kingroot/common/uilib/FixLinearLayoutManager;

    iget-object v3, p0, Lcom/kingroot/kinguser/ank;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v5, v5}, Lcom/kingroot/common/uilib/FixLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 307
    iget-object v0, p0, Lcom/kingroot/kinguser/ank;->aoi:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v2}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 308
    iget-object v0, p0, Lcom/kingroot/kinguser/ank;->aoi:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/kingroot/kinguser/ank;->aoj:Lcom/kingroot/kinguser/alf;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 310
    const v0, 0x7f0f0092

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/kingroot/kinguser/ank;->aiM:Landroid/widget/FrameLayout;

    .line 311
    new-instance v0, Lcom/kingroot/kinguser/qd;

    invoke-direct {v0}, Lcom/kingroot/kinguser/qd;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/ank;->aBe:Lcom/kingroot/kinguser/qd;

    .line 312
    const v0, 0x7f0f009d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/kingroot/kinguser/ank;->aBe:Lcom/kingroot/kinguser/qd;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/qd;->getWholeView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 315
    iget v0, p0, Lcom/kingroot/kinguser/ank;->aBi:I

    if-eq v0, v6, :cond_0

    .line 317
    invoke-direct {p0}, Lcom/kingroot/kinguser/ank;->Ja()V

    .line 320
    :cond_0
    return-object v1
.end method

.method protected oI()V
    .locals 0

    .prologue
    .line 349
    invoke-super {p0}, Lcom/kingroot/kinguser/ans;->oI()V

    .line 350
    return-void
.end method

.method protected oO()Lcom/kingroot/kinguser/yp;
    .locals 4

    .prologue
    .line 343
    new-instance v0, Lcom/kingroot/kinguser/ano;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/ank;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f0703db

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/kingroot/kinguser/ano;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ank;->aBg:Lcom/kingroot/kinguser/ano;

    .line 344
    iget-object v0, p0, Lcom/kingroot/kinguser/ank;->aBg:Lcom/kingroot/kinguser/ano;

    return-object v0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 768
    iget-object v0, p0, Lcom/kingroot/kinguser/ank;->aBh:Lcom/kingroot/kinguser/apf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/ank;->aBh:Lcom/kingroot/kinguser/apf;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/apf;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 769
    iget-object v0, p0, Lcom/kingroot/kinguser/ank;->aBh:Lcom/kingroot/kinguser/apf;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/apf;->dismiss()V

    .line 773
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 771
    :cond_0
    invoke-super {p0}, Lcom/kingroot/kinguser/ans;->onBackPressed()Z

    move-result v0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 177
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/ans;->onCreate(Landroid/os/Bundle;)V

    .line 179
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x188ee

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 180
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ank;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 181
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 183
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 184
    if-eqz v0, :cond_0

    .line 185
    const-string v1, "app_detail_scene"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/kingroot/kinguser/ank;->aBi:I

    .line 186
    const-string v1, "app_auto_start_download"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/kingroot/kinguser/ank;->aBj:Z

    .line 188
    iget v1, p0, Lcom/kingroot/kinguser/ank;->aBi:I

    if-ne v1, v4, :cond_1

    .line 190
    const-string v1, "notification_app_offset"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 191
    invoke-static {}, Lcom/kingroot/kinguser/alq;->GY()Lcom/kingroot/kinguser/ams;

    move-result-object v1

    const v2, 0x4c7bbf

    iget-object v3, p0, Lcom/kingroot/kinguser/ank;->aBp:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener;

    invoke-interface {v1, v2, v4, v0, v3}, Lcom/kingroot/kinguser/ams;->a(IIILcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener;)V

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    new-instance v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    const-string v2, "app_detail_model"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    invoke-direct {v1, v0}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;-><init>(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)V

    iput-object v1, p0, Lcom/kingroot/kinguser/ank;->aAX:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    .line 194
    invoke-static {}, Lcom/kingroot/kinguser/ana;->IO()Lcom/kingroot/kinguser/anc;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/ank;->aAX:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->reportInfo:Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;

    const/16 v2, 0x50

    invoke-interface {v0, v1, v2}, Lcom/kingroot/kinguser/anc;->a(Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/kingroot/kinguser/ank;->aBd:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/kingroot/kinguser/acs;->c(Landroid/graphics/Bitmap;)V

    .line 399
    invoke-super {p0}, Lcom/kingroot/kinguser/ans;->onDestroy()V

    .line 400
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 325
    invoke-super {p0}, Lcom/kingroot/kinguser/ans;->onResume()V

    .line 326
    iget-object v0, p0, Lcom/kingroot/kinguser/ank;->aAX:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    iget-object v1, p0, Lcom/kingroot/kinguser/ank;->aBc:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    .line 327
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f0703e8

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 326
    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/and;->a(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Lcom/kingcore/uilib/TextRoundCornerProgressBar;Ljava/lang/String;)V

    .line 329
    invoke-static {}, Lcom/kingroot/kinguser/amz;->II()Lcom/kingroot/kinguser/amz;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/ank;->aBo:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppStatusListener;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/amz;->b(Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppStatusListener;)V

    .line 331
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 335
    invoke-super {p0}, Lcom/kingroot/kinguser/ans;->onStop()V

    .line 336
    invoke-static {}, Lcom/kingroot/kinguser/amz;->II()Lcom/kingroot/kinguser/amz;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/ank;->aBo:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppStatusListener;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/amz;->a(Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppStatusListener;)V

    .line 337
    invoke-static {}, Lcom/kingroot/kinguser/amz;->II()Lcom/kingroot/kinguser/amz;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/ank;->awu:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/amz;->a(Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;)V

    .line 338
    invoke-static {}, Lcom/kingroot/kinguser/aso;->Ol()Lcom/kingroot/kinguser/aso;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/ank;->akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aso;->a(Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;)V

    .line 339
    return-void
.end method
