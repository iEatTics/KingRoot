.class public Lcom/kingroot/kinguser/vd;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static T(Landroid/content/Context;)Lcom/kingroot/kinguser/dn;
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 150
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/kingroot/kinguser/vd;->d(Landroid/content/Context;Z)Lcom/kingroot/kinguser/dn;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;Z)I
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 54
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ie()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1, p2, p3}, Lcom/kingroot/kinguser/vd;->a(Landroid/content/Context;Ljava/lang/String;Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;Z)I

    move-result v0

    return v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;Z)I
    .locals 8

    .prologue
    const/16 v1, -0x1770

    .line 72
    .line 74
    const/4 v0, 0x0

    .line 78
    :try_start_0
    sget-object v2, Lcom/kingroot/kinguser/aae$a;->Xr:Lcom/kingroot/kinguser/aae$a;

    invoke-static {v2}, Lcom/kingroot/kinguser/aae;->a(Lcom/kingroot/kinguser/aae$a;)Lcom/kingroot/kinguser/aaf;

    move-result-object v2

    invoke-virtual {p2}, Lcom/qq/jce/wup/UniPacket;->encode()[B

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/kingroot/kinguser/aaf;->C([B)[B

    move-result-object v2

    .line 80
    invoke-static {p0, p1}, Lcom/kingroot/kinguser/uy;->k(Landroid/content/Context;Ljava/lang/String;)Lcom/kingroot/kinguser/uy;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 81
    :try_start_1
    const-string v0, "POST"

    invoke-virtual {v3, v0}, Lcom/kingroot/kinguser/uy;->setRequestMethod(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v3, v2}, Lcom/kingroot/kinguser/uy;->z([B)V

    .line 83
    invoke-virtual {v3}, Lcom/kingroot/kinguser/uy;->kZ()I

    .line 87
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 88
    const/4 v2, 0x0

    invoke-virtual {v3, v2, v0}, Lcom/kingroot/kinguser/uy;->b(ZLjava/util/concurrent/atomic/AtomicReference;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    if-eqz v2, :cond_2

    .line 122
    if-eqz v3, :cond_0

    .line 123
    invoke-virtual {v3}, Lcom/kingroot/kinguser/uy;->close()V

    :cond_0
    move v0, v2

    .line 128
    :cond_1
    :goto_0
    return v0

    .line 91
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 94
    if-nez p4, :cond_7

    if-eqz v0, :cond_7

    array-length v4, v0

    if-lez v4, :cond_7

    .line 96
    sget-object v4, Lcom/kingroot/kinguser/aae$a;->Xr:Lcom/kingroot/kinguser/aae$a;

    invoke-static {v4}, Lcom/kingroot/kinguser/aae;->a(Lcom/kingroot/kinguser/aae$a;)Lcom/kingroot/kinguser/aaf;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/kingroot/kinguser/aaf;->D([B)[B

    move-result-object v0

    .line 97
    if-eqz v0, :cond_4

    .line 98
    invoke-virtual {p3, v0}, Lcom/qq/jce/wup/UniPacket;->decode([B)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move v0, v2

    .line 106
    :goto_1
    :try_start_3
    invoke-virtual {v3}, Lcom/kingroot/kinguser/uy;->getDate()J

    move-result-wide v4

    .line 107
    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_3

    .line 108
    invoke-static {v4, v5}, Lcom/kingroot/kinguser/wb;->Q(J)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 122
    :cond_3
    :goto_2
    if-eqz v3, :cond_1

    .line 123
    invoke-virtual {v3}, Lcom/kingroot/kinguser/uy;->close()V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 100
    goto :goto_1

    .line 112
    :catch_0
    move-exception v1

    move-object v1, v0

    .line 113
    :goto_3
    const/16 v0, -0x17a9

    .line 122
    if-eqz v1, :cond_1

    .line 123
    invoke-virtual {v1}, Lcom/kingroot/kinguser/uy;->close()V

    goto :goto_0

    .line 115
    :catch_1
    move-exception v2

    move-object v3, v0

    .line 122
    :goto_4
    if-eqz v3, :cond_6

    .line 123
    invoke-virtual {v3}, Lcom/kingroot/kinguser/uy;->close()V

    move v0, v1

    .line 124
    goto :goto_0

    .line 118
    :catch_2
    move-exception v2

    move-object v3, v0

    .line 122
    :goto_5
    if-eqz v3, :cond_6

    .line 123
    invoke-virtual {v3}, Lcom/kingroot/kinguser/uy;->close()V

    move v0, v1

    .line 124
    goto :goto_0

    .line 122
    :catchall_0
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    :goto_6
    if-eqz v3, :cond_5

    .line 123
    invoke-virtual {v3}, Lcom/kingroot/kinguser/uy;->close()V

    .line 124
    :cond_5
    throw v0

    .line 122
    :catchall_1
    move-exception v0

    goto :goto_6

    .line 118
    :catch_3
    move-exception v0

    goto :goto_5

    .line 115
    :catch_4
    move-exception v0

    goto :goto_4

    .line 112
    :catch_5
    move-exception v0

    move-object v1, v3

    goto :goto_3

    .line 111
    :catch_6
    move-exception v1

    goto :goto_2

    :cond_6
    move v0, v1

    goto :goto_0

    :cond_7
    move v0, v2

    goto :goto_1
.end method

.method public static a(ILcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;)V
    .locals 2

    .prologue
    .line 255
    invoke-static {p0}, Lcom/kingroot/kinguser/vc;->bc(I)Lcom/kingroot/kinguser/vc$a;

    move-result-object v0

    .line 256
    if-nez v0, :cond_0

    .line 261
    :goto_0
    return-void

    .line 260
    :cond_0
    iget-object v1, v0, Lcom/kingroot/kinguser/vc$a;->Ku:Ljava/lang/String;

    iget-object v0, v0, Lcom/kingroot/kinguser/vc$a;->Kv:Ljava/lang/String;

    invoke-static {p0, v1, v0, p1, p2}, Lcom/kingroot/kinguser/vd;->a(ILjava/lang/String;Ljava/lang/String;Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;)V

    goto :goto_0
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;)V
    .locals 1

    .prologue
    .line 271
    const-string v0, "UTF-8"

    invoke-virtual {p3, v0}, Lcom/qq/jce/wup/UniPacket;->setEncodeName(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p3, p0}, Lcom/qq/jce/wup/UniPacket;->setRequestId(I)V

    .line 273
    invoke-virtual {p3, p1}, Lcom/qq/jce/wup/UniPacket;->setServantName(Ljava/lang/String;)V

    .line 274
    invoke-virtual {p3, p2}, Lcom/qq/jce/wup/UniPacket;->setFuncName(Ljava/lang/String;)V

    .line 276
    const-string v0, "UTF-8"

    invoke-virtual {p4, v0}, Lcom/qq/jce/wup/UniPacket;->setEncodeName(Ljava/lang/String;)V

    .line 277
    return-void
.end method

.method public static d(Landroid/content/Context;Z)Lcom/kingroot/kinguser/dn;
    .locals 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 161
    new-instance v3, Lcom/kingroot/kinguser/dn;

    invoke-direct {v3}, Lcom/kingroot/kinguser/dn;-><init>()V

    .line 162
    invoke-static {p0}, Lcom/kingroot/kinguser/aav;->ae(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/kingroot/kinguser/aab;->dH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/kingroot/kinguser/dn;->iE:Ljava/lang/String;

    .line 163
    invoke-static {p0}, Lcom/kingroot/kinguser/aav;->ag(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/kingroot/kinguser/aab;->dH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/kingroot/kinguser/dn;->iF:Ljava/lang/String;

    .line 164
    invoke-static {p0}, Lcom/kingroot/kinguser/vb;->O(Landroid/content/Context;)B

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    iput v0, v3, Lcom/kingroot/kinguser/dn;->ct:I

    .line 165
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ia()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/kingroot/kinguser/dn;->lc:Ljava/lang/String;

    .line 166
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ib()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/kingroot/kinguser/dn;->dT:Ljava/lang/String;

    .line 167
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->hZ()I

    move-result v0

    iput v0, v3, Lcom/kingroot/kinguser/dn;->dS:I

    .line 168
    invoke-static {}, Lcom/kingroot/kinguser/aav;->pZ()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/aab;->dH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/kingroot/kinguser/dn;->iM:Ljava/lang/String;

    .line 169
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->hY()I

    move-result v0

    iput v0, v3, Lcom/kingroot/kinguser/dn;->product:I

    .line 170
    invoke-static {}, Lcom/kingroot/kinguser/aav;->qb()I

    move-result v0

    iput v0, v3, Lcom/kingroot/kinguser/dn;->ls:I

    .line 172
    if-eqz p1, :cond_1

    .line 173
    invoke-static {}, Lcom/kingroot/kinguser/ux;->kT()Lcom/kingroot/kinguser/ux;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ux;->getGuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/aab;->dH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/kingroot/kinguser/dn;->it:Ljava/lang/String;

    .line 174
    invoke-static {}, Lcom/kingroot/kinguser/ux;->kT()Lcom/kingroot/kinguser/ux;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ux;->getSharkGuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/aab;->dH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/kingroot/kinguser/dn;->nv:Ljava/lang/String;

    .line 180
    :goto_1
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ic()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/kingroot/kinguser/dn;->p(I)V

    .line 183
    invoke-static {}, Lcom/kingroot/kinguser/wb;->nd()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    :goto_2
    add-int v4, v2, v0

    .line 184
    invoke-static {}, Lcom/kingroot/kinguser/wb;->ne()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x8

    :goto_3
    add-int/2addr v0, v4

    .line 185
    iput v0, v3, Lcom/kingroot/kinguser/dn;->nr:I

    .line 192
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/kingroot/kinguser/zh;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 193
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v4, "[\\.]"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 194
    array-length v0, v4

    const/4 v5, 0x3

    if-lt v0, v5, :cond_4

    .line 195
    const/4 v0, 0x0

    aget-object v0, v4, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 196
    const/4 v0, 0x1

    aget-object v0, v4, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 197
    const/4 v5, 0x2

    :try_start_1
    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 202
    :goto_4
    new-instance v4, Lcom/kingroot/kinguser/cv;

    invoke-direct {v4}, Lcom/kingroot/kinguser/cv;-><init>()V

    iput-object v4, v3, Lcom/kingroot/kinguser/dn;->nq:Lcom/kingroot/kinguser/cv;

    .line 203
    iget-object v4, v3, Lcom/kingroot/kinguser/dn;->nq:Lcom/kingroot/kinguser/cv;

    iput v1, v4, Lcom/kingroot/kinguser/cv;->fT:I

    .line 204
    iget-object v1, v3, Lcom/kingroot/kinguser/dn;->nq:Lcom/kingroot/kinguser/cv;

    iput v0, v1, Lcom/kingroot/kinguser/cv;->fU:I

    .line 205
    iget-object v0, v3, Lcom/kingroot/kinguser/dn;->nq:Lcom/kingroot/kinguser/cv;

    iput v2, v0, Lcom/kingroot/kinguser/cv;->fV:I

    .line 206
    invoke-static {}, Lcom/kingroot/kinguser/zb;->pi()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/aab;->dH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/kingroot/kinguser/dn;->nw:Ljava/lang/String;

    .line 207
    return-object v3

    :cond_0
    move v0, v1

    .line 164
    goto/16 :goto_0

    .line 176
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/aav;->getGuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/aab;->dH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/kingroot/kinguser/dn;->it:Ljava/lang/String;

    .line 177
    invoke-static {}, Lcom/kingroot/kinguser/aav;->getSharkGuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/aab;->dH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/kingroot/kinguser/dn;->nv:Ljava/lang/String;

    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 183
    goto :goto_2

    :cond_3
    move v0, v2

    .line 184
    goto :goto_3

    .line 199
    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_4

    :catch_1
    move-exception v4

    goto :goto_4

    :cond_4
    move v0, v2

    goto :goto_4
.end method

.method public static lh()Lcom/kingroot/kinguser/cq;
    .locals 2

    .prologue
    .line 136
    new-instance v0, Lcom/kingroot/kinguser/cq;

    invoke-direct {v0}, Lcom/kingroot/kinguser/cq;-><init>()V

    .line 137
    const/4 v1, 0x2

    iput v1, v0, Lcom/kingroot/kinguser/cq;->mv:I

    .line 138
    const/16 v1, 0xc9

    iput v1, v0, Lcom/kingroot/kinguser/cq;->iJ:I

    .line 139
    return-object v0
.end method
