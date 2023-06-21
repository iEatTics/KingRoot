.class Lcom/kingroot/kinguser/axm$8;
.super Lcom/android/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/axm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/axm;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axm;)V
    .locals 0

    .prologue
    .line 1109
    iput-object p1, p0, Lcom/kingroot/kinguser/axm$8;->this$0:Lcom/kingroot/kinguser/axm;

    invoke-direct {p0}, Lcom/android/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/android/animation/Animator;)V
    .locals 2

    .prologue
    .line 1112
    iget-object v0, p0, Lcom/kingroot/kinguser/axm$8;->this$0:Lcom/kingroot/kinguser/axm;

    invoke-static {v0}, Lcom/kingroot/kinguser/axm;->w(Lcom/kingroot/kinguser/axm;)V

    .line 1113
    iget-object v0, p0, Lcom/kingroot/kinguser/axm$8;->this$0:Lcom/kingroot/kinguser/axm;

    invoke-static {v0}, Lcom/kingroot/kinguser/axm;->i(Lcom/kingroot/kinguser/axm;)Lcom/kingroot/kinguser/aui$a;

    move-result-object v0

    invoke-static {}, Lcom/kingroot/kinguser/bbv;->WK()Lcom/kingroot/kinguser/bbv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bbv;->WM()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/aui$a;->gN(I)V

    .line 1114
    iget-object v0, p0, Lcom/kingroot/kinguser/axm$8;->this$0:Lcom/kingroot/kinguser/axm;

    invoke-static {v0}, Lcom/kingroot/kinguser/axm;->n(Lcom/kingroot/kinguser/axm;)Lcom/kingroot/kinguser/bet;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/axm$8;->this$0:Lcom/kingroot/kinguser/axm;

    invoke-static {v1}, Lcom/kingroot/kinguser/axm;->x(Lcom/kingroot/kinguser/axm;)Lcom/kingroot/kinguser/anx$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bet;->b(Lcom/kingroot/kinguser/anx$a;)V

    .line 1115
    return-void
.end method
