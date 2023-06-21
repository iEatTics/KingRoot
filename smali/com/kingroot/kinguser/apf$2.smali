.class Lcom/kingroot/kinguser/apf$2;
.super Lcom/android/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/apf;->Lf()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aHy:Lcom/kingroot/kinguser/apf;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/apf;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/kingroot/kinguser/apf$2;->aHy:Lcom/kingroot/kinguser/apf;

    invoke-direct {p0}, Lcom/android/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/android/animation/Animator;)V
    .locals 3

    .prologue
    .line 215
    iget-object v0, p0, Lcom/kingroot/kinguser/apf$2;->aHy:Lcom/kingroot/kinguser/apf;

    new-instance v1, Lcom/kingroot/kinguser/apg;

    iget-object v2, p0, Lcom/kingroot/kinguser/apf$2;->aHy:Lcom/kingroot/kinguser/apf;

    invoke-static {v2}, Lcom/kingroot/kinguser/apf;->a(Lcom/kingroot/kinguser/apf;)Lcom/kingroot/kinguser/ape;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/ape;->KU()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/kingroot/kinguser/apg;-><init>(I)V

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/apf;->a(Lcom/kingroot/kinguser/apf;Lcom/kingroot/kinguser/apg;)Lcom/kingroot/kinguser/apg;

    .line 216
    iget-object v0, p0, Lcom/kingroot/kinguser/apf$2;->aHy:Lcom/kingroot/kinguser/apf;

    invoke-static {v0}, Lcom/kingroot/kinguser/apf;->c(Lcom/kingroot/kinguser/apf;)Lcom/kingroot/kinguser/apg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/apf$2$1;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/apf$2$1;-><init>(Lcom/kingroot/kinguser/apf$2;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/apg;->a(Lcom/kingroot/kinguser/apg$a;)V

    .line 222
    iget-object v0, p0, Lcom/kingroot/kinguser/apf$2;->aHy:Lcom/kingroot/kinguser/apf;

    invoke-static {v0}, Lcom/kingroot/kinguser/apf;->d(Lcom/kingroot/kinguser/apf;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/apf$2;->aHy:Lcom/kingroot/kinguser/apf;

    invoke-static {v1}, Lcom/kingroot/kinguser/apf;->c(Lcom/kingroot/kinguser/apf;)Lcom/kingroot/kinguser/apg;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 223
    iget-object v0, p0, Lcom/kingroot/kinguser/apf$2;->aHy:Lcom/kingroot/kinguser/apf;

    invoke-static {v0}, Lcom/kingroot/kinguser/apf;->d(Lcom/kingroot/kinguser/apf;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/apf$2;->aHy:Lcom/kingroot/kinguser/apf;

    invoke-static {v1}, Lcom/kingroot/kinguser/apf;->a(Lcom/kingroot/kinguser/apf;)Lcom/kingroot/kinguser/ape;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/ape;->KZ()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 224
    iget-object v0, p0, Lcom/kingroot/kinguser/apf$2;->aHy:Lcom/kingroot/kinguser/apf;

    invoke-static {v0}, Lcom/kingroot/kinguser/apf;->a(Lcom/kingroot/kinguser/apf;)Lcom/kingroot/kinguser/ape;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ape;->KZ()I

    move-result v0

    if-nez v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/kingroot/kinguser/apf$2;->aHy:Lcom/kingroot/kinguser/apf;

    invoke-static {v0}, Lcom/kingroot/kinguser/apf;->e(Lcom/kingroot/kinguser/apf;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/apf$2;->aHy:Lcom/kingroot/kinguser/apf;

    invoke-static {v1}, Lcom/kingroot/kinguser/apf;->a(Lcom/kingroot/kinguser/apf;)Lcom/kingroot/kinguser/ape;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/ape;->KZ()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/apf$2;->aHy:Lcom/kingroot/kinguser/apf;

    invoke-static {v0}, Lcom/kingroot/kinguser/apf;->d(Lcom/kingroot/kinguser/apf;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 228
    iget-object v0, p0, Lcom/kingroot/kinguser/apf$2;->aHy:Lcom/kingroot/kinguser/apf;

    iget-object v1, p0, Lcom/kingroot/kinguser/apf$2;->aHy:Lcom/kingroot/kinguser/apf;

    invoke-static {v1}, Lcom/kingroot/kinguser/apf;->f(Lcom/kingroot/kinguser/apf;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/apf;->removeView(Landroid/view/View;)V

    .line 229
    iget-object v0, p0, Lcom/kingroot/kinguser/apf$2;->aHy:Lcom/kingroot/kinguser/apf;

    invoke-static {v0}, Lcom/kingroot/kinguser/apf;->g(Lcom/kingroot/kinguser/apf;)V

    .line 230
    return-void
.end method
