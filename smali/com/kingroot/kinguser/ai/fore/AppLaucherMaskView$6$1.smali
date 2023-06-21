.class Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$6;->onAnimationEnd(Lcom/android/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aqK:Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$6;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$6;)V
    .locals 0

    .prologue
    .line 407
    iput-object p1, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$6$1;->aqK:Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 411
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$6$1;->aqK:Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$6;

    iget-object v0, v0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$6;->aqJ:Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;

    iget-object v1, p0, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$6$1;->aqK:Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$6;

    iget-object v1, v1, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView$6;->aqJ:Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;

    invoke-static {v1}, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->d(Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ai/fore/AppLaucherMaskView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 412
    return-void
.end method
