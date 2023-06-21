.class public Lcom/kingroot/kinguser/btt;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final bNM:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/kingroot/kinguser/btt;->bNM:[B

    .line 17
    return-void
.end method

.method private a(Lcom/kingroot/kinguser/btp;Ljava/io/DataInputStream;Ljava/io/DataOutputStream;)V
    .locals 5

    .prologue
    const/16 v1, 0x1000

    const/4 v3, 0x0

    .line 264
    invoke-static {p1, p3}, Lcom/kingroot/kinguser/btv;->a(Lcom/kingroot/kinguser/btp;Ljava/io/DataOutputStream;)V

    .line 268
    iget v2, p1, Lcom/kingroot/kinguser/btp;->bNr:I

    move v0, v3

    .line 271
    :cond_0
    :goto_0
    if-lez v2, :cond_1

    if-gez v0, :cond_3

    .line 281
    :cond_1
    invoke-virtual {p1}, Lcom/kingroot/kinguser/btp;->aia()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 282
    invoke-static {p1, p3}, Lcom/kingroot/kinguser/btq;->a(Lcom/kingroot/kinguser/btp;Ljava/io/DataOutputStream;)V

    .line 284
    :cond_2
    return-void

    .line 272
    :cond_3
    if-le v2, v1, :cond_4

    move v0, v1

    .line 273
    :goto_1
    iget-object v4, p0, Lcom/kingroot/kinguser/btt;->bNM:[B

    invoke-virtual {p2, v4, v3, v0}, Ljava/io/DataInputStream;->read([BII)I

    move-result v0

    .line 274
    if-lez v0, :cond_0

    .line 275
    iget-object v4, p0, Lcom/kingroot/kinguser/btt;->bNM:[B

    invoke-virtual {p3, v4, v3, v0}, Ljava/io/DataOutputStream;->write([BII)V

    .line 276
    sub-int/2addr v2, v0

    goto :goto_0

    :cond_4
    move v0, v2

    .line 272
    goto :goto_1
.end method

.method private a(Lcom/kingroot/kinguser/btp;Ljava/io/RandomAccessFile;Lcom/kingroot/kinguser/btw;Ljava/io/DataOutputStream;)V
    .locals 6

    .prologue
    const/16 v1, 0x1000

    const/4 v3, 0x0

    .line 206
    new-instance v0, Ljava/lang/String;

    iget-object v2, p1, Lcom/kingroot/kinguser/btp;->bNB:[B

    const-string v4, "utf-8"

    invoke-direct {v0, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 209
    invoke-virtual {p3, v0}, Lcom/kingroot/kinguser/btw;->ng(Ljava/lang/String;)Lcom/kingroot/kinguser/btp;

    move-result-object v2

    .line 211
    if-nez v2, :cond_0

    .line 213
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0

    .line 216
    :cond_0
    iget-short v4, v2, Lcom/kingroot/kinguser/btp;->bNn:S

    iput-short v4, p1, Lcom/kingroot/kinguser/btp;->bNn:S

    .line 217
    iget v4, v2, Lcom/kingroot/kinguser/btp;->bNr:I

    iput v4, p1, Lcom/kingroot/kinguser/btp;->bNr:I

    .line 218
    iget v4, v2, Lcom/kingroot/kinguser/btp;->bNq:I

    iput v4, p1, Lcom/kingroot/kinguser/btp;->bNq:I

    .line 220
    iget-short v4, v2, Lcom/kingroot/kinguser/btp;->bNu:S

    iput-short v4, p1, Lcom/kingroot/kinguser/btp;->bNu:S

    .line 221
    iget-object v4, v2, Lcom/kingroot/kinguser/btp;->bNC:[B

    iput-object v4, p1, Lcom/kingroot/kinguser/btp;->bNC:[B

    .line 223
    iget-short v4, v2, Lcom/kingroot/kinguser/btp;->bNv:S

    iput-short v4, p1, Lcom/kingroot/kinguser/btp;->bNv:S

    .line 224
    iget-object v2, v2, Lcom/kingroot/kinguser/btp;->bND:[B

    iput-object v2, p1, Lcom/kingroot/kinguser/btp;->bND:[B

    .line 226
    invoke-static {p1, p4}, Lcom/kingroot/kinguser/btv;->a(Lcom/kingroot/kinguser/btp;Ljava/io/DataOutputStream;)V

    .line 227
    iget v2, p1, Lcom/kingroot/kinguser/btp;->bNr:I

    .line 230
    if-lez v2, :cond_2

    .line 232
    invoke-virtual {p3, v0}, Lcom/kingroot/kinguser/btw;->nh(Ljava/lang/String;)I

    move-result v0

    .line 233
    int-to-long v4, v0

    invoke-virtual {p2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    move v0, v3

    .line 238
    :cond_1
    :goto_0
    if-lez v2, :cond_2

    if-gez v0, :cond_4

    .line 249
    :cond_2
    invoke-virtual {p1}, Lcom/kingroot/kinguser/btp;->aia()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 250
    invoke-static {p1, p4}, Lcom/kingroot/kinguser/btq;->a(Lcom/kingroot/kinguser/btp;Ljava/io/DataOutputStream;)V

    .line 252
    :cond_3
    return-void

    .line 239
    :cond_4
    if-le v2, v1, :cond_5

    move v0, v1

    .line 240
    :goto_1
    iget-object v4, p0, Lcom/kingroot/kinguser/btt;->bNM:[B

    invoke-virtual {p2, v4, v3, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0

    .line 241
    if-lez v0, :cond_1

    .line 242
    iget-object v4, p0, Lcom/kingroot/kinguser/btt;->bNM:[B

    invoke-virtual {p4, v4, v3, v0}, Ljava/io/DataOutputStream;->write([BII)V

    .line 243
    sub-int/2addr v2, v0

    goto :goto_0

    :cond_5
    move v0, v2

    .line 239
    goto :goto_1
.end method


# virtual methods
.method public u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 9

    .prologue
    const/4 v6, -0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 37
    .line 45
    :try_start_0
    new-instance v7, Lcom/kingroot/kinguser/btw;

    invoke-direct {v7}, Lcom/kingroot/kinguser/btw;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 47
    :try_start_1
    invoke-virtual {v7, p1}, Lcom/kingroot/kinguser/btw;->nf(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 57
    :try_start_2
    new-instance v5, Ljava/io/DataInputStream;

    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 65
    :try_start_3
    new-instance v4, Ljava/io/DataOutputStream;

    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v4, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 73
    :try_start_4
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v0, "r"

    invoke-direct {v2, p1, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_18
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 80
    :try_start_5
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_a
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 85
    :try_start_6
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_a
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v6

    move v0, v1

    .line 93
    :goto_0
    if-lt v0, v6, :cond_5

    .line 108
    :try_start_7
    const-string v0, "GenNewApkV2"

    const-string v6, "read patch file headed finished."

    invoke-static {v0, v6}, Lcom/kingroot/kinguser/but;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_a
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 112
    :try_start_8
    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_d
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_a
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v0

    if-nez v0, :cond_9

    .line 130
    :try_start_9
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->size()I
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_a
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result v6

    .line 133
    :try_start_a
    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_e
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result v0

    if-nez v0, :cond_b

    .line 143
    :try_start_b
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 144
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->size()I

    move-result v3

    sub-int/2addr v3, v6

    .line 145
    const v7, 0x504b0506

    if-ne v0, v7, :cond_c

    .line 146
    new-instance v0, Lcom/kingroot/kinguser/bts;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bts;-><init>()V

    .line 147
    invoke-virtual {v0, v5}, Lcom/kingroot/kinguser/bts;->a(Ljava/io/DataInputStream;)V

    .line 148
    iput v6, v0, Lcom/kingroot/kinguser/bts;->bNL:I

    .line 149
    iput v3, v0, Lcom/kingroot/kinguser/bts;->bNK:I

    .line 150
    invoke-virtual {v0, v4}, Lcom/kingroot/kinguser/bts;->a(Ljava/io/DataOutputStream;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_f
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_a
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 168
    if-eqz v2, :cond_0

    .line 170
    :try_start_c
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_15

    .line 175
    :cond_0
    :goto_3
    if-eqz v4, :cond_1

    .line 177
    :try_start_d
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_16

    .line 182
    :cond_1
    :goto_4
    if-eqz v5, :cond_d

    .line 184
    :try_start_e
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_17

    move v0, v1

    .line 190
    :cond_2
    :goto_5
    return v0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    :try_start_f
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 51
    :try_start_10
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    throw v0
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 163
    :catch_1
    move-exception v0

    move-object v1, v3

    move-object v2, v3

    move v0, v6

    .line 168
    :goto_6
    if-eqz v1, :cond_3

    .line 170
    :try_start_11
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_10

    .line 175
    :cond_3
    :goto_7
    if-eqz v3, :cond_4

    .line 177
    :try_start_12
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_11

    .line 182
    :cond_4
    :goto_8
    if-eqz v2, :cond_2

    .line 184
    :try_start_13
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_2

    goto :goto_5

    .line 185
    :catch_2
    move-exception v1

    .line 186
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 58
    :catch_3
    move-exception v0

    .line 59
    :try_start_14
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 60
    const/4 v1, -0x2

    .line 61
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    throw v0
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_4
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    .line 163
    :catch_4
    move-exception v0

    move-object v2, v3

    move v0, v1

    move-object v1, v3

    goto :goto_6

    .line 66
    :catch_5
    move-exception v0

    .line 67
    :try_start_15
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 68
    const/4 v1, -0x3

    .line 69
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    throw v0
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_6
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    .line 163
    :catch_6
    move-exception v0

    move-object v2, v5

    move v0, v1

    move-object v1, v3

    goto :goto_6

    .line 74
    :catch_7
    move-exception v0

    .line 75
    :try_start_16
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_18
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    .line 77
    :try_start_17
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    throw v0
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_8
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    .line 163
    :catch_8
    move-exception v0

    move-object v1, v3

    move-object v2, v5

    move v0, v6

    move-object v3, v4

    goto :goto_6

    .line 86
    :catch_9
    move-exception v0

    .line 87
    :try_start_18
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 88
    const/4 v1, -0x4

    .line 89
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    throw v0
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_a
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 163
    :catch_a
    move-exception v0

    move-object v3, v4

    move v0, v1

    move-object v1, v2

    move-object v2, v5

    goto :goto_6

    .line 94
    :cond_5
    :try_start_19
    new-instance v8, Lcom/kingroot/kinguser/btp;

    invoke-direct {v8}, Lcom/kingroot/kinguser/btp;-><init>()V

    .line 95
    invoke-virtual {v8, v5}, Lcom/kingroot/kinguser/btp;->b(Ljava/io/DataInputStream;)V

    .line 96
    invoke-virtual {v3, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_19 .. :try_end_19} :catch_c
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_a
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 98
    :catch_b
    move-exception v0

    .line 99
    :try_start_1a
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 100
    const/4 v1, -0x5

    .line 101
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    throw v0
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    .line 166
    :catchall_0
    move-exception v0

    .line 168
    :goto_9
    if-eqz v2, :cond_6

    .line 170
    :try_start_1b
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_12

    .line 175
    :cond_6
    :goto_a
    if-eqz v4, :cond_7

    .line 177
    :try_start_1c
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_13

    .line 182
    :cond_7
    :goto_b
    if-eqz v5, :cond_8

    .line 184
    :try_start_1d
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_14

    .line 189
    :cond_8
    :goto_c
    throw v0

    .line 102
    :catch_c
    move-exception v0

    .line 103
    :try_start_1e
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 104
    const/4 v1, -0x6

    .line 105
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    throw v0
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_a
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    .line 112
    :cond_9
    :try_start_1f
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/btp;

    .line 113
    const/4 v8, 0x0

    iput-short v8, v0, Lcom/kingroot/kinguser/btp;->bNm:S

    .line 114
    iget-boolean v8, v0, Lcom/kingroot/kinguser/btp;->bNA:Z

    if-eqz v8, :cond_a

    .line 116
    invoke-direct {p0, v0, v5, v4}, Lcom/kingroot/kinguser/btt;->a(Lcom/kingroot/kinguser/btp;Ljava/io/DataInputStream;Ljava/io/DataOutputStream;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_d
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_a
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    goto/16 :goto_1

    .line 122
    :catch_d
    move-exception v0

    .line 123
    :try_start_20
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 124
    const/16 v1, -0xa

    .line 125
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    throw v0
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_a
    .catchall {:try_start_20 .. :try_end_20} :catchall_0

    .line 119
    :cond_a
    :try_start_21
    invoke-direct {p0, v0, v2, v7, v4}, Lcom/kingroot/kinguser/btt;->a(Lcom/kingroot/kinguser/btp;Ljava/io/RandomAccessFile;Lcom/kingroot/kinguser/btw;Ljava/io/DataOutputStream;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_d
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_a
    .catchall {:try_start_21 .. :try_end_21} :catchall_0

    goto/16 :goto_1

    .line 133
    :cond_b
    :try_start_22
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/btp;

    .line 134
    invoke-virtual {v0, v4}, Lcom/kingroot/kinguser/btp;->a(Ljava/io/DataOutputStream;)V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_e
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_a
    .catchall {:try_start_22 .. :try_end_22} :catchall_0

    goto/16 :goto_2

    .line 136
    :catch_e
    move-exception v0

    .line 137
    :try_start_23
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 138
    const/4 v1, -0x7

    .line 139
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    throw v0
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_a
    .catchall {:try_start_23 .. :try_end_23} :catchall_0

    .line 153
    :cond_c
    const/4 v1, -0x8

    .line 154
    :try_start_24
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    throw v0
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_f
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_a
    .catchall {:try_start_24 .. :try_end_24} :catchall_0

    .line 156
    :catch_f
    move-exception v0

    .line 157
    :try_start_25
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 158
    const/16 v1, -0x9

    .line 159
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    throw v0
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_a
    .catchall {:try_start_25 .. :try_end_25} :catchall_0

    .line 171
    :catch_10
    move-exception v1

    .line 172
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_7

    .line 178
    :catch_11
    move-exception v1

    .line 179
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_8

    .line 171
    :catch_12
    move-exception v1

    .line 172
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 178
    :catch_13
    move-exception v1

    .line 179
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 185
    :catch_14
    move-exception v1

    .line 186
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    .line 171
    :catch_15
    move-exception v0

    .line 172
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 178
    :catch_16
    move-exception v0

    .line 179
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 185
    :catch_17
    move-exception v0

    .line 186
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_d
    move v0, v1

    goto/16 :goto_5

    .line 166
    :catchall_1
    move-exception v0

    move-object v2, v3

    move-object v4, v3

    move-object v5, v3

    goto/16 :goto_9

    :catchall_2
    move-exception v0

    move-object v2, v3

    move-object v4, v3

    goto/16 :goto_9

    :catchall_3
    move-exception v0

    move-object v2, v3

    goto/16 :goto_9

    .line 163
    :catch_18
    move-exception v0

    move-object v2, v5

    move v0, v1

    move-object v1, v3

    move-object v3, v4

    goto/16 :goto_6
.end method
