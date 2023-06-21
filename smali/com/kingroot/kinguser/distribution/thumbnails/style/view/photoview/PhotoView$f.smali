.class Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "f"
.end annotation


# instance fields
.field final synthetic aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

.field aJh:Z

.field aJi:Landroid/widget/OverScroller;

.field aJj:Landroid/widget/OverScroller;

.field aJk:Landroid/widget/Scroller;

.field aJl:Landroid/widget/Scroller;

.field aJm:Landroid/widget/Scroller;

.field aJn:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$a;

.field aJo:I

.field aJp:I

.field aJq:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$c;

.field mClipRect:Landroid/graphics/RectF;

.field mLastFlingX:I

.field mLastFlingY:I


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)V
    .locals 3

    .prologue
    .line 987
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 983
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->mClipRect:Landroid/graphics/RectF;

    .line 985
    new-instance v0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$c;

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$c;-><init>(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$1;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJq:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$c;

    .line 988
    invoke-virtual {p1}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 989
    new-instance v1, Landroid/widget/OverScroller;

    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJq:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$c;

    invoke-direct {v1, v0, v2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJi:Landroid/widget/OverScroller;

    .line 990
    new-instance v1, Landroid/widget/Scroller;

    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJq:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$c;

    invoke-direct {v1, v0, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJk:Landroid/widget/Scroller;

    .line 991
    new-instance v1, Landroid/widget/OverScroller;

    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJq:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$c;

    invoke-direct {v1, v0, v2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJj:Landroid/widget/OverScroller;

    .line 992
    new-instance v1, Landroid/widget/Scroller;

    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJq:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$c;

    invoke-direct {v1, v0, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJl:Landroid/widget/Scroller;

    .line 993
    new-instance v1, Landroid/widget/Scroller;

    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJq:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$c;

    invoke-direct {v1, v0, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJm:Landroid/widget/Scroller;

    .line 994
    return-void
.end method

.method private LG()V
    .locals 5

    .prologue
    .line 1164
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->d(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 1165
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->d(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v1}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->A(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v2}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->A(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->top:F

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1166
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->d(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v1}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->w(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v2}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->w(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1167
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->d(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v1}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->B(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)F

    move-result v1

    neg-float v1, v1

    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v2}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->C(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1168
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->d(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v1}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->c(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)F

    move-result v1

    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v2}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->w(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v3}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->w(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 1169
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->d(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v1}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->f(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)F

    move-result v1

    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v2}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->f(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)F

    move-result v2

    iget-object v3, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v3}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->v(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v4}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->v(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 1170
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->d(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v1}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->q(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v2}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->u(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1171
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->g(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)V

    .line 1172
    return-void
.end method

.method private LH()V
    .locals 1

    .prologue
    .line 1176
    iget-boolean v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJh:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-virtual {v0, p0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->post(Ljava/lang/Runnable;)Z

    .line 1177
    :cond_0
    return-void
.end method


# virtual methods
.method M(II)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1016
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJm:Landroid/widget/Scroller;

    sub-int v3, p2, p1

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v1}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->E(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)I

    move-result v5

    move v1, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1017
    return-void
.end method

.method a(FFFFILcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$a;)V
    .locals 6

    .prologue
    const v4, 0x461c4000    # 10000.0f

    .line 1011
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJl:Landroid/widget/Scroller;

    mul-float v1, p1, v4

    float-to-int v1, v1

    mul-float v2, p2, v4

    float-to-int v2, v2

    mul-float v3, p3, v4

    float-to-int v3, v3

    mul-float/2addr v4, p4

    float-to-int v4, v4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1012
    iput-object p6, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJn:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$a;

    .line 1013
    return-void
.end method

.method c(IIII)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1001
    iput v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJo:I

    .line 1002
    iput v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJp:I

    .line 1003
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJi:Landroid/widget/OverScroller;

    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v2}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->E(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)I

    move-result v5

    move v2, v1

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 1004
    return-void
.end method

.method h(FF)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const v4, 0x461c4000    # 10000.0f

    .line 1007
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJk:Landroid/widget/Scroller;

    mul-float v1, p1, v4

    float-to-int v1, v1

    sub-float v3, p2, p1

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v4}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->E(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)I

    move-result v5

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1008
    return-void
.end method

.method i(FF)V
    .locals 13

    .prologue
    const v1, 0x7fffffff

    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 1024
    cmpg-float v0, p1, v3

    if-gez v0, :cond_4

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->mLastFlingX:I

    .line 1025
    cmpl-float v0, p1, v3

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->o(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    :goto_1
    float-to-int v0, v0

    .line 1026
    cmpg-float v2, p1, v3

    if-gez v2, :cond_0

    sub-int v0, v1, v0

    .line 1027
    :cond_0
    cmpg-float v2, p1, v3

    if-gez v2, :cond_6

    move v5, v0

    .line 1028
    :goto_2
    cmpg-float v2, p1, v3

    if-gez v2, :cond_7

    move v6, v1

    .line 1029
    :goto_3
    cmpg-float v2, p1, v3

    if-gez v2, :cond_8

    sub-int v0, v1, v5

    move v9, v0

    .line 1031
    :goto_4
    cmpg-float v0, p2, v3

    if-gez v0, :cond_9

    move v0, v1

    :goto_5
    iput v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->mLastFlingY:I

    .line 1032
    cmpl-float v0, p2, v3

    if-lez v0, :cond_a

    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->o(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->top:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    :goto_6
    float-to-int v0, v0

    .line 1033
    cmpg-float v2, p2, v3

    if-gez v2, :cond_1

    sub-int v0, v1, v0

    .line 1034
    :cond_1
    cmpg-float v2, p2, v3

    if-gez v2, :cond_b

    move v7, v0

    .line 1035
    :goto_7
    cmpg-float v2, p2, v3

    if-gez v2, :cond_c

    move v8, v1

    .line 1036
    :goto_8
    cmpg-float v2, p2, v3

    if-gez v2, :cond_d

    sub-int v0, v1, v7

    move v11, v0

    .line 1038
    :goto_9
    cmpl-float v0, p1, v3

    if-nez v0, :cond_2

    move v6, v10

    move v5, v10

    .line 1043
    :cond_2
    cmpl-float v0, p2, v3

    if-nez v0, :cond_3

    move v8, v10

    move v7, v10

    .line 1048
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJj:Landroid/widget/OverScroller;

    iget v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->mLastFlingX:I

    iget v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->mLastFlingY:I

    float-to-int v3, p1

    float-to-int v4, p2

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    iget-object v12, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v12}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->F(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)I

    move-result v12

    mul-int/lit8 v12, v12, 0x2

    if-ge v9, v12, :cond_e

    move v9, v10

    :goto_a
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    iget-object v12, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v12}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->F(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)I

    move-result v12

    mul-int/lit8 v12, v12, 0x2

    if-ge v11, v12, :cond_f

    :goto_b
    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 1049
    return-void

    :cond_4
    move v0, v10

    .line 1024
    goto/16 :goto_0

    .line 1025
    :cond_5
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->o(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v2}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->p(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v2

    goto/16 :goto_1

    :cond_6
    move v5, v10

    .line 1027
    goto/16 :goto_2

    :cond_7
    move v6, v0

    .line 1028
    goto/16 :goto_3

    :cond_8
    move v9, v0

    .line 1029
    goto/16 :goto_4

    :cond_9
    move v0, v10

    .line 1031
    goto :goto_5

    .line 1032
    :cond_a
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->o(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v2}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->p(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v2

    goto :goto_6

    :cond_b
    move v7, v10

    .line 1034
    goto :goto_7

    :cond_c
    move v8, v0

    .line 1035
    goto :goto_8

    :cond_d
    move v11, v0

    .line 1036
    goto :goto_9

    .line 1048
    :cond_e
    iget-object v9, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v9}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->F(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)I

    move-result v9

    goto :goto_a

    :cond_f
    iget-object v10, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v10}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->F(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)I

    move-result v10

    goto :goto_b
.end method

.method public run()V
    .locals 10

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v2, 0x1

    const v6, 0x461c4000    # 10000.0f

    const/4 v1, 0x0

    .line 1070
    .line 1072
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJk:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1073
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    iget-object v3, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJk:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v6

    invoke-static {v0, v3}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->c(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;F)F

    move v0, v1

    .line 1077
    :goto_0
    iget-object v3, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJi:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1078
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJi:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v0

    iget v3, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJo:I

    sub-int/2addr v0, v3

    .line 1079
    iget-object v3, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJi:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v3

    iget v4, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJp:I

    sub-int/2addr v3, v4

    .line 1080
    iget-object v4, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    iget-object v5, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v5}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->q(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)I

    move-result v5

    add-int/2addr v0, v5

    invoke-static {v4, v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->a(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;I)I

    .line 1081
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    iget-object v4, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v4}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->u(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v0, v3}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->b(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;I)I

    .line 1082
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJi:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJo:I

    .line 1083
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJi:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJp:I

    move v0, v1

    .line 1087
    :cond_0
    iget-object v3, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJj:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1088
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJj:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v0

    iget v3, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->mLastFlingX:I

    sub-int/2addr v0, v3

    .line 1089
    iget-object v3, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJj:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v3

    iget v4, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->mLastFlingY:I

    sub-int/2addr v3, v4

    .line 1091
    iget-object v4, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJj:Landroid/widget/OverScroller;

    invoke-virtual {v4}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v4

    iput v4, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->mLastFlingX:I

    .line 1092
    iget-object v4, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJj:Landroid/widget/OverScroller;

    invoke-virtual {v4}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v4

    iput v4, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->mLastFlingY:I

    .line 1094
    iget-object v4, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    iget-object v5, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v5}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->q(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)I

    move-result v5

    add-int/2addr v0, v5

    invoke-static {v4, v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->a(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;I)I

    .line 1095
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    iget-object v4, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v4}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->u(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v0, v3}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->b(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;I)I

    move v0, v1

    .line 1099
    :cond_1
    iget-object v3, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJm:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1100
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    iget-object v3, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJm:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v0, v3}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->b(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;F)F

    move v0, v1

    .line 1104
    :cond_2
    iget-object v3, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJl:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v3}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->G(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/RectF;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 1105
    :cond_3
    iget-object v3, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJl:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v6

    .line 1106
    iget-object v4, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJl:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrY()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v6

    .line 1107
    iget-object v5, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v5}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->z(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/Matrix;

    move-result-object v5

    iget-object v6, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v6}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->o(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/RectF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/RectF;->left:F

    iget-object v7, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v7}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->o(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/RectF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/RectF;->right:F

    add-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    iget-object v7, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJn:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$a;

    invoke-interface {v7}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$a;->LF()F

    move-result v7

    invoke-virtual {v5, v3, v4, v6, v7}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 1108
    iget-object v5, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v5}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->z(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/Matrix;

    move-result-object v5

    iget-object v6, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->mClipRect:Landroid/graphics/RectF;

    iget-object v7, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v7}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->o(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/RectF;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 1110
    cmpl-float v3, v3, v9

    if-nez v3, :cond_4

    .line 1111
    iget-object v3, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->mClipRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v5}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->p(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/RectF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/RectF;->left:F

    iput v5, v3, Landroid/graphics/RectF;->left:F

    .line 1112
    iget-object v3, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->mClipRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v5}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->p(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/RectF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/RectF;->right:F

    iput v5, v3, Landroid/graphics/RectF;->right:F

    .line 1115
    :cond_4
    cmpl-float v3, v4, v9

    if-nez v3, :cond_5

    .line 1116
    iget-object v3, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->mClipRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v4}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->p(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iput v4, v3, Landroid/graphics/RectF;->top:F

    .line 1117
    iget-object v3, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->mClipRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v4}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->p(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    iput v4, v3, Landroid/graphics/RectF;->bottom:F

    .line 1120
    :cond_5
    iget-object v3, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    iget-object v4, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->mClipRect:Landroid/graphics/RectF;

    invoke-static {v3, v4}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->b(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    .line 1123
    :cond_6
    if-nez v0, :cond_8

    .line 1124
    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->LG()V

    .line 1125
    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->LH()V

    .line 1161
    :cond_7
    :goto_1
    return-void

    .line 1127
    :cond_8
    iput-boolean v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJh:Z

    .line 1132
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->l(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1133
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->o(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v0, v8

    if-lez v0, :cond_d

    .line 1134
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v1}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->q(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v3}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->o(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v3

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->a(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;I)I

    :cond_9
    :goto_2
    move v1, v2

    .line 1141
    :cond_a
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->m(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1142
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->o(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, v8

    if-lez v0, :cond_e

    .line 1143
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v1}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->u(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v3}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->o(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v3

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->b(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;I)I

    .line 1150
    :cond_b
    :goto_3
    if-eqz v2, :cond_c

    .line 1151
    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->LG()V

    .line 1154
    :cond_c
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->invalidate()V

    .line 1156
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->H(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1157
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->H(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1158
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->a(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    goto :goto_1

    .line 1135
    :cond_d
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->o(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v1}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->p(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_9

    .line 1136
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v1}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->q(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)I

    move-result v1

    iget-object v3, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v3}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->p(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v4}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->o(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    sub-int/2addr v1, v3

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->a(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;I)I

    goto/16 :goto_2

    .line 1144
    :cond_e
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->o(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v1}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->p(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_b

    .line 1145
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v1}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->u(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)I

    move-result v1

    iget-object v3, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v3}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->p(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget-object v4, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v4}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->o(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    sub-int/2addr v1, v3

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->b(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;I)I

    goto/16 :goto_3

    :cond_f
    move v2, v1

    goto/16 :goto_3

    :cond_10
    move v0, v2

    goto/16 :goto_0
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1

    .prologue
    .line 997
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJq:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$c;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$c;->b(Landroid/view/animation/Interpolator;)V

    .line 998
    return-void
.end method

.method start()V
    .locals 1

    .prologue
    .line 1052
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJh:Z

    .line 1053
    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->LH()V

    .line 1054
    return-void
.end method

.method stop()V
    .locals 1

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-virtual {v0, p0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1058
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJi:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 1059
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJk:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1060
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJj:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 1061
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJm:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1062
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJh:Z

    .line 1063
    return-void
.end method
