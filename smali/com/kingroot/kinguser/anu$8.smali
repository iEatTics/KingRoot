.class Lcom/kingroot/kinguser/anu$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/anu;->a(Ljava/util/List;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aEe:Z

.field final synthetic aEf:Z

.field final synthetic this$0:Lcom/kingroot/kinguser/anu;

.field final synthetic val$appModels:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/anu;ZLjava/util/List;Z)V
    .locals 0

    .prologue
    .line 492
    iput-object p1, p0, Lcom/kingroot/kinguser/anu$8;->this$0:Lcom/kingroot/kinguser/anu;

    iput-boolean p2, p0, Lcom/kingroot/kinguser/anu$8;->aEe:Z

    iput-object p3, p0, Lcom/kingroot/kinguser/anu$8;->val$appModels:Ljava/util/List;

    iput-boolean p4, p0, Lcom/kingroot/kinguser/anu$8;->aEf:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 495
    iget-boolean v1, p0, Lcom/kingroot/kinguser/anu$8;->aEe:Z

    if-nez v1, :cond_0

    .line 496
    iget-object v1, p0, Lcom/kingroot/kinguser/anu$8;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v1}, Lcom/kingroot/kinguser/anu;->n(Lcom/kingroot/kinguser/anu;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 498
    :cond_0
    iget-object v1, p0, Lcom/kingroot/kinguser/anu$8;->val$appModels:Ljava/util/List;

    if-nez v1, :cond_1

    .line 532
    :goto_0
    return-void

    .line 503
    :cond_1
    iget-object v1, p0, Lcom/kingroot/kinguser/anu$8;->val$appModels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/kingroot/kinguser/anu$8;->aEe:Z

    if-eqz v1, :cond_2

    .line 504
    iget-object v1, p0, Lcom/kingroot/kinguser/anu$8;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v1}, Lcom/kingroot/kinguser/anu;->o(Lcom/kingroot/kinguser/anu;)Lcom/kingroot/kinguser/alj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/alj;->cw(Z)V

    .line 507
    :cond_2
    iget-object v1, p0, Lcom/kingroot/kinguser/anu$8;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v1}, Lcom/kingroot/kinguser/anu;->n(Lcom/kingroot/kinguser/anu;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 508
    iget-object v2, p0, Lcom/kingroot/kinguser/anu$8;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v2}, Lcom/kingroot/kinguser/anu;->n(Lcom/kingroot/kinguser/anu;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/kingroot/kinguser/anu$8;->val$appModels:Ljava/util/List;

    invoke-static {v3}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->az(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 509
    iget-object v2, p0, Lcom/kingroot/kinguser/anu$8;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v2}, Lcom/kingroot/kinguser/anu;->n(Lcom/kingroot/kinguser/anu;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/kingroot/kinguser/anf;->aB(Ljava/util/List;)V

    .line 511
    iget-object v2, p0, Lcom/kingroot/kinguser/anu$8;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v2}, Lcom/kingroot/kinguser/anu;->n(Lcom/kingroot/kinguser/anu;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    .line 512
    iget-boolean v1, p0, Lcom/kingroot/kinguser/anu$8;->aEf:Z

    if-eqz v1, :cond_4

    move v1, v0

    .line 515
    :goto_1
    iget-object v0, p0, Lcom/kingroot/kinguser/anu$8;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v0}, Lcom/kingroot/kinguser/anu;->p(Lcom/kingroot/kinguser/anu;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->e(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 516
    iget-object v0, p0, Lcom/kingroot/kinguser/anu$8;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v0}, Lcom/kingroot/kinguser/anu;->p(Lcom/kingroot/kinguser/anu;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/amm;

    .line 517
    instance-of v3, v0, Lcom/kingroot/kinguser/amd;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/kingroot/kinguser/anu$8;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v3}, Lcom/kingroot/kinguser/anu;->n(Lcom/kingroot/kinguser/anu;)Ljava/util/List;

    move-result-object v3

    check-cast v0, Lcom/kingroot/kinguser/amd;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/amd;->Io()Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 518
    iget-object v0, p0, Lcom/kingroot/kinguser/anu$8;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/anu;->a(Lcom/kingroot/kinguser/anu;I)I

    .line 525
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/anu$8;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v0}, Lcom/kingroot/kinguser/anu;->q(Lcom/kingroot/kinguser/anu;)I

    move-result v0

    if-lez v0, :cond_4

    .line 526
    iget-object v0, p0, Lcom/kingroot/kinguser/anu$8;->this$0:Lcom/kingroot/kinguser/anu;

    iget-object v1, p0, Lcom/kingroot/kinguser/anu$8;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v1}, Lcom/kingroot/kinguser/anu;->q(Lcom/kingroot/kinguser/anu;)I

    move-result v1

    iget-object v3, p0, Lcom/kingroot/kinguser/anu$8;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v3}, Lcom/kingroot/kinguser/anu;->n(Lcom/kingroot/kinguser/anu;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-static {v0, v1, v3, v2}, Lcom/kingroot/kinguser/anu;->a(Lcom/kingroot/kinguser/anu;III)V

    .line 531
    :cond_4
    iget-object v0, p0, Lcom/kingroot/kinguser/anu$8;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v0}, Lcom/kingroot/kinguser/anu;->r(Lcom/kingroot/kinguser/anu;)V

    goto/16 :goto_0

    .line 515
    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method
