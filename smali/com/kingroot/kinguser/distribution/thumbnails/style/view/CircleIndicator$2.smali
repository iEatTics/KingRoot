.class Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator$2;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


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
    .line 84
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator$2;->aIg:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 87
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 88
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator$2;->aIg:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->a(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator$2;->aIg:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->a(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    .line 93
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator$2;->aIg:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->getChildCount()I

    move-result v1

    .line 95
    if-eq v0, v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator$2;->aIg:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;

    invoke-static {v1}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->d(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;)I

    move-result v1

    if-ge v1, v0, :cond_2

    .line 98
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator$2;->aIg:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator$2;->aIg:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;

    invoke-static {v1}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->a(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->a(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;I)I

    .line 103
    :goto_1
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator$2;->aIg:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->f(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;)V

    goto :goto_0

    .line 100
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator$2;->aIg:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;->a(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/CircleIndicator;I)I

    goto :goto_1
.end method
