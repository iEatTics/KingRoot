.class Lcom/kingcore/uilib/RotatingCircle$3;
.super Lcom/android/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingcore/uilib/RotatingCircle;->gW()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic CE:Lcom/kingcore/uilib/RotatingCircle;


# direct methods
.method constructor <init>(Lcom/kingcore/uilib/RotatingCircle;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/kingcore/uilib/RotatingCircle$3;->CE:Lcom/kingcore/uilib/RotatingCircle;

    invoke-direct {p0}, Lcom/android/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/android/animation/Animator;)V
    .locals 4

    .prologue
    .line 223
    iget-object v0, p0, Lcom/kingcore/uilib/RotatingCircle$3;->CE:Lcom/kingcore/uilib/RotatingCircle;

    const/16 v1, 0x7d

    invoke-static {v0, v1}, Lcom/kingcore/uilib/RotatingCircle;->a(Lcom/kingcore/uilib/RotatingCircle;I)I

    .line 224
    iget-object v0, p0, Lcom/kingcore/uilib/RotatingCircle$3;->CE:Lcom/kingcore/uilib/RotatingCircle;

    invoke-static {v0}, Lcom/kingcore/uilib/RotatingCircle;->c(Lcom/kingcore/uilib/RotatingCircle;)Lcom/android/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingcore/uilib/RotatingCircle$3;->CE:Lcom/kingcore/uilib/RotatingCircle;

    invoke-static {v0}, Lcom/kingcore/uilib/RotatingCircle;->d(Lcom/kingcore/uilib/RotatingCircle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/kingcore/uilib/RotatingCircle$3;->CE:Lcom/kingcore/uilib/RotatingCircle;

    invoke-static {v0}, Lcom/kingcore/uilib/RotatingCircle;->c(Lcom/kingcore/uilib/RotatingCircle;)Lcom/android/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Lcom/android/animation/ValueAnimator;->setStartDelay(J)V

    .line 226
    iget-object v0, p0, Lcom/kingcore/uilib/RotatingCircle$3;->CE:Lcom/kingcore/uilib/RotatingCircle;

    invoke-static {v0}, Lcom/kingcore/uilib/RotatingCircle;->c(Lcom/kingcore/uilib/RotatingCircle;)Lcom/android/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/animation/ValueAnimator;->start()V

    .line 228
    :cond_0
    return-void
.end method
