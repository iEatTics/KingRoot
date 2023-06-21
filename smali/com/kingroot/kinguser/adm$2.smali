.class Lcom/kingroot/kinguser/adm$2;
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
    .line 743
    iput-object p1, p0, Lcom/kingroot/kinguser/adm$2;->adc:Lcom/kingroot/kinguser/adm;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 746
    invoke-static {}, Lcom/kingroot/kinguser/ahl;->xm()Lcom/kingroot/kinguser/ahl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ahl;->getAllLogs()Ljava/util/List;

    move-result-object v0

    .line 748
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 749
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 750
    const-wide/32 v4, 0x5265c00

    sub-long v4, v2, v4

    .line 751
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ai/AntiInjectLogModel;

    .line 752
    iget-wide v8, v0, Lcom/kingroot/kinguser/ai/AntiInjectLogModel;->time:J

    cmp-long v7, v8, v2

    if-gtz v7, :cond_0

    .line 756
    iget-wide v8, v0, Lcom/kingroot/kinguser/ai/AntiInjectLogModel;->time:J

    cmp-long v7, v8, v4

    if-ltz v7, :cond_0

    .line 760
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 763
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 766
    if-lez v0, :cond_2

    .line 768
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/kingroot/kinguser/aks;->aM(J)V

    .line 769
    iget-object v2, p0, Lcom/kingroot/kinguser/adm$2;->adc:Lcom/kingroot/kinguser/adm;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ai/AntiInjectLogModel;

    invoke-static {v2, v0}, Lcom/kingroot/kinguser/adm;->a(Lcom/kingroot/kinguser/adm;Lcom/kingroot/kinguser/ai/AntiInjectLogModel;)V

    .line 771
    :cond_2
    return-void
.end method
