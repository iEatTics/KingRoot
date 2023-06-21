.class Lcom/kingroot/kinguser/atn$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/atn;->Pr()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/atn;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/atn;)V
    .locals 0

    .prologue
    .line 460
    iput-object p1, p0, Lcom/kingroot/kinguser/atn$6;->this$0:Lcom/kingroot/kinguser/atn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/android/animation/Animator;)V
    .locals 0

    .prologue
    .line 501
    return-void
.end method

.method public onAnimationEnd(Lcom/android/animation/Animator;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0xc8

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 473
    iget-object v0, p0, Lcom/kingroot/kinguser/atn$6;->this$0:Lcom/kingroot/kinguser/atn;

    invoke-static {v0}, Lcom/kingroot/kinguser/atn;->r(Lcom/kingroot/kinguser/atn;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/atn$6$1;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/atn$6$1;-><init>(Lcom/kingroot/kinguser/atn$6;)V

    invoke-static {v0, v4, v5, v1}, Lcom/kingroot/kinguser/bhk;->a(Landroid/view/View;JLcom/android/animation/AnimatorListenerAdapter;)V

    .line 483
    iget-object v0, p0, Lcom/kingroot/kinguser/atn$6;->this$0:Lcom/kingroot/kinguser/atn;

    invoke-static {v0}, Lcom/kingroot/kinguser/atn;->t(Lcom/kingroot/kinguser/atn;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/atn$6$2;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/atn$6$2;-><init>(Lcom/kingroot/kinguser/atn$6;)V

    invoke-static {v0, v4, v5, v1}, Lcom/kingroot/kinguser/bhk;->a(Landroid/view/View;JLcom/android/animation/AnimatorListenerAdapter;)V

    .line 492
    invoke-static {}, Lcom/kingroot/kinguser/abd;->qb()I

    move-result v0

    const/16 v1, 0xb

    if-le v0, v1, :cond_0

    .line 493
    iget-object v0, p0, Lcom/kingroot/kinguser/atn$6;->this$0:Lcom/kingroot/kinguser/atn;

    invoke-static {v0}, Lcom/kingroot/kinguser/atn;->c(Lcom/kingroot/kinguser/atn;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 494
    iget-object v0, p0, Lcom/kingroot/kinguser/atn$6;->this$0:Lcom/kingroot/kinguser/atn;

    invoke-static {v0}, Lcom/kingroot/kinguser/atn;->h(Lcom/kingroot/kinguser/atn;)Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/gamebox/foreground/view/ScaleView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 497
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Lcom/android/animation/Animator;)V
    .locals 0

    .prologue
    .line 468
    return-void
.end method

.method public onAnimationStart(Lcom/android/animation/Animator;)V
    .locals 0

    .prologue
    .line 464
    return-void
.end method
