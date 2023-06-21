.class Lcom/kingroot/kinguser/cff$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/cfl$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/cff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cay:Lcom/kingroot/kinguser/cff;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/cff;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/kingroot/kinguser/cff$1;->cay:Lcom/kingroot/kinguser/cff;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZI[BLcom/kingroot/kinguser/cff$d;)V
    .locals 19

    .prologue
    .line 114
    if-eqz p2, :cond_1

    .line 115
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingroot/kinguser/cff$1;->cay:Lcom/kingroot/kinguser/cff;

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p4

    invoke-static {v4, v0, v1, v2}, Lcom/kingroot/kinguser/cff;->a(Lcom/kingroot/kinguser/cff;ZILcom/kingroot/kinguser/cff$d;)V

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    if-nez p3, :cond_2

    .line 122
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingroot/kinguser/cff$1;->cay:Lcom/kingroot/kinguser/cff;

    const v5, -0x1406f45

    move/from16 v0, p1

    move-object/from16 v1, p4

    invoke-static {v4, v0, v5, v1}, Lcom/kingroot/kinguser/cff;->a(Lcom/kingroot/kinguser/cff;ZILcom/kingroot/kinguser/cff$d;)V

    goto :goto_0

    .line 128
    :cond_2
    invoke-static/range {p3 .. p3}, Lcom/kingroot/kinguser/cfd;->ag([B)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 130
    const/4 v4, 0x0

    aget-byte v4, p3, v4

    .line 131
    invoke-static {}, Lcom/kingroot/kinguser/cfc;->alC()Lcom/kingroot/kinguser/cfc;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/kingroot/kinguser/cfc;->d(B)I

    move-result v4

    .line 132
    if-ltz v4, :cond_0

    .line 133
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingroot/kinguser/cff$1;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v5}, Lcom/kingroot/kinguser/cff;->a(Lcom/kingroot/kinguser/cff;)Ljava/util/LinkedHashMap;

    move-result-object v5

    monitor-enter v5

    .line 135
    :try_start_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kingroot/kinguser/cff$1;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v6}, Lcom/kingroot/kinguser/cff;->a(Lcom/kingroot/kinguser/cff;)Ljava/util/LinkedHashMap;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/kingroot/kinguser/cff$d;

    .line 136
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    if-eqz v6, :cond_0

    .line 138
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingroot/kinguser/cff$1;->cay:Lcom/kingroot/kinguser/cff;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move/from16 v5, p1

    invoke-static/range {v4 .. v9}, Lcom/kingroot/kinguser/cff;->a(Lcom/kingroot/kinguser/cff;ZLcom/kingroot/kinguser/cff$d;IILjava/util/ArrayList;)V

    goto :goto_0

    .line 136
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 143
    :cond_3
    :try_start_1
    invoke-static/range {p3 .. p3}, Lcom/kingroot/kinguser/cew;->ae([B)Lcom/kingroot/kinguser/bh;

    move-result-object v4

    .line 148
    if-nez v4, :cond_4

    .line 150
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingroot/kinguser/cff$1;->cay:Lcom/kingroot/kinguser/cff;

    const v5, -0x14070d0

    move/from16 v0, p1

    move-object/from16 v1, p4

    invoke-static {v4, v0, v5, v1}, Lcom/kingroot/kinguser/cff;->a(Lcom/kingroot/kinguser/cff;ZILcom/kingroot/kinguser/cff$d;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 157
    :catch_0
    move-exception v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingroot/kinguser/cff$1;->cay:Lcom/kingroot/kinguser/cff;

    const v5, -0x14070d0

    move/from16 v0, p1

    move-object/from16 v1, p4

    invoke-static {v4, v0, v5, v1}, Lcom/kingroot/kinguser/cff;->a(Lcom/kingroot/kinguser/cff;ZILcom/kingroot/kinguser/cff$d;)V

    goto :goto_0

    .line 153
    :cond_4
    :try_start_2
    move-object v0, v4

    check-cast v0, Lcom/kingroot/kinguser/bh;

    move-object v5, v0

    .line 154
    iget-object v15, v5, Lcom/kingroot/kinguser/bh;->km:Ljava/util/ArrayList;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 161
    iget v4, v5, Lcom/kingroot/kinguser/bh;->jX:I

    .line 163
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kingroot/kinguser/cff$1;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v6}, Lcom/kingroot/kinguser/cff;->b(Lcom/kingroot/kinguser/cff;)Lcom/kingroot/kinguser/cff$d;

    move-result-object v6

    if-eqz v6, :cond_5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kingroot/kinguser/cff$1;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v6}, Lcom/kingroot/kinguser/cff;->b(Lcom/kingroot/kinguser/cff;)Lcom/kingroot/kinguser/cff$d;

    move-result-object v6

    iget v6, v6, Lcom/kingroot/kinguser/cff$d;->caN:I

    if-ne v6, v4, :cond_5

    .line 165
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingroot/kinguser/cff$1;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v4}, Lcom/kingroot/kinguser/cff;->b(Lcom/kingroot/kinguser/cff;)Lcom/kingroot/kinguser/cff$d;

    move-result-object v6

    .line 174
    :goto_1
    if-nez v15, :cond_7

    .line 176
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingroot/kinguser/cff$1;->cay:Lcom/kingroot/kinguser/cff;

    const v7, -0x1406f45

    iget v8, v5, Lcom/kingroot/kinguser/bh;->seqNo:I

    const/4 v9, 0x0

    move/from16 v5, p1

    invoke-static/range {v4 .. v9}, Lcom/kingroot/kinguser/cff;->a(Lcom/kingroot/kinguser/cff;ZLcom/kingroot/kinguser/cff$d;IILjava/util/ArrayList;)V

    goto/16 :goto_0

    .line 166
    :cond_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kingroot/kinguser/cff$1;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v6}, Lcom/kingroot/kinguser/cff;->c(Lcom/kingroot/kinguser/cff;)Lcom/kingroot/kinguser/cff$d;

    move-result-object v6

    if-eqz v6, :cond_6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kingroot/kinguser/cff$1;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v6}, Lcom/kingroot/kinguser/cff;->c(Lcom/kingroot/kinguser/cff;)Lcom/kingroot/kinguser/cff$d;

    move-result-object v6

    iget v6, v6, Lcom/kingroot/kinguser/cff$d;->caN:I

    if-ne v6, v4, :cond_6

    .line 167
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingroot/kinguser/cff$1;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v4}, Lcom/kingroot/kinguser/cff;->c(Lcom/kingroot/kinguser/cff;)Lcom/kingroot/kinguser/cff$d;

    move-result-object v6

    goto :goto_1

    .line 169
    :cond_6
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kingroot/kinguser/cff$1;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v6}, Lcom/kingroot/kinguser/cff;->a(Lcom/kingroot/kinguser/cff;)Ljava/util/LinkedHashMap;

    move-result-object v6

    monitor-enter v6

    .line 170
    :try_start_3
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kingroot/kinguser/cff$1;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v7}, Lcom/kingroot/kinguser/cff;->a(Lcom/kingroot/kinguser/cff;)Ljava/util/LinkedHashMap;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kingroot/kinguser/cff$d;

    .line 171
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v6, v4

    goto :goto_1

    :catchall_1
    move-exception v4

    monitor-exit v6

    throw v4

    .line 179
    :cond_7
    invoke-static {v15}, Lcom/kingroot/kinguser/cff;->I(Ljava/util/ArrayList;)V

    .line 183
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingroot/kinguser/cff$1;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v4, v15}, Lcom/kingroot/kinguser/cff;->a(Lcom/kingroot/kinguser/cff;Ljava/util/ArrayList;)Z

    move-result v4

    .line 185
    if-eqz v4, :cond_8

    .line 186
    const-string v4, "ocean"

    const-string v5, "[ocean]\u5bc6\u94a5\u8fc7\u671f\uff0c\u81ea\u52a8\u4ea4\u6362\u5bc6\u94a5\u91cd\u53d1"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Lcom/kingroot/kinguser/cfe;->b(Ljava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/az;Lcom/kingroot/kinguser/bg;)V

    .line 188
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingroot/kinguser/cff$1;->cay:Lcom/kingroot/kinguser/cff;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/kingroot/kinguser/cff;->a(Lcom/kingroot/kinguser/cff;Z)Z

    .line 194
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingroot/kinguser/cff$1;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v4}, Lcom/kingroot/kinguser/cff;->d(Lcom/kingroot/kinguser/cff;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 195
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingroot/kinguser/cff$1;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v4}, Lcom/kingroot/kinguser/cff;->d(Lcom/kingroot/kinguser/cff;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x1

    const-wide/16 v6, 0x7d0

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 200
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingroot/kinguser/cff$1;->cay:Lcom/kingroot/kinguser/cff;

    move/from16 v0, p1

    invoke-static {v4, v6, v0, v5, v15}, Lcom/kingroot/kinguser/cff;->a(Lcom/kingroot/kinguser/cff;Lcom/kingroot/kinguser/cff$d;ZLcom/kingroot/kinguser/bh;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v16

    .line 202
    if-eqz v16, :cond_b

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_b

    .line 203
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/kingroot/kinguser/bg;

    .line 204
    if-eqz v11, :cond_9

    .line 205
    invoke-static {}, Lcom/kingroot/kinguser/cfc;->alC()Lcom/kingroot/kinguser/cfc;

    move-result-object v7

    const-string v8, "SharkNetwork"

    iget v9, v11, Lcom/kingroot/kinguser/bg;->cmd:I

    iget v10, v11, Lcom/kingroot/kinguser/bg;->jX:I

    const/16 v12, 0x11

    if-eqz p3, :cond_a

    const-string v13, "%d/%d"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/16 v17, 0x0

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x4

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v14, v17

    const/16 v17, 0x1

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v14, v17

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    :goto_3
    move/from16 v13, p2

    invoke-virtual/range {v7 .. v14}, Lcom/kingroot/kinguser/cfc;->a(Ljava/lang/String;IILcom/kingroot/kinguser/bg;IILjava/lang/String;)V

    .line 213
    iget v7, v11, Lcom/kingroot/kinguser/bg;->jX:I

    invoke-static {v7}, Lcom/kingroot/kinguser/cfm;->lp(I)Lcom/kingroot/kinguser/cfm;

    move-result-object v7

    .line 214
    if-eqz v7, :cond_9

    .line 215
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/kingroot/kinguser/cff$1;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v8}, Lcom/kingroot/kinguser/cff;->e(Lcom/kingroot/kinguser/cff;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/kingroot/kinguser/ceq;->cs(Landroid/content/Context;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/kingroot/kinguser/cfm;->ccN:Ljava/lang/String;

    .line 218
    iget v8, v11, Lcom/kingroot/kinguser/bg;->retCode:I

    iput v8, v7, Lcom/kingroot/kinguser/cfm;->errorCode:I

    .line 219
    iget v8, v11, Lcom/kingroot/kinguser/bg;->cmd:I

    invoke-virtual {v7, v8}, Lcom/kingroot/kinguser/cfm;->lo(I)V

    .line 220
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/kingroot/kinguser/cff$1;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v8}, Lcom/kingroot/kinguser/cff;->f(Lcom/kingroot/kinguser/cff;)Lcom/kingroot/kinguser/ceu;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/kingroot/kinguser/cfm;->f(Lcom/kingroot/kinguser/ceu;)V

    goto :goto_2

    .line 205
    :cond_a
    const/4 v14, 0x0

    goto :goto_3

    .line 224
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingroot/kinguser/cff$1;->cay:Lcom/kingroot/kinguser/cff;

    const/4 v7, 0x0

    iget v8, v5, Lcom/kingroot/kinguser/bh;->seqNo:I

    move/from16 v5, p1

    move-object/from16 v9, v16

    invoke-static/range {v4 .. v9}, Lcom/kingroot/kinguser/cff;->a(Lcom/kingroot/kinguser/cff;ZLcom/kingroot/kinguser/cff$d;IILjava/util/ArrayList;)V

    .line 226
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingroot/kinguser/cff$1;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v4}, Lcom/kingroot/kinguser/cff;->g(Lcom/kingroot/kinguser/cff;)V

    goto/16 :goto_0
.end method

.method public b(ZILcom/kingroot/kinguser/cff$d;)V
    .locals 1

    .prologue
    .line 99
    if-eqz p2, :cond_0

    .line 106
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$1;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v0, p1, p2, p3}, Lcom/kingroot/kinguser/cff;->a(Lcom/kingroot/kinguser/cff;ZILcom/kingroot/kinguser/cff$d;)V

    .line 108
    :cond_0
    return-void
.end method
