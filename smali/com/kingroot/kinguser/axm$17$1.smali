.class Lcom/kingroot/kinguser/axm$17$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axm$17;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bal:Lcom/kingroot/kinguser/axm$17;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axm$17;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 1364
    iput-object p1, p0, Lcom/kingroot/kinguser/axm$17$1;->bal:Lcom/kingroot/kinguser/axm$17;

    iput-object p2, p0, Lcom/kingroot/kinguser/axm$17$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1367
    iget-object v0, p0, Lcom/kingroot/kinguser/axm$17$1;->bal:Lcom/kingroot/kinguser/axm$17;

    iget-object v0, v0, Lcom/kingroot/kinguser/axm$17;->this$0:Lcom/kingroot/kinguser/axm;

    invoke-static {v0}, Lcom/kingroot/kinguser/axm;->g(Lcom/kingroot/kinguser/axm;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1391
    :cond_0
    :goto_0
    return-void

    .line 1371
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/axm$17$1;->bal:Lcom/kingroot/kinguser/axm$17;

    iget-object v0, v0, Lcom/kingroot/kinguser/axm$17;->this$0:Lcom/kingroot/kinguser/axm;

    invoke-static {v0}, Lcom/kingroot/kinguser/axm;->B(Lcom/kingroot/kinguser/axm;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/axm$17$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1374
    iget-object v0, p0, Lcom/kingroot/kinguser/axm$17$1;->bal:Lcom/kingroot/kinguser/axm$17;

    iget-object v0, v0, Lcom/kingroot/kinguser/axm$17;->this$0:Lcom/kingroot/kinguser/axm;

    invoke-static {v0}, Lcom/kingroot/kinguser/axm;->j(Lcom/kingroot/kinguser/axm;)Landroid/view/ViewGroup;

    move-result-object v0

    const-string v1, "translationY"

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/kingroot/kinguser/axm$17$1;->bal:Lcom/kingroot/kinguser/axm$17;

    iget-object v4, v4, Lcom/kingroot/kinguser/axm$17;->this$0:Lcom/kingroot/kinguser/axm;

    .line 1375
    invoke-static {v4}, Lcom/kingroot/kinguser/axm;->C(Lcom/kingroot/kinguser/axm;)I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v2, v3

    const/4 v3, 0x0

    aput v3, v2, v5

    .line 1374
    invoke-static {v0, v1, v2}, Lcom/android/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/animation/ObjectAnimator;

    move-result-object v0

    .line 1376
    const-wide/16 v2, 0x352

    invoke-virtual {v0, v2, v3}, Lcom/android/animation/ObjectAnimator;->setDuration(J)Lcom/android/animation/ObjectAnimator;

    .line 1377
    new-instance v1, Lcom/kingroot/kinguser/xr;

    sget-object v2, Lcom/kingroot/kinguser/xq;->UC:Lcom/kingroot/kinguser/xq;

    invoke-direct {v1, v2}, Lcom/kingroot/kinguser/xr;-><init>(Lcom/kingroot/kinguser/xq;)V

    invoke-virtual {v0, v1}, Lcom/android/animation/ObjectAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1378
    new-instance v1, Lcom/kingroot/kinguser/axm$17$1$1;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/axm$17$1$1;-><init>(Lcom/kingroot/kinguser/axm$17$1;)V

    invoke-virtual {v0, v1}, Lcom/android/animation/ObjectAnimator;->addListener(Lcom/android/animation/Animator$AnimatorListener;)V

    .line 1385
    invoke-virtual {v0}, Lcom/android/animation/ObjectAnimator;->start()V

    .line 1387
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18962

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 1388
    iget-object v0, p0, Lcom/kingroot/kinguser/axm$17$1;->bal:Lcom/kingroot/kinguser/axm$17;

    iget-object v0, v0, Lcom/kingroot/kinguser/axm$17;->ayI:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    iget v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->jumptype:I

    if-ne v0, v5, :cond_0

    .line 1389
    invoke-static {}, Lcom/kingroot/kinguser/ana;->IO()Lcom/kingroot/kinguser/anc;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/axm$17$1;->bal:Lcom/kingroot/kinguser/axm$17;

    iget-object v1, v1, Lcom/kingroot/kinguser/axm$17;->this$0:Lcom/kingroot/kinguser/axm;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/axm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/axm$17$1;->bal:Lcom/kingroot/kinguser/axm$17;

    iget-object v2, v2, Lcom/kingroot/kinguser/axm$17;->this$0:Lcom/kingroot/kinguser/axm;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/axm;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    iget-object v3, p0, Lcom/kingroot/kinguser/axm$17$1;->bal:Lcom/kingroot/kinguser/axm$17;

    iget-object v3, v3, Lcom/kingroot/kinguser/axm$17;->ayI:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    iget-object v3, v3, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->reportInfo:Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;

    invoke-interface {v0, v1, v2, v3}, Lcom/kingroot/kinguser/anc;->a(Ljava/lang/String;ILcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;)V

    goto/16 :goto_0
.end method
