.class Lcom/kingroot/kinguser/cfh$2;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/cfh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cbV:Lcom/kingroot/kinguser/cfh;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/cfh;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/kingroot/kinguser/cfh$2;->cbV:Lcom/kingroot/kinguser/cfh;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 16

    .prologue
    const/4 v8, -0x2

    const v9, -0x3b9aca01

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x1

    .line 162
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 401
    :cond_0
    :goto_0
    return-void

    .line 165
    :pswitch_0
    sput-boolean v4, Lcom/kingroot/kinguser/cfd;->bZU:Z

    .line 168
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/cfh$2;->cbV:Lcom/kingroot/kinguser/cfh;

    invoke-static {v2}, Lcom/kingroot/kinguser/cfh;->a(Lcom/kingroot/kinguser/cfh;)Ljava/util/ArrayList;

    move-result-object v5

    monitor-enter v5

    .line 170
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/cfh$2;->cbV:Lcom/kingroot/kinguser/cfh;

    invoke-static {v2}, Lcom/kingroot/kinguser/cfh;->a(Lcom/kingroot/kinguser/cfh;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 171
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    if-lez v2, :cond_1

    .line 173
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/cfh$2;->cbV:Lcom/kingroot/kinguser/cfh;

    invoke-static {v2}, Lcom/kingroot/kinguser/cfh;->b(Lcom/kingroot/kinguser/cfh;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 176
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/cfh$2;->cbV:Lcom/kingroot/kinguser/cfh;

    invoke-static {v2}, Lcom/kingroot/kinguser/cfh;->c(Lcom/kingroot/kinguser/cfh;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 177
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/cfh$2;->cbV:Lcom/kingroot/kinguser/cfh;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/cfh;->refresh()V

    .line 179
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/cfh$2;->cbV:Lcom/kingroot/kinguser/cfh;

    invoke-static {v2}, Lcom/kingroot/kinguser/cfh;->d(Lcom/kingroot/kinguser/cfh;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 180
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/cfh$2;->cbV:Lcom/kingroot/kinguser/cfh;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/cfh;->KD()V

    .line 182
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/cfh$2;->cbV:Lcom/kingroot/kinguser/cfh;

    invoke-static {v2}, Lcom/kingroot/kinguser/cfh;->e(Lcom/kingroot/kinguser/cfh;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 183
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/cfh$2;->cbV:Lcom/kingroot/kinguser/cfh;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/cfh;->onReady()V

    .line 185
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/cfh$2;->cbV:Lcom/kingroot/kinguser/cfh;

    invoke-static {v2}, Lcom/kingroot/kinguser/cfh;->f(Lcom/kingroot/kinguser/cfh;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 186
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/cfh$2;->cbV:Lcom/kingroot/kinguser/cfh;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/cfh;->alZ()V

    .line 188
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/cfh$2;->cbV:Lcom/kingroot/kinguser/cfh;

    invoke-static {v2}, Lcom/kingroot/kinguser/cfh;->g(Lcom/kingroot/kinguser/cfh;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 189
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/cfh$2;->cbV:Lcom/kingroot/kinguser/cfh;

    invoke-static {v2}, Lcom/kingroot/kinguser/cfh;->h(Lcom/kingroot/kinguser/cfh;)V

    .line 191
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/cfh$2;->cbV:Lcom/kingroot/kinguser/cfh;

    invoke-static {v2}, Lcom/kingroot/kinguser/cfh;->i(Lcom/kingroot/kinguser/cfh;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 192
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/cfh$2;->cbV:Lcom/kingroot/kinguser/cfh;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/cfh;->alM()V

    .line 194
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/cfh$2;->cbV:Lcom/kingroot/kinguser/cfh;

    invoke-static {v2}, Lcom/kingroot/kinguser/cfh;->j(Lcom/kingroot/kinguser/cfh;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 195
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/cfh$2;->cbV:Lcom/kingroot/kinguser/cfh;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/cfh;->alN()V

    .line 197
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/cfh$2;->cbV:Lcom/kingroot/kinguser/cfh;

    invoke-static {v2}, Lcom/kingroot/kinguser/cfh;->k(Lcom/kingroot/kinguser/cfh;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 198
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/cfh$2;->cbV:Lcom/kingroot/kinguser/cfh;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/cfh;->alY()V

    .line 200
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/cfh$2;->cbV:Lcom/kingroot/kinguser/cfh;

    invoke-static {v2}, Lcom/kingroot/kinguser/cfh;->l(Lcom/kingroot/kinguser/cfh;)Ljava/util/LinkedList;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 201
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/cfh$2;->cbV:Lcom/kingroot/kinguser/cfh;

    invoke-static {v2}, Lcom/kingroot/kinguser/cfh;->l(Lcom/kingroot/kinguser/cfh;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 202
    :cond_a
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 203
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingroot/kinguser/cex;

    .line 204
    if-eqz v2, :cond_a

    .line 205
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingroot/kinguser/cfh$2;->cbV:Lcom/kingroot/kinguser/cfh;

    iget v6, v2, Lcom/kingroot/kinguser/cex;->bZh:I

    iget v8, v2, Lcom/kingroot/kinguser/cex;->bZi:I

    iget v2, v2, Lcom/kingroot/kinguser/cex;->bZj:I

    invoke-virtual {v5, v6, v8, v2}, Lcom/kingroot/kinguser/cfh;->m(III)V

    goto :goto_1

    .line 171
    :catchall_0
    move-exception v2

    monitor-exit v5

    throw v2

    .line 209
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/cfh$2;->cbV:Lcom/kingroot/kinguser/cfh;

    invoke-static {v2, v7}, Lcom/kingroot/kinguser/cfh;->a(Lcom/kingroot/kinguser/cfh;Ljava/util/LinkedList;)Ljava/util/LinkedList;

    .line 212
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/cfh$2;->cbV:Lcom/kingroot/kinguser/cfh;

    invoke-static {v2}, Lcom/kingroot/kinguser/cfh;->m(Lcom/kingroot/kinguser/cfh;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 213
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/cfh$2;->cbV:Lcom/kingroot/kinguser/cfh;

    invoke-static {v2, v3}, Lcom/kingroot/kinguser/cfh;->a(Lcom/kingroot/kinguser/cfh;Z)Z

    .line 214
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/cfh$2;->cbV:Lcom/kingroot/kinguser/cfh;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/cfh;->getGuid()Ljava/lang/String;

    move-result-object v2

    .line 215
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 217
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingroot/kinguser/cfh$2;->cbV:Lcom/kingroot/kinguser/cfh;

    invoke-static {v4, v3, v2}, Lcom/kingroot/kinguser/cfh;->a(Lcom/kingroot/kinguser/cfh;ILjava/lang/String;)V

    .line 221
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/cfh$2;->cbV:Lcom/kingroot/kinguser/cfh;

    invoke-static {v2}, Lcom/kingroot/kinguser/cfh;->n(Lcom/kingroot/kinguser/cfh;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 222
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/cfh$2;->cbV:Lcom/kingroot/kinguser/cfh;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/cfh;->amb()V

    .line 225
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/cfh$2;->cbV:Lcom/kingroot/kinguser/cfh;

    invoke-static {v2}, Lcom/kingroot/kinguser/cfh;->o(Lcom/kingroot/kinguser/cfh;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 226
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/cfh$2;->cbV:Lcom/kingroot/kinguser/cfh;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/cfh;->amc()V

    goto/16 :goto_0

    .line 239
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/cfh$2;->cbV:Lcom/kingroot/kinguser/cfh;

    invoke-static {v2}, Lcom/kingroot/kinguser/cfh;->b(Lcom/kingroot/kinguser/cfh;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 242
    new-instance v6, Lcom/kingroot/kinguser/cfh$d;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/cfh$2;->cbV:Lcom/kingroot/kinguser/cfh;

    invoke-direct {v6, v2, v7}, Lcom/kingroot/kinguser/cfh$d;-><init>(Lcom/kingroot/kinguser/cfh;Lcom/kingroot/kinguser/cfh$1;)V

    .line 244
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 245
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/cfh$2;->cbV:Lcom/kingroot/kinguser/cfh;

    invoke-static {v2}, Lcom/kingroot/kinguser/cfh;->a(Lcom/kingroot/kinguser/cfh;)Ljava/util/ArrayList;

    move-result-object v8

    monitor-enter v8

    .line 246
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/cfh$2;->cbV:Lcom/kingroot/kinguser/cfh;

    invoke-static {v2}, Lcom/kingroot/kinguser/cfh;->a(Lcom/kingroot/kinguser/cfh;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v5, v3

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingroot/kinguser/cfh$c;

    .line 248
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingroot/kinguser/cfh$2;->cbV:Lcom/kingroot/kinguser/cfh;

    invoke-static {v3}, Lcom/kingroot/kinguser/cfh;->p(Lcom/kingroot/kinguser/cfh;)Lcom/kingroot/kinguser/cco;

    move-result-object v3

    if-eqz v3, :cond_19

    .line 249
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingroot/kinguser/cfh$2;->cbV:Lcom/kingroot/kinguser/cfh;

    invoke-static {v3}, Lcom/kingroot/kinguser/cfh;->p(Lcom/kingroot/kinguser/cfh;)Lcom/kingroot/kinguser/cco;

    move-result-object v3

    iget v10, v2, Lcom/kingroot/kinguser/cfh$c;->mCmdId:I

    iget-wide v12, v2, Lcom/kingroot/kinguser/cfh$c;->cbx:J

    invoke-virtual {v3, v10, v12, v13}, Lcom/kingroot/kinguser/cco;->o(IJ)Z

    move-result v3

    .line 252
    :goto_3
    iget v10, v2, Lcom/kingroot/kinguser/cfh$c;->mFlag:I

    const/high16 v11, 0x40000000    # 2.0f

    and-int/2addr v10, v11

    if-nez v10, :cond_11

    .line 253
    iget-object v10, v2, Lcom/kingroot/kinguser/cfh$c;->ccl:Lcom/kingroot/kinguser/ccn;

    invoke-virtual {v10}, Lcom/kingroot/kinguser/ccn;->akI()Z

    move-result v10

    if-nez v10, :cond_10

    .line 254
    if-eqz v3, :cond_f

    .line 255
    iget v3, v2, Lcom/kingroot/kinguser/cfh$c;->bZA:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v3, v2}, Lcom/kingroot/kinguser/cfh$d;->a(Ljava/lang/Integer;Lcom/kingroot/kinguser/cfh$c;)V

    .line 256
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_2

    .line 258
    :cond_f
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    .line 277
    :catchall_1
    move-exception v2

    monitor-exit v8

    throw v2

    .line 261
    :cond_10
    :try_start_2
    invoke-static {}, Lcom/kingroot/kinguser/cfc;->alC()Lcom/kingroot/kinguser/cfc;

    move-result-object v3

    iget v2, v2, Lcom/kingroot/kinguser/cfh$c;->bZA:I

    invoke-virtual {v3, v2}, Lcom/kingroot/kinguser/cfc;->hF(I)V

    goto :goto_2

    .line 264
    :cond_11
    if-eqz v3, :cond_12

    .line 265
    invoke-static {v6}, Lcom/kingroot/kinguser/cfh$d;->a(Lcom/kingroot/kinguser/cfh$d;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_2

    .line 268
    :cond_12
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 273
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/cfh$2;->cbV:Lcom/kingroot/kinguser/cfh;

    invoke-static {v2}, Lcom/kingroot/kinguser/cfh;->a(Lcom/kingroot/kinguser/cfh;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 274
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_14

    .line 275
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/cfh$2;->cbV:Lcom/kingroot/kinguser/cfh;

    invoke-static {v2}, Lcom/kingroot/kinguser/cfh;->a(Lcom/kingroot/kinguser/cfh;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 277
    :cond_14
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 279
    if-lez v5, :cond_0

    .line 280
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/cfh$2;->cbV:Lcom/kingroot/kinguser/cfh;

    invoke-static {v2}, Lcom/kingroot/kinguser/cfh;->q(Lcom/kingroot/kinguser/cfh;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-interface {v2, v6}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto/16 :goto_0

    .line 290
    :pswitch_2
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 291
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/cfh$2;->cbV:Lcom/kingroot/kinguser/cfh;

    invoke-static {v2}, Lcom/kingroot/kinguser/cfh;->r(Lcom/kingroot/kinguser/cfh;)Ljava/util/Map;

    move-result-object v5

    monitor-enter v5

    .line 292
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/cfh$2;->cbV:Lcom/kingroot/kinguser/cfh;

    invoke-static {v2}, Lcom/kingroot/kinguser/cfh;->r(Lcom/kingroot/kinguser/cfh;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_16

    .line 293
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 294
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/cfh$2;->cbV:Lcom/kingroot/kinguser/cfh;

    invoke-static {v2}, Lcom/kingroot/kinguser/cfh;->r(Lcom/kingroot/kinguser/cfh;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_15
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 295
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kingroot/kinguser/cfh$a;

    iget-wide v12, v3, Lcom/kingroot/kinguser/cfh$a;->ccd:J

    sub-long v12, v10, v12

    const-wide/32 v14, 0x1b7740

    cmp-long v3, v12, v14

    if-ltz v3, :cond_15

    .line 297
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_4

    .line 301
    :catchall_2
    move-exception v2

    monitor-exit v5

    throw v2

    :cond_16
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 304
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 305
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_17
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 307
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingroot/kinguser/cfh$2;->cbV:Lcom/kingroot/kinguser/cfh;

    invoke-static {v3}, Lcom/kingroot/kinguser/cfh;->r(Lcom/kingroot/kinguser/cfh;)Ljava/util/Map;

    move-result-object v3

    monitor-enter v3

    .line 308
    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingroot/kinguser/cfh$2;->cbV:Lcom/kingroot/kinguser/cfh;

    invoke-static {v4}, Lcom/kingroot/kinguser/cfh;->r(Lcom/kingroot/kinguser/cfh;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/kingroot/kinguser/cfh$a;

    move-object v6, v0

    .line 309
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 310
    if-eqz v6, :cond_17

    .line 311
    iget v2, v6, Lcom/kingroot/kinguser/cfh$a;->pushType:I

    if-nez v2, :cond_17

    .line 314
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/cfh$2;->cbV:Lcom/kingroot/kinguser/cfh;

    iget-object v3, v6, Lcom/kingroot/kinguser/cfh$a;->cce:Lcom/kingroot/kinguser/bg;

    iget v3, v3, Lcom/kingroot/kinguser/bg;->seqNo:I

    iget-wide v4, v6, Lcom/kingroot/kinguser/cfh$a;->jW:J

    iget-object v6, v6, Lcom/kingroot/kinguser/cfh$a;->cce:Lcom/kingroot/kinguser/bg;

    iget v6, v6, Lcom/kingroot/kinguser/bg;->cmd:I

    invoke-virtual/range {v2 .. v9}, Lcom/kingroot/kinguser/cfh;->a(IJILcom/qq/taf/jce/JceStruct;II)Ljava/lang/ref/WeakReference;

    goto :goto_5

    .line 309
    :catchall_3
    move-exception v2

    monitor-exit v3

    throw v2

    .line 330
    :pswitch_3
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 331
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingroot/kinguser/cfh$2;->cbV:Lcom/kingroot/kinguser/cfh;

    invoke-static {v3}, Lcom/kingroot/kinguser/cfh;->r(Lcom/kingroot/kinguser/cfh;)Ljava/util/Map;

    move-result-object v3

    monitor-enter v3

    .line 332
    :try_start_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingroot/kinguser/cfh$2;->cbV:Lcom/kingroot/kinguser/cfh;

    invoke-static {v4}, Lcom/kingroot/kinguser/cfh;->r(Lcom/kingroot/kinguser/cfh;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 333
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingroot/kinguser/cfh$2;->cbV:Lcom/kingroot/kinguser/cfh;

    invoke-static {v4}, Lcom/kingroot/kinguser/cfh;->r(Lcom/kingroot/kinguser/cfh;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 334
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 337
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 338
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_18
    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 339
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lcom/kingroot/kinguser/cfh$a;

    .line 340
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 341
    iget v2, v6, Lcom/kingroot/kinguser/cfh$a;->pushType:I

    if-nez v2, :cond_18

    .line 344
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/cfh$2;->cbV:Lcom/kingroot/kinguser/cfh;

    iget-object v3, v6, Lcom/kingroot/kinguser/cfh$a;->cce:Lcom/kingroot/kinguser/bg;

    iget v3, v3, Lcom/kingroot/kinguser/bg;->seqNo:I

    iget-wide v4, v6, Lcom/kingroot/kinguser/cfh$a;->jW:J

    iget-object v6, v6, Lcom/kingroot/kinguser/cfh$a;->cce:Lcom/kingroot/kinguser/bg;

    iget v6, v6, Lcom/kingroot/kinguser/bg;->cmd:I

    invoke-virtual/range {v2 .. v9}, Lcom/kingroot/kinguser/cfh;->a(IJILcom/qq/taf/jce/JceStruct;II)Ljava/lang/ref/WeakReference;

    goto :goto_6

    .line 334
    :catchall_4
    move-exception v2

    monitor-exit v3

    throw v2

    .line 356
    :pswitch_4
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    .line 359
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/cfh$2;->cbV:Lcom/kingroot/kinguser/cfh;

    invoke-static {v2}, Lcom/kingroot/kinguser/cfh;->s(Lcom/kingroot/kinguser/cfh;)Ljava/util/TreeMap;

    move-result-object v3

    monitor-enter v3

    .line 361
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/cfh$2;->cbV:Lcom/kingroot/kinguser/cfh;

    invoke-static {v2}, Lcom/kingroot/kinguser/cfh;->s(Lcom/kingroot/kinguser/cfh;)Ljava/util/TreeMap;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingroot/kinguser/cfp;

    .line 362
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 364
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingroot/kinguser/cfh$2;->cbV:Lcom/kingroot/kinguser/cfh;

    invoke-static {v3}, Lcom/kingroot/kinguser/cfh;->r(Lcom/kingroot/kinguser/cfh;)Ljava/util/Map;

    move-result-object v5

    monitor-enter v5

    .line 366
    :try_start_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingroot/kinguser/cfh$2;->cbV:Lcom/kingroot/kinguser/cfh;

    invoke-static {v3}, Lcom/kingroot/kinguser/cfh;->r(Lcom/kingroot/kinguser/cfh;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kingroot/kinguser/cfh$a;

    .line 367
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 369
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 372
    invoke-static {}, Lcom/kingroot/kinguser/bze;->ajZ()Lcom/kingroot/kinguser/bzf;

    move-result-object v5

    new-instance v6, Lcom/kingroot/kinguser/cfh$2$1;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v3, v4, v2}, Lcom/kingroot/kinguser/cfh$2$1;-><init>(Lcom/kingroot/kinguser/cfh$2;Lcom/kingroot/kinguser/cfh$a;ILcom/kingroot/kinguser/cfp;)V

    const-string v2, "shark callback: check cached push"

    invoke-virtual {v5, v6, v2}, Lcom/kingroot/kinguser/bzf;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 362
    :catchall_5
    move-exception v2

    monitor-exit v3

    throw v2

    .line 367
    :catchall_6
    move-exception v2

    monitor-exit v5

    throw v2

    .line 390
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/cfh$2;->cbV:Lcom/kingroot/kinguser/cfh;

    invoke-static {v2, v7}, Lcom/kingroot/kinguser/cfh;->a(Lcom/kingroot/kinguser/cfh;Lcom/kingroot/kinguser/cco;)Lcom/kingroot/kinguser/cco;

    .line 393
    sget-boolean v2, Lcom/kingroot/kinguser/cfd;->bZU:Z

    if-eqz v2, :cond_0

    .line 394
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/cfh$2;->cbV:Lcom/kingroot/kinguser/cfh;

    invoke-static {v2}, Lcom/kingroot/kinguser/cfh;->b(Lcom/kingroot/kinguser/cfh;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_19
    move v3, v4

    goto/16 :goto_3

    .line 162
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
