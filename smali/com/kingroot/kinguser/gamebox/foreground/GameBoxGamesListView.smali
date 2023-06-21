.class public Lcom/kingroot/kinguser/gamebox/foreground/GameBoxGamesListView;
.super Lcom/kingroot/common/uilib/TransparentListView;
.source "SourceFile"


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/kingroot/common/uilib/TransparentListView;-><init>(Landroid/content/Context;)V

    .line 20
    invoke-direct {p0}, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxGamesListView;->Pc()V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/kingroot/common/uilib/TransparentListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    invoke-direct {p0}, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxGamesListView;->Pc()V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/kingroot/common/uilib/TransparentListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    invoke-direct {p0}, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxGamesListView;->Pc()V

    .line 31
    return-void
.end method

.method private Pc()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxGamesListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 35
    return-void
.end method

.method private b(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 65
    if-nez p1, :cond_1

    .line 79
    :cond_0
    :goto_0
    return v0

    .line 68
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    .line 69
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    .line 70
    const/4 v4, 0x2

    new-array v4, v4, [I

    .line 71
    invoke-virtual {p1, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 72
    aget v5, v4, v0

    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v6, v5

    .line 74
    aget v4, v4, v1

    .line 75
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v7, v4

    .line 76
    int-to-float v5, v5

    cmpg-float v5, v5, v2

    if-gez v5, :cond_0

    int-to-float v5, v6

    cmpg-float v2, v2, v5

    if-gez v2, :cond_0

    int-to-float v2, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    int-to-float v2, v7

    cmpg-float v2, v3, v2

    if-gez v2, :cond_0

    move v0, v1

    .line 77
    goto :goto_0
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxGamesListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 45
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/kingroot/kinguser/atp;

    if-eqz v1, :cond_0

    .line 46
    check-cast v0, Lcom/kingroot/kinguser/atp;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/atp;->Pv()Landroid/view/View;

    move-result-object v0

    .line 47
    iget-object v1, p0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxGamesListView;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    invoke-direct {p0, v0, p1}, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxGamesListView;->b(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxGamesListView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 52
    :cond_0
    invoke-super {p0, p1}, Lcom/kingroot/common/uilib/TransparentListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxGamesListView;->mHandler:Landroid/os/Handler;

    .line 39
    return-void
.end method
