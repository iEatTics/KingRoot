.class Lcom/kingroot/common/uilib/banner/BannerView$e$1;
.super Lcom/kingroot/kinguser/xa;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/common/uilib/banner/BannerView$e;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic TI:Lcom/kingroot/common/uilib/banner/BannerView$e;


# direct methods
.method constructor <init>(Lcom/kingroot/common/uilib/banner/BannerView$e;)V
    .locals 0

    .prologue
    .line 918
    iput-object p1, p0, Lcom/kingroot/common/uilib/banner/BannerView$e$1;->TI:Lcom/kingroot/common/uilib/banner/BannerView$e;

    invoke-direct {p0}, Lcom/kingroot/kinguser/xa;-><init>()V

    return-void
.end method


# virtual methods
.method public j(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 921
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView$e$1;->TI:Lcom/kingroot/common/uilib/banner/BannerView$e;

    iget-object v0, v0, Lcom/kingroot/common/uilib/banner/BannerView$e;->TG:Lcom/kingroot/common/uilib/banner/BannerView;

    invoke-static {v0}, Lcom/kingroot/common/uilib/banner/BannerView;->b(Lcom/kingroot/common/uilib/banner/BannerView;)Lcom/kingroot/common/uilib/banner/BannerViewPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/common/uilib/banner/BannerViewPager;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/kingroot/common/uilib/banner/BannerView$e$1;->TI:Lcom/kingroot/common/uilib/banner/BannerView$e;

    iget-object v1, v1, Lcom/kingroot/common/uilib/banner/BannerView$e;->TG:Lcom/kingroot/common/uilib/banner/BannerView;

    invoke-static {v1}, Lcom/kingroot/common/uilib/banner/BannerView;->e(Lcom/kingroot/common/uilib/banner/BannerView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int v1, v0, v1

    .line 922
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView$e$1;->TI:Lcom/kingroot/common/uilib/banner/BannerView$e;

    iget-object v0, v0, Lcom/kingroot/common/uilib/banner/BannerView$e;->TG:Lcom/kingroot/common/uilib/banner/BannerView;

    invoke-static {v0}, Lcom/kingroot/common/uilib/banner/BannerView;->h(Lcom/kingroot/common/uilib/banner/BannerView;)Lcom/kingroot/common/uilib/banner/BannerView$c;

    move-result-object v2

    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView$e$1;->TI:Lcom/kingroot/common/uilib/banner/BannerView$e;

    iget-object v3, v0, Lcom/kingroot/common/uilib/banner/BannerView$e;->TG:Lcom/kingroot/common/uilib/banner/BannerView;

    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView$e$1;->TI:Lcom/kingroot/common/uilib/banner/BannerView$e;

    iget-object v0, v0, Lcom/kingroot/common/uilib/banner/BannerView$e;->TG:Lcom/kingroot/common/uilib/banner/BannerView;

    invoke-static {v0}, Lcom/kingroot/common/uilib/banner/BannerView;->i(Lcom/kingroot/common/uilib/banner/BannerView;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v2, v3, p1, v0, v1}, Lcom/kingroot/common/uilib/banner/BannerView$c;->b(Lcom/kingroot/common/uilib/banner/BannerView;Landroid/view/View;Ljava/lang/Object;I)V

    .line 923
    return-void

    .line 922
    :cond_0
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView$e$1;->TI:Lcom/kingroot/common/uilib/banner/BannerView$e;

    iget-object v0, v0, Lcom/kingroot/common/uilib/banner/BannerView$e;->TG:Lcom/kingroot/common/uilib/banner/BannerView;

    invoke-static {v0}, Lcom/kingroot/common/uilib/banner/BannerView;->i(Lcom/kingroot/common/uilib/banner/BannerView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
