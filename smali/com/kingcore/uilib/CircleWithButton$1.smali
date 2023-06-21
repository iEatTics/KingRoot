.class Lcom/kingcore/uilib/CircleWithButton$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingcore/uilib/CircleWithButton;->setCircleColor(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic An:Lcom/kingcore/uilib/CircleWithButton;


# direct methods
.method constructor <init>(Lcom/kingcore/uilib/CircleWithButton;)V
    .locals 0

    .prologue
    .line 317
    iput-object p1, p0, Lcom/kingcore/uilib/CircleWithButton$1;->An:Lcom/kingcore/uilib/CircleWithButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 320
    .line 322
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/android/animation/ValueAnimator;->ofFloat([F)Lcom/android/animation/ValueAnimator;

    move-result-object v0

    .line 323
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Lcom/android/animation/ValueAnimator;->setDuration(J)Lcom/android/animation/ValueAnimator;

    .line 324
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/animation/ValueAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 325
    new-instance v1, Lcom/kingcore/uilib/CircleWithButton$1$1;

    invoke-direct {v1, p0}, Lcom/kingcore/uilib/CircleWithButton$1$1;-><init>(Lcom/kingcore/uilib/CircleWithButton$1;)V

    invoke-virtual {v0, v1}, Lcom/android/animation/ValueAnimator;->addUpdateListener(Lcom/android/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 335
    invoke-virtual {v0}, Lcom/android/animation/ValueAnimator;->start()V

    .line 336
    return-void

    .line 322
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
