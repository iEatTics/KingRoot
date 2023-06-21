.class Lcom/kingroot/kinguser/axm$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axm$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aNn:I

.field final synthetic bad:Z

.field final synthetic bae:Lcom/kingroot/kinguser/axm$3;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axm$3;ZI)V
    .locals 0

    .prologue
    .line 623
    iput-object p1, p0, Lcom/kingroot/kinguser/axm$3$1;->bae:Lcom/kingroot/kinguser/axm$3;

    iput-boolean p2, p0, Lcom/kingroot/kinguser/axm$3$1;->bad:Z

    iput p3, p0, Lcom/kingroot/kinguser/axm$3$1;->aNn:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 626
    iget-object v0, p0, Lcom/kingroot/kinguser/axm$3$1;->bae:Lcom/kingroot/kinguser/axm$3;

    iget-object v0, v0, Lcom/kingroot/kinguser/axm$3;->this$0:Lcom/kingroot/kinguser/axm;

    invoke-static {v0}, Lcom/kingroot/kinguser/axm;->l(Lcom/kingroot/kinguser/axm;)Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 627
    iget-object v0, p0, Lcom/kingroot/kinguser/axm$3$1;->bae:Lcom/kingroot/kinguser/axm$3;

    iget-object v0, v0, Lcom/kingroot/kinguser/axm$3;->this$0:Lcom/kingroot/kinguser/axm;

    invoke-static {v0}, Lcom/kingroot/kinguser/axm;->l(Lcom/kingroot/kinguser/axm;)Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/kingroot/kinguser/axm$3$1;->bad:Z

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->setWellChosenMode(Z)V

    .line 628
    iget-object v0, p0, Lcom/kingroot/kinguser/axm$3$1;->bae:Lcom/kingroot/kinguser/axm$3;

    iget-object v0, v0, Lcom/kingroot/kinguser/axm$3;->this$0:Lcom/kingroot/kinguser/axm;

    invoke-static {v0}, Lcom/kingroot/kinguser/axm;->l(Lcom/kingroot/kinguser/axm;)Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;

    move-result-object v0

    iget v1, p0, Lcom/kingroot/kinguser/axm$3$1;->aNn:I

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->setWellChosenCount(I)V

    .line 631
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/axm$3$1;->bae:Lcom/kingroot/kinguser/axm$3;

    iget-object v0, v0, Lcom/kingroot/kinguser/axm$3;->this$0:Lcom/kingroot/kinguser/axm;

    invoke-static {v0}, Lcom/kingroot/kinguser/axm;->m(Lcom/kingroot/kinguser/axm;)Lcom/kingroot/kinguser/asd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/asd;->NK()Lcom/kingroot/kinguser/asc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/asc;->NJ()I

    move-result v0

    .line 632
    if-eqz v0, :cond_1

    .line 633
    iget-boolean v0, p0, Lcom/kingroot/kinguser/axm$3$1;->bad:Z

    if-eqz v0, :cond_2

    .line 634
    iget-object v0, p0, Lcom/kingroot/kinguser/axm$3$1;->bae:Lcom/kingroot/kinguser/axm$3;

    iget-object v0, v0, Lcom/kingroot/kinguser/axm$3;->this$0:Lcom/kingroot/kinguser/axm;

    invoke-static {v0}, Lcom/kingroot/kinguser/axm;->n(Lcom/kingroot/kinguser/axm;)Lcom/kingroot/kinguser/bet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bet;->Jo()Lcom/kingroot/kinguser/anx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/anx;->JQ()V

    .line 635
    iget-object v0, p0, Lcom/kingroot/kinguser/axm$3$1;->bae:Lcom/kingroot/kinguser/axm$3;

    iget-object v0, v0, Lcom/kingroot/kinguser/axm$3;->this$0:Lcom/kingroot/kinguser/axm;

    invoke-static {v0}, Lcom/kingroot/kinguser/axm;->n(Lcom/kingroot/kinguser/axm;)Lcom/kingroot/kinguser/bet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bet;->Jo()Lcom/kingroot/kinguser/anx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/anx;->Jm()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/axm$3$1$1;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/axm$3$1$1;-><init>(Lcom/kingroot/kinguser/axm$3$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 655
    :cond_1
    :goto_0
    return-void

    .line 644
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/axm$3$1;->bae:Lcom/kingroot/kinguser/axm$3;

    iget-object v0, v0, Lcom/kingroot/kinguser/axm$3;->this$0:Lcom/kingroot/kinguser/axm;

    invoke-static {v0}, Lcom/kingroot/kinguser/axm;->n(Lcom/kingroot/kinguser/axm;)Lcom/kingroot/kinguser/bet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bet;->Jo()Lcom/kingroot/kinguser/anx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/anx;->JP()V

    .line 645
    iget-object v0, p0, Lcom/kingroot/kinguser/axm$3$1;->bae:Lcom/kingroot/kinguser/axm$3;

    iget-object v0, v0, Lcom/kingroot/kinguser/axm$3;->this$0:Lcom/kingroot/kinguser/axm;

    invoke-static {v0}, Lcom/kingroot/kinguser/axm;->n(Lcom/kingroot/kinguser/axm;)Lcom/kingroot/kinguser/bet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bet;->Jo()Lcom/kingroot/kinguser/anx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/anx;->Jm()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/axm$3$1$2;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/axm$3$1$2;-><init>(Lcom/kingroot/kinguser/axm$3$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
