.class Lcom/kingcore/uilib/LoadingCircle$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingcore/uilib/LoadingCircle;->initAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Bc:Lcom/kingcore/uilib/LoadingCircle;


# direct methods
.method constructor <init>(Lcom/kingcore/uilib/LoadingCircle;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/kingcore/uilib/LoadingCircle$4;->Bc:Lcom/kingcore/uilib/LoadingCircle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/android/animation/Animator;)V
    .locals 0

    .prologue
    .line 184
    return-void
.end method

.method public onAnimationEnd(Lcom/android/animation/Animator;)V
    .locals 3

    .prologue
    .line 179
    iget-object v0, p0, Lcom/kingcore/uilib/LoadingCircle$4;->Bc:Lcom/kingcore/uilib/LoadingCircle;

    const/4 v1, 0x0

    const/high16 v2, 0x42b40000    # 90.0f

    invoke-static {v0, v1, v2}, Lcom/kingcore/uilib/LoadingCircle;->a(Lcom/kingcore/uilib/LoadingCircle;FF)V

    .line 180
    iget-object v0, p0, Lcom/kingcore/uilib/LoadingCircle$4;->Bc:Lcom/kingcore/uilib/LoadingCircle;

    invoke-static {v0}, Lcom/kingcore/uilib/LoadingCircle;->a(Lcom/kingcore/uilib/LoadingCircle;)Lcom/android/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/animation/ValueAnimator;->end()V

    .line 181
    return-void
.end method

.method public onAnimationRepeat(Lcom/android/animation/Animator;)V
    .locals 0

    .prologue
    .line 176
    return-void
.end method

.method public onAnimationStart(Lcom/android/animation/Animator;)V
    .locals 0

    .prologue
    .line 173
    return-void
.end method
