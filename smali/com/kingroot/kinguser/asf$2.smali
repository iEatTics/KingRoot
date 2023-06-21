.class Lcom/kingroot/kinguser/asf$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/asf;->w(F)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aMC:Lcom/kingroot/kinguser/asf;

.field final synthetic aMD:Z


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/asf;Z)V
    .locals 0

    .prologue
    .line 432
    iput-object p1, p0, Lcom/kingroot/kinguser/asf$2;->aMC:Lcom/kingroot/kinguser/asf;

    iput-boolean p2, p0, Lcom/kingroot/kinguser/asf$2;->aMD:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/android/animation/Animator;)V
    .locals 2

    .prologue
    .line 461
    iget-object v0, p0, Lcom/kingroot/kinguser/asf$2;->aMC:Lcom/kingroot/kinguser/asf;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/asf;->a(Lcom/kingroot/kinguser/asf;Lcom/android/animation/Animator;)Lcom/android/animation/Animator;

    .line 464
    return-void
.end method

.method public onAnimationEnd(Lcom/android/animation/Animator;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 440
    iget-object v0, p0, Lcom/kingroot/kinguser/asf$2;->aMC:Lcom/kingroot/kinguser/asf;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/asf;->a(Lcom/kingroot/kinguser/asf;Lcom/android/animation/Animator;)Lcom/android/animation/Animator;

    .line 441
    iget-boolean v0, p0, Lcom/kingroot/kinguser/asf$2;->aMD:Z

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/kingroot/kinguser/asf$2;->aMC:Lcom/kingroot/kinguser/asf;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/asf;->a(Lcom/kingroot/kinguser/asf;Landroid/util/Pair;)V

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/asf$2;->aMC:Lcom/kingroot/kinguser/asf;

    invoke-static {v0}, Lcom/kingroot/kinguser/asf;->b(Lcom/kingroot/kinguser/asf;)Lcom/kingroot/kinguser/asf$a;

    move-result-object v0

    .line 447
    if-nez v0, :cond_1

    .line 457
    :goto_0
    return-void

    .line 450
    :cond_1
    iget-boolean v1, p0, Lcom/kingroot/kinguser/asf$2;->aMD:Z

    if-eqz v1, :cond_2

    .line 451
    invoke-interface {v0}, Lcom/kingroot/kinguser/asf$a;->vM()V

    goto :goto_0

    .line 453
    :cond_2
    invoke-interface {v0}, Lcom/kingroot/kinguser/asf$a;->vN()V

    goto :goto_0
.end method

.method public onAnimationRepeat(Lcom/android/animation/Animator;)V
    .locals 0

    .prologue
    .line 469
    return-void
.end method

.method public onAnimationStart(Lcom/android/animation/Animator;)V
    .locals 0

    .prologue
    .line 436
    return-void
.end method
