.class Lcom/kingroot/common/uilib/MainExpInnerCircleView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/common/uilib/MainExpInnerCircleView;->a(IILcom/kingroot/common/uilib/MainExpInnerCircleView$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic OK:Lcom/kingroot/common/uilib/MainExpInnerCircleView$a;

.field final synthetic OL:Lcom/kingroot/common/uilib/MainExpInnerCircleView;


# direct methods
.method constructor <init>(Lcom/kingroot/common/uilib/MainExpInnerCircleView;Lcom/kingroot/common/uilib/MainExpInnerCircleView$a;)V
    .locals 0

    .prologue
    .line 295
    iput-object p1, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView$1;->OL:Lcom/kingroot/common/uilib/MainExpInnerCircleView;

    iput-object p2, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView$1;->OK:Lcom/kingroot/common/uilib/MainExpInnerCircleView$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lcom/android/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 299
    invoke-virtual {p1}, Lcom/android/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 300
    iget-object v1, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView$1;->OL:Lcom/kingroot/common/uilib/MainExpInnerCircleView;

    invoke-virtual {v1, v0}, Lcom/kingroot/common/uilib/MainExpInnerCircleView;->setExp(I)V

    .line 301
    iget-object v1, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView$1;->OK:Lcom/kingroot/common/uilib/MainExpInnerCircleView$a;

    if-eqz v1, :cond_0

    .line 302
    iget-object v1, p0, Lcom/kingroot/common/uilib/MainExpInnerCircleView$1;->OK:Lcom/kingroot/common/uilib/MainExpInnerCircleView$a;

    invoke-interface {v1, v0}, Lcom/kingroot/common/uilib/MainExpInnerCircleView$a;->bL(I)V

    .line 304
    :cond_0
    return-void
.end method
