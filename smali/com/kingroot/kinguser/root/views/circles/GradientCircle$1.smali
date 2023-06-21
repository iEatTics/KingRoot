.class Lcom/kingroot/kinguser/root/views/circles/GradientCircle$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/root/views/circles/GradientCircle;->onSizeChanged(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bgT:Lcom/kingroot/kinguser/root/views/circles/GradientCircle;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/root/views/circles/GradientCircle;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/kingroot/kinguser/root/views/circles/GradientCircle$1;->bgT:Lcom/kingroot/kinguser/root/views/circles/GradientCircle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lcom/android/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 99
    iget-object v1, p0, Lcom/kingroot/kinguser/root/views/circles/GradientCircle$1;->bgT:Lcom/kingroot/kinguser/root/views/circles/GradientCircle;

    invoke-virtual {p1}, Lcom/android/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/kingroot/kinguser/root/views/circles/GradientCircle;->a(Lcom/kingroot/kinguser/root/views/circles/GradientCircle;F)F

    .line 100
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/circles/GradientCircle$1;->bgT:Lcom/kingroot/kinguser/root/views/circles/GradientCircle;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/root/views/circles/GradientCircle;->invalidate()V

    .line 101
    return-void
.end method
