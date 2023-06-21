.class Lcom/kingroot/kinguser/aus$11;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/aus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/aus;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aus;)V
    .locals 0

    .prologue
    .line 661
    iput-object p1, p0, Lcom/kingroot/kinguser/aus$11;->this$0:Lcom/kingroot/kinguser/aus;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x7

    const/4 v5, 0x6

    const/4 v1, 0x1

    .line 664
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 666
    invoke-static {}, Lcom/kingroot/kinguser/ais;->ye()Lcom/kingroot/kinguser/ais;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ais;->yj()Ljava/lang/String;

    move-result-object v0

    .line 667
    invoke-static {}, Lcom/kingroot/kinguser/adw;->tb()Lcom/kingroot/kinguser/adw;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/adw;->eF(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 670
    invoke-static {}, Lcom/kingroot/kinguser/ais;->ye()Lcom/kingroot/kinguser/ais;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/kingroot/kinguser/ais;->dB(I)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    .line 710
    :goto_0
    if-eqz v0, :cond_0

    .line 712
    iget-object v0, p0, Lcom/kingroot/kinguser/aus$11;->this$0:Lcom/kingroot/kinguser/aus;

    invoke-static {v0}, Lcom/kingroot/kinguser/aus;->e(Lcom/kingroot/kinguser/aus;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 713
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/aus$11;->this$0:Lcom/kingroot/kinguser/aus;

    invoke-static {v0}, Lcom/kingroot/kinguser/aus;->e(Lcom/kingroot/kinguser/aus;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 714
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 716
    :cond_0
    return-void

    .line 674
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/ais;->ye()Lcom/kingroot/kinguser/ais;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ais;->un()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    goto :goto_0

    .line 677
    :cond_2
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v0

    .line 678
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/aks;->CE()Z

    move-result v2

    .line 679
    invoke-static {v0}, Lcom/kingroot/kinguser/vb;->R(Landroid/content/Context;)Z

    move-result v0

    .line 682
    if-eqz v2, :cond_6

    if-eqz v0, :cond_6

    .line 685
    invoke-static {}, Lcom/kingroot/kinguser/adw;->tb()Lcom/kingroot/kinguser/adw;

    move-result-object v0

    iget-object v2, p0, Lcom/kingroot/kinguser/aus$11;->this$0:Lcom/kingroot/kinguser/aus;

    iget-object v2, v2, Lcom/kingroot/kinguser/aus;->aSv:Lcom/kingroot/common/network/download/INetworkLoadTaskCallback;

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/adw;->b(Lcom/kingroot/common/network/download/INetworkLoadTaskCallback;)V

    .line 686
    invoke-static {}, Lcom/kingroot/kinguser/adw;->tb()Lcom/kingroot/kinguser/adw;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/kingroot/kinguser/adw;->cC(I)V

    .line 688
    invoke-static {}, Lcom/kingroot/kinguser/ais;->ye()Lcom/kingroot/kinguser/ais;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ais;->ym()Ljava/lang/String;

    move-result-object v0

    .line 689
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 690
    invoke-static {}, Lcom/kingroot/kinguser/adw;->tb()Lcom/kingroot/kinguser/adw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/adw;->tl()Ljava/lang/String;

    move-result-object v0

    .line 692
    :cond_3
    invoke-static {}, Lcom/kingroot/kinguser/adw;->tb()Lcom/kingroot/kinguser/adw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/adw;->tn()Ljava/lang/String;

    move-result-object v2

    .line 693
    invoke-static {}, Lcom/kingroot/kinguser/adw;->tb()Lcom/kingroot/kinguser/adw;

    move-result-object v3

    const-string v4, "kmPlugins.zip"

    invoke-virtual {v3, v2, v4, v0, v6}, Lcom/kingroot/kinguser/adw;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 695
    const/4 v2, -0x1

    if-eq v0, v2, :cond_6

    const/4 v2, -0x2

    if-ne v0, v2, :cond_4

    move v0, v1

    goto :goto_0

    .line 697
    :cond_4
    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    .line 699
    invoke-static {}, Lcom/kingroot/kinguser/ais;->ye()Lcom/kingroot/kinguser/ais;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/kingroot/kinguser/ais;->dB(I)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    goto/16 :goto_0

    .line 704
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 714
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_6
    move v0, v1

    goto/16 :goto_0
.end method
