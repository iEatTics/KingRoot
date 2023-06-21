.class Lcom/kingroot/kinguser/awz$2;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/awz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aWn:Lcom/kingroot/kinguser/awz;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/awz;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/kingroot/kinguser/awz$2;->aWn:Lcom/kingroot/kinguser/awz;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 66
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 67
    invoke-static {}, Lcom/kingroot/kinguser/ahl;->xm()Lcom/kingroot/kinguser/ahl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ahl;->getAllLogs()Ljava/util/List;

    move-result-object v8

    .line 69
    iget-object v0, p0, Lcom/kingroot/kinguser/awz$2;->aWn:Lcom/kingroot/kinguser/awz;

    invoke-static {v0}, Lcom/kingroot/kinguser/awz;->a(Lcom/kingroot/kinguser/awz;)Lcom/kingroot/kinguser/bis;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bis;->adj()Ljava/util/List;

    move-result-object v9

    .line 71
    iget-object v0, p0, Lcom/kingroot/kinguser/awz$2;->aWn:Lcom/kingroot/kinguser/awz;

    invoke-static {v0}, Lcom/kingroot/kinguser/awz;->b(Lcom/kingroot/kinguser/awz;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 73
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    .line 74
    const/4 v0, 0x0

    move v7, v0

    :goto_0
    if-ge v7, v10, :cond_1

    .line 75
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/kingroot/kinguser/ai/AntiInjectLogModel;

    .line 76
    iget-wide v0, v6, Lcom/kingroot/kinguser/ai/AntiInjectLogModel;->time:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide v4, 0x9a7ec800L

    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/acu;->b(JJJ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/kingroot/kinguser/awz$2;->aWn:Lcom/kingroot/kinguser/awz;

    invoke-static {v0}, Lcom/kingroot/kinguser/awz;->b(Lcom/kingroot/kinguser/awz;)Ljava/util/List;

    move-result-object v11

    new-instance v0, Lcom/kingroot/kinguser/agc$c;

    const/4 v1, 0x1

    iget-wide v2, v6, Lcom/kingroot/kinguser/ai/AntiInjectLogModel;->time:J

    iget-object v4, v6, Lcom/kingroot/kinguser/ai/AntiInjectLogModel;->processName:Ljava/lang/String;

    const-string v5, ""

    iget-object v6, v6, Lcom/kingroot/kinguser/ai/AntiInjectLogModel;->apY:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/kingroot/kinguser/agc$c;-><init>(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_0
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    .line 88
    :cond_1
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/kingroot/kinguser/xmod/dao/ExploitLog;

    .line 89
    iget-wide v0, v6, Lcom/kingroot/kinguser/xmod/dao/ExploitLog;->mTimeStamp:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide v4, 0x9a7ec800L

    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/acu;->b(JJJ)Z

    move-result v0

    if-nez v0, :cond_2

    .line 90
    iget-object v0, p0, Lcom/kingroot/kinguser/awz$2;->aWn:Lcom/kingroot/kinguser/awz;

    invoke-static {v0}, Lcom/kingroot/kinguser/awz;->b(Lcom/kingroot/kinguser/awz;)Ljava/util/List;

    move-result-object v8

    new-instance v0, Lcom/kingroot/kinguser/agc$c;

    const/4 v1, 0x3

    iget-wide v2, v6, Lcom/kingroot/kinguser/xmod/dao/ExploitLog;->mTimeStamp:J

    const-string v4, ""

    iget-object v5, v6, Lcom/kingroot/kinguser/xmod/dao/ExploitLog;->mPackageName:Ljava/lang/String;

    iget-object v6, v6, Lcom/kingroot/kinguser/xmod/dao/ExploitLog;->akw:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/kingroot/kinguser/agc$c;-><init>(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 99
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/awz$2;->aWn:Lcom/kingroot/kinguser/awz;

    invoke-static {v0}, Lcom/kingroot/kinguser/awz;->b(Lcom/kingroot/kinguser/awz;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/awz$2;->aWn:Lcom/kingroot/kinguser/awz;

    invoke-static {v1}, Lcom/kingroot/kinguser/awz;->c(Lcom/kingroot/kinguser/awz;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 102
    iget-object v0, p0, Lcom/kingroot/kinguser/awz$2;->aWn:Lcom/kingroot/kinguser/awz;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/awz;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 103
    return-void
.end method
