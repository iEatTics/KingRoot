.class Lcom/kingroot/common/uilib/WellChosenOuterGuideView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->startAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic SN:Lcom/kingroot/common/uilib/WellChosenOuterGuideView;


# direct methods
.method constructor <init>(Lcom/kingroot/common/uilib/WellChosenOuterGuideView;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView$1;->SN:Lcom/kingroot/common/uilib/WellChosenOuterGuideView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lcom/android/animation/ValueAnimator;)V
    .locals 5

    .prologue
    const/high16 v4, 0x42fe0000    # 127.0f

    .line 168
    iget-object v1, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView$1;->SN:Lcom/kingroot/common/uilib/WellChosenOuterGuideView;

    invoke-virtual {p1}, Lcom/android/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->a(Lcom/kingroot/common/uilib/WellChosenOuterGuideView;I)I

    .line 169
    iget-object v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView$1;->SN:Lcom/kingroot/common/uilib/WellChosenOuterGuideView;

    iget-object v1, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView$1;->SN:Lcom/kingroot/common/uilib/WellChosenOuterGuideView;

    invoke-static {v1}, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->a(Lcom/kingroot/common/uilib/WellChosenOuterGuideView;)I

    move-result v1

    iget-object v2, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView$1;->SN:Lcom/kingroot/common/uilib/WellChosenOuterGuideView;

    invoke-static {v2}, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->b(Lcom/kingroot/common/uilib/WellChosenOuterGuideView;)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, v4

    iget-object v2, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView$1;->SN:Lcom/kingroot/common/uilib/WellChosenOuterGuideView;

    invoke-static {v2}, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->c(Lcom/kingroot/common/uilib/WellChosenOuterGuideView;)I

    move-result v2

    iget-object v3, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView$1;->SN:Lcom/kingroot/common/uilib/WellChosenOuterGuideView;

    invoke-static {v3}, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->b(Lcom/kingroot/common/uilib/WellChosenOuterGuideView;)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v1, v2

    sub-float v1, v4, v1

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->b(Lcom/kingroot/common/uilib/WellChosenOuterGuideView;I)I

    .line 170
    iget-object v0, p0, Lcom/kingroot/common/uilib/WellChosenOuterGuideView$1;->SN:Lcom/kingroot/common/uilib/WellChosenOuterGuideView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 171
    return-void
.end method
