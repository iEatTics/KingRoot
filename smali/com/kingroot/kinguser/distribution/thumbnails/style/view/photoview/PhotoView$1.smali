.class Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/apq;


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
    .line 661
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$1;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(FFF)V
    .locals 2

    .prologue
    .line 665
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$1;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$1;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v1}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->a(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)F

    move-result v1

    add-float/2addr v1, p1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->a(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;F)F

    .line 666
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$1;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->b(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 667
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$1;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$1;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v1}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->c(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)F

    move-result v1

    add-float/2addr v1, p1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->b(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;F)F

    .line 668
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$1;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->d(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 675
    :cond_0
    :goto_0
    return-void

    .line 670
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$1;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->a(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$1;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v1}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->e(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 671
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$1;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->a(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;Z)Z

    .line 672
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$1;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->a(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;F)F

    goto :goto_0
.end method
