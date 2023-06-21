.class Lcom/kingcore/uilib/RotatingCircle$4;
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
    .line 237
    iput-object p1, p0, Lcom/kingcore/uilib/RotatingCircle$4;->CE:Lcom/kingcore/uilib/RotatingCircle;

    invoke-direct {p0}, Lcom/android/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/android/animation/Animator;)V
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/kingcore/uilib/RotatingCircle$4;->CE:Lcom/kingcore/uilib/RotatingCircle;

    invoke-static {v0}, Lcom/kingcore/uilib/RotatingCircle;->e(Lcom/kingcore/uilib/RotatingCircle;)Lcom/android/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingcore/uilib/RotatingCircle$4;->CE:Lcom/kingcore/uilib/RotatingCircle;

    invoke-static {v0}, Lcom/kingcore/uilib/RotatingCircle;->d(Lcom/kingcore/uilib/RotatingCircle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/kingcore/uilib/RotatingCircle$4;->CE:Lcom/kingcore/uilib/RotatingCircle;

    invoke-static {v0}, Lcom/kingcore/uilib/RotatingCircle;->e(Lcom/kingcore/uilib/RotatingCircle;)Lcom/android/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/animation/ValueAnimator;->start()V

    .line 244
    :cond_0
    return-void
.end method
