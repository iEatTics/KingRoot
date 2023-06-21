.class Lcom/kingroot/kinguser/atn$6$1;
.super Lcom/android/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/atn$6;->onAnimationEnd(Lcom/android/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aPB:Lcom/kingroot/kinguser/atn$6;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/atn$6;)V
    .locals 0

    .prologue
    .line 473
    iput-object p1, p0, Lcom/kingroot/kinguser/atn$6$1;->aPB:Lcom/kingroot/kinguser/atn$6;

    invoke-direct {p0}, Lcom/android/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/android/animation/Animator;)V
    .locals 2

    .prologue
    .line 477
    invoke-super {p0, p1}, Lcom/android/animation/AnimatorListenerAdapter;->onAnimationEnd(Lcom/android/animation/Animator;)V

    .line 478
    iget-object v0, p0, Lcom/kingroot/kinguser/atn$6$1;->aPB:Lcom/kingroot/kinguser/atn$6;

    iget-object v0, v0, Lcom/kingroot/kinguser/atn$6;->this$0:Lcom/kingroot/kinguser/atn;

    invoke-static {v0}, Lcom/kingroot/kinguser/atn;->r(Lcom/kingroot/kinguser/atn;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 479
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/atn$6$1;->aPB:Lcom/kingroot/kinguser/atn$6;

    iget-object v1, v1, Lcom/kingroot/kinguser/atn$6;->this$0:Lcom/kingroot/kinguser/atn;

    invoke-static {v1}, Lcom/kingroot/kinguser/atn;->s(Lcom/kingroot/kinguser/atn;)Lcom/kingroot/kinguser/bed;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 480
    return-void
.end method
