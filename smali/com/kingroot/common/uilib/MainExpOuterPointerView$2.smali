.class Lcom/kingroot/common/uilib/MainExpOuterPointerView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/common/uilib/MainExpOuterPointerView;->b(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Pn:Lcom/kingroot/common/uilib/MainExpOuterPointerView;


# direct methods
.method constructor <init>(Lcom/kingroot/common/uilib/MainExpOuterPointerView;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/kingroot/common/uilib/MainExpOuterPointerView$2;->Pn:Lcom/kingroot/common/uilib/MainExpOuterPointerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lcom/android/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 123
    iget-object v1, p0, Lcom/kingroot/common/uilib/MainExpOuterPointerView$2;->Pn:Lcom/kingroot/common/uilib/MainExpOuterPointerView;

    invoke-virtual {p1}, Lcom/android/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/kingroot/common/uilib/MainExpOuterPointerView;->a(Lcom/kingroot/common/uilib/MainExpOuterPointerView;F)F

    .line 124
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpOuterPointerView$2;->Pn:Lcom/kingroot/common/uilib/MainExpOuterPointerView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 125
    return-void
.end method
