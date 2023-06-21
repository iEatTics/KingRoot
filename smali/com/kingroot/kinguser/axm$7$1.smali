.class Lcom/kingroot/kinguser/axm$7$1;
.super Lcom/android/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axm$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bah:Lcom/kingroot/kinguser/axm$7;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axm$7;)V
    .locals 0

    .prologue
    .line 1081
    iput-object p1, p0, Lcom/kingroot/kinguser/axm$7$1;->bah:Lcom/kingroot/kinguser/axm$7;

    invoke-direct {p0}, Lcom/android/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/android/animation/Animator;)V
    .locals 3

    .prologue
    .line 1084
    invoke-super {p0, p1}, Lcom/android/animation/AnimatorListenerAdapter;->onAnimationEnd(Lcom/android/animation/Animator;)V

    .line 1085
    iget-object v0, p0, Lcom/kingroot/kinguser/axm$7$1;->bah:Lcom/kingroot/kinguser/axm$7;

    iget-object v0, v0, Lcom/kingroot/kinguser/axm$7;->this$0:Lcom/kingroot/kinguser/axm;

    invoke-static {v0}, Lcom/kingroot/kinguser/axm;->r(Lcom/kingroot/kinguser/axm;)Lcom/kingroot/kinguser/apy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/apy;->Mo()V

    .line 1086
    iget-object v0, p0, Lcom/kingroot/kinguser/axm$7$1;->bah:Lcom/kingroot/kinguser/axm$7;

    iget-object v0, v0, Lcom/kingroot/kinguser/axm$7;->this$0:Lcom/kingroot/kinguser/axm;

    invoke-static {v0}, Lcom/kingroot/kinguser/axm;->t(Lcom/kingroot/kinguser/axm;)Lcom/kingroot/kinguser/wq;

    move-result-object v0

    sget-object v1, Lcom/kingroot/kinguser/axm;->aZB:[I

    sget-object v2, Lcom/kingroot/kinguser/axm;->aZD:[F

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/wq;->a([I[F)V

    .line 1087
    iget-object v0, p0, Lcom/kingroot/kinguser/axm$7$1;->bah:Lcom/kingroot/kinguser/axm$7;

    iget-object v0, v0, Lcom/kingroot/kinguser/axm$7;->this$0:Lcom/kingroot/kinguser/axm;

    invoke-static {v0}, Lcom/kingroot/kinguser/axm;->u(Lcom/kingroot/kinguser/axm;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/axm$7$1;->bah:Lcom/kingroot/kinguser/axm$7;

    iget-object v1, v1, Lcom/kingroot/kinguser/axm$7;->this$0:Lcom/kingroot/kinguser/axm;

    invoke-static {v1}, Lcom/kingroot/kinguser/axm;->v(Lcom/kingroot/kinguser/axm;)Lcom/android/animation/AnimatorListenerAdapter;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bhk;->e(Landroid/view/View;Lcom/android/animation/AnimatorListenerAdapter;)V

    .line 1089
    invoke-static {}, Lcom/kingroot/kinguser/anf;->IU()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1090
    iget-object v0, p0, Lcom/kingroot/kinguser/axm$7$1;->bah:Lcom/kingroot/kinguser/axm$7;

    iget-object v0, v0, Lcom/kingroot/kinguser/axm$7;->this$0:Lcom/kingroot/kinguser/axm;

    invoke-static {v0}, Lcom/kingroot/kinguser/axm;->i(Lcom/kingroot/kinguser/axm;)Lcom/kingroot/kinguser/aui$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/kingroot/kinguser/aui$a;->Qh()V

    .line 1092
    :cond_0
    return-void
.end method
