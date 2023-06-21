.class public abstract Lcom/kingroot/kinguser/blu;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Lcom/kingroot/kinguser/bmz;Lcom/kingroot/kinguser/bmz;Z)I
    .locals 12

    .prologue
    const/4 v4, 0x0

    const/16 v2, -0x1770

    .line 65
    .line 67
    const/4 v0, 0x0

    .line 72
    :try_start_0
    invoke-virtual {p1}, Lcom/kingroot/kinguser/bmz;->agc()[B

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/bmu;->l([B)[B

    move-result-object v6

    .line 74
    sget-object v1, Lcom/kingroot/kinguser/blo;->bAc:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/kingroot/kinguser/bmi;->E(Landroid/content/Context;Ljava/lang/String;)Lcom/kingroot/kinguser/bmi;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 75
    :try_start_1
    const-string v0, "POST"

    invoke-virtual {v3, v0}, Lcom/kingroot/kinguser/bmi;->setRequestMethod(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v3, v6}, Lcom/kingroot/kinguser/bmi;->P([B)V

    .line 77
    invoke-virtual {v3}, Lcom/kingroot/kinguser/bmi;->cS()I

    .line 81
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 82
    const/4 v1, 0x0

    invoke-virtual {v3, v1, v0}, Lcom/kingroot/kinguser/bmi;->a(ZLjava/util/concurrent/atomic/AtomicReference;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    if-eqz v1, :cond_2

    .line 83
    if-eqz v3, :cond_0

    .line 128
    invoke-virtual {v3}, Lcom/kingroot/kinguser/bmi;->close()V

    :cond_0
    move v0, v1

    .line 133
    :cond_1
    :goto_0
    return v0

    .line 85
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 88
    if-eqz v0, :cond_3

    array-length v5, v0

    if-lez v5, :cond_3

    .line 91
    invoke-static {v0}, Lcom/kingroot/kinguser/bmu;->S([B)[B

    move-result-object v5

    .line 92
    if-eqz v5, :cond_5

    .line 93
    invoke-virtual {p2, v5}, Lcom/kingroot/kinguser/bmz;->s([B)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 101
    :cond_3
    :goto_1
    :try_start_3
    invoke-virtual {v3}, Lcom/kingroot/kinguser/bmi;->getDate()J

    move-result-wide v8

    .line 102
    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-lez v5, :cond_4

    .line 103
    invoke-static {v8, v9}, Lcom/kingroot/kinguser/bmu;->d(J)V

    .line 107
    :cond_4
    if-eqz v0, :cond_6

    array-length v0, v0

    move v5, v0

    .line 108
    :goto_2
    if-eqz v6, :cond_7

    array-length v0, v6

    .line 109
    :goto_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 110
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 127
    :goto_4
    if-eqz v3, :cond_a

    .line 128
    invoke-virtual {v3}, Lcom/kingroot/kinguser/bmi;->close()V

    move v0, v1

    .line 129
    goto :goto_0

    :cond_5
    move v1, v2

    .line 95
    goto :goto_1

    :cond_6
    move v5, v4

    .line 107
    goto :goto_2

    :cond_7
    move v0, v4

    .line 108
    goto :goto_3

    .line 117
    :catch_0
    move-exception v1

    move-object v1, v0

    .line 118
    :goto_5
    const/16 v0, -0x17a9

    .line 127
    if-eqz v1, :cond_1

    .line 128
    invoke-virtual {v1}, Lcom/kingroot/kinguser/bmi;->close()V

    goto :goto_0

    .line 120
    :catch_1
    move-exception v1

    move-object v3, v0

    .line 127
    :goto_6
    if-eqz v3, :cond_9

    .line 128
    invoke-virtual {v3}, Lcom/kingroot/kinguser/bmi;->close()V

    move v0, v2

    .line 129
    goto :goto_0

    .line 123
    :catch_2
    move-exception v1

    move-object v3, v0

    .line 127
    :goto_7
    if-eqz v3, :cond_9

    .line 128
    invoke-virtual {v3}, Lcom/kingroot/kinguser/bmi;->close()V

    move v0, v2

    .line 129
    goto :goto_0

    .line 127
    :catchall_0
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    :goto_8
    if-eqz v3, :cond_8

    .line 128
    invoke-virtual {v3}, Lcom/kingroot/kinguser/bmi;->close()V

    .line 129
    :cond_8
    throw v0

    .line 127
    :catchall_1
    move-exception v0

    goto :goto_8

    .line 123
    :catch_3
    move-exception v0

    goto :goto_7

    .line 120
    :catch_4
    move-exception v0

    goto :goto_6

    .line 117
    :catch_5
    move-exception v0

    move-object v1, v3

    goto :goto_5

    :catch_6
    move-exception v0

    goto :goto_4

    :cond_9
    move v0, v2

    goto :goto_0

    :cond_a
    move v0, v1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;ZZ)Lcom/kingx/cloudsdk/ch;
    .locals 7

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 165
    new-instance v4, Lcom/kingx/cloudsdk/ch;

    invoke-direct {v4}, Lcom/kingx/cloudsdk/ch;-><init>()V

    .line 166
    invoke-static {p0}, Lcom/kingroot/kinguser/bmn;->bD(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bmu;->mo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/kingx/cloudsdk/ch;->mv(Ljava/lang/String;)V

    .line 167
    invoke-static {p0}, Lcom/kingroot/kinguser/bmn;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bmu;->mo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/kingx/cloudsdk/ch;->mw(Ljava/lang/String;)V

    .line 168
    invoke-static {p0}, Lcom/kingroot/kinguser/bmu;->bJ(Landroid/content/Context;)B

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Lcom/kingx/cloudsdk/ch;->jT(I)V

    .line 169
    const-string v0, "F7E418FB9C74DF11"

    invoke-virtual {v4, v0}, Lcom/kingx/cloudsdk/ch;->mD(Ljava/lang/String;)V

    .line 170
    sget-object v0, Lcom/kingroot/kinguser/bmu;->uL:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/kingx/cloudsdk/ch;->bi(Ljava/lang/String;)V

    .line 171
    const/16 v0, 0x321

    invoke-virtual {v4, v0}, Lcom/kingx/cloudsdk/ch;->jU(I)V

    .line 172
    invoke-static {}, Lcom/kingroot/kinguser/bmn;->afR()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bmu;->mo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/kingx/cloudsdk/ch;->bj(Ljava/lang/String;)V

    .line 179
    const/16 v0, 0x27

    invoke-virtual {v4, v0}, Lcom/kingx/cloudsdk/ch;->jV(I)V

    .line 180
    invoke-static {}, Lcom/kingroot/kinguser/bmn;->V()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/kingx/cloudsdk/ch;->jS(I)V

    .line 182
    if-eqz p1, :cond_2

    .line 183
    invoke-static {}, Lcom/kingroot/kinguser/blr;->afu()Lcom/kingroot/kinguser/blr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/blr;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bmu;->mo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/kingx/cloudsdk/ch;->b(Ljava/lang/String;)V

    .line 184
    invoke-static {}, Lcom/kingroot/kinguser/blr;->afu()Lcom/kingroot/kinguser/blr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/blr;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bmu;->mo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/kingx/cloudsdk/ch;->bk(Ljava/lang/String;)V

    .line 190
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 191
    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_3

    .line 192
    invoke-virtual {v4, v3}, Lcom/kingx/cloudsdk/ch;->an(I)V

    .line 197
    :goto_2
    invoke-static {v2}, Lcom/kingroot/kinguser/bmu;->ep(Z)I

    move-result v0

    .line 201
    invoke-virtual {v4, v0}, Lcom/kingx/cloudsdk/ch;->ao(I)V

    .line 204
    invoke-static {}, Lcom/kingroot/kinguser/blo;->afq()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v5, "[\\.]"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 205
    new-instance v0, Lcom/kingx/cloudsdk/cg;

    invoke-direct {v0}, Lcom/kingx/cloudsdk/cg;-><init>()V

    iput-object v0, v4, Lcom/kingx/cloudsdk/ch;->hL:Lcom/kingx/cloudsdk/cg;

    .line 206
    iget-object v6, v4, Lcom/kingx/cloudsdk/ch;->hL:Lcom/kingx/cloudsdk/cg;

    array-length v0, v5

    if-lez v0, :cond_4

    aget-object v0, v5, v3

    .line 207
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_3
    iput v0, v6, Lcom/kingx/cloudsdk/cg;->hG:I

    .line 208
    iget-object v6, v4, Lcom/kingx/cloudsdk/ch;->hL:Lcom/kingx/cloudsdk/cg;

    array-length v0, v5

    if-lt v0, v1, :cond_5

    aget-object v0, v5, v2

    .line 209
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_4
    iput v0, v6, Lcom/kingx/cloudsdk/cg;->hH:I

    .line 210
    iget-object v0, v4, Lcom/kingx/cloudsdk/ch;->hL:Lcom/kingx/cloudsdk/cg;

    array-length v2, v5

    const/4 v6, 0x3

    if-lt v2, v6, :cond_0

    aget-object v1, v5, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    :cond_0
    iput v3, v0, Lcom/kingx/cloudsdk/cg;->hI:I

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bmu;->mo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/kingx/cloudsdk/ch;->mE(Ljava/lang/String;)V

    .line 216
    return-object v4

    :cond_1
    move v0, v2

    .line 168
    goto/16 :goto_0

    .line 186
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/bmn;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bmu;->mo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/kingx/cloudsdk/ch;->b(Ljava/lang/String;)V

    .line 187
    invoke-static {}, Lcom/kingroot/kinguser/bmn;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bmu;->mo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/kingx/cloudsdk/ch;->bk(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 194
    :cond_3
    invoke-virtual {v4, v2}, Lcom/kingx/cloudsdk/ch;->an(I)V

    goto/16 :goto_2

    :cond_4
    move v0, v2

    .line 207
    goto :goto_3

    :cond_5
    move v0, v3

    .line 209
    goto :goto_4
.end method
