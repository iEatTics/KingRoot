.class Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)V
    .locals 0

    .prologue
    .line 753
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/4 v3, 0x0

    .line 873
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->n(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->stop()V

    .line 878
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->o(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v1}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->o(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v1, v4

    add-float/2addr v0, v1

    .line 879
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v1}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->o(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v2}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->o(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    .line 881
    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v2}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->v(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 882
    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v2}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->w(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 883
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v0, v3}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->a(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;I)I

    .line 884
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v0, v3}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->b(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;I)I

    .line 886
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->x(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 887
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->f(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)F

    move-result v1

    .line 888
    const/high16 v0, 0x3f800000    # 1.0f

    .line 896
    :goto_0
    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v2}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->z(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 897
    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v2}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->z(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/Matrix;

    move-result-object v2

    iget-object v4, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v4}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->A(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->left:F

    neg-float v4, v4

    iget-object v5, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v5}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->A(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/RectF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/RectF;->top:F

    neg-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 898
    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v2}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->z(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/Matrix;

    move-result-object v2

    iget-object v4, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v4}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->w(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v5}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->w(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 899
    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v2}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->z(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/Matrix;

    move-result-object v2

    iget-object v4, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v4}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->B(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)F

    move-result v4

    neg-float v4, v4

    iget-object v5, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v5}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->C(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)F

    move-result v5

    neg-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 900
    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v2}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->z(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/Matrix;

    move-result-object v2

    iget-object v4, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v4}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->c(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)F

    move-result v4

    iget-object v5, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v5}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->w(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v6}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->w(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/PointF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v4, v5, v6}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 901
    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v2}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->z(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/Matrix;

    move-result-object v2

    iget-object v4, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v4}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->v(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v5}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->v(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v0, v0, v4, v5}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 902
    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v2}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->z(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/Matrix;

    move-result-object v2

    iget-object v4, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v4}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->q(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v5}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->u(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 903
    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v2}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->z(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/Matrix;

    move-result-object v2

    iget-object v4, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v4}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->D(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/RectF;

    move-result-object v4

    iget-object v5, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v5}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->A(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 904
    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    iget-object v4, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v4}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->D(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/RectF;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->a(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;Landroid/graphics/RectF;)V

    .line 906
    iget-object v4, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v2}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->x(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-static {v4, v2}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->d(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;Z)Z

    .line 907
    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v2}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->n(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->h(FF)V

    .line 908
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->n(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->start()V

    .line 910
    return v3

    .line 890
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->f(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)F

    move-result v1

    .line 891
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->y(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)F

    move-result v0

    .line 893
    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v2}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->v(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/PointF;->set(FF)V

    goto/16 :goto_0

    :cond_1
    move v2, v3

    .line 906
    goto :goto_1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 764
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->b(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;Z)Z

    .line 765
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->c(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;Z)Z

    .line 766
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->a(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;Z)Z

    .line 767
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v1}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->j(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 768
    return v2
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/high16 v5, 0x42b40000    # 90.0f

    .line 773
    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v2}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->k(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 807
    :cond_0
    :goto_0
    return v0

    .line 774
    :cond_1
    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v2}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->l(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v2}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->m(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 775
    :cond_2
    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v2}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->n(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;

    move-result-object v2

    iget-boolean v2, v2, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJh:Z

    if-nez v2, :cond_0

    .line 780
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->o(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v2}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->p(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v0, v2

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->o(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v2}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->p(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_a

    :cond_3
    move v0, v1

    .line 784
    :goto_1
    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v2}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->o(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v3}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->p(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->top:F

    cmpl-float v2, v2, v3

    if-gez v2, :cond_4

    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v2}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->o(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v3}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->p(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_9

    :cond_4
    move v2, v1

    .line 788
    :goto_2
    iget-object v3, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v3}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->b(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v3}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->c(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)F

    move-result v3

    rem-float/2addr v3, v5

    cmpl-float v1, v3, v1

    if-eqz v1, :cond_7

    .line 789
    :cond_5
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v1}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->c(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)F

    move-result v1

    div-float/2addr v1, v5

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x5a

    int-to-float v1, v1

    .line 790
    iget-object v3, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v3}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->c(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)F

    move-result v3

    rem-float/2addr v3, v5

    .line 792
    const/high16 v4, 0x42340000    # 45.0f

    cmpl-float v4, v3, v4

    if-lez v4, :cond_8

    .line 793
    add-float/2addr v1, v5

    .line 797
    :cond_6
    :goto_3
    iget-object v3, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v3}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->n(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;

    move-result-object v3

    iget-object v4, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v4}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->c(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)F

    move-result v4

    float-to-int v4, v4

    float-to-int v5, v1

    invoke-virtual {v3, v4, v5}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->M(II)V

    .line 799
    iget-object v3, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v3, v1}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->b(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;F)F

    .line 802
    :cond_7
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    iget-object v3, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v3}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->o(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->a(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;Landroid/graphics/RectF;)V

    .line 803
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v1}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->n(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->i(FF)V

    .line 805
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->n(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->start()V

    .line 807
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    goto/16 :goto_0

    .line 794
    :cond_8
    const/high16 v4, -0x3dcc0000    # -45.0f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_6

    .line 795
    sub-float/2addr v1, v5

    goto :goto_3

    :cond_9
    move v2, p4

    goto :goto_2

    :cond_a
    move v0, p3

    goto/16 :goto_1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2

    .prologue
    .line 757
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->i(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/view/View$OnLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 758
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->i(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/view/View$OnLongClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-interface {v0, v1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    .line 760
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 812
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->n(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;

    move-result-object v0

    iget-boolean v0, v0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->aJh:Z

    if-eqz v0, :cond_0

    .line 813
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->n(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$f;->stop()V

    .line 816
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-virtual {v0, p3}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->u(F)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 817
    cmpg-float v0, p3, v3

    if-gez v0, :cond_e

    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->o(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, p3

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v1}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->p(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_e

    .line 818
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->o(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/RectF;

    move-result-object v0

    iget p3, v0, Landroid/graphics/RectF;->left:F

    move v0, p3

    .line 819
    :goto_0
    cmpl-float v1, v0, v3

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v1}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->o(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v0

    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v2}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->p(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->right:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 820
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->o(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v1}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->p(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    .line 822
    :cond_1
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v1}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->d(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/Matrix;

    move-result-object v1

    neg-float v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 823
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v2}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->q(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)I

    move-result v2

    int-to-float v2, v2

    sub-float v0, v2, v0

    float-to-int v0, v0

    invoke-static {v1, v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->a(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;I)I

    .line 838
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-virtual {v0, p4}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->v(F)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 839
    cmpg-float v0, p4, v3

    if-gez v0, :cond_d

    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->o(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, p4

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v1}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->p(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_d

    .line 840
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->o(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/RectF;

    move-result-object v0

    iget p4, v0, Landroid/graphics/RectF;->top:F

    move v0, p4

    .line 841
    :goto_2
    cmpl-float v1, v0, v3

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v1}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->o(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v0

    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v2}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->p(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    .line 842
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->o(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v1}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->p(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    .line 844
    :cond_3
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v1}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->d(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/Matrix;

    move-result-object v1

    neg-float v2, v0

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 845
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v2}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->u(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)I

    move-result v2

    int-to-float v2, v2

    sub-float v0, v2, v0

    float-to-int v0, v0

    invoke-static {v1, v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->b(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;I)I

    .line 860
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->g(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)V

    .line 861
    return v4

    .line 824
    :cond_5
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->l(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->k(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->r(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 825
    :cond_6
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->s(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)V

    .line 826
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->k(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 827
    cmpg-float v0, p3, v3

    if-gez v0, :cond_7

    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->o(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, p3

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v1}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->t(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    .line 828
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v1}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->o(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v2}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->t(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    invoke-static {v0, v1, p3}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->a(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;FF)F

    move-result p3

    .line 829
    :cond_7
    cmpl-float v0, p3, v3

    if-lez v0, :cond_8

    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->o(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, p3

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v1}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->t(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_8

    .line 830
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v1}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->o(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v2}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->t(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v2

    invoke-static {v0, v1, p3}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->a(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;FF)F

    move-result p3

    .line 833
    :cond_8
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v1}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->q(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, p3

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->a(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;I)I

    .line 834
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->d(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/Matrix;

    move-result-object v0

    neg-float v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 835
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v0, v4}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->b(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;Z)Z

    goto/16 :goto_1

    .line 846
    :cond_9
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->m(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->r(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->k(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 847
    :cond_a
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->s(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)V

    .line 848
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->k(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 849
    cmpg-float v0, p4, v3

    if-gez v0, :cond_b

    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->o(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, p4

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v1}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->t(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_b

    .line 850
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v1}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->o(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v2}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->t(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    invoke-static {v0, v1, p4}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->b(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;FF)F

    move-result p4

    .line 851
    :cond_b
    cmpl-float v0, p4, v3

    if-lez v0, :cond_c

    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->o(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, p4

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v1}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->t(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_c

    .line 852
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v1}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->o(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v2}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->t(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v2

    invoke-static {v0, v1, p4}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->b(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;FF)F

    move-result p4

    .line 855
    :cond_c
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->d(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/Matrix;

    move-result-object v0

    neg-float v1, p4

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 856
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v1}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->u(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, p4

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->b(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;I)I

    .line 857
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v0, v4}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->b(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;Z)Z

    goto/16 :goto_3

    :cond_d
    move v0, p4

    goto/16 :goto_2

    :cond_e
    move v0, p3

    goto/16 :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    .line 866
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$4;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v1}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->j(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 867
    const/4 v0, 0x0

    return v0
.end method
