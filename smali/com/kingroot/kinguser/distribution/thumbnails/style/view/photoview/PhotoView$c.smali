.class Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

.field private aJg:Landroid/view/animation/Interpolator;


# direct methods
.method private constructor <init>(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)V
    .locals 1

    .prologue
    .line 948
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$c;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 949
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$c;->aJg:Landroid/view/animation/Interpolator;

    .line 950
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$1;)V
    .locals 0

    .prologue
    .line 944
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$c;-><init>(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/animation/Interpolator;)V
    .locals 0

    .prologue
    .line 953
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$c;->aJg:Landroid/view/animation/Interpolator;

    .line 954
    return-void
.end method

.method public getInterpolation(F)F
    .locals 1

    .prologue
    .line 958
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$c;->aJg:Landroid/view/animation/Interpolator;

    if-eqz v0, :cond_0

    .line 959
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$c;->aJg:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 961
    :cond_0
    return p1
.end method
