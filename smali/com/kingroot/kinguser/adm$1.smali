.class Lcom/kingroot/kinguser/adm$1;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/adm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic adc:Lcom/kingroot/kinguser/adm;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/adm;)V
    .locals 0

    .prologue
    .line 672
    iput-object p1, p0, Lcom/kingroot/kinguser/adm$1;->adc:Lcom/kingroot/kinguser/adm;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v4, 0x0

    .line 675
    invoke-static {}, Lcom/kingroot/kinguser/ahl;->xm()Lcom/kingroot/kinguser/ahl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ahl;->getAllLogs()Ljava/util/List;

    move-result-object v0

    .line 676
    iget-object v1, p0, Lcom/kingroot/kinguser/adm$1;->adc:Lcom/kingroot/kinguser/adm;

    invoke-static {v1}, Lcom/kingroot/kinguser/adm;->a(Lcom/kingroot/kinguser/adm;)Lcom/kingroot/kinguser/bis;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bis;->adj()Ljava/util/List;

    move-result-object v5

    .line 678
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/aks;->Cc()J

    move-result-wide v8

    .line 682
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 683
    const-wide v6, 0x9a7ec800L

    sub-long v10, v2, v6

    .line 684
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v4

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ai/AntiInjectLogModel;

    .line 686
    iget-wide v12, v0, Lcom/kingroot/kinguser/ai/AntiInjectLogModel;->time:J

    cmp-long v7, v12, v2

    if-gtz v7, :cond_0

    .line 691
    iget-wide v12, v0, Lcom/kingroot/kinguser/ai/AntiInjectLogModel;->time:J

    cmp-long v7, v12, v10

    if-ltz v7, :cond_0

    .line 696
    iget-wide v12, v0, Lcom/kingroot/kinguser/ai/AntiInjectLogModel;->time:J

    cmp-long v0, v12, v8

    if-lez v0, :cond_8

    .line 698
    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    .line 700
    goto :goto_0

    .line 703
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v6, v1

    :cond_2
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/xmod/dao/ExploitLog;

    .line 705
    iget-wide v12, v0, Lcom/kingroot/kinguser/xmod/dao/ExploitLog;->mTimeStamp:J

    cmp-long v1, v12, v2

    if-gtz v1, :cond_2

    .line 710
    iget-wide v12, v0, Lcom/kingroot/kinguser/xmod/dao/ExploitLog;->mTimeStamp:J

    cmp-long v1, v12, v10

    if-ltz v1, :cond_2

    .line 715
    iget-wide v0, v0, Lcom/kingroot/kinguser/xmod/dao/ExploitLog;->mTimeStamp:J

    cmp-long v0, v0, v8

    if-lez v0, :cond_7

    .line 717
    add-int/lit8 v1, v6, 0x1

    :goto_3
    move v6, v1

    .line 719
    goto :goto_2

    .line 724
    :cond_3
    if-gtz v6, :cond_5

    .line 740
    :cond_4
    :goto_4
    return-void

    .line 728
    :cond_5
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Cf()Z

    move-result v0

    .line 729
    if-eqz v0, :cond_6

    .line 730
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/kingroot/kinguser/aks;->bg(Z)V

    .line 731
    iget-object v0, p0, Lcom/kingroot/kinguser/adm$1;->adc:Lcom/kingroot/kinguser/adm;

    invoke-static {v0, v6}, Lcom/kingroot/kinguser/adm;->a(Lcom/kingroot/kinguser/adm;I)V

    goto :goto_4

    .line 735
    :cond_6
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Ce()J

    move-result-wide v0

    .line 736
    const/4 v4, 0x5

    if-lt v6, v4, :cond_4

    const-wide/32 v4, 0xf731400

    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/acu;->b(JJJ)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 737
    iget-object v0, p0, Lcom/kingroot/kinguser/adm$1;->adc:Lcom/kingroot/kinguser/adm;

    invoke-static {v0, v6}, Lcom/kingroot/kinguser/adm;->a(Lcom/kingroot/kinguser/adm;I)V

    goto :goto_4

    :cond_7
    move v1, v6

    goto :goto_3

    :cond_8
    move v0, v1

    goto :goto_1
.end method
