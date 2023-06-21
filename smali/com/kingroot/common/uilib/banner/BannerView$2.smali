.class Lcom/kingroot/common/uilib/banner/BannerView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/common/uilib/banner/BannerView;->initViewPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic TG:Lcom/kingroot/common/uilib/banner/BannerView;


# direct methods
.method constructor <init>(Lcom/kingroot/common/uilib/banner/BannerView;)V
    .locals 0

    .prologue
    .line 556
    iput-object p1, p0, Lcom/kingroot/common/uilib/banner/BannerView$2;->TG:Lcom/kingroot/common/uilib/banner/BannerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 559
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView$2;->TG:Lcom/kingroot/common/uilib/banner/BannerView;

    invoke-virtual {v0}, Lcom/kingroot/common/uilib/banner/BannerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 560
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView$2;->TG:Lcom/kingroot/common/uilib/banner/BannerView;

    invoke-static {v0}, Lcom/kingroot/common/uilib/banner/BannerView;->b(Lcom/kingroot/common/uilib/banner/BannerView;)Lcom/kingroot/common/uilib/banner/BannerViewPager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView$2;->TG:Lcom/kingroot/common/uilib/banner/BannerView;

    invoke-static {v0}, Lcom/kingroot/common/uilib/banner/BannerView;->b(Lcom/kingroot/common/uilib/banner/BannerView;)Lcom/kingroot/common/uilib/banner/BannerViewPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/common/uilib/banner/BannerViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 562
    iget-object v1, p0, Lcom/kingroot/common/uilib/banner/BannerView$2;->TG:Lcom/kingroot/common/uilib/banner/BannerView;

    invoke-virtual {v1}, Lcom/kingroot/common/uilib/banner/BannerView;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 563
    iget-object v1, p0, Lcom/kingroot/common/uilib/banner/BannerView$2;->TG:Lcom/kingroot/common/uilib/banner/BannerView;

    invoke-static {v1}, Lcom/kingroot/common/uilib/banner/BannerView;->b(Lcom/kingroot/common/uilib/banner/BannerView;)Lcom/kingroot/common/uilib/banner/BannerViewPager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kingroot/common/uilib/banner/BannerViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 565
    :cond_0
    return-void
.end method
