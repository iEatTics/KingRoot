.class Lcom/kingroot/kinguser/axo$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axo;->oI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/axo;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axo;)V
    .locals 0

    .prologue
    .line 525
    iput-object p1, p0, Lcom/kingroot/kinguser/axo$11;->this$0:Lcom/kingroot/kinguser/axo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 529
    iget-object v0, p0, Lcom/kingroot/kinguser/axo$11;->this$0:Lcom/kingroot/kinguser/axo;

    invoke-static {v0}, Lcom/kingroot/kinguser/axo;->e(Lcom/kingroot/kinguser/axo;)Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->BQ()Z

    move-result v0

    if-nez v0, :cond_1

    .line 559
    :cond_0
    :goto_0
    return-void

    .line 534
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/axo$11;->this$0:Lcom/kingroot/kinguser/axo;

    invoke-static {v0}, Lcom/kingroot/kinguser/axo;->f(Lcom/kingroot/kinguser/axo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/kingroot/kinguser/axo$11;->this$0:Lcom/kingroot/kinguser/axo;

    invoke-static {v0}, Lcom/kingroot/kinguser/axo;->g(Lcom/kingroot/kinguser/axo;)Lcom/kingroot/kinguser/yn$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/axo$11;->this$0:Lcom/kingroot/kinguser/axo;

    invoke-static {v0}, Lcom/kingroot/kinguser/axo;->h(Lcom/kingroot/kinguser/axo;)Lcom/kingroot/kinguser/yn$a;

    move-result-object v0

    instance-of v0, v0, Lcom/kingroot/kinguser/agf;

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/kingroot/kinguser/axo$11;->this$0:Lcom/kingroot/kinguser/axo;

    invoke-static {v0}, Lcom/kingroot/kinguser/axo;->i(Lcom/kingroot/kinguser/axo;)Lcom/kingroot/kinguser/yn$a;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/agf;

    .line 543
    invoke-virtual {v0}, Lcom/kingroot/kinguser/agf;->vK()I

    move-result v0

    if-ne p3, v0, :cond_2

    .line 545
    iget-object v0, p0, Lcom/kingroot/kinguser/axo$11;->this$0:Lcom/kingroot/kinguser/axo;

    invoke-static {v0, p3}, Lcom/kingroot/kinguser/axo;->a(Lcom/kingroot/kinguser/axo;I)V

    goto :goto_0

    .line 547
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/axo$11;->this$0:Lcom/kingroot/kinguser/axo;

    invoke-static {v0}, Lcom/kingroot/kinguser/axo;->j(Lcom/kingroot/kinguser/axo;)Lcom/kingroot/kinguser/yn$a;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/kingroot/kinguser/yn$a;->bU(I)Lcom/kingroot/kinguser/yn$b;

    move-result-object v0

    .line 548
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/kingroot/kinguser/yn$b;->data:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 551
    iget-object v0, v0, Lcom/kingroot/kinguser/yn$b;->data:Ljava/lang/Object;

    check-cast v0, Lcom/kingroot/kinguser/model/RootMgrAppModel;

    .line 552
    iget v1, v0, Lcom/kingroot/kinguser/model/RootMgrAppModel;->ot:I

    if-ne v1, v2, :cond_3

    iget v1, v0, Lcom/kingroot/kinguser/model/RootMgrAppModel;->aQS:I

    if-eq v1, v2, :cond_4

    .line 554
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/axo$11;->this$0:Lcom/kingroot/kinguser/axo;

    invoke-static {v0, p3}, Lcom/kingroot/kinguser/axo;->a(Lcom/kingroot/kinguser/axo;I)V

    goto :goto_0

    .line 556
    :cond_4
    iget-object v1, p0, Lcom/kingroot/kinguser/axo$11;->this$0:Lcom/kingroot/kinguser/axo;

    invoke-static {v1, p3, v0}, Lcom/kingroot/kinguser/axo;->a(Lcom/kingroot/kinguser/axo;ILcom/kingroot/kinguser/model/RootMgrAppModel;)Z

    goto :goto_0
.end method
