.class Lcom/kingcore/uilib/CircleWithButton$5;
.super Lcom/android/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingcore/uilib/CircleWithButton;->gB()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic An:Lcom/kingcore/uilib/CircleWithButton;


# direct methods
.method constructor <init>(Lcom/kingcore/uilib/CircleWithButton;)V
    .locals 0

    .prologue
    .line 504
    iput-object p1, p0, Lcom/kingcore/uilib/CircleWithButton$5;->An:Lcom/kingcore/uilib/CircleWithButton;

    invoke-direct {p0}, Lcom/android/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/android/animation/Animator;)V
    .locals 1

    .prologue
    .line 507
    invoke-super {p0, p1}, Lcom/android/animation/AnimatorListenerAdapter;->onAnimationEnd(Lcom/android/animation/Animator;)V

    .line 508
    iget-object v0, p0, Lcom/kingcore/uilib/CircleWithButton$5;->An:Lcom/kingcore/uilib/CircleWithButton;

    invoke-static {v0}, Lcom/kingcore/uilib/CircleWithButton;->f(Lcom/kingcore/uilib/CircleWithButton;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/kingcore/uilib/CircleWithButton$5;->An:Lcom/kingcore/uilib/CircleWithButton;

    invoke-static {v0}, Lcom/kingcore/uilib/CircleWithButton;->g(Lcom/kingcore/uilib/CircleWithButton;)Lcom/android/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/animation/AnimatorSet;->start()V

    .line 511
    :cond_0
    return-void
.end method
