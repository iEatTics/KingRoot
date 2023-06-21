.class Lcom/kingroot/kinguser/axh$3;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/axh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aYH:Lcom/kingroot/kinguser/axh;

.field private mStartTime:J


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axh;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/kingroot/kinguser/axh$3;->aYH:Lcom/kingroot/kinguser/axh;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const-wide/16 v2, 0x0

    const/4 v8, 0x2

    .line 188
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 189
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/axh$3;->mStartTime:J

    .line 191
    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/axh$3;->aYH:Lcom/kingroot/kinguser/axh;

    invoke-static {v0}, Lcom/kingroot/kinguser/axh;->b(Lcom/kingroot/kinguser/axh;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 193
    iget-object v0, p0, Lcom/kingroot/kinguser/axh$3;->aYH:Lcom/kingroot/kinguser/axh;

    invoke-static {v0}, Lcom/kingroot/kinguser/axh;->b(Lcom/kingroot/kinguser/axh;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aqc;

    .line 194
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/kingroot/kinguser/aqc;->aKZ:Lcom/kingroot/kinguser/aqb;

    instance-of v1, v1, Lcom/kingroot/kinguser/aqh;

    if-nez v1, :cond_1

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/axh$3;->aYH:Lcom/kingroot/kinguser/axh;

    invoke-static {v0}, Lcom/kingroot/kinguser/axh;->b(Lcom/kingroot/kinguser/axh;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    goto :goto_0

    .line 203
    :cond_1
    iget-object v1, v0, Lcom/kingroot/kinguser/aqc;->aKZ:Lcom/kingroot/kinguser/aqb;

    check-cast v1, Lcom/kingroot/kinguser/aqh;

    .line 206
    instance-of v4, v1, Lcom/kingroot/kinguser/aqq;

    if-eqz v4, :cond_3

    .line 207
    invoke-static {}, Lcom/kingroot/kinguser/bfw;->aaS()Lcom/kingroot/kinguser/bfw;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kingroot/kinguser/bfw;->aaU()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/kingroot/kinguser/bfp;->aay()Lcom/kingroot/kinguser/bfp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kingroot/kinguser/bfp;->isEnable()Z

    move-result v4

    if-nez v4, :cond_5

    .line 208
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/axh$3;->aYH:Lcom/kingroot/kinguser/axh;

    invoke-static {v0}, Lcom/kingroot/kinguser/axh;->b(Lcom/kingroot/kinguser/axh;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    goto :goto_0

    .line 212
    :cond_3
    invoke-virtual {v1}, Lcom/kingroot/kinguser/aqh;->My()Z

    move-result v4

    if-nez v4, :cond_5

    .line 214
    instance-of v0, v1, Lcom/kingroot/kinguser/aqi;

    if-eqz v0, :cond_4

    .line 215
    invoke-static {v1}, Lcom/kingroot/kinguser/axm;->b(Lcom/kingroot/kinguser/aqb;)Lcom/kingroot/kinguser/aqc;

    move-result-object v0

    .line 216
    iget-object v1, p0, Lcom/kingroot/kinguser/axh$3;->aYH:Lcom/kingroot/kinguser/axh;

    invoke-static {v1}, Lcom/kingroot/kinguser/axh;->a(Lcom/kingroot/kinguser/axh;)Lcom/kingroot/kinguser/aqa;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/aqa;->b(Lcom/kingroot/kinguser/aqc;)V

    .line 219
    :cond_4
    iget-object v0, p0, Lcom/kingroot/kinguser/axh$3;->aYH:Lcom/kingroot/kinguser/axh;

    invoke-static {v0}, Lcom/kingroot/kinguser/axh;->b(Lcom/kingroot/kinguser/axh;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    goto :goto_0

    .line 224
    :cond_5
    new-instance v4, Lcom/kingroot/kinguser/axh$3$1;

    invoke-direct {v4, p0, v0, v1}, Lcom/kingroot/kinguser/axh$3$1;-><init>(Lcom/kingroot/kinguser/axh$3;Lcom/kingroot/kinguser/aqc;Lcom/kingroot/kinguser/aqh;)V

    invoke-static {v4}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 239
    iget-object v0, p0, Lcom/kingroot/kinguser/axh$3;->aYH:Lcom/kingroot/kinguser/axh;

    invoke-static {v0}, Lcom/kingroot/kinguser/axh;->b(Lcom/kingroot/kinguser/axh;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    goto/16 :goto_0

    .line 244
    :cond_6
    const/4 v0, 0x0

    .line 245
    invoke-static {}, Lcom/kingroot/kinguser/aqd;->MA()Ljava/util/List;

    move-result-object v1

    .line 246
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aqc;

    .line 247
    iget v5, v0, Lcom/kingroot/kinguser/aqc;->type:I

    if-eqz v5, :cond_7

    iget v0, v0, Lcom/kingroot/kinguser/aqc;->type:I

    const/4 v5, 0x3

    if-ne v0, v5, :cond_8

    .line 248
    :cond_7
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 252
    goto :goto_1

    .line 253
    :cond_8
    if-gtz v1, :cond_a

    .line 280
    :cond_9
    :goto_2
    return-void

    .line 258
    :cond_a
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v4

    .line 259
    invoke-virtual {v4}, Lcom/kingroot/kinguser/aks;->Ew()I

    move-result v0

    .line 260
    if-eq v8, v0, :cond_9

    .line 262
    if-nez v0, :cond_b

    .line 263
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Lcom/kingroot/kinguser/aks;->eC(I)V

    goto :goto_2

    .line 268
    :cond_b
    const-wide/16 v0, 0x320

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v0, v6

    iget-wide v6, p0, Lcom/kingroot/kinguser/axh$3;->mStartTime:J

    add-long/2addr v0, v6

    .line 269
    new-instance v5, Lcom/kingroot/kinguser/axh$3$2;

    invoke-direct {v5, p0}, Lcom/kingroot/kinguser/axh$3$2;-><init>(Lcom/kingroot/kinguser/axh$3;)V

    cmp-long v6, v0, v2

    if-lez v6, :cond_c

    :goto_3
    invoke-static {v5, v0, v1}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;J)V

    .line 279
    invoke-virtual {v4, v8}, Lcom/kingroot/kinguser/aks;->eC(I)V

    goto :goto_2

    :cond_c
    move-wide v0, v2

    .line 269
    goto :goto_3
.end method
