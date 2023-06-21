.class Lcom/kingroot/kinguser/ais$2;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/ais;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic asp:Lcom/kingroot/kinguser/ais;

.field private asq:Lcom/kingroot/kinguser/tk;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/ais;)V
    .locals 0

    .prologue
    .line 676
    iput-object p1, p0, Lcom/kingroot/kinguser/ais$2;->asp:Lcom/kingroot/kinguser/ais;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/bed$a;)V
    .locals 11
    .param p1    # Lcom/kingroot/kinguser/bed$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v10, 0x5

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 681
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/bek;->a(Lcom/kingroot/kinguser/bed$a;)V

    .line 684
    :try_start_0
    const-string v0, "ku_utils_KingMasterMgr"

    invoke-static {v0}, Lcom/kingroot/kinguser/tk;->cS(Ljava/lang/String;)Lcom/kingroot/kinguser/tk;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ais$2;->asq:Lcom/kingroot/kinguser/tk;

    .line 685
    iget-object v0, p0, Lcom/kingroot/kinguser/ais$2;->asq:Lcom/kingroot/kinguser/tk;

    if-eqz v0, :cond_0

    .line 686
    iget-object v0, p0, Lcom/kingroot/kinguser/ais$2;->asq:Lcom/kingroot/kinguser/tk;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/tk;->lock()V

    .line 688
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v5

    move v2, v4

    move v0, v4

    .line 690
    :goto_0
    const/16 v6, 0x14

    if-ge v2, v6, :cond_c

    .line 692
    const-wide/16 v6, 0x7530

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 694
    const-string v6, "com.kingroot.master"

    invoke-virtual {v5, v6}, Lcom/kingroot/kinguser/zh;->du(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v0, v1

    .line 700
    :cond_1
    :goto_1
    if-eqz v0, :cond_6

    .line 701
    invoke-static {}, Lcom/kingroot/kinguser/adw;->tb()Lcom/kingroot/kinguser/adw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/adw;->tg()I

    move-result v5

    .line 702
    invoke-static {}, Lcom/kingroot/kinguser/adw;->tb()Lcom/kingroot/kinguser/adw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/adw;->th()I

    move-result v2

    .line 704
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v6

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x4

    .line 705
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x4

    .line 706
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    .line 707
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    if-ne v5, v10, :cond_4

    .line 708
    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v8

    const/4 v2, 0x4

    .line 710
    invoke-static {}, Lcom/kingroot/kinguser/adw;->tb()Lcom/kingroot/kinguser/adw;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kingroot/kinguser/adw;->tk()Z

    move-result v4

    if-eqz v4, :cond_5

    :goto_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v2

    .line 704
    invoke-virtual {v6, v7}, Lcom/kingroot/kinguser/ady;->f([Ljava/lang/Object;)V

    move v2, v0

    .line 719
    :goto_4
    invoke-interface {p1}, Lcom/kingroot/kinguser/bed$a;->nF()Ljava/util/List;

    move-result-object v1

    .line 720
    invoke-interface {v1}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-ge v0, v3, :cond_7

    .line 735
    iget-object v0, p0, Lcom/kingroot/kinguser/ais$2;->asq:Lcom/kingroot/kinguser/tk;

    if-eqz v0, :cond_2

    .line 736
    iget-object v0, p0, Lcom/kingroot/kinguser/ais$2;->asq:Lcom/kingroot/kinguser/tk;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/tk;->release()V

    .line 739
    :cond_2
    :goto_5
    return-void

    .line 696
    :cond_3
    :try_start_1
    const-string v6, "com.kingstudio.purify"

    invoke-virtual {v5, v6}, Lcom/kingroot/kinguser/zh;->du(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v0, v3

    .line 697
    goto :goto_1

    :cond_4
    move v2, v4

    .line 707
    goto :goto_2

    :cond_5
    move v1, v3

    .line 710
    goto :goto_3

    .line 690
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 721
    :cond_7
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_8

    .line 735
    iget-object v0, p0, Lcom/kingroot/kinguser/ais$2;->asq:Lcom/kingroot/kinguser/tk;

    if-eqz v0, :cond_2

    .line 736
    iget-object v0, p0, Lcom/kingroot/kinguser/ais$2;->asq:Lcom/kingroot/kinguser/tk;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/tk;->release()V

    goto :goto_5

    .line 722
    :cond_8
    const/4 v0, 0x1

    :try_start_2
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_9

    .line 735
    iget-object v0, p0, Lcom/kingroot/kinguser/ais$2;->asq:Lcom/kingroot/kinguser/tk;

    if-eqz v0, :cond_2

    .line 736
    iget-object v0, p0, Lcom/kingroot/kinguser/ais$2;->asq:Lcom/kingroot/kinguser/tk;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/tk;->release()V

    goto :goto_5

    .line 723
    :cond_9
    const/4 v0, 0x0

    :try_start_3
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 724
    const/4 v3, 0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 727
    if-eqz v2, :cond_a

    .line 728
    iget-object v2, p0, Lcom/kingroot/kinguser/ais$2;->asp:Lcom/kingroot/kinguser/ais;

    invoke-static {v2, v0, v1}, Lcom/kingroot/kinguser/ais;->a(Lcom/kingroot/kinguser/ais;Ljava/lang/String;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 735
    :goto_6
    iget-object v0, p0, Lcom/kingroot/kinguser/ais$2;->asq:Lcom/kingroot/kinguser/tk;

    if-eqz v0, :cond_2

    .line 736
    iget-object v0, p0, Lcom/kingroot/kinguser/ais$2;->asq:Lcom/kingroot/kinguser/tk;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/tk;->release()V

    goto :goto_5

    .line 730
    :cond_a
    :try_start_4
    iget-object v1, p0, Lcom/kingroot/kinguser/ais$2;->asp:Lcom/kingroot/kinguser/ais;

    invoke-static {v1, v0}, Lcom/kingroot/kinguser/ais;->a(Lcom/kingroot/kinguser/ais;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_6

    .line 732
    :catch_0
    move-exception v0

    .line 735
    iget-object v0, p0, Lcom/kingroot/kinguser/ais$2;->asq:Lcom/kingroot/kinguser/tk;

    if-eqz v0, :cond_2

    .line 736
    iget-object v0, p0, Lcom/kingroot/kinguser/ais$2;->asq:Lcom/kingroot/kinguser/tk;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/tk;->release()V

    goto :goto_5

    .line 735
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/kingroot/kinguser/ais$2;->asq:Lcom/kingroot/kinguser/tk;

    if-eqz v1, :cond_b

    .line 736
    iget-object v1, p0, Lcom/kingroot/kinguser/ais$2;->asq:Lcom/kingroot/kinguser/tk;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/tk;->release()V

    :cond_b
    throw v0

    :cond_c
    move v2, v0

    goto/16 :goto_4
.end method
