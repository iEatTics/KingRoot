.class Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$3;
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
    name = null
.end annotation


# instance fields
.field final synthetic aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)V
    .locals 0

    .prologue
    .line 744
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$3;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 747
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$3;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->h(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 748
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$3;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->h(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$3;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 750
    :cond_0
    return-void
.end method
