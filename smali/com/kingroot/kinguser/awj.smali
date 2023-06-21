.class public Lcom/kingroot/kinguser/awj;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static declared-synchronized ST()V
    .locals 13

    .prologue
    .line 67
    const-class v2, Lcom/kingroot/kinguser/awj;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    div-long v4, v0, v4

    .line 68
    invoke-static {}, Ltmsdk/common/TMSDKContext;->akS()Landroid/content/Context;

    move-result-object v0

    .line 69
    invoke-static {v0}, Lcom/kingroot/kinguser/vb;->S(Landroid/content/Context;)Z

    move-result v3

    .line 70
    invoke-static {v0}, Lcom/kingroot/kinguser/vb;->R(Landroid/content/Context;)Z

    .line 73
    const/16 v0, 0x8d

    invoke-static {v0}, Lcom/kingroot/kinguser/awi;->ho(I)Lcom/kingroot/kinguser/awh;

    move-result-object v1

    .line 74
    if-eqz v1, :cond_1

    iget-boolean v0, v1, Lcom/kingroot/kinguser/awh;->aUR:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    if-eqz v3, :cond_1

    .line 75
    const/4 v0, 0x0

    .line 77
    :try_start_1
    iget-object v1, v1, Lcom/kingroot/kinguser/awh;->aUT:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 80
    :goto_0
    if-gtz v0, :cond_0

    const/16 v0, 0xa8

    .line 84
    :cond_0
    :try_start_2
    invoke-static {}, Lcom/kingroot/kinguser/awi;->SN()J

    move-result-wide v6

    sub-long v6, v4, v6

    int-to-long v0, v0

    const-wide/16 v8, 0xe10

    mul-long/2addr v0, v8

    cmp-long v0, v6, v0

    if-lez v0, :cond_1

    .line 85
    invoke-static {}, Lcom/kingroot/kinguser/awl;->SV()V

    .line 110
    :cond_1
    const/16 v0, 0xa3

    invoke-static {v0}, Lcom/kingroot/kinguser/awi;->ho(I)Lcom/kingroot/kinguser/awh;

    move-result-object v6

    .line 111
    if-eqz v6, :cond_6

    iget-boolean v0, v6, Lcom/kingroot/kinguser/awh;->aUR:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_6

    .line 112
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 114
    :try_start_3
    iget v0, v6, Lcom/kingroot/kinguser/awh;->aUS:I

    .line 115
    iget-object v6, v6, Lcom/kingroot/kinguser/awh;->aUT:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v1

    move v12, v1

    move v1, v0

    move v0, v12

    .line 118
    :goto_1
    if-gtz v1, :cond_2

    const/4 v1, 0x1

    .line 119
    :cond_2
    if-gtz v0, :cond_3

    const/4 v0, 0x1

    .line 125
    :cond_3
    :try_start_4
    invoke-static {}, Lcom/kingroot/kinguser/awi;->SP()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_4

    .line 126
    invoke-static {}, Lcom/kingroot/kinguser/awi;->SP()J

    move-result-wide v6

    sub-long v6, v4, v6

    int-to-long v8, v1

    const-wide/16 v10, 0xe10

    mul-long/2addr v8, v10

    cmp-long v1, v6, v8

    if-ltz v1, :cond_5

    .line 127
    :cond_4
    invoke-static {}, Lcom/kingroot/kinguser/awm;->SX()V

    .line 130
    :cond_5
    invoke-static {}, Lcom/kingroot/kinguser/awi;->SQ()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-gtz v1, :cond_7

    .line 131
    invoke-static {v4, v5}, Lcom/kingroot/kinguser/awi;->cm(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 137
    :cond_6
    :goto_2
    monitor-exit v2

    return-void

    .line 116
    :catch_0
    move-exception v6

    move v12, v1

    move v1, v0

    move v0, v12

    goto :goto_1

    .line 132
    :cond_7
    if-eqz v3, :cond_6

    :try_start_5
    invoke-static {}, Lcom/kingroot/kinguser/awi;->SQ()J

    move-result-wide v6

    sub-long/2addr v4, v6

    int-to-long v0, v0

    const-wide/16 v6, 0xe10

    mul-long/2addr v0, v6

    cmp-long v0, v4, v0

    if-lez v0, :cond_6

    .line 133
    invoke-static {}, Lcom/kingroot/kinguser/awm;->SY()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 78
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static SU()Z
    .locals 6

    .prologue
    .line 235
    invoke-static {}, Lcom/kingroot/kinguser/awi;->SR()J

    move-result-wide v0

    .line 236
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 237
    sub-long v0, v2, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v4, 0x7d0

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    .line 238
    const/4 v0, 0x0

    .line 241
    :goto_0
    return v0

    .line 240
    :cond_0
    invoke-static {v2, v3}, Lcom/kingroot/kinguser/awi;->cn(J)V

    .line 241
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static declared-synchronized bF(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    const-class v0, Lcom/kingroot/kinguser/awj;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/kingroot/kinguser/awi;->bE(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    monitor-exit v0

    return-void

    .line 62
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized f(IILjava/lang/String;)V
    .locals 6

    .prologue
    .line 245
    const-class v1, Lcom/kingroot/kinguser/awj;

    monitor-enter v1

    const/16 v0, 0xb8

    .line 246
    if-nez p2, :cond_0

    :try_start_0
    const-string p2, ""

    .line 248
    :cond_0
    new-instance v2, Lcom/kingroot/kinguser/k;

    invoke-direct {v2}, Lcom/kingroot/kinguser/k;-><init>()V

    .line 249
    iput v0, v2, Lcom/kingroot/kinguser/k;->ev:I

    .line 250
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v2, Lcom/kingroot/kinguser/k;->ew:Ljava/util/ArrayList;

    .line 251
    new-instance v0, Lcom/kingroot/kinguser/l;

    invoke-direct {v0}, Lcom/kingroot/kinguser/l;-><init>()V

    .line 252
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v0, Lcom/kingroot/kinguser/l;->ey:Ljava/util/Map;

    .line 253
    iget-object v3, v0, Lcom/kingroot/kinguser/l;->ey:Ljava/util/Map;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    iget-object v3, v0, Lcom/kingroot/kinguser/l;->ey:Ljava/util/Map;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    iget-object v3, v0, Lcom/kingroot/kinguser/l;->ey:Ljava/util/Map;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    iget-object v3, v2, Lcom/kingroot/kinguser/k;->ew:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    invoke-static {}, Lcom/kingroot/kinguser/awn;->Ta()Lcom/kingroot/kinguser/awn;

    move-result-object v0

    const/16 v3, 0xfdc

    const/4 v4, 0x0

    new-instance v5, Lcom/kingroot/kinguser/awj$1;

    invoke-direct {v5}, Lcom/kingroot/kinguser/awj$1;-><init>()V

    invoke-virtual {v0, v3, v2, v4, v5}, Lcom/kingroot/kinguser/awn;->a(ILcom/qq/taf/jce/JceStruct;Lcom/qq/taf/jce/JceStruct;Lcom/kingroot/kinguser/cat;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    :goto_0
    monitor-exit v1

    return-void

    .line 245
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 264
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static declared-synchronized f(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5

    .prologue
    .line 144
    const-class v1, Lcom/kingroot/kinguser/awj;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 148
    :cond_1
    :try_start_1
    invoke-static {p1}, Lcom/kingroot/kinguser/awj;->jM(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 149
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x1f4

    if-ge v2, v3, :cond_0

    .line 154
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 156
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 161
    :cond_2
    const/16 v3, 0xa3

    if-ne p2, v3, :cond_3

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 166
    :cond_3
    sget-object v3, Lcom/kingroot/kinguser/aae$a;->Xr:Lcom/kingroot/kinguser/aae$a;

    invoke-static {v3}, Lcom/kingroot/kinguser/aae;->a(Lcom/kingroot/kinguser/aae$a;)Lcom/kingroot/kinguser/aaf;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/kingroot/kinguser/aaf;->C([B)[B

    move-result-object v3

    .line 167
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    new-instance v3, Ljava/io/ObjectOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 170
    invoke-virtual {v3, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 171
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->flush()V

    .line 172
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 175
    :catch_0
    move-exception v0

    goto :goto_0

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized jL(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 182
    const-class v1, Lcom/kingroot/kinguser/awj;

    monitor-enter v1

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    :try_start_1
    invoke-static {p0}, Lcom/kingroot/kinguser/awj;->jM(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 186
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 187
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 188
    sget-object v4, Lcom/kingroot/kinguser/aae$a;->Xr:Lcom/kingroot/kinguser/aae$a;

    invoke-static {v4}, Lcom/kingroot/kinguser/aae;->a(Lcom/kingroot/kinguser/aae$a;)Lcom/kingroot/kinguser/aaf;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/kingroot/kinguser/aaf;->D([B)[B

    move-result-object v0

    .line 189
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    .line 190
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 193
    :catch_0
    move-exception v0

    .line 196
    :cond_0
    monitor-exit v1

    return-object v2

    .line 182
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized jM(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 201
    const-class v2, Lcom/kingroot/kinguser/awj;

    monitor-enter v2

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 205
    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    .line 219
    :goto_0
    monitor-exit v2

    return-object v0

    .line 209
    :cond_0
    :try_start_2
    new-instance v3, Ljava/io/ObjectInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 210
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 212
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 213
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 215
    :cond_1
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    move-object v0, v1

    .line 219
    goto :goto_0

    .line 201
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 216
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static declared-synchronized jN(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 225
    const-class v1, Lcom/kingroot/kinguser/awj;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 226
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 227
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 225
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 229
    :catch_0
    move-exception v0

    goto :goto_0
.end method
