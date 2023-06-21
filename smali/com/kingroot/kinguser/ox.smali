.class public Lcom/kingroot/kinguser/ox;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;Lcom/kingroot/kinguser/pv;)I
    .locals 3

    .prologue
    const/4 v0, 0x2

    .line 126
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 127
    const/4 v0, 0x3

    .line 135
    :cond_0
    :goto_0
    return v0

    .line 130
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/oz;->gh()Lcom/kingroot/kinguser/oz;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/kingroot/kinguser/oz;->cg(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 131
    if-eqz v1, :cond_0

    .line 135
    invoke-static {}, Lcom/kingroot/kinguser/oz;->gh()Lcom/kingroot/kinguser/oz;

    move-result-object v2

    invoke-virtual {v2, v1, p1}, Lcom/kingroot/kinguser/oz;->a(Landroid/content/pm/ApplicationInfo;Lcom/kingroot/kinguser/pv;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static a(JJLcom/kingroot/kinguser/u;Lcom/kingroot/kinguser/ch;Lcom/kingroot/kinguser/pv;)Lcom/kingroot/kinguser/w;
    .locals 12

    .prologue
    .line 39
    if-nez p5, :cond_0

    .line 40
    const/4 v11, 0x3

    .line 46
    :goto_0
    const/4 v6, 0x0

    move-object/from16 v0, p4

    iget v7, v0, Lcom/kingroot/kinguser/u;->conchSeqno:I

    move-object/from16 v0, p4

    iget v8, v0, Lcom/kingroot/kinguser/u;->gh:I

    const/4 v9, 0x3

    const/4 v10, 0x0

    move-wide v2, p0

    move-wide v4, p2

    invoke-static/range {v2 .. v11}, Lcom/kingroot/kinguser/cba;->a(JJIIIIII)Lcom/kingroot/kinguser/w;

    move-result-object v2

    return-object v2

    .line 44
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/oz;->gh()Lcom/kingroot/kinguser/oz;

    move-result-object v2

    move-object/from16 v0, p5

    iget-object v3, v0, Lcom/kingroot/kinguser/ch;->file:Ljava/lang/String;

    move-object/from16 v0, p6

    invoke-virtual {v2, v3, v0}, Lcom/kingroot/kinguser/oz;->c(Ljava/lang/String;Lcom/kingroot/kinguser/pv;)I

    move-result v11

    goto :goto_0
.end method

.method public static a(JJLcom/kingroot/kinguser/u;Lcom/kingroot/kinguser/ci;Lcom/kingroot/kinguser/pv;)Lcom/kingroot/kinguser/w;
    .locals 12

    .prologue
    .line 63
    const/4 v2, 0x2

    .line 64
    if-nez p5, :cond_0

    .line 65
    const/4 v2, 0x3

    move v11, v2

    .line 84
    :goto_0
    const/4 v6, 0x0

    move-object/from16 v0, p4

    iget v7, v0, Lcom/kingroot/kinguser/u;->conchSeqno:I

    move-object/from16 v0, p4

    iget v8, v0, Lcom/kingroot/kinguser/u;->gh:I

    const/4 v9, 0x3

    const/4 v10, 0x0

    move-wide v2, p0

    move-wide v4, p2

    invoke-static/range {v2 .. v11}, Lcom/kingroot/kinguser/cba;->a(JJIIIIII)Lcom/kingroot/kinguser/w;

    move-result-object v2

    return-object v2

    .line 68
    :cond_0
    move-object/from16 v0, p5

    iget v3, v0, Lcom/kingroot/kinguser/ci;->lS:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 70
    if-eqz p6, :cond_4

    .line 71
    move-object/from16 v0, p5

    iget-object v2, v0, Lcom/kingroot/kinguser/ci;->lR:Ljava/lang/String;

    move-object/from16 v0, p6

    invoke-interface {v0, v2}, Lcom/kingroot/kinguser/pv;->cj(Ljava/lang/String;)Lcom/kingroot/kinguser/cby;

    move-result-object v2

    .line 73
    invoke-virtual {v2}, Lcom/kingroot/kinguser/cby;->success()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    move v11, v2

    .line 74
    goto :goto_0

    .line 73
    :cond_1
    const/4 v2, 0x2

    goto :goto_1

    .line 76
    :cond_2
    if-eqz p6, :cond_4

    .line 77
    move-object/from16 v0, p5

    iget-object v2, v0, Lcom/kingroot/kinguser/ci;->lR:Ljava/lang/String;

    move-object/from16 v0, p6

    invoke-interface {v0, v2}, Lcom/kingroot/kinguser/pv;->ck(Ljava/lang/String;)Lcom/kingroot/kinguser/cby;

    move-result-object v2

    .line 79
    invoke-virtual {v2}, Lcom/kingroot/kinguser/cby;->success()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :goto_2
    move v11, v2

    goto :goto_0

    :cond_3
    const/4 v2, 0x2

    goto :goto_2

    :cond_4
    move v11, v2

    goto :goto_0
.end method

.method public static a(JJLcom/kingroot/kinguser/u;Lcom/kingroot/kinguser/cj;Lcom/kingroot/kinguser/pv;)Lcom/kingroot/kinguser/w;
    .locals 12

    .prologue
    .line 162
    if-eqz p5, :cond_0

    if-nez p4, :cond_1

    .line 163
    :cond_0
    const/4 v11, 0x3

    .line 172
    :goto_0
    const/4 v6, 0x0

    move-object/from16 v0, p4

    iget v7, v0, Lcom/kingroot/kinguser/u;->conchSeqno:I

    move-object/from16 v0, p4

    iget v8, v0, Lcom/kingroot/kinguser/u;->gh:I

    const/4 v9, 0x3

    const/4 v10, 0x0

    move-wide v2, p0

    move-wide v4, p2

    invoke-static/range {v2 .. v11}, Lcom/kingroot/kinguser/cba;->a(JJIIIIII)Lcom/kingroot/kinguser/w;

    move-result-object v2

    return-object v2

    .line 165
    :cond_1
    move-object/from16 v0, p5

    iget-object v2, v0, Lcom/kingroot/kinguser/cj;->process:Ljava/lang/String;

    .line 166
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 167
    const/4 v11, 0x3

    goto :goto_0

    .line 169
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/oz;->gh()Lcom/kingroot/kinguser/oz;

    move-result-object v3

    move-object/from16 v0, p6

    invoke-virtual {v3, v2, v0}, Lcom/kingroot/kinguser/oz;->d(Ljava/lang/String;Lcom/kingroot/kinguser/pv;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :goto_1
    move v11, v2

    goto :goto_0

    :cond_3
    const/4 v2, 0x2

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;JJLcom/kingroot/kinguser/u;Lcom/kingroot/kinguser/cm;Lcom/kingroot/kinguser/pv;)Lcom/kingroot/kinguser/w;
    .locals 13

    .prologue
    .line 95
    const/4 v11, 0x2

    .line 96
    if-nez p6, :cond_0

    .line 97
    const/4 v11, 0x3

    .line 110
    :goto_0
    const/4 v6, 0x0

    move-object/from16 v0, p5

    iget v7, v0, Lcom/kingroot/kinguser/u;->conchSeqno:I

    move-object/from16 v0, p5

    iget v8, v0, Lcom/kingroot/kinguser/u;->gh:I

    const/4 v9, 0x3

    const/4 v10, 0x0

    move-wide v2, p1

    move-wide/from16 v4, p3

    invoke-static/range {v2 .. v11}, Lcom/kingroot/kinguser/cba;->a(JJIIIIII)Lcom/kingroot/kinguser/w;

    move-result-object v2

    return-object v2

    .line 99
    :cond_0
    move-object/from16 v0, p6

    iget v2, v0, Lcom/kingroot/kinguser/cm;->gD:I

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 101
    :sswitch_0
    move-object/from16 v0, p6

    iget-object v2, v0, Lcom/kingroot/kinguser/cm;->uid:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/kingroot/kinguser/ox;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v11

    goto :goto_0

    .line 104
    :sswitch_1
    move-object/from16 v0, p6

    iget-object v2, v0, Lcom/kingroot/kinguser/cm;->uid:Ljava/lang/String;

    move-object/from16 v0, p7

    invoke-static {v2, v0}, Lcom/kingroot/kinguser/ox;->a(Ljava/lang/String;Lcom/kingroot/kinguser/pv;)I

    move-result v11

    goto :goto_0

    .line 99
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method public static a(Landroid/content/Context;JJLcom/kingroot/kinguser/u;Lcom/kingroot/kinguser/aa;Lcom/kingroot/kinguser/pv;)V
    .locals 13

    .prologue
    .line 185
    if-eqz p6, :cond_0

    if-nez p5, :cond_1

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    move-object/from16 v0, p6

    iget-object v2, v0, Lcom/kingroot/kinguser/aa;->pkgName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 189
    move-object/from16 v0, p6

    iget-object v2, v0, Lcom/kingroot/kinguser/aa;->pkgName:Ljava/lang/String;

    .line 193
    :goto_1
    invoke-static {}, Lcom/kingroot/kinguser/oz;->gh()Lcom/kingroot/kinguser/oz;

    move-result-object v9

    move-object/from16 v0, p6

    iget-object v10, v0, Lcom/kingroot/kinguser/aa;->url:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "temp.apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p6

    iget v11, v0, Lcom/kingroot/kinguser/aa;->gD:I

    new-instance v3, Lcom/kingroot/kinguser/oy;

    move-wide v4, p1

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    invoke-direct/range {v3 .. v8}, Lcom/kingroot/kinguser/oy;-><init>(JJLcom/kingroot/kinguser/u;)V

    move-object v4, v9

    move-object v5, p0

    move-object v6, v10

    move-object v7, v2

    move v8, v11

    move-object/from16 v9, p7

    move-object v10, v3

    invoke-virtual/range {v4 .. v10}, Lcom/kingroot/kinguser/oz;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/kingroot/kinguser/pv;Lcom/kingroot/kinguser/oz$a;)V

    goto :goto_0

    .line 191
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public static f(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    .prologue
    const/4 v0, 0x2

    .line 144
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 145
    const/4 v0, 0x3

    .line 153
    :cond_0
    :goto_0
    return v0

    .line 148
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/oz;->gh()Lcom/kingroot/kinguser/oz;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/kingroot/kinguser/oz;->cg(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 149
    if-eqz v1, :cond_0

    .line 153
    invoke-static {}, Lcom/kingroot/kinguser/oz;->gh()Lcom/kingroot/kinguser/oz;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/kingroot/kinguser/oz;->g(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
