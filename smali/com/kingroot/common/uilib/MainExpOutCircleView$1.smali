.class Lcom/kingroot/common/uilib/MainExpOutCircleView$1;
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
    .line 280
    iput-object p1, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView$1;->Pf:Lcom/kingroot/common/uilib/MainExpOutCircleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lcom/android/animation/ValueAnimator;)V
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/kingroot/common/uilib/MainExpOutCircleView$1;->Pf:Lcom/kingroot/common/uilib/MainExpOutCircleView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 284
    return-void
.end method
