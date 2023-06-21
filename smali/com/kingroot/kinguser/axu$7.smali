.class Lcom/kingroot/kinguser/axu$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/axu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bbX:Lcom/kingroot/kinguser/axu;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axu;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/kingroot/kinguser/axu$7;->bbX:Lcom/kingroot/kinguser/axu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/android/animation/Animator;)V
    .locals 0

    .prologue
    .line 107
    return-void
.end method

.method public onAnimationEnd(Lcom/android/animation/Animator;)V
    .locals 4

    .prologue
    .line 90
    iget-object v0, p0, Lcom/kingroot/kinguser/axu$7;->bbX:Lcom/kingroot/kinguser/axu;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/axu;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/axu$7$1;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/axu$7$1;-><init>(Lcom/kingroot/kinguser/axu$7;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 103
    return-void
.end method

.method public onAnimationRepeat(Lcom/android/animation/Animator;)V
    .locals 0

    .prologue
    .line 112
    return-void
.end method

.method public onAnimationStart(Lcom/android/animation/Animator;)V
    .locals 0

    .prologue
    .line 86
    return-void
.end method
