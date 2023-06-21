.class Lcom/kingroot/kinguser/asf$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/asf;->c(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aMC:Lcom/kingroot/kinguser/asf;

.field final synthetic aME:Z

.field final synthetic aMF:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/asf;ZLandroid/view/View;)V
    .locals 0

    .prologue
    .line 511
    iput-object p1, p0, Lcom/kingroot/kinguser/asf$3;->aMC:Lcom/kingroot/kinguser/asf;

    iput-boolean p2, p0, Lcom/kingroot/kinguser/asf$3;->aME:Z

    iput-object p3, p0, Lcom/kingroot/kinguser/asf$3;->aMF:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/android/animation/Animator;)V
    .locals 2

    .prologue
    .line 535
    iget-object v0, p0, Lcom/kingroot/kinguser/asf$3;->aMC:Lcom/kingroot/kinguser/asf;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/asf;->a(Lcom/kingroot/kinguser/asf;Lcom/android/animation/Animator;)Lcom/android/animation/Animator;

    .line 538
    return-void
.end method

.method public onAnimationEnd(Lcom/android/animation/Animator;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 519
    iget-object v0, p0, Lcom/kingroot/kinguser/asf$3;->aMC:Lcom/kingroot/kinguser/asf;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/asf;->a(Lcom/kingroot/kinguser/asf;Lcom/android/animation/Animator;)Lcom/android/animation/Animator;

    .line 520
    iget-object v0, p0, Lcom/kingroot/kinguser/asf$3;->aMC:Lcom/kingroot/kinguser/asf;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/asf;->a(Lcom/kingroot/kinguser/asf;Landroid/util/Pair;)V

    .line 521
    iget-boolean v0, p0, Lcom/kingroot/kinguser/asf$3;->aME:Z

    if-eqz v0, :cond_0

    .line 523
    new-instance v0, Lcom/kingroot/kinguser/asf$3$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/asf$3$1;-><init>(Lcom/kingroot/kinguser/asf$3;)V

    const-wide/16 v2, 0x7d0

    invoke-static {v0, v2, v3}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;J)V

    .line 531
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Lcom/android/animation/Animator;)V
    .locals 0

    .prologue
    .line 543
    return-void
.end method

.method public onAnimationStart(Lcom/android/animation/Animator;)V
    .locals 0

    .prologue
    .line 515
    return-void
.end method
