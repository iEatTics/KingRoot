.class public Lcom/kingroot/kinguser/anr;
.super Lcom/kingroot/kinguser/anw;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView$a;


# instance fields
.field private aBB:Lcom/kingroot/kinguser/ald;

.field private aBG:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView;

.field private aDu:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/ame;",
            ">;"
        }
    .end annotation
.end field

.field private aDv:Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;

.field private aDw:Ljava/lang/String;

.field private aiM:Landroid/widget/FrameLayout;

.field private akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

.field private akD:Lcom/kingroot/kinguser/and$a;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;Lcom/kingroot/kinguser/aoa;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0, p1, p4}, Lcom/kingroot/kinguser/anw;-><init>(Landroid/view/View;Lcom/kingroot/kinguser/aoa;)V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/anr;->aDu:Ljava/util/List;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/anr;->aDw:Ljava/lang/String;

    .line 106
    new-instance v0, Lcom/kingroot/kinguser/and$a;

    invoke-direct {v0}, Lcom/kingroot/kinguser/and$a;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/anr;->akD:Lcom/kingroot/kinguser/and$a;

    .line 41
    iput-object p2, p0, Lcom/kingroot/kinguser/anr;->aDv:Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;

    .line 42
    iput-object p3, p0, Lcom/kingroot/kinguser/anr;->akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    .line 43
    invoke-virtual {p0}, Lcom/kingroot/kinguser/anr;->gq()V

    .line 44
    return-void
.end method


# virtual methods
.method public JB()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/kingroot/kinguser/anr;->aiM:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 95
    return-void
.end method

.method public Je()V
    .locals 3

    .prologue
    .line 79
    iget-object v0, p0, Lcom/kingroot/kinguser/anr;->aEz:Lcom/kingroot/kinguser/aoa;

    iget-object v1, p0, Lcom/kingroot/kinguser/anr;->aDw:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/kingroot/kinguser/aoa;->B(Ljava/lang/String;Z)V

    .line 80
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/ame;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 85
    iput-object p1, p0, Lcom/kingroot/kinguser/anr;->aDw:Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lcom/kingroot/kinguser/anr;->aDu:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 87
    iget-object v0, p0, Lcom/kingroot/kinguser/anr;->aDu:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 88
    iget-object v0, p0, Lcom/kingroot/kinguser/anr;->aBB:Lcom/kingroot/kinguser/ald;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ald;->notifyDataSetChanged()V

    .line 89
    iget-object v0, p0, Lcom/kingroot/kinguser/anr;->aBG:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView;->Jq()V

    .line 90
    iget-object v0, p0, Lcom/kingroot/kinguser/anr;->aiM:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 91
    return-void
.end method

.method public gq()V
    .locals 5

    .prologue
    const v3, 0x7f0e0028

    .line 47
    iget-object v0, p0, Lcom/kingroot/kinguser/anr;->mView:Landroid/view/View;

    const v1, 0x7f0f00c4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView;

    iput-object v0, p0, Lcom/kingroot/kinguser/anr;->aBG:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView;

    .line 48
    iget-object v0, p0, Lcom/kingroot/kinguser/anr;->mView:Landroid/view/View;

    const v1, 0x7f0f00b6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 49
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    .line 50
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 51
    const v0, 0x7f0f0278

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0703e3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 52
    iget-object v0, p0, Lcom/kingroot/kinguser/anr;->aBG:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView;->setEmptyView(Landroid/view/View;)V

    .line 53
    iget-object v0, p0, Lcom/kingroot/kinguser/anr;->aBG:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView;

    invoke-virtual {v0, p0}, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 54
    iget-object v0, p0, Lcom/kingroot/kinguser/anr;->aBG:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView;

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView;->setBackgroundResource(I)V

    .line 55
    iget-object v0, p0, Lcom/kingroot/kinguser/anr;->aBG:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView;

    invoke-static {}, Lcom/kingroot/kinguser/yr;->pb()Lcom/kingroot/kinguser/acr;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView;->b(Lcom/kingroot/kinguser/acr;)V

    .line 56
    iget-object v0, p0, Lcom/kingroot/kinguser/anr;->aBG:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView;

    invoke-virtual {v0, p0}, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView;->setLoadMoreListener(Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView$a;)V

    .line 58
    new-instance v0, Lcom/kingroot/kinguser/ald;

    iget-object v1, p0, Lcom/kingroot/kinguser/anr;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/anr;->aDu:Ljava/util/List;

    iget-object v3, p0, Lcom/kingroot/kinguser/anr;->aDv:Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;

    iget-object v4, p0, Lcom/kingroot/kinguser/anr;->akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/ald;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/anr;->aBB:Lcom/kingroot/kinguser/ald;

    .line 60
    iget-object v0, p0, Lcom/kingroot/kinguser/anr;->aBB:Lcom/kingroot/kinguser/ald;

    iget-object v1, p0, Lcom/kingroot/kinguser/anr;->akD:Lcom/kingroot/kinguser/and$a;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ald;->a(Lcom/kingroot/kinguser/and$a;)V

    .line 61
    iget-object v0, p0, Lcom/kingroot/kinguser/anr;->aBG:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView;

    iget-object v1, p0, Lcom/kingroot/kinguser/anr;->aBB:Lcom/kingroot/kinguser/ald;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 63
    iget-object v0, p0, Lcom/kingroot/kinguser/anr;->mView:Landroid/view/View;

    const v1, 0x7f0f0092

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/kingroot/kinguser/anr;->aiM:Landroid/widget/FrameLayout;

    .line 65
    return-void
.end method

.method public i(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/kingroot/kinguser/anr;->aBG:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView;->i(Landroid/view/View;)V

    .line 104
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 100
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
    .line 70
    if-ltz p3, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/anr;->aDu:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p3, v0, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/kingroot/kinguser/anr;->aDu:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    invoke-static {v1, v0}, Lcom/kingroot/kinguser/activitys/AppDetailActivity;->a(Landroid/content/Context;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)V

    goto :goto_0
.end method
