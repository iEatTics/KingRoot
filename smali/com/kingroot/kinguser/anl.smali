.class public Lcom/kingroot/kinguser/anl;
.super Lcom/kingroot/kinguser/ans;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView$a;


# instance fields
.field private Gc:I

.field protected TAG:Ljava/lang/String;

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

.field protected aBA:Z

.field protected aBB:Lcom/kingroot/kinguser/ald;

.field public aBC:Ljava/util/ArrayList;
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

.field protected aBF:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected aBG:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView;

.field private aBH:Lcom/kingroot/kinguser/amf;

.field protected aBI:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener;

.field private aBJ:Lcom/kingroot/kinguser/and$a;

.field private aBg:Lcom/kingroot/kinguser/ano;

.field private aBl:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadRecommendAppsListener;

.field protected aBo:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppStatusListener;

.field protected aBy:Ljava/lang/String;

.field protected aBz:I

.field protected aiM:Landroid/widget/FrameLayout;

.field protected aiO:Lcom/kingcore/uilib/ProgressWhell;

.field private akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

.field private akD:Lcom/kingroot/kinguser/and$a;

.field private aoj:Lcom/kingroot/kinguser/alf;

.field public aon:I

.field private awu:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

.field protected mEmptyView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 104
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ans;-><init>(Landroid/content/Context;)V

    .line 67
    const-string v0, "ku_pageAppDownloadListPage"

    iput-object v0, p0, Lcom/kingroot/kinguser/anl;->TAG:Ljava/lang/String;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/anl;->aBC:Ljava/util/ArrayList;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/anl;->aAY:Ljava/util/ArrayList;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/anl;->aBF:Ljava/util/ArrayList;

    .line 95
    iput v1, p0, Lcom/kingroot/kinguser/anl;->Gc:I

    .line 96
    iput v1, p0, Lcom/kingroot/kinguser/anl;->aon:I

    .line 313
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$4;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$4;-><init>(Lcom/kingroot/kinguser/anl;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/anl;->aBI:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener;

    .line 337
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$5;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$5;-><init>(Lcom/kingroot/kinguser/anl;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/anl;->awu:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

    .line 435
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$6;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$6;-><init>(Lcom/kingroot/kinguser/anl;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/anl;->akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    .line 461
    new-instance v0, Lcom/kingroot/kinguser/anl$4;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/anl$4;-><init>(Lcom/kingroot/kinguser/anl;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/anl;->akD:Lcom/kingroot/kinguser/and$a;

    .line 480
    new-instance v0, Lcom/kingroot/kinguser/anl$5;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/anl$5;-><init>(Lcom/kingroot/kinguser/anl;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/anl;->aBJ:Lcom/kingroot/kinguser/and$a;

    .line 508
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$10;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$10;-><init>(Lcom/kingroot/kinguser/anl;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/anl;->aBo:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppStatusListener;

    .line 561
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$11;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$11;-><init>(Lcom/kingroot/kinguser/anl;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/anl;->aBl:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadRecommendAppsListener;

    .line 105
    return-void
.end method

.method private Jf()V
    .locals 7

    .prologue
    .line 490
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/kingroot/kinguser/anl;->aBC:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 492
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v1

    new-instance v2, Lcom/kingroot/kinguser/bed;

    sget-object v3, Lcom/kingroot/kinguser/bem;->bll:Lcom/kingroot/kinguser/bem;

    sget-object v4, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    const/4 v5, 0x0

    new-instance v6, Lcom/kingroot/kinguser/anl$6;

    invoke-direct {v6, p0, v0}, Lcom/kingroot/kinguser/anl$6;-><init>(Lcom/kingroot/kinguser/anl;Ljava/util/ArrayList;)V

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 506
    return-void
.end method

.method public static synthetic a(Lcom/kingroot/kinguser/anl;)I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/kingroot/kinguser/anl;->Gc:I

    return v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/anl;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/kingroot/kinguser/anl;->aBE:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    return-object p1
.end method

.method public static synthetic a(Lcom/kingroot/kinguser/anl;Ljava/util/List;)Ljava/util/List;
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/anl;->aG(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private aG(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .line 450
    iget-object v0, p0, Lcom/kingroot/kinguser/anl;->aBF:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lcom/kingroot/kinguser/anf;->c(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 451
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 452
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    .line 453
    new-instance v3, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    invoke-direct {v3, v0}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;-><init>(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)V

    .line 454
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 455
    iget-object v3, p0, Lcom/kingroot/kinguser/anl;->aBF:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->pkgName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 457
    :cond_0
    return-object v1
.end method

.method static synthetic b(Lcom/kingroot/kinguser/anl;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/kingroot/kinguser/anl;->aBD:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    return-object p1
.end method

.method public static synthetic b(Lcom/kingroot/kinguser/anl;)Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/kingroot/kinguser/anl;->akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    return-object v0
.end method

.method public static synthetic c(Lcom/kingroot/kinguser/anl;)Lcom/kingroot/kinguser/ano;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/kingroot/kinguser/anl;->aBg:Lcom/kingroot/kinguser/ano;

    return-object v0
.end method

.method public static synthetic d(Lcom/kingroot/kinguser/anl;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/kingroot/kinguser/anl;->aBD:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    return-object v0
.end method

.method static synthetic e(Lcom/kingroot/kinguser/anl;)Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadRecommendAppsListener;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/kingroot/kinguser/anl;->aBl:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadRecommendAppsListener;

    return-object v0
.end method

.method static synthetic f(Lcom/kingroot/kinguser/anl;)Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/kingroot/kinguser/anl;->awu:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

    return-object v0
.end method

.method public static synthetic g(Lcom/kingroot/kinguser/anl;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/kingroot/kinguser/anl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic h(Lcom/kingroot/kinguser/anl;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/kingroot/kinguser/anl;->aBE:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    return-object v0
.end method

.method public static synthetic i(Lcom/kingroot/kinguser/anl;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/kingroot/kinguser/anl;->aAY:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic j(Lcom/kingroot/kinguser/anl;)Lcom/kingroot/kinguser/alf;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/kingroot/kinguser/anl;->aoj:Lcom/kingroot/kinguser/alf;

    return-object v0
.end method


# virtual methods
.method protected Ja()V
    .locals 5

    .prologue
    .line 309
    invoke-static {}, Lcom/kingroot/kinguser/alq;->GY()Lcom/kingroot/kinguser/ams;

    move-result-object v0

    iget v1, p0, Lcom/kingroot/kinguser/anl;->aBz:I

    const/16 v2, 0x1e

    iget v3, p0, Lcom/kingroot/kinguser/anl;->aon:I

    iget-object v4, p0, Lcom/kingroot/kinguser/anl;->aBI:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/ams;->a(IIILcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener;)V

    .line 310
    return-void
.end method

.method public Je()V
    .locals 0

    .prologue
    .line 303
    invoke-virtual {p0}, Lcom/kingroot/kinguser/anl;->Ja()V

    .line 304
    return-void
.end method

.method public Jg()Lcom/kingroot/kinguser/ano;
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lcom/kingroot/kinguser/anl;->aBg:Lcom/kingroot/kinguser/ano;

    return-object v0
.end method

.method protected a(Landroid/os/Message;)V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 231
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/ans;->a(Landroid/os/Message;)V

    .line 232
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 235
    :pswitch_0
    iget-object v0, p0, Lcom/kingroot/kinguser/anl;->aBB:Lcom/kingroot/kinguser/ald;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ald;->notifyDataSetChanged()V

    .line 237
    iget-object v0, p0, Lcom/kingroot/kinguser/anl;->aBC:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 238
    invoke-virtual {p0}, Lcom/kingroot/kinguser/anl;->Ja()V

    .line 239
    iget v0, p0, Lcom/kingroot/kinguser/anl;->Gc:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/kingroot/kinguser/anl;->Gc:I

    goto :goto_0

    .line 243
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/anl;->Gc:I

    .line 244
    invoke-direct {p0}, Lcom/kingroot/kinguser/anl;->Jf()V

    .line 245
    iget-object v0, p0, Lcom/kingroot/kinguser/anl;->aBG:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView;->Jp()V

    .line 246
    iget-object v0, p0, Lcom/kingroot/kinguser/anl;->aiM:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eq v0, v4, :cond_0

    .line 247
    iget-object v0, p0, Lcom/kingroot/kinguser/anl;->aiM:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 248
    iget-object v0, p0, Lcom/kingroot/kinguser/anl;->aiO:Lcom/kingcore/uilib/ProgressWhell;

    invoke-virtual {v0}, Lcom/kingcore/uilib/ProgressWhell;->gT()V

    goto :goto_0

    .line 255
    :pswitch_1
    new-instance v0, Lcom/kingroot/kinguser/anl$3;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/anl$3;-><init>(Lcom/kingroot/kinguser/anl;)V

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v2, v3}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;J)V

    .line 261
    iget-object v0, p0, Lcom/kingroot/kinguser/anl;->aiM:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eq v0, v4, :cond_0

    .line 262
    iget-object v0, p0, Lcom/kingroot/kinguser/anl;->aiM:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 263
    iget-object v0, p0, Lcom/kingroot/kinguser/anl;->aBB:Lcom/kingroot/kinguser/ald;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ald;->notifyDataSetChanged()V

    .line 264
    invoke-direct {p0}, Lcom/kingroot/kinguser/anl;->Jf()V

    goto :goto_0

    .line 232
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Lcom/kingroot/kinguser/ano;)V
    .locals 0

    .prologue
    .line 558
    iput-object p1, p0, Lcom/kingroot/kinguser/anl;->aBg:Lcom/kingroot/kinguser/ano;

    .line 559
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
    .line 109
    iget-object v0, p0, Lcom/kingroot/kinguser/anl;->aBF:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/kingroot/kinguser/anl;->awu:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

    iget-object v2, p0, Lcom/kingroot/kinguser/anl;->akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    invoke-static {p1, v0, v1, v2}, Lcom/kingroot/kinguser/anf;->a(Ljava/util/List;Ljava/util/List;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;)V

    .line 110
    iget-object v0, p0, Lcom/kingroot/kinguser/anl;->aoj:Lcom/kingroot/kinguser/alf;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alf;->GN()V

    .line 111
    return-void
.end method

.method protected oG()Landroid/view/View;
    .locals 7

    .prologue
    const v4, 0x7f0e0028

    const/4 v6, 0x0

    .line 131
    invoke-virtual {p0}, Lcom/kingroot/kinguser/anl;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 132
    const v1, 0x7f030021

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 134
    const v0, 0x7f0f00c4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView;

    iput-object v0, p0, Lcom/kingroot/kinguser/anl;->aBG:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView;

    .line 135
    const v0, 0x7f0f00b6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 136
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/anl;->mEmptyView:Landroid/view/View;

    .line 137
    iget-object v0, p0, Lcom/kingroot/kinguser/anl;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 138
    iget-object v0, p0, Lcom/kingroot/kinguser/anl;->mEmptyView:Landroid/view/View;

    new-instance v2, Lcom/kingroot/kinguser/anl$1;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/anl$1;-><init>(Lcom/kingroot/kinguser/anl;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object v0, p0, Lcom/kingroot/kinguser/anl;->mEmptyView:Landroid/view/View;

    const v2, 0x7f0f0278

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-wide/32 v2, 0x7f0703e3

    .line 148
    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/anl;->V(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v0, p0, Lcom/kingroot/kinguser/anl;->aBG:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView;

    iget-object v2, p0, Lcom/kingroot/kinguser/anl;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView;->setEmptyView(Landroid/view/View;)V

    .line 150
    iget-object v0, p0, Lcom/kingroot/kinguser/anl;->aBG:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView;

    invoke-virtual {v0, p0}, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 151
    iget-object v0, p0, Lcom/kingroot/kinguser/anl;->aBG:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView;

    invoke-virtual {v0, v4}, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView;->setBackgroundResource(I)V

    .line 152
    iget-object v0, p0, Lcom/kingroot/kinguser/anl;->aBG:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/anl;->getImageFetcher()Lcom/kingroot/kinguser/acr;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView;->b(Lcom/kingroot/kinguser/acr;)V

    .line 153
    iget-object v0, p0, Lcom/kingroot/kinguser/anl;->aBG:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView;

    invoke-virtual {v0, p0}, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView;->setLoadMoreListener(Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView$a;)V

    .line 154
    iget-object v0, p0, Lcom/kingroot/kinguser/anl;->aBG:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView;

    iget-object v2, p0, Lcom/kingroot/kinguser/anl;->aBg:Lcom/kingroot/kinguser/ano;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/ano;->sg()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView;->i(Landroid/view/View;)V

    .line 156
    new-instance v0, Lcom/kingroot/kinguser/ald;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/anl;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/kingroot/kinguser/anl;->aBC:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/kingroot/kinguser/anl;->awu:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

    iget-object v5, p0, Lcom/kingroot/kinguser/anl;->akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/kingroot/kinguser/ald;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/anl;->aBB:Lcom/kingroot/kinguser/ald;

    .line 158
    iget-object v0, p0, Lcom/kingroot/kinguser/anl;->aBB:Lcom/kingroot/kinguser/ald;

    iget-object v2, p0, Lcom/kingroot/kinguser/anl;->akD:Lcom/kingroot/kinguser/and$a;

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/ald;->a(Lcom/kingroot/kinguser/and$a;)V

    .line 159
    iget-object v0, p0, Lcom/kingroot/kinguser/anl;->aBG:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView;

    iget-object v2, p0, Lcom/kingroot/kinguser/anl;->aBB:Lcom/kingroot/kinguser/ald;

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 161
    const v0, 0x7f0f0092

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/kingroot/kinguser/anl;->aiM:Landroid/widget/FrameLayout;

    .line 162
    const v0, 0x7f0f000c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kingcore/uilib/ProgressWhell;

    iput-object v0, p0, Lcom/kingroot/kinguser/anl;->aiO:Lcom/kingcore/uilib/ProgressWhell;

    .line 163
    iget-object v0, p0, Lcom/kingroot/kinguser/anl;->aiO:Lcom/kingcore/uilib/ProgressWhell;

    invoke-virtual {v0, v6}, Lcom/kingcore/uilib/ProgressWhell;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lcom/kingroot/kinguser/anl;->aiO:Lcom/kingcore/uilib/ProgressWhell;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f0e0018

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/kingcore/uilib/ProgressWhell;->setBarColor(I)V

    .line 165
    iget-object v0, p0, Lcom/kingroot/kinguser/anl;->aiO:Lcom/kingcore/uilib/ProgressWhell;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/kingcore/uilib/ProgressWhell;->setProgress(F)V

    .line 166
    iget-object v0, p0, Lcom/kingroot/kinguser/anl;->aiO:Lcom/kingcore/uilib/ProgressWhell;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lcom/kingroot/kinguser/abg;->r(F)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/kingcore/uilib/ProgressWhell;->setBarWidth(I)V

    .line 167
    iget-object v0, p0, Lcom/kingroot/kinguser/anl;->aiO:Lcom/kingcore/uilib/ProgressWhell;

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v2}, Lcom/kingroot/kinguser/abg;->r(F)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/kingcore/uilib/ProgressWhell;->setCircleRadius(I)V

    .line 168
    iget-object v0, p0, Lcom/kingroot/kinguser/anl;->aiO:Lcom/kingcore/uilib/ProgressWhell;

    new-instance v2, Lcom/kingroot/kinguser/anl$2;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/anl$2;-><init>(Lcom/kingroot/kinguser/anl;)V

    invoke-virtual {v0, v2}, Lcom/kingcore/uilib/ProgressWhell;->setCallback(Lcom/kingcore/uilib/ProgressWhell$a;)V

    .line 178
    iget-object v0, p0, Lcom/kingroot/kinguser/anl;->aiO:Lcom/kingcore/uilib/ProgressWhell;

    invoke-virtual {v0}, Lcom/kingcore/uilib/ProgressWhell;->gU()V

    .line 181
    new-instance v0, Lcom/kingroot/kinguser/alf;

    iget-object v2, p0, Lcom/kingroot/kinguser/anl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/kingroot/kinguser/anl;->aAY:Ljava/util/ArrayList;

    invoke-direct {v0, v2, v3}, Lcom/kingroot/kinguser/alf;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/anl;->aoj:Lcom/kingroot/kinguser/alf;

    .line 183
    iget-object v0, p0, Lcom/kingroot/kinguser/anl;->aoj:Lcom/kingroot/kinguser/alf;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/alf;->fe(I)V

    .line 184
    iget-object v0, p0, Lcom/kingroot/kinguser/anl;->aoj:Lcom/kingroot/kinguser/alf;

    iget-object v2, p0, Lcom/kingroot/kinguser/anl;->aBJ:Lcom/kingroot/kinguser/and$a;

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/alf;->a(Lcom/kingroot/kinguser/and$a;)V

    .line 186
    iget-object v0, p0, Lcom/kingroot/kinguser/anl;->aBB:Lcom/kingroot/kinguser/ald;

    iget-object v2, p0, Lcom/kingroot/kinguser/anl;->aoj:Lcom/kingroot/kinguser/alf;

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/ald;->a(Lcom/kingroot/kinguser/alf;)V

    .line 188
    iget-boolean v0, p0, Lcom/kingroot/kinguser/anl;->aBA:Z

    if-eqz v0, :cond_0

    .line 190
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v2, 0x18961

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 191
    new-instance v0, Lcom/kingroot/kinguser/amf;

    invoke-direct {v0}, Lcom/kingroot/kinguser/amf;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/anl;->aBH:Lcom/kingroot/kinguser/amf;

    .line 192
    iget-object v0, p0, Lcom/kingroot/kinguser/anl;->aBC:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/kingroot/kinguser/anl;->aBH:Lcom/kingroot/kinguser/amf;

    invoke-virtual {v0, v6, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 196
    :cond_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/anl;->Ja()V

    .line 198
    return-object v1
.end method

.method protected oI()V
    .locals 0

    .prologue
    .line 282
    invoke-super {p0}, Lcom/kingroot/kinguser/ans;->oI()V

    .line 283
    return-void
.end method

.method protected oO()Lcom/kingroot/kinguser/yp;
    .locals 3

    .prologue
    .line 276
    new-instance v0, Lcom/kingroot/kinguser/ano;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/anl;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/anl;->aBy:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/kingroot/kinguser/ano;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/anl;->aBg:Lcom/kingroot/kinguser/ano;

    .line 277
    iget-object v0, p0, Lcom/kingroot/kinguser/anl;->aBg:Lcom/kingroot/kinguser/ano;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 119
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/ans;->onCreate(Landroid/os/Bundle;)V

    .line 120
    invoke-virtual {p0}, Lcom/kingroot/kinguser/anl;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 121
    const-string v1, ""

    iput-object v1, p0, Lcom/kingroot/kinguser/anl;->aBy:Ljava/lang/String;

    .line 122
    if-eqz v0, :cond_0

    .line 123
    const-string v1, "app_download_page_title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kingroot/kinguser/anl;->aBy:Ljava/lang/String;

    .line 124
    const-string v1, "app_download_page_category_id"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/kingroot/kinguser/anl;->aBz:I

    .line 125
    const-string v1, "app_download_page_is_show_logo"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/anl;->aBA:Z

    .line 127
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 292
    if-ltz p3, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/anl;->aBC:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p3, v0, :cond_1

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 295
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/anl;->aBC:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ame;

    .line 296
    instance-of v1, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    if-eqz v1, :cond_0

    .line 297
    iget-object v1, p0, Lcom/kingroot/kinguser/anl;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    invoke-static {v1, v0}, Lcom/kingroot/kinguser/activitys/AppDetailActivity;->a(Landroid/content/Context;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 203
    invoke-super {p0}, Lcom/kingroot/kinguser/ans;->onResume()V

    .line 207
    iget-object v0, p0, Lcom/kingroot/kinguser/anl;->aBC:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ame;

    .line 208
    instance-of v2, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    if-eqz v2, :cond_0

    .line 209
    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    .line 211
    invoke-virtual {v0}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->Ih()Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    move-result-object v2

    .line 212
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v3

    const v4, 0x7f0703e8

    invoke-virtual {v3, v4}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 211
    invoke-static {v0, v2, v3}, Lcom/kingroot/kinguser/and;->a(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Lcom/kingcore/uilib/TextRoundCornerProgressBar;Ljava/lang/String;)V

    goto :goto_0

    .line 216
    :cond_1
    invoke-direct {p0}, Lcom/kingroot/kinguser/anl;->Jf()V

    .line 218
    invoke-static {}, Lcom/kingroot/kinguser/amz;->II()Lcom/kingroot/kinguser/amz;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/anl;->aBo:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppStatusListener;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/amz;->b(Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppStatusListener;)V

    .line 219
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 223
    invoke-super {p0}, Lcom/kingroot/kinguser/ans;->onStop()V

    .line 224
    invoke-static {}, Lcom/kingroot/kinguser/amz;->II()Lcom/kingroot/kinguser/amz;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/anl;->awu:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/amz;->a(Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;)V

    .line 225
    invoke-static {}, Lcom/kingroot/kinguser/amz;->II()Lcom/kingroot/kinguser/amz;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/anl;->aBo:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppStatusListener;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/amz;->a(Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppStatusListener;)V

    .line 226
    invoke-static {}, Lcom/kingroot/kinguser/aso;->Ol()Lcom/kingroot/kinguser/aso;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/anl;->akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aso;->a(Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;)V

    .line 227
    return-void
.end method
