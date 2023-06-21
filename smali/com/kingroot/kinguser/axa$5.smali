.class Lcom/kingroot/kinguser/axa$5;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/axa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aXc:Lcom/kingroot/kinguser/axa;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axa;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/kingroot/kinguser/axa$5;->aXc:Lcom/kingroot/kinguser/axa;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 206
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 207
    iget-object v0, p0, Lcom/kingroot/kinguser/axa$5;->aXc:Lcom/kingroot/kinguser/axa;

    invoke-static {}, Lcom/kingroot/kinguser/ahl;->xm()Lcom/kingroot/kinguser/ahl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/ahl;->getAllLogs()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/axa;->a(Lcom/kingroot/kinguser/axa;Ljava/util/List;)Ljava/util/List;

    .line 208
    iget-object v0, p0, Lcom/kingroot/kinguser/axa$5;->aXc:Lcom/kingroot/kinguser/axa;

    invoke-static {v0}, Lcom/kingroot/kinguser/axa;->b(Lcom/kingroot/kinguser/axa;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/kingroot/kinguser/axa$5;->aXc:Lcom/kingroot/kinguser/axa;

    invoke-static {v0}, Lcom/kingroot/kinguser/axa;->b(Lcom/kingroot/kinguser/axa;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 209
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 210
    iget-object v0, p0, Lcom/kingroot/kinguser/axa$5;->aXc:Lcom/kingroot/kinguser/axa;

    invoke-static {v0}, Lcom/kingroot/kinguser/axa;->b(Lcom/kingroot/kinguser/axa;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 211
    iget-object v0, p0, Lcom/kingroot/kinguser/axa$5;->aXc:Lcom/kingroot/kinguser/axa;

    invoke-static {v0}, Lcom/kingroot/kinguser/axa;->b(Lcom/kingroot/kinguser/axa;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 212
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    .line 213
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v8, :cond_1

    .line 214
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ai/AntiInjectLogModel;

    iget-wide v0, v0, Lcom/kingroot/kinguser/ai/AntiInjectLogModel;->time:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide v4, 0x9a7ec800L

    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/acu;->b(JJJ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/kingroot/kinguser/axa$5;->aXc:Lcom/kingroot/kinguser/axa;

    invoke-static {v0}, Lcom/kingroot/kinguser/axa;->b(Lcom/kingroot/kinguser/axa;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    :cond_0
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/axa$5;->aXc:Lcom/kingroot/kinguser/axa;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/axa;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 221
    :cond_2
    return-void
.end method
