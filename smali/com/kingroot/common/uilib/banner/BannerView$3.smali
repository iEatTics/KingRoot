.class Lcom/kingroot/common/uilib/banner/BannerView$3;
.super Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;
.source "SourceFile"


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
    .line 569
    iput-object p1, p0, Lcom/kingroot/common/uilib/banner/BannerView$3;->TG:Lcom/kingroot/common/uilib/banner/BannerView;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrolled(IFI)V
    .locals 4

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 572
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView$3;->TG:Lcom/kingroot/common/uilib/banner/BannerView;

    invoke-virtual {v0}, Lcom/kingroot/common/uilib/banner/BannerView;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    if-ne p1, v0, :cond_6

    .line 573
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView$3;->TG:Lcom/kingroot/common/uilib/banner/BannerView;

    invoke-static {v0}, Lcom/kingroot/common/uilib/banner/BannerView;->c(Lcom/kingroot/common/uilib/banner/BannerView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 574
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView$3;->TG:Lcom/kingroot/common/uilib/banner/BannerView;

    invoke-static {v0}, Lcom/kingroot/common/uilib/banner/BannerView;->c(Lcom/kingroot/common/uilib/banner/BannerView;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 576
    :cond_0
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView$3;->TG:Lcom/kingroot/common/uilib/banner/BannerView;

    invoke-static {v0}, Lcom/kingroot/common/uilib/banner/BannerView;->d(Lcom/kingroot/common/uilib/banner/BannerView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 577
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView$3;->TG:Lcom/kingroot/common/uilib/banner/BannerView;

    invoke-static {v0}, Lcom/kingroot/common/uilib/banner/BannerView;->d(Lcom/kingroot/common/uilib/banner/BannerView;)Landroid/view/View;

    move-result-object v0

    sub-float/2addr v1, p2

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 580
    :cond_1
    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float v0, p2, v0

    if-lez v0, :cond_4

    .line 581
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView$3;->TG:Lcom/kingroot/common/uilib/banner/BannerView;

    invoke-static {v0}, Lcom/kingroot/common/uilib/banner/BannerView;->c(Lcom/kingroot/common/uilib/banner/BannerView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 582
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView$3;->TG:Lcom/kingroot/common/uilib/banner/BannerView;

    invoke-static {v0}, Lcom/kingroot/common/uilib/banner/BannerView;->c(Lcom/kingroot/common/uilib/banner/BannerView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 584
    :cond_2
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView$3;->TG:Lcom/kingroot/common/uilib/banner/BannerView;

    invoke-static {v0}, Lcom/kingroot/common/uilib/banner/BannerView;->d(Lcom/kingroot/common/uilib/banner/BannerView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 585
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView$3;->TG:Lcom/kingroot/common/uilib/banner/BannerView;

    invoke-static {v0}, Lcom/kingroot/common/uilib/banner/BannerView;->d(Lcom/kingroot/common/uilib/banner/BannerView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 612
    :cond_3
    :goto_0
    return-void

    .line 588
    :cond_4
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView$3;->TG:Lcom/kingroot/common/uilib/banner/BannerView;

    invoke-static {v0}, Lcom/kingroot/common/uilib/banner/BannerView;->c(Lcom/kingroot/common/uilib/banner/BannerView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 589
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView$3;->TG:Lcom/kingroot/common/uilib/banner/BannerView;

    invoke-static {v0}, Lcom/kingroot/common/uilib/banner/BannerView;->c(Lcom/kingroot/common/uilib/banner/BannerView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 591
    :cond_5
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView$3;->TG:Lcom/kingroot/common/uilib/banner/BannerView;

    invoke-static {v0}, Lcom/kingroot/common/uilib/banner/BannerView;->d(Lcom/kingroot/common/uilib/banner/BannerView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 592
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView$3;->TG:Lcom/kingroot/common/uilib/banner/BannerView;

    invoke-static {v0}, Lcom/kingroot/common/uilib/banner/BannerView;->d(Lcom/kingroot/common/uilib/banner/BannerView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 595
    :cond_6
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView$3;->TG:Lcom/kingroot/common/uilib/banner/BannerView;

    invoke-virtual {v0}, Lcom/kingroot/common/uilib/banner/BannerView;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_8

    .line 596
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView$3;->TG:Lcom/kingroot/common/uilib/banner/BannerView;

    invoke-static {v0}, Lcom/kingroot/common/uilib/banner/BannerView;->d(Lcom/kingroot/common/uilib/banner/BannerView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 597
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView$3;->TG:Lcom/kingroot/common/uilib/banner/BannerView;

    invoke-static {v0}, Lcom/kingroot/common/uilib/banner/BannerView;->d(Lcom/kingroot/common/uilib/banner/BannerView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 599
    :cond_7
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView$3;->TG:Lcom/kingroot/common/uilib/banner/BannerView;

    invoke-static {v0}, Lcom/kingroot/common/uilib/banner/BannerView;->c(Lcom/kingroot/common/uilib/banner/BannerView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 600
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView$3;->TG:Lcom/kingroot/common/uilib/banner/BannerView;

    invoke-static {v0}, Lcom/kingroot/common/uilib/banner/BannerView;->c(Lcom/kingroot/common/uilib/banner/BannerView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 601
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView$3;->TG:Lcom/kingroot/common/uilib/banner/BannerView;

    invoke-static {v0}, Lcom/kingroot/common/uilib/banner/BannerView;->c(Lcom/kingroot/common/uilib/banner/BannerView;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    goto :goto_0

    .line 604
    :cond_8
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView$3;->TG:Lcom/kingroot/common/uilib/banner/BannerView;

    invoke-static {v0}, Lcom/kingroot/common/uilib/banner/BannerView;->d(Lcom/kingroot/common/uilib/banner/BannerView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 605
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView$3;->TG:Lcom/kingroot/common/uilib/banner/BannerView;

    invoke-static {v0}, Lcom/kingroot/common/uilib/banner/BannerView;->d(Lcom/kingroot/common/uilib/banner/BannerView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 606
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView$3;->TG:Lcom/kingroot/common/uilib/banner/BannerView;

    invoke-static {v0}, Lcom/kingroot/common/uilib/banner/BannerView;->d(Lcom/kingroot/common/uilib/banner/BannerView;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 608
    :cond_9
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView$3;->TG:Lcom/kingroot/common/uilib/banner/BannerView;

    invoke-static {v0}, Lcom/kingroot/common/uilib/banner/BannerView;->c(Lcom/kingroot/common/uilib/banner/BannerView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 609
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView$3;->TG:Lcom/kingroot/common/uilib/banner/BannerView;

    invoke-static {v0}, Lcom/kingroot/common/uilib/banner/BannerView;->c(Lcom/kingroot/common/uilib/banner/BannerView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method
