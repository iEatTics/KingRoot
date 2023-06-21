.class public Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field final synthetic aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)V
    .locals 0

    .prologue
    .line 1246
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$e;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public LF()F
    .locals 1

    .prologue
    .line 1248
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView$e;->aJe:Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;->o(Lcom/kingroot/kinguser/distribution/thumbnails/style/view/photoview/PhotoView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->top:F

    return v0
.end method
