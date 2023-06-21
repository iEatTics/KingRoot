.class Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aIg:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator$1;->aIg:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 82
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .prologue
    .line 45
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator$1;->aIg:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->a(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator$1;->aIg:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->a(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_1

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator$1;->aIg:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->b(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;)Lcom/android/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 55
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator$1;->aIg:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->b(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;)Lcom/android/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/animation/Animator;->end()V

    .line 56
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator$1;->aIg:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->b(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;)Lcom/android/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/animation/Animator;->cancel()V

    .line 59
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator$1;->aIg:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->c(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;)Lcom/android/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 60
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator$1;->aIg:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->c(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;)Lcom/android/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/animation/Animator;->end()V

    .line 61
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator$1;->aIg:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->c(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;)Lcom/android/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/animation/Animator;->cancel()V

    .line 65
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator$1;->aIg:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->d(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;)I

    move-result v0

    if-ltz v0, :cond_4

    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator$1;->aIg:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator$1;->aIg:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;

    invoke-static {v1}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->d(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 66
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator$1;->aIg:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;

    invoke-static {v1}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->e(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 67
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator$1;->aIg:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;

    invoke-static {v1}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->b(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;)Lcom/android/animation/Animator;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 68
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator$1;->aIg:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->b(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;)Lcom/android/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/animation/Animator;->start()V

    .line 71
    :cond_4
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator$1;->aIg:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 72
    if-eqz v0, :cond_5

    .line 73
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator$1;->aIg:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;

    invoke-static {v1}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->e(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 74
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator$1;->aIg:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;

    invoke-static {v1}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->c(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;)Lcom/android/animation/Animator;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 75
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator$1;->aIg:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->c(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;)Lcom/android/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/animation/Animator;->start()V

    .line 77
    :cond_5
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator$1;->aIg:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;

    invoke-static {v0, p1}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->a(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;I)I

    goto/16 :goto_0
.end method
