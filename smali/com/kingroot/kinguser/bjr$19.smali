.class Lcom/kingroot/kinguser/bjr$19;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bjr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic byr:Lcom/kingroot/kinguser/bjr;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bjr;)V
    .locals 0

    .prologue
    .line 842
    iput-object p1, p0, Lcom/kingroot/kinguser/bjr$19;->byr:Lcom/kingroot/kinguser/bjr;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const-wide/32 v10, 0x7f0703ab

    const-wide/32 v8, 0x7f0703aa

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/16 v4, 0xc

    .line 845
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 846
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr$19;->byr:Lcom/kingroot/kinguser/bjr;

    invoke-static {v0}, Lcom/kingroot/kinguser/bjr;->n(Lcom/kingroot/kinguser/bjr;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 913
    :cond_0
    :goto_0
    return-void

    .line 853
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr$19;->byr:Lcom/kingroot/kinguser/bjr;

    invoke-static {v0}, Lcom/kingroot/kinguser/bjr;->o(Lcom/kingroot/kinguser/bjr;)I

    .line 854
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr$19;->byr:Lcom/kingroot/kinguser/bjr;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bjr;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/aez;->aw(Landroid/content/Context;)I

    move-result v0

    .line 855
    if-ne v0, v5, :cond_3

    .line 857
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr$19;->byr:Lcom/kingroot/kinguser/bjr;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bjr;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 858
    iget-object v1, p0, Lcom/kingroot/kinguser/bjr$19;->byr:Lcom/kingroot/kinguser/bjr;

    invoke-virtual {v1, v10, v11}, Lcom/kingroot/kinguser/bjr;->V(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 859
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 860
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr$19;->byr:Lcom/kingroot/kinguser/bjr;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bjr;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/aez;->av(Landroid/content/Context;)Z

    move-result v0

    .line 861
    if-eqz v0, :cond_2

    .line 862
    invoke-static {}, Lcom/kingroot/kinguser/afc;->uT()Lcom/kingroot/kinguser/afc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/afc;->uU()V

    .line 863
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr$19;->byr:Lcom/kingroot/kinguser/bjr;

    invoke-static {v0, v5, v6}, Lcom/kingroot/kinguser/bjr;->a(Lcom/kingroot/kinguser/bjr;ZZ)V

    .line 865
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr$19;->byr:Lcom/kingroot/kinguser/bjr;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bjr;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 866
    iget-object v1, p0, Lcom/kingroot/kinguser/bjr$19;->byr:Lcom/kingroot/kinguser/bjr;

    const-wide/32 v2, 0x7f0703ac

    invoke-virtual {v1, v2, v3}, Lcom/kingroot/kinguser/bjr;->V(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 867
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 870
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr$19;->byr:Lcom/kingroot/kinguser/bjr;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bjr;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 871
    iget-object v1, p0, Lcom/kingroot/kinguser/bjr$19;->byr:Lcom/kingroot/kinguser/bjr;

    invoke-virtual {v1, v8, v9}, Lcom/kingroot/kinguser/bjr;->V(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 872
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 874
    :cond_3
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 875
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 876
    sget-object v0, Lcom/kingroot/kinguser/bjs;->byC:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 877
    sget-object v0, Lcom/kingroot/kinguser/bjs;->byC:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    .line 879
    iget-boolean v3, v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->isPersonApp:Z

    if-nez v3, :cond_4

    .line 882
    iget-boolean v3, v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->checkCacheFail:Z

    if-eqz v3, :cond_4

    .line 884
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 887
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 890
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr$19;->byr:Lcom/kingroot/kinguser/bjr;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bjr;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 891
    iget-object v2, p0, Lcom/kingroot/kinguser/bjr$19;->byr:Lcom/kingroot/kinguser/bjr;

    invoke-virtual {v2, v10, v11}, Lcom/kingroot/kinguser/bjr;->V(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 892
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 894
    invoke-static {}, Lcom/kingroot/kinguser/afc;->uT()Lcom/kingroot/kinguser/afc;

    move-result-object v0

    iget-object v2, p0, Lcom/kingroot/kinguser/bjr$19;->byr:Lcom/kingroot/kinguser/bjr;

    .line 895
    invoke-virtual {v2}, Lcom/kingroot/kinguser/bjr;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/kingroot/kinguser/afc;->g(Landroid/content/Context;Ljava/util/List;)Z

    move-result v0

    .line 896
    if-eqz v0, :cond_6

    .line 897
    invoke-static {}, Lcom/kingroot/kinguser/afc;->uT()Lcom/kingroot/kinguser/afc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/afc;->uU()V

    .line 898
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr$19;->byr:Lcom/kingroot/kinguser/bjr;

    invoke-static {v0, v5, v6}, Lcom/kingroot/kinguser/bjr;->a(Lcom/kingroot/kinguser/bjr;ZZ)V

    .line 901
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr$19;->byr:Lcom/kingroot/kinguser/bjr;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bjr;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 902
    iget-object v1, p0, Lcom/kingroot/kinguser/bjr$19;->byr:Lcom/kingroot/kinguser/bjr;

    const-wide/32 v2, 0x7f0703ac

    invoke-virtual {v1, v2, v3}, Lcom/kingroot/kinguser/bjr;->V(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 903
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 906
    :cond_6
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr$19;->byr:Lcom/kingroot/kinguser/bjr;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bjr;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 907
    iget-object v1, p0, Lcom/kingroot/kinguser/bjr$19;->byr:Lcom/kingroot/kinguser/bjr;

    invoke-virtual {v1, v8, v9}, Lcom/kingroot/kinguser/bjr;->V(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 908
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0
.end method
