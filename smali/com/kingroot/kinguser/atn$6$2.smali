.class Lcom/kingroot/kinguser/atn$6$2;
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
    .line 483
    iput-object p1, p0, Lcom/kingroot/kinguser/atn$6$2;->aPB:Lcom/kingroot/kinguser/atn$6;

    invoke-direct {p0}, Lcom/android/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/android/animation/Animator;)V
    .locals 2

    .prologue
    .line 487
    invoke-super {p0, p1}, Lcom/android/animation/AnimatorListenerAdapter;->onAnimationEnd(Lcom/android/animation/Animator;)V

    .line 488
    iget-object v0, p0, Lcom/kingroot/kinguser/atn$6$2;->aPB:Lcom/kingroot/kinguser/atn$6;

    iget-object v0, v0, Lcom/kingroot/kinguser/atn$6;->this$0:Lcom/kingroot/kinguser/atn;

    invoke-static {v0}, Lcom/kingroot/kinguser/atn;->t(Lcom/kingroot/kinguser/atn;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 489
    return-void
.end method
