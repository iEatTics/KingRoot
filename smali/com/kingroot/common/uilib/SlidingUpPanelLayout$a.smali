.class Lcom/kingroot/common/uilib/SlidingUpPanelLayout$a;
.super Lcom/kingroot/kinguser/ww$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/common/uilib/SlidingUpPanelLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic Sc:Lcom/kingroot/common/uilib/SlidingUpPanelLayout;


# direct methods
.method private constructor <init>(Lcom/kingroot/common/uilib/SlidingUpPanelLayout;)V
    .locals 0

    .prologue
    .line 1361
    iput-object p1, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$a;->Sc:Lcom/kingroot/common/uilib/SlidingUpPanelLayout;

    invoke-direct {p0}, Lcom/kingroot/kinguser/ww$a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/common/uilib/SlidingUpPanelLayout;Lcom/kingroot/common/uilib/SlidingUpPanelLayout$1;)V
    .locals 0

    .prologue
    .line 1361
    invoke-direct {p0, p1}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$a;-><init>(Lcom/kingroot/common/uilib/SlidingUpPanelLayout;)V

    return-void
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .locals 1

    .prologue
    .line 1374
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$a;->Sc:Lcom/kingroot/common/uilib/SlidingUpPanelLayout;

    invoke-static {v0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->d(Lcom/kingroot/common/uilib/SlidingUpPanelLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    return v0
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .locals 3

    .prologue
    .line 1449
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$a;->Sc:Lcom/kingroot/common/uilib/SlidingUpPanelLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->b(Lcom/kingroot/common/uilib/SlidingUpPanelLayout;F)I

    move-result v0

    .line 1450
    iget-object v1, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$a;->Sc:Lcom/kingroot/common/uilib/SlidingUpPanelLayout;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->b(Lcom/kingroot/common/uilib/SlidingUpPanelLayout;F)I

    move-result v1

    .line 1451
    iget-object v2, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$a;->Sc:Lcom/kingroot/common/uilib/SlidingUpPanelLayout;

    invoke-static {v2}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->h(Lcom/kingroot/common/uilib/SlidingUpPanelLayout;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1452
    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1454
    :goto_0
    return v0

    :cond_0
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method public getViewVerticalDragRange(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1444
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$a;->Sc:Lcom/kingroot/common/uilib/SlidingUpPanelLayout;

    invoke-static {v0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->i(Lcom/kingroot/common/uilib/SlidingUpPanelLayout;)I

    move-result v0

    return v0
.end method

.method public onViewCaptured(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 1400
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$a;->Sc:Lcom/kingroot/common/uilib/SlidingUpPanelLayout;

    invoke-virtual {v0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->setAllChildrenVisible()V

    .line 1401
    return-void
.end method

.method public onViewDragStateChanged(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1379
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$a;->Sc:Lcom/kingroot/common/uilib/SlidingUpPanelLayout;

    invoke-static {v0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->e(Lcom/kingroot/common/uilib/SlidingUpPanelLayout;)Lcom/kingroot/kinguser/ww;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ww;->getViewDragState()I

    move-result v0

    if-nez v0, :cond_0

    .line 1380
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$a;->Sc:Lcom/kingroot/common/uilib/SlidingUpPanelLayout;

    iget-object v1, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$a;->Sc:Lcom/kingroot/common/uilib/SlidingUpPanelLayout;

    iget-object v2, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$a;->Sc:Lcom/kingroot/common/uilib/SlidingUpPanelLayout;

    invoke-static {v2}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->d(Lcom/kingroot/common/uilib/SlidingUpPanelLayout;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-static {v1, v2}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->a(Lcom/kingroot/common/uilib/SlidingUpPanelLayout;I)F

    move-result v1

    invoke-static {v0, v1}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->a(Lcom/kingroot/common/uilib/SlidingUpPanelLayout;F)F

    .line 1381
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$a;->Sc:Lcom/kingroot/common/uilib/SlidingUpPanelLayout;

    invoke-static {v0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->f(Lcom/kingroot/common/uilib/SlidingUpPanelLayout;)V

    .line 1383
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$a;->Sc:Lcom/kingroot/common/uilib/SlidingUpPanelLayout;

    invoke-static {v0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->g(Lcom/kingroot/common/uilib/SlidingUpPanelLayout;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 1384
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$a;->Sc:Lcom/kingroot/common/uilib/SlidingUpPanelLayout;

    invoke-virtual {v0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->oj()V

    .line 1385
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$a;->Sc:Lcom/kingroot/common/uilib/SlidingUpPanelLayout;

    sget-object v1, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;->Se:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    invoke-static {v0, v1}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->a(Lcom/kingroot/common/uilib/SlidingUpPanelLayout;Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;)V

    .line 1396
    :cond_0
    :goto_0
    return-void

    .line 1386
    :cond_1
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$a;->Sc:Lcom/kingroot/common/uilib/SlidingUpPanelLayout;

    invoke-static {v0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->g(Lcom/kingroot/common/uilib/SlidingUpPanelLayout;)F

    move-result v0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_2

    .line 1387
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$a;->Sc:Lcom/kingroot/common/uilib/SlidingUpPanelLayout;

    sget-object v1, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;->Sf:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    invoke-static {v0, v1}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->a(Lcom/kingroot/common/uilib/SlidingUpPanelLayout;Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;)V

    goto :goto_0

    .line 1388
    :cond_2
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$a;->Sc:Lcom/kingroot/common/uilib/SlidingUpPanelLayout;

    invoke-static {v0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->g(Lcom/kingroot/common/uilib/SlidingUpPanelLayout;)F

    move-result v0

    cmpg-float v0, v0, v3

    if-gez v0, :cond_3

    .line 1389
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$a;->Sc:Lcom/kingroot/common/uilib/SlidingUpPanelLayout;

    sget-object v1, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;->Sh:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    invoke-static {v0, v1}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->a(Lcom/kingroot/common/uilib/SlidingUpPanelLayout;Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;)V

    .line 1390
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$a;->Sc:Lcom/kingroot/common/uilib/SlidingUpPanelLayout;

    invoke-static {v0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->d(Lcom/kingroot/common/uilib/SlidingUpPanelLayout;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1392
    :cond_3
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$a;->Sc:Lcom/kingroot/common/uilib/SlidingUpPanelLayout;

    invoke-virtual {v0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->oj()V

    .line 1393
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$a;->Sc:Lcom/kingroot/common/uilib/SlidingUpPanelLayout;

    sget-object v1, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;->Sg:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    invoke-static {v0, v1}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->a(Lcom/kingroot/common/uilib/SlidingUpPanelLayout;Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;)V

    goto :goto_0
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 1

    .prologue
    .line 1405
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$a;->Sc:Lcom/kingroot/common/uilib/SlidingUpPanelLayout;

    invoke-static {v0, p3}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->b(Lcom/kingroot/common/uilib/SlidingUpPanelLayout;I)V

    .line 1406
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$a;->Sc:Lcom/kingroot/common/uilib/SlidingUpPanelLayout;

    invoke-virtual {v0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->invalidate()V

    .line 1407
    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 5

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 1411
    .line 1414
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$a;->Sc:Lcom/kingroot/common/uilib/SlidingUpPanelLayout;

    invoke-static {v0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->h(Lcom/kingroot/common/uilib/SlidingUpPanelLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    neg-float p3, p3

    .line 1416
    :cond_0
    cmpl-float v0, p3, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$a;->Sc:Lcom/kingroot/common/uilib/SlidingUpPanelLayout;

    invoke-static {v0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->g(Lcom/kingroot/common/uilib/SlidingUpPanelLayout;)F

    move-result v0

    iget-object v1, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$a;->Sc:Lcom/kingroot/common/uilib/SlidingUpPanelLayout;

    invoke-static {v1}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->b(Lcom/kingroot/common/uilib/SlidingUpPanelLayout;)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 1418
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$a;->Sc:Lcom/kingroot/common/uilib/SlidingUpPanelLayout;

    iget-object v1, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$a;->Sc:Lcom/kingroot/common/uilib/SlidingUpPanelLayout;

    invoke-static {v1}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->b(Lcom/kingroot/common/uilib/SlidingUpPanelLayout;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->b(Lcom/kingroot/common/uilib/SlidingUpPanelLayout;F)I

    move-result v0

    .line 1438
    :goto_0
    iget-object v1, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$a;->Sc:Lcom/kingroot/common/uilib/SlidingUpPanelLayout;

    invoke-static {v1}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->e(Lcom/kingroot/common/uilib/SlidingUpPanelLayout;)Lcom/kingroot/kinguser/ww;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/kingroot/kinguser/ww;->settleCapturedViewAt(II)Z

    .line 1439
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$a;->Sc:Lcom/kingroot/common/uilib/SlidingUpPanelLayout;

    invoke-virtual {v0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->invalidate()V

    .line 1440
    return-void

    .line 1419
    :cond_1
    cmpl-float v0, p3, v2

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$a;->Sc:Lcom/kingroot/common/uilib/SlidingUpPanelLayout;

    invoke-static {v0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->g(Lcom/kingroot/common/uilib/SlidingUpPanelLayout;)F

    move-result v0

    iget-object v1, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$a;->Sc:Lcom/kingroot/common/uilib/SlidingUpPanelLayout;

    invoke-static {v1}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->b(Lcom/kingroot/common/uilib/SlidingUpPanelLayout;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 1421
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$a;->Sc:Lcom/kingroot/common/uilib/SlidingUpPanelLayout;

    invoke-static {v0, v3}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->b(Lcom/kingroot/common/uilib/SlidingUpPanelLayout;F)I

    move-result v0

    goto :goto_0

    .line 1422
    :cond_2
    cmpg-float v0, p3, v2

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$a;->Sc:Lcom/kingroot/common/uilib/SlidingUpPanelLayout;

    invoke-static {v0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->g(Lcom/kingroot/common/uilib/SlidingUpPanelLayout;)F

    move-result v0

    iget-object v1, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$a;->Sc:Lcom/kingroot/common/uilib/SlidingUpPanelLayout;

    invoke-static {v1}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->b(Lcom/kingroot/common/uilib/SlidingUpPanelLayout;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3

    .line 1424
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$a;->Sc:Lcom/kingroot/common/uilib/SlidingUpPanelLayout;

    iget-object v1, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$a;->Sc:Lcom/kingroot/common/uilib/SlidingUpPanelLayout;

    invoke-static {v1}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->b(Lcom/kingroot/common/uilib/SlidingUpPanelLayout;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->b(Lcom/kingroot/common/uilib/SlidingUpPanelLayout;F)I

    move-result v0

    goto :goto_0

    .line 1425
    :cond_3
    cmpg-float v0, p3, v2

    if-gez v0, :cond_4

    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$a;->Sc:Lcom/kingroot/common/uilib/SlidingUpPanelLayout;

    invoke-static {v0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->g(Lcom/kingroot/common/uilib/SlidingUpPanelLayout;)F

    move-result v0

    iget-object v1, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$a;->Sc:Lcom/kingroot/common/uilib/SlidingUpPanelLayout;

    invoke-static {v1}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->b(Lcom/kingroot/common/uilib/SlidingUpPanelLayout;)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    .line 1427
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$a;->Sc:Lcom/kingroot/common/uilib/SlidingUpPanelLayout;

    invoke-static {v0, v2}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->b(Lcom/kingroot/common/uilib/SlidingUpPanelLayout;F)I

    move-result v0

    goto :goto_0

    .line 1428
    :cond_4
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$a;->Sc:Lcom/kingroot/common/uilib/SlidingUpPanelLayout;

    invoke-static {v0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->g(Lcom/kingroot/common/uilib/SlidingUpPanelLayout;)F

    move-result v0

    iget-object v1, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$a;->Sc:Lcom/kingroot/common/uilib/SlidingUpPanelLayout;

    invoke-static {v1}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->b(Lcom/kingroot/common/uilib/SlidingUpPanelLayout;)F

    move-result v1

    add-float/2addr v1, v3

    div-float/2addr v1, v4

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_5

    .line 1430
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$a;->Sc:Lcom/kingroot/common/uilib/SlidingUpPanelLayout;

    invoke-static {v0, v3}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->b(Lcom/kingroot/common/uilib/SlidingUpPanelLayout;F)I

    move-result v0

    goto/16 :goto_0

    .line 1431
    :cond_5
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$a;->Sc:Lcom/kingroot/common/uilib/SlidingUpPanelLayout;

    invoke-static {v0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->g(Lcom/kingroot/common/uilib/SlidingUpPanelLayout;)F

    move-result v0

    iget-object v1, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$a;->Sc:Lcom/kingroot/common/uilib/SlidingUpPanelLayout;

    invoke-static {v1}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->b(Lcom/kingroot/common/uilib/SlidingUpPanelLayout;)F

    move-result v1

    div-float/2addr v1, v4

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_6

    .line 1433
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$a;->Sc:Lcom/kingroot/common/uilib/SlidingUpPanelLayout;

    iget-object v1, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$a;->Sc:Lcom/kingroot/common/uilib/SlidingUpPanelLayout;

    invoke-static {v1}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->b(Lcom/kingroot/common/uilib/SlidingUpPanelLayout;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->b(Lcom/kingroot/common/uilib/SlidingUpPanelLayout;F)I

    move-result v0

    goto/16 :goto_0

    .line 1436
    :cond_6
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$a;->Sc:Lcom/kingroot/common/uilib/SlidingUpPanelLayout;

    invoke-static {v0, v2}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->b(Lcom/kingroot/common/uilib/SlidingUpPanelLayout;F)I

    move-result v0

    goto/16 :goto_0
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1365
    iget-object v1, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$a;->Sc:Lcom/kingroot/common/uilib/SlidingUpPanelLayout;

    invoke-static {v1}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->c(Lcom/kingroot/common/uilib/SlidingUpPanelLayout;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1369
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$a;->Sc:Lcom/kingroot/common/uilib/SlidingUpPanelLayout;

    invoke-static {v1}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout;->d(Lcom/kingroot/common/uilib/SlidingUpPanelLayout;)Landroid/view/View;

    move-result-object v1

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
