.class Lcom/kingroot/common/uilib/banner/BannerView$e;
.super Landroid/support/v4/view/PagerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/common/uilib/banner/BannerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field final synthetic TG:Lcom/kingroot/common/uilib/banner/BannerView;


# direct methods
.method private constructor <init>(Lcom/kingroot/common/uilib/banner/BannerView;)V
    .locals 0

    .prologue
    .line 900
    iput-object p1, p0, Lcom/kingroot/common/uilib/banner/BannerView$e;->TG:Lcom/kingroot/common/uilib/banner/BannerView;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/common/uilib/banner/BannerView;Lcom/kingroot/common/uilib/banner/BannerView$1;)V
    .locals 0

    .prologue
    .line 900
    invoke-direct {p0, p1}, Lcom/kingroot/common/uilib/banner/BannerView$e;-><init>(Lcom/kingroot/common/uilib/banner/BannerView;)V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 942
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 904
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView$e;->TG:Lcom/kingroot/common/uilib/banner/BannerView;

    invoke-static {v0}, Lcom/kingroot/common/uilib/banner/BannerView;->e(Lcom/kingroot/common/uilib/banner/BannerView;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView$e;->TG:Lcom/kingroot/common/uilib/banner/BannerView;

    invoke-static {v0}, Lcom/kingroot/common/uilib/banner/BannerView;->f(Lcom/kingroot/common/uilib/banner/BannerView;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7fffffff

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView$e;->TG:Lcom/kingroot/common/uilib/banner/BannerView;

    invoke-static {v0}, Lcom/kingroot/common/uilib/banner/BannerView;->e(Lcom/kingroot/common/uilib/banner/BannerView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 951
    const/4 v0, -0x2

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 909
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView$e;->TG:Lcom/kingroot/common/uilib/banner/BannerView;

    invoke-static {v0}, Lcom/kingroot/common/uilib/banner/BannerView;->e(Lcom/kingroot/common/uilib/banner/BannerView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rem-int v2, p2, v0

    .line 911
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView$e;->TG:Lcom/kingroot/common/uilib/banner/BannerView;

    invoke-static {v0}, Lcom/kingroot/common/uilib/banner/BannerView;->g(Lcom/kingroot/common/uilib/banner/BannerView;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_3

    .line 912
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView$e;->TG:Lcom/kingroot/common/uilib/banner/BannerView;

    invoke-static {v0}, Lcom/kingroot/common/uilib/banner/BannerView;->e(Lcom/kingroot/common/uilib/banner/BannerView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    .line 917
    :goto_0
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView$e;->TG:Lcom/kingroot/common/uilib/banner/BannerView;

    invoke-static {v0}, Lcom/kingroot/common/uilib/banner/BannerView;->h(Lcom/kingroot/common/uilib/banner/BannerView;)Lcom/kingroot/common/uilib/banner/BannerView$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 918
    new-instance v0, Lcom/kingroot/common/uilib/banner/BannerView$e$1;

    invoke-direct {v0, p0}, Lcom/kingroot/common/uilib/banner/BannerView$e$1;-><init>(Lcom/kingroot/common/uilib/banner/BannerView$e;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 927
    :cond_0
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView$e;->TG:Lcom/kingroot/common/uilib/banner/BannerView;

    invoke-static {v0}, Lcom/kingroot/common/uilib/banner/BannerView;->j(Lcom/kingroot/common/uilib/banner/BannerView;)Lcom/kingroot/common/uilib/banner/BannerView$a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 928
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView$e;->TG:Lcom/kingroot/common/uilib/banner/BannerView;

    invoke-static {v0}, Lcom/kingroot/common/uilib/banner/BannerView;->j(Lcom/kingroot/common/uilib/banner/BannerView;)Lcom/kingroot/common/uilib/banner/BannerView$a;

    move-result-object v3

    iget-object v4, p0, Lcom/kingroot/common/uilib/banner/BannerView$e;->TG:Lcom/kingroot/common/uilib/banner/BannerView;

    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView$e;->TG:Lcom/kingroot/common/uilib/banner/BannerView;

    invoke-static {v0}, Lcom/kingroot/common/uilib/banner/BannerView;->i(Lcom/kingroot/common/uilib/banner/BannerView;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    :goto_1
    invoke-interface {v3, v4, v1, v0, v2}, Lcom/kingroot/common/uilib/banner/BannerView$a;->a(Lcom/kingroot/common/uilib/banner/BannerView;Landroid/view/View;Ljava/lang/Object;I)V

    .line 931
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 932
    if-eqz v0, :cond_2

    .line 933
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 936
    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 937
    return-object v1

    .line 914
    :cond_3
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView$e;->TG:Lcom/kingroot/common/uilib/banner/BannerView;

    invoke-static {v0}, Lcom/kingroot/common/uilib/banner/BannerView;->g(Lcom/kingroot/common/uilib/banner/BannerView;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/common/uilib/banner/BannerView$e;->TG:Lcom/kingroot/common/uilib/banner/BannerView;

    invoke-static {v1}, Lcom/kingroot/common/uilib/banner/BannerView;->g(Lcom/kingroot/common/uilib/banner/BannerView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int v1, p2, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    goto :goto_0

    .line 928
    :cond_4
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView$e;->TG:Lcom/kingroot/common/uilib/banner/BannerView;

    invoke-static {v0}, Lcom/kingroot/common/uilib/banner/BannerView;->i(Lcom/kingroot/common/uilib/banner/BannerView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 946
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
