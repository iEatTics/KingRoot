.class Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->xp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aqJ:Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;)V
    .locals 0

    .prologue
    .line 451
    iput-object p1, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$8;->aqJ:Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lcom/android/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 455
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$8;->aqJ:Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;

    invoke-static {v0}, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->b(Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;)Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$a;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$a;->aqO:I

    .line 456
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$8;->aqJ:Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->postInvalidate()V

    .line 457
    return-void
.end method
