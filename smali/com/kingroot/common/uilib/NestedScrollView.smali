.class public Lcom/kingroot/common/uilib/NestedScrollView;
.super Landroid/widget/ScrollView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/common/uilib/NestedScrollView$a;
    }
.end annotation


# instance fields
.field private NI:Landroid/view/GestureDetector;

.field private mHeaderView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/kingroot/common/uilib/NestedScrollView$a;

    invoke-direct {v1, p0}, Lcom/kingroot/common/uilib/NestedScrollView$a;-><init>(Lcom/kingroot/common/uilib/NestedScrollView;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/kingroot/common/uilib/NestedScrollView;->NI:Landroid/view/GestureDetector;

    .line 26
    iget-object v0, p0, Lcom/kingroot/common/uilib/NestedScrollView;->NI:Landroid/view/GestureDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 27
    return-void
.end method


# virtual methods
.method public i(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/kingroot/common/uilib/NestedScrollView;->mHeaderView:Landroid/view/View;

    .line 56
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/common/uilib/NestedScrollView;->NI:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onScrollChanged(IIII)V
    .locals 2

    .prologue
    .line 48
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 49
    iget-object v0, p0, Lcom/kingroot/common/uilib/NestedScrollView;->mHeaderView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/kingroot/common/uilib/NestedScrollView;->mHeaderView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/kingroot/common/uilib/NestedScrollView;->computeVerticalScrollOffset()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/kingroot/kinguser/ws;->a(Landroid/view/View;Landroid/view/View;I)V

    .line 52
    :cond_0
    return-void
.end method
