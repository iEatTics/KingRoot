.class Lcom/kingroot/kinguser/wq$3;
.super Lcom/android/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/wq;->a(Lcom/kingroot/kinguser/wq$a;Ljava/lang/Runnable;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic No:Lcom/kingroot/kinguser/wq$a;

.field final synthetic Nq:Lcom/kingroot/kinguser/wq;

.field final synthetic Nr:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/wq;Lcom/kingroot/kinguser/wq$a;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/kingroot/kinguser/wq$3;->Nq:Lcom/kingroot/kinguser/wq;

    iput-object p2, p0, Lcom/kingroot/kinguser/wq$3;->No:Lcom/kingroot/kinguser/wq$a;

    iput-object p3, p0, Lcom/kingroot/kinguser/wq$3;->Nr:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/android/animation/Animator;)V
    .locals 1

    .prologue
    .line 165
    invoke-super {p0, p1}, Lcom/android/animation/AnimatorListenerAdapter;->onAnimationEnd(Lcom/android/animation/Animator;)V

    .line 166
    iget-object v0, p0, Lcom/kingroot/kinguser/wq$3;->No:Lcom/kingroot/kinguser/wq$a;

    iget-object v0, v0, Lcom/kingroot/kinguser/wq$a;->Ns:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 167
    iget-object v0, p0, Lcom/kingroot/kinguser/wq$3;->Nr:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/kingroot/kinguser/wq$3;->Nr:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 170
    :cond_0
    return-void
.end method
