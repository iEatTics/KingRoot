.class Lcom/kingroot/kinguser/axh$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axh;->oG()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aYH:Lcom/kingroot/kinguser/axh;

.field final synthetic aYL:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axh;Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Lcom/kingroot/kinguser/axh$4;->aYH:Lcom/kingroot/kinguser/axh;

    iput-object p2, p0, Lcom/kingroot/kinguser/axh$4;->aYL:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 10

    .prologue
    const-wide/16 v8, 0x190

    const v7, 0x7f0f02bb

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 314
    iget-object v0, p0, Lcom/kingroot/kinguser/axh$4;->aYL:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 316
    iget-object v0, p0, Lcom/kingroot/kinguser/axh$4;->aYH:Lcom/kingroot/kinguser/axh;

    invoke-static {v0}, Lcom/kingroot/kinguser/axh;->d(Lcom/kingroot/kinguser/axh;)Lcom/kingroot/kinguser/bev;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bev;->Zz()V

    .line 318
    iget-object v0, p0, Lcom/kingroot/kinguser/axh$4;->aYH:Lcom/kingroot/kinguser/axh;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/axh;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "translationY"

    new-array v2, v6, [F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/kingroot/kinguser/axh$4;->aYH:Lcom/kingroot/kinguser/axh;

    .line 319
    invoke-virtual {v4}, Lcom/kingroot/kinguser/axh;->getContentView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-static {v4}, Lcom/kingroot/kinguser/abg;->r(F)I

    move-result v4

    int-to-float v4, v4

    aput v4, v2, v3

    const/4 v3, 0x0

    aput v3, v2, v5

    .line 318
    invoke-static {v0, v1, v2}, Lcom/android/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/animation/ObjectAnimator;

    move-result-object v0

    .line 320
    invoke-virtual {v0, v8, v9}, Lcom/android/animation/ObjectAnimator;->setDuration(J)Lcom/android/animation/ObjectAnimator;

    .line 321
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/animation/ObjectAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 322
    invoke-virtual {v0}, Lcom/android/animation/ObjectAnimator;->start()V

    .line 323
    iget-object v0, p0, Lcom/kingroot/kinguser/axh$4;->aYH:Lcom/kingroot/kinguser/axh;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/axh;->getContentView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v8, v9, v1}, Lcom/kingroot/kinguser/bhk;->a(Landroid/view/View;JLcom/android/animation/AnimatorListenerAdapter;)V

    .line 324
    iget-object v0, p0, Lcom/kingroot/kinguser/axh$4;->aYH:Lcom/kingroot/kinguser/axh;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/axh;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 325
    return v5
.end method
