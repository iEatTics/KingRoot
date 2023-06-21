.class Lcom/kingroot/common/uilib/MainExpOutCircleView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/common/uilib/MainExpOutCircleView;->gW()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Pf:Lcom/kingroot/common/uilib/MainExpOutCircleView;


# direct methods
.method constructor <init>(Lcom/kingroot/common/uilib/MainExpOutCircleView;)V
    .locals 0

    .prologue
    .line 332
    iput-object p1, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView$5;->Pf:Lcom/kingroot/common/uilib/MainExpOutCircleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lcom/android/animation/ValueAnimator;)V
    .locals 4

    .prologue
    .line 335
    invoke-virtual {p1}, Lcom/android/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 336
    iget-object v1, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView$5;->Pf:Lcom/kingroot/common/uilib/MainExpOutCircleView;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/kingroot/common/uilib/MainExpOutCircleView;->a(Lcom/kingroot/common/uilib/MainExpOutCircleView;I)I

    .line 337
    iget-object v1, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView$5;->Pf:Lcom/kingroot/common/uilib/MainExpOutCircleView;

    const v2, 0x43838000    # 263.0f

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    rsub-int v0, v0, 0xff

    int-to-float v0, v0

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v0, v3

    mul-float/2addr v0, v2

    invoke-static {v1, v0}, Lcom/kingroot/common/uilib/MainExpOutCircleView;->b(Lcom/kingroot/common/uilib/MainExpOutCircleView;F)F

    .line 338
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView$5;->Pf:Lcom/kingroot/common/uilib/MainExpOutCircleView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 339
    return-void
.end method
