.class Lcom/kingroot/kinguser/bfy$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bfy$1$1;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bnU:Lcom/kingroot/kinguser/bfy$1$1;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bfy$1$1;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/kingroot/kinguser/bfy$1$1$1;->bnU:Lcom/kingroot/kinguser/bfy$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/android/animation/Animator;)V
    .locals 0

    .prologue
    .line 132
    return-void
.end method

.method public onAnimationEnd(Lcom/android/animation/Animator;)V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/kingroot/kinguser/bfy$1$1$1;->bnU:Lcom/kingroot/kinguser/bfy$1$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/bfy$1$1;->aqX:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/kingroot/kinguser/bfy$1$1$1;->bnU:Lcom/kingroot/kinguser/bfy$1$1;

    iget-object v1, v1, Lcom/kingroot/kinguser/bfy$1$1;->bnS:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 127
    return-void
.end method

.method public onAnimationRepeat(Lcom/android/animation/Animator;)V
    .locals 0

    .prologue
    .line 137
    return-void
.end method

.method public onAnimationStart(Lcom/android/animation/Animator;)V
    .locals 0

    .prologue
    .line 122
    return-void
.end method
