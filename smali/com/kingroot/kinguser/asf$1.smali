.class Lcom/kingroot/kinguser/asf$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/asf;->b(Landroid/view/View;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aMC:Lcom/kingroot/kinguser/asf;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/asf;)V
    .locals 0

    .prologue
    .line 353
    iput-object p1, p0, Lcom/kingroot/kinguser/asf$1;->aMC:Lcom/kingroot/kinguser/asf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/android/animation/Animator;)V
    .locals 2

    .prologue
    .line 371
    iget-object v0, p0, Lcom/kingroot/kinguser/asf$1;->aMC:Lcom/kingroot/kinguser/asf;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/asf;->a(Lcom/kingroot/kinguser/asf;Lcom/android/animation/Animator;)Lcom/android/animation/Animator;

    .line 374
    return-void
.end method

.method public onAnimationEnd(Lcom/android/animation/Animator;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 361
    iget-object v0, p0, Lcom/kingroot/kinguser/asf$1;->aMC:Lcom/kingroot/kinguser/asf;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/asf;->a(Lcom/kingroot/kinguser/asf;Lcom/android/animation/Animator;)Lcom/android/animation/Animator;

    .line 362
    iget-object v0, p0, Lcom/kingroot/kinguser/asf$1;->aMC:Lcom/kingroot/kinguser/asf;

    invoke-static {v0}, Lcom/kingroot/kinguser/asf;->a(Lcom/kingroot/kinguser/asf;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/kingroot/kinguser/asf$1;->aMC:Lcom/kingroot/kinguser/asf;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/asf;->a(Lcom/kingroot/kinguser/asf;Landroid/util/Pair;)V

    .line 367
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Lcom/android/animation/Animator;)V
    .locals 0

    .prologue
    .line 379
    return-void
.end method

.method public onAnimationStart(Lcom/android/animation/Animator;)V
    .locals 0

    .prologue
    .line 357
    return-void
.end method
