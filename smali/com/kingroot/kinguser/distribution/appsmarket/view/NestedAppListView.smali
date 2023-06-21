.class public Lcom/kingroot/kinguser/distribution/appsmarket/view/NestedAppListView;
.super Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private aFa:I

.field private mMaxItemHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    const/16 v0, 0x63

    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/NestedAppListView;->mMaxItemHeight:I

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/NestedAppListView;->aFa:I

    .line 23
    invoke-virtual {p0, p0}, Lcom/kingroot/kinguser/distribution/appsmarket/view/NestedAppListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 24
    invoke-virtual {p0, p0}, Lcom/kingroot/kinguser/distribution/appsmarket/view/NestedAppListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 25
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/distribution/appsmarket/view/NestedAppListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 26
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v7, -0x2

    .line 48
    invoke-super {p0, p1, p2}, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppListView;->onMeasure(II)V

    .line 51
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 52
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 53
    const/high16 v1, 0x40000000    # 2.0f

    if-eq v3, v1, :cond_4

    .line 54
    invoke-virtual {p0}, Lcom/kingroot/kinguser/distribution/appsmarket/view/NestedAppListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    .line 55
    if-eqz v4, :cond_2

    invoke-interface {v4}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v0

    .line 57
    :goto_0
    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-ge v0, v5, :cond_1

    iget v5, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/NestedAppListView;->mMaxItemHeight:I

    if-ge v0, v5, :cond_1

    .line 59
    const/4 v5, 0x0

    invoke-interface {v4, v0, v5, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 61
    instance-of v6, v5, Landroid/view/ViewGroup;

    if-eqz v6, :cond_0

    .line 62
    new-instance v6, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v6, v7, v7}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    :cond_0
    invoke-virtual {v5, p1, p2}, Landroid/view/View;->measure(II)V

    .line 66
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v1, v5

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :cond_1
    invoke-virtual {p0}, Lcom/kingroot/kinguser/distribution/appsmarket/view/NestedAppListView;->getDividerHeight()I

    move-result v4

    mul-int/2addr v0, v4

    add-int/2addr v0, v1

    .line 70
    :cond_2
    const/high16 v1, -0x80000000

    if-ne v3, v1, :cond_3

    if-le v0, v2, :cond_3

    .line 71
    if-le v0, v2, :cond_3

    move v0, v2

    .line 78
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/kingroot/kinguser/distribution/appsmarket/view/NestedAppListView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/kingroot/kinguser/distribution/appsmarket/view/NestedAppListView;->setMeasuredDimension(II)V

    .line 79
    return-void

    .line 76
    :cond_4
    invoke-virtual {p0}, Lcom/kingroot/kinguser/distribution/appsmarket/view/NestedAppListView;->getMeasuredHeight()I

    move-result v0

    goto :goto_1
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/kingroot/kinguser/distribution/appsmarket/view/NestedAppListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/kingroot/kinguser/distribution/appsmarket/view/NestedAppListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iget v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/NestedAppListView;->mMaxItemHeight:I

    if-le v0, v1, :cond_0

    .line 32
    iget v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/NestedAppListView;->aFa:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 33
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/distribution/appsmarket/view/NestedAppListView;->scrollBy(II)V

    .line 36
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .prologue
    .line 44
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 83
    invoke-virtual {p0}, Lcom/kingroot/kinguser/distribution/appsmarket/view/NestedAppListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/kingroot/kinguser/distribution/appsmarket/view/NestedAppListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iget v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/NestedAppListView;->mMaxItemHeight:I

    if-le v0, v1, :cond_0

    .line 84
    iget v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/NestedAppListView;->aFa:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 85
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/kingroot/kinguser/distribution/appsmarket/view/NestedAppListView;->scrollBy(II)V

    .line 88
    :cond_0
    return v2
.end method

.method public setMaxItemHeight(I)V
    .locals 0

    .prologue
    .line 39
    iput p1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/NestedAppListView;->mMaxItemHeight:I

    .line 40
    return-void
.end method
