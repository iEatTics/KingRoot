.class public Lcom/kingroot/kinguser/alf;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/alf$d;,
        Lcom/kingroot/kinguser/alf$b;,
        Lcom/kingroot/kinguser/alf$c;,
        Lcom/kingroot/kinguser/alf$a;
    }
.end annotation


# instance fields
.field protected TAG:Ljava/lang/String;

.field private ahM:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/ame;",
            ">;"
        }
    .end annotation
.end field

.field private akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

.field private akD:Lcom/kingroot/kinguser/and$a;

.field private awt:I

.field private awu:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

.field private mContext:Landroid/content/Context;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/ame;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 55
    const-string v0, "ku_pageAppRecommendAdapter"

    iput-object v0, p0, Lcom/kingroot/kinguser/alf;->TAG:Ljava/lang/String;

    .line 314
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/adapter/AppRecommendAdapter$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/distribution/appsmarket/adapter/AppRecommendAdapter$1;-><init>(Lcom/kingroot/kinguser/alf;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/alf;->awu:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

    .line 412
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/adapter/AppRecommendAdapter$2;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/distribution/appsmarket/adapter/AppRecommendAdapter$2;-><init>(Lcom/kingroot/kinguser/alf;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/alf;->akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    .line 64
    iput-object p1, p0, Lcom/kingroot/kinguser/alf;->mContext:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Lcom/kingroot/kinguser/alf;->ahM:Ljava/util/List;

    .line 66
    return-void
.end method

.method static synthetic b(Lcom/kingroot/kinguser/alf;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/kingroot/kinguser/alf;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/kingroot/kinguser/alf;)Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/kingroot/kinguser/alf;->awu:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

    return-object v0
.end method

.method public static synthetic d(Lcom/kingroot/kinguser/alf;)Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/kingroot/kinguser/alf;->akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    return-object v0
.end method

.method static synthetic e(Lcom/kingroot/kinguser/alf;)Lcom/kingroot/kinguser/and$a;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/kingroot/kinguser/alf;->akD:Lcom/kingroot/kinguser/and$a;

    return-object v0
.end method

.method public static synthetic f(Lcom/kingroot/kinguser/alf;)Ljava/util/List;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/kingroot/kinguser/alf;->ahM:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public GN()V
    .locals 6

    .prologue
    .line 448
    invoke-virtual {p0}, Lcom/kingroot/kinguser/alf;->getItemCount()I

    move-result v2

    .line 449
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 450
    iget-object v0, p0, Lcom/kingroot/kinguser/alf;->ahM:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    .line 451
    iget-object v3, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->pkgName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 449
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 455
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/amz;->II()Lcom/kingroot/kinguser/amz;

    move-result-object v3

    iget-object v4, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->pkgName:Ljava/lang/String;

    iget-object v5, p0, Lcom/kingroot/kinguser/alf;->awu:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

    invoke-virtual {v3, v4, v5}, Lcom/kingroot/kinguser/amz;->a(Ljava/lang/String;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;)V

    .line 457
    invoke-static {}, Lcom/kingroot/kinguser/aso;->Ol()Lcom/kingroot/kinguser/aso;

    move-result-object v3

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->pkgName:Ljava/lang/String;

    iget-object v4, p0, Lcom/kingroot/kinguser/alf;->akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    invoke-virtual {v3, v0, v4}, Lcom/kingroot/kinguser/aso;->a(Ljava/lang/String;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;)V

    goto :goto_1

    .line 459
    :cond_1
    return-void
.end method

.method public a(Lcom/kingroot/kinguser/and$a;)V
    .locals 0

    .prologue
    .line 427
    iput-object p1, p0, Lcom/kingroot/kinguser/alf;->akD:Lcom/kingroot/kinguser/and$a;

    .line 428
    return-void
.end method

.method public b(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 431
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->Il()Landroid/widget/LinearLayout;

    move-result-object v0

    if-nez v0, :cond_1

    .line 444
    :cond_0
    :goto_0
    return-void

    .line 434
    :cond_1
    invoke-virtual {p1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->Il()Landroid/widget/LinearLayout;

    move-result-object v1

    .line 435
    const v0, 0x7f0f00af

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 436
    new-instance v2, Lcom/kingroot/common/uilib/FixLinearLayoutManager;

    iget-object v3, p0, Lcom/kingroot/kinguser/alf;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v4, v4}, Lcom/kingroot/common/uilib/FixLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 437
    new-instance v2, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v2}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 438
    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 440
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 442
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->isExpand:Z

    .line 443
    invoke-virtual {p0}, Lcom/kingroot/kinguser/alf;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public fe(I)V
    .locals 0

    .prologue
    .line 311
    iput p1, p0, Lcom/kingroot/kinguser/alf;->awt:I

    .line 312
    return-void
.end method

.method public getItemCount()I
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/kingroot/kinguser/alf;->ahM:Ljava/util/List;

    if-nez v0, :cond_0

    .line 121
    const/4 v0, 0x0

    .line 123
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/alf;->ahM:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/kingroot/kinguser/alf;->awt:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/kingroot/kinguser/alf;->awt:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/alf;->ahM:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 114
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/kingroot/kinguser/alf;->ahM:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/alf;->ahM:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ame;

    invoke-interface {v0}, Lcom/kingroot/kinguser/ame;->getType()I

    move-result v0

    goto :goto_0
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 103
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 104
    iput-object p1, p0, Lcom/kingroot/kinguser/alf;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 105
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    .prologue
    .line 93
    iget-object v0, p0, Lcom/kingroot/kinguser/alf;->ahM:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ame;

    move-object v1, p1

    .line 94
    check-cast v1, Lcom/kingroot/kinguser/alf$a;

    .line 95
    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/alf$a;->a(Lcom/kingroot/kinguser/ame;)V

    .line 96
    iget v0, p0, Lcom/kingroot/kinguser/alf;->awt:I

    if-ltz v0, :cond_0

    .line 97
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    iget-object v2, p0, Lcom/kingroot/kinguser/alf;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/kingroot/kinguser/alf;->awt:I

    div-int/2addr v2, v3

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    :cond_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 71
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 72
    packed-switch p2, :pswitch_data_0

    .line 88
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 74
    :pswitch_1
    const v1, 0x7f0300a7

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 75
    new-instance v0, Lcom/kingroot/kinguser/alf$b;

    invoke-direct {v0, p0, v1}, Lcom/kingroot/kinguser/alf$b;-><init>(Lcom/kingroot/kinguser/alf;Landroid/view/View;)V

    goto :goto_0

    .line 78
    :pswitch_2
    const v1, 0x7f0300ab

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 79
    new-instance v0, Lcom/kingroot/kinguser/alf$c;

    invoke-direct {v0, p0, v1}, Lcom/kingroot/kinguser/alf$c;-><init>(Lcom/kingroot/kinguser/alf;Landroid/view/View;)V

    goto :goto_0

    .line 83
    :pswitch_3
    const v1, 0x7f0300c2

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 84
    new-instance v0, Lcom/kingroot/kinguser/alf$d;

    invoke-direct {v0, p0, v1}, Lcom/kingroot/kinguser/alf$d;-><init>(Lcom/kingroot/kinguser/alf;Landroid/view/View;)V

    goto :goto_0

    .line 72
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
