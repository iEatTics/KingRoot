.class Lcom/kingroot/kinguser/axu$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axu;->cY(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bbX:Lcom/kingroot/kinguser/axu;

.field final synthetic bcc:Z


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axu;Z)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lcom/kingroot/kinguser/axu$12;->bbX:Lcom/kingroot/kinguser/axu;

    iput-boolean p2, p0, Lcom/kingroot/kinguser/axu$12;->bcc:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 263
    iget-boolean v0, p0, Lcom/kingroot/kinguser/axu$12;->bcc:Z

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/kingroot/kinguser/axu$12;->bbX:Lcom/kingroot/kinguser/axu;

    iget-object v0, v0, Lcom/kingroot/kinguser/axu;->bbT:Lcom/android/animation/ValueAnimator;

    invoke-virtual {v0}, Lcom/android/animation/ValueAnimator;->cancel()V

    .line 265
    iget-object v0, p0, Lcom/kingroot/kinguser/axu$12;->bbX:Lcom/kingroot/kinguser/axu;

    iget-object v0, v0, Lcom/kingroot/kinguser/axu;->bbT:Lcom/android/animation/ValueAnimator;

    invoke-virtual {v0}, Lcom/android/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 266
    iget-object v1, p0, Lcom/kingroot/kinguser/axu$12;->bbX:Lcom/kingroot/kinguser/axu;

    iget-object v1, v1, Lcom/kingroot/kinguser/axu;->bbT:Lcom/android/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [I

    aput v0, v2, v3

    const/16 v0, 0x64

    aput v0, v2, v4

    invoke-virtual {v1, v2}, Lcom/android/animation/ValueAnimator;->setIntValues([I)V

    .line 267
    iget-object v0, p0, Lcom/kingroot/kinguser/axu$12;->bbX:Lcom/kingroot/kinguser/axu;

    iget-object v0, v0, Lcom/kingroot/kinguser/axu;->bbT:Lcom/android/animation/ValueAnimator;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v2, v3}, Lcom/android/animation/ValueAnimator;->setDuration(J)Lcom/android/animation/ValueAnimator;

    .line 268
    iget-object v0, p0, Lcom/kingroot/kinguser/axu$12;->bbX:Lcom/kingroot/kinguser/axu;

    iget-object v0, v0, Lcom/kingroot/kinguser/axu;->bbT:Lcom/android/animation/ValueAnimator;

    iget-object v1, p0, Lcom/kingroot/kinguser/axu$12;->bbX:Lcom/kingroot/kinguser/axu;

    invoke-static {v1}, Lcom/kingroot/kinguser/axu;->p(Lcom/kingroot/kinguser/axu;)Lcom/android/animation/Animator$AnimatorListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/animation/ValueAnimator;->addListener(Lcom/android/animation/Animator$AnimatorListener;)V

    .line 269
    iget-object v0, p0, Lcom/kingroot/kinguser/axu$12;->bbX:Lcom/kingroot/kinguser/axu;

    iget-object v0, v0, Lcom/kingroot/kinguser/axu;->bbT:Lcom/android/animation/ValueAnimator;

    invoke-virtual {v0}, Lcom/android/animation/ValueAnimator;->start()V

    .line 273
    :goto_0
    return-void

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/axu$12;->bbX:Lcom/kingroot/kinguser/axu;

    invoke-virtual {v0, v3, v4, v3}, Lcom/kingroot/kinguser/axu;->a(IZZ)V

    goto :goto_0
.end method
