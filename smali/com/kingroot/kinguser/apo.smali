.class public Lcom/kingroot/kinguser/apo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/apj;


# instance fields
.field private aHV:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Lo()V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/kingroot/kinguser/apo;->aHV:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 49
    if-eqz v0, :cond_0

    .line 50
    iget-object v1, p0, Lcom/kingroot/kinguser/apo;->aHV:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 52
    :cond_0
    return-void
.end method

.method public a(Landroid/support/v4/view/ViewPager;)V
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/kingroot/kinguser/apo;->aHV:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->setVisibility(I)V

    .line 37
    iget-object v0, p0, Lcom/kingroot/kinguser/apo;->aHV:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 38
    return-void
.end method

.method public a(Landroid/widget/FrameLayout;)V
    .locals 3

    .prologue
    .line 24
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const/16 v2, 0x30

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 25
    const/16 v1, 0x51

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 27
    new-instance v1, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/kingroot/kinguser/apo;->aHV:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;

    .line 28
    iget-object v1, p0, Lcom/kingroot/kinguser/apo;->aHV:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->setGravity(I)V

    .line 29
    iget-object v1, p0, Lcom/kingroot/kinguser/apo;->aHV:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 31
    iget-object v0, p0, Lcom/kingroot/kinguser/apo;->aHV:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 32
    return-void
.end method
