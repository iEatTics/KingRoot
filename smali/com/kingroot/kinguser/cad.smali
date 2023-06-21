.class public Lcom/kingroot/kinguser/cad;
.super Lcom/kingroot/kinguser/bzr;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/kingroot/kinguser/caf;",
        ">",
        "Lcom/kingroot/kinguser/bzr;"
    }
.end annotation


# static fields
.field private static final bWi:[S


# instance fields
.field private a:Landroid/content/Context;

.field private bWg:Lcom/kingroot/kinguser/caf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private bWh:Lcom/kingroot/kinguser/gn;

.field private bWj:Lcom/kingroot/kinguser/cah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cah",
            "<TT;>;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:I

.field private volatile e:Z

.field private final g:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x3

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Lcom/kingroot/kinguser/cad;->bWi:[S

    return-void

    nop

    :array_0
    .array-data 2
        0x8s
        0x40s
        0x80s
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/kingroot/kinguser/caf;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Lcom/kingroot/kinguser/bzr;-><init>()V

    .line 37
    const v0, 0x4b000

    iput v0, p0, Lcom/kingroot/kinguser/cad;->d:I

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/cad;->e:Z

    .line 40
    iput-object v1, p0, Lcom/kingroot/kinguser/cad;->bWh:Lcom/kingroot/kinguser/gn;

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/cad;->g:Ljava/lang/Object;

    .line 44
    iput-object v1, p0, Lcom/kingroot/kinguser/cad;->bWj:Lcom/kingroot/kinguser/cah;

    .line 89
    iput-object p1, p0, Lcom/kingroot/kinguser/cad;->a:Landroid/content/Context;

    .line 90
    iput-object p2, p0, Lcom/kingroot/kinguser/cad;->bWg:Lcom/kingroot/kinguser/caf;

    .line 91
    iput-object p3, p0, Lcom/kingroot/kinguser/cad;->c:Ljava/lang/String;

    .line 92
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/cad;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/kingroot/kinguser/cad;->b()V

    return-void
.end method

.method private a(Ljava/io/FileOutputStream;)V
    .locals 17

    .prologue
    .line 241
    const/4 v3, 0x0

    .line 243
    :try_start_0
    sget-object v2, Lcom/kingroot/kinguser/cad;->bWi:[S

    const/4 v4, 0x1

    aget-short v2, v2, v4

    shl-int/lit8 v2, v2, 0xa

    new-array v4, v2, [B

    .line 245
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingroot/kinguser/cad;->g:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catch Lcom/kingroot/kinguser/bzz; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 246
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/cad;->bWh:Lcom/kingroot/kinguser/gn;

    if-nez v2, :cond_0

    .line 247
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/cad;->a:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kingroot/kinguser/cad;->bWg:Lcom/kingroot/kinguser/caf;

    iget-object v6, v6, Lcom/kingroot/kinguser/caf;->b:Ljava/lang/String;

    invoke-static {v2, v6}, Lcom/kingroot/kinguser/gn;->d(Landroid/content/Context;Ljava/lang/String;)Lcom/kingroot/kinguser/gn;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/kingroot/kinguser/cad;->bWh:Lcom/kingroot/kinguser/gn;

    .line 248
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/cad;->bWh:Lcom/kingroot/kinguser/gn;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/gn;->c()I

    .line 250
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/cad;->bWh:Lcom/kingroot/kinguser/gn;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/gn;->e()I

    move-result v2

    const/16 v6, 0xc8

    if-eq v2, v6, :cond_2

    .line 252
    new-instance v2, Lcom/kingroot/kinguser/bzz;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingroot/kinguser/cad;->bWh:Lcom/kingroot/kinguser/gn;

    invoke-virtual {v4}, Lcom/kingroot/kinguser/gn;->e()I

    move-result v4

    add-int/lit16 v4, v4, -0xbb8

    const-string v6, "error: response code is not 200."

    invoke-direct {v2, v4, v6}, Lcom/kingroot/kinguser/bzz;-><init>(ILjava/lang/String;)V

    throw v2

    .line 256
    :catchall_0
    move-exception v2

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Lcom/kingroot/kinguser/bzz; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 328
    :catch_0
    move-exception v2

    .line 329
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 340
    :catchall_1
    move-exception v2

    if-eqz v3, :cond_1

    .line 342
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 346
    :cond_1
    :goto_0
    throw v2

    .line 255
    :cond_2
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/cad;->bWh:Lcom/kingroot/kinguser/gn;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/gn;->aC()Ljava/io/InputStream;

    move-result-object v3

    .line 256
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 260
    :try_start_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 262
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/cad;->bWg:Lcom/kingroot/kinguser/caf;

    iget-wide v10, v2, Lcom/kingroot/kinguser/caf;->h:J

    .line 263
    const/4 v2, 0x0

    move/from16 v16, v2

    move-object v2, v4

    move/from16 v4, v16

    .line 265
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/kingroot/kinguser/cad;->e:Z

    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingroot/kinguser/cad;->bWg:Lcom/kingroot/kinguser/caf;

    iget-wide v6, v5, Lcom/kingroot/kinguser/caf;->g:J

    const-wide/16 v12, 0x0

    cmp-long v5, v6, v12

    if-lez v5, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingroot/kinguser/cad;->bWg:Lcom/kingroot/kinguser/caf;

    iget-wide v6, v5, Lcom/kingroot/kinguser/caf;->g:J

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingroot/kinguser/cad;->bWg:Lcom/kingroot/kinguser/caf;

    iget-wide v12, v5, Lcom/kingroot/kinguser/caf;->h:J

    cmp-long v5, v6, v12

    if-lez v5, :cond_3

    .line 266
    invoke-virtual {v3, v2}, Ljava/io/InputStream;->read([B)I
    :try_end_6
    .catch Lcom/kingroot/kinguser/bzz; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result v5

    .line 267
    const/4 v6, -0x1

    if-ne v5, v6, :cond_5

    .line 340
    :cond_3
    :goto_2
    if-eqz v3, :cond_4

    .line 342
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 350
    :cond_4
    :goto_3
    return-void

    .line 271
    :cond_5
    :try_start_8
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/kingroot/kinguser/cad;->e:Z

    if-eqz v6, :cond_3

    .line 276
    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V

    .line 277
    invoke-virtual/range {p1 .. p1}, Ljava/io/FileOutputStream;->flush()V

    .line 279
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kingroot/kinguser/cad;->bWg:Lcom/kingroot/kinguser/caf;

    iget-wide v12, v6, Lcom/kingroot/kinguser/caf;->h:J

    int-to-long v14, v5

    add-long/2addr v12, v14

    iput-wide v12, v6, Lcom/kingroot/kinguser/caf;->h:J

    .line 280
    add-int v6, v4, v5

    .line 283
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingroot/kinguser/cad;->bWg:Lcom/kingroot/kinguser/caf;

    iget-wide v4, v4, Lcom/kingroot/kinguser/caf;->g:J

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kingroot/kinguser/cad;->bWg:Lcom/kingroot/kinguser/caf;

    iget-wide v12, v7, Lcom/kingroot/kinguser/caf;->h:J

    cmp-long v4, v4, v12

    if-nez v4, :cond_6

    .line 284
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/cad;->bWg:Lcom/kingroot/kinguser/caf;

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v2, Lcom/kingroot/kinguser/caf;->bVY:F

    .line 285
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/cad;->a(I)V
    :try_end_8
    .catch Lcom/kingroot/kinguser/bzz; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_2

    .line 330
    :catch_1
    move-exception v2

    .line 331
    :try_start_9
    new-instance v4, Lcom/kingroot/kinguser/bzz;

    const/16 v5, -0x3b

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unbreakable download unsupported encoding: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 332
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v5, v2}, Lcom/kingroot/kinguser/bzz;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 290
    :cond_6
    :try_start_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingroot/kinguser/cad;->bWg:Lcom/kingroot/kinguser/caf;

    iget-wide v4, v4, Lcom/kingroot/kinguser/caf;->g:J

    const-wide/16 v12, 0x0

    cmp-long v4, v4, v12

    if-lez v4, :cond_7

    .line 291
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingroot/kinguser/cad;->bWg:Lcom/kingroot/kinguser/caf;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingroot/kinguser/cad;->bWg:Lcom/kingroot/kinguser/caf;

    iget-wide v12, v5, Lcom/kingroot/kinguser/caf;->h:J

    long-to-float v5, v12

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kingroot/kinguser/cad;->bWg:Lcom/kingroot/kinguser/caf;

    iget-wide v12, v7, Lcom/kingroot/kinguser/caf;->g:J

    long-to-float v7, v12

    div-float/2addr v5, v7

    iput v5, v4, Lcom/kingroot/kinguser/caf;->bVY:F

    .line 292
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/kingroot/kinguser/cad;->a(I)V

    .line 296
    :cond_7
    move-object/from16 v0, p0

    iget v4, v0, Lcom/kingroot/kinguser/cad;->d:I

    if-le v6, v4, :cond_d

    .line 297
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v8

    .line 298
    const-wide/16 v12, 0x0

    cmp-long v7, v4, v12

    if-gtz v7, :cond_8

    .line 299
    const-wide/16 v4, 0x1

    .line 302
    :cond_8
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kingroot/kinguser/cad;->bWg:Lcom/kingroot/kinguser/caf;

    iget-wide v12, v7, Lcom/kingroot/kinguser/caf;->h:J

    sub-long/2addr v12, v10

    div-long v4, v12, v4

    long-to-int v4, v4

    .line 303
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingroot/kinguser/cad;->bWg:Lcom/kingroot/kinguser/caf;

    iget v5, v5, Lcom/kingroot/kinguser/caf;->j:I

    if-nez v5, :cond_a

    .line 304
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingroot/kinguser/cad;->bWg:Lcom/kingroot/kinguser/caf;

    iput v4, v5, Lcom/kingroot/kinguser/caf;->j:I

    .line 309
    :goto_4
    const/16 v5, 0x21

    if-ge v4, v5, :cond_b

    .line 311
    array-length v4, v2

    sget-object v5, Lcom/kingroot/kinguser/cad;->bWi:[S

    const/4 v7, 0x0

    aget-short v5, v5, v7

    shl-int/lit8 v5, v5, 0xa

    if-eq v4, v5, :cond_9

    .line 312
    sget-object v2, Lcom/kingroot/kinguser/cad;->bWi:[S

    const/4 v4, 0x0

    aget-short v2, v2, v4

    shl-int/lit8 v2, v2, 0xa

    new-array v2, v2, [B

    :cond_9
    :goto_5
    move v4, v6

    .line 325
    goto/16 :goto_1

    .line 306
    :cond_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingroot/kinguser/cad;->bWg:Lcom/kingroot/kinguser/caf;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kingroot/kinguser/cad;->bWg:Lcom/kingroot/kinguser/caf;

    iget v7, v7, Lcom/kingroot/kinguser/caf;->j:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kingroot/kinguser/cad;->bWg:Lcom/kingroot/kinguser/caf;

    iget v12, v12, Lcom/kingroot/kinguser/caf;->j:I

    add-int/2addr v7, v12

    div-int/lit8 v7, v7, 0x2

    iput v7, v5, Lcom/kingroot/kinguser/caf;->j:I
    :try_end_a
    .catch Lcom/kingroot/kinguser/bzz; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_4

    .line 333
    :catch_2
    move-exception v2

    .line 334
    :try_start_b
    new-instance v4, Lcom/kingroot/kinguser/bzz;

    const/16 v5, -0x1b90

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unbreakable download IOException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 335
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v5, v2}, Lcom/kingroot/kinguser/bzz;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 314
    :cond_b
    const/16 v5, 0x41

    if-ge v4, v5, :cond_c

    .line 316
    :try_start_c
    array-length v4, v2

    sget-object v5, Lcom/kingroot/kinguser/cad;->bWi:[S

    const/4 v7, 0x1

    aget-short v5, v5, v7

    shl-int/lit8 v5, v5, 0xa

    if-eq v4, v5, :cond_9

    .line 317
    sget-object v2, Lcom/kingroot/kinguser/cad;->bWi:[S

    const/4 v4, 0x1

    aget-short v2, v2, v4

    shl-int/lit8 v2, v2, 0xa

    new-array v2, v2, [B

    goto :goto_5

    .line 321
    :cond_c
    array-length v4, v2

    sget-object v5, Lcom/kingroot/kinguser/cad;->bWi:[S

    const/4 v7, 0x2

    aget-short v5, v5, v7

    shl-int/lit8 v5, v5, 0xa

    if-eq v4, v5, :cond_9

    .line 322
    sget-object v2, Lcom/kingroot/kinguser/cad;->bWi:[S

    const/4 v4, 0x2

    aget-short v2, v2, v4

    shl-int/lit8 v2, v2, 0xa

    new-array v2, v2, [B
    :try_end_c
    .catch Lcom/kingroot/kinguser/bzz; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_5

    .line 336
    :catch_3
    move-exception v2

    .line 337
    :try_start_d
    new-instance v4, Lcom/kingroot/kinguser/bzz;

    const/4 v5, -0x2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unbreakable download IOException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 338
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v5, v2}, Lcom/kingroot/kinguser/bzz;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 343
    :catch_4
    move-exception v2

    goto/16 :goto_3

    :catch_5
    move-exception v3

    goto/16 :goto_0

    :cond_d
    move v4, v6

    goto/16 :goto_1
.end method

.method private b()V
    .locals 11

    .prologue
    const/4 v1, 0x1

    const-wide/16 v8, 0x0

    const/4 v0, 0x0

    const/4 v7, 0x3

    const/4 v6, 0x0

    .line 116
    iput-boolean v1, p0, Lcom/kingroot/kinguser/cad;->e:Z

    .line 119
    invoke-virtual {p0, v6}, Lcom/kingroot/kinguser/cad;->a(I)V

    .line 124
    :try_start_0
    iget-object v1, p0, Lcom/kingroot/kinguser/cad;->bWg:Lcom/kingroot/kinguser/caf;

    iget-wide v2, v1, Lcom/kingroot/kinguser/caf;->h:J

    iget-object v1, p0, Lcom/kingroot/kinguser/cad;->bWg:Lcom/kingroot/kinguser/caf;

    iget-wide v4, v1, Lcom/kingroot/kinguser/caf;->g:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/kingroot/kinguser/cad;->bWg:Lcom/kingroot/kinguser/caf;

    iget-wide v2, v1, Lcom/kingroot/kinguser/caf;->h:J

    cmp-long v1, v2, v8

    if-lez v1, :cond_2

    .line 125
    iget-object v1, p0, Lcom/kingroot/kinguser/cad;->bWg:Lcom/kingroot/kinguser/caf;

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Lcom/kingroot/kinguser/caf;->bVY:F

    .line 126
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/kingroot/kinguser/cad;->a(I)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/kingroot/kinguser/bzz; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 167
    iget-object v1, p0, Lcom/kingroot/kinguser/cad;->bWg:Lcom/kingroot/kinguser/caf;

    iget-wide v2, v1, Lcom/kingroot/kinguser/caf;->h:J

    iget-object v1, p0, Lcom/kingroot/kinguser/cad;->bWg:Lcom/kingroot/kinguser/caf;

    iget-wide v4, v1, Lcom/kingroot/kinguser/caf;->g:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/kingroot/kinguser/cad;->bWg:Lcom/kingroot/kinguser/caf;

    iget-wide v2, v1, Lcom/kingroot/kinguser/caf;->h:J

    cmp-long v1, v2, v8

    if-lez v1, :cond_0

    .line 168
    invoke-virtual {p0, v7}, Lcom/kingroot/kinguser/cad;->a(I)V

    .line 171
    :cond_0
    iget-object v1, p0, Lcom/kingroot/kinguser/cad;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 172
    :try_start_1
    iget-object v2, p0, Lcom/kingroot/kinguser/cad;->bWh:Lcom/kingroot/kinguser/gn;

    if-eqz v2, :cond_1

    .line 174
    iget-object v2, p0, Lcom/kingroot/kinguser/cad;->bWh:Lcom/kingroot/kinguser/gn;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/gn;->f()V

    .line 175
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/kingroot/kinguser/cad;->bWh:Lcom/kingroot/kinguser/gn;

    .line 177
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 179
    invoke-static {v0}, Lcom/kingroot/kinguser/gx;->a(Ljava/io/Closeable;)V

    .line 181
    iput-boolean v6, p0, Lcom/kingroot/kinguser/cad;->e:Z

    .line 183
    :goto_0
    return-void

    .line 177
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 131
    :cond_2
    :try_start_3
    iget-object v1, p0, Lcom/kingroot/kinguser/cad;->bWg:Lcom/kingroot/kinguser/caf;

    iget-wide v2, v1, Lcom/kingroot/kinguser/caf;->g:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_3

    .line 132
    invoke-direct {p0}, Lcom/kingroot/kinguser/cad;->c()V

    .line 135
    :cond_3
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/kingroot/kinguser/cad;->c:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/kingroot/kinguser/bzz; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    .line 136
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iget-object v2, p0, Lcom/kingroot/kinguser/cad;->bWg:Lcom/kingroot/kinguser/caf;

    iget-wide v2, v2, Lcom/kingroot/kinguser/caf;->h:J

    invoke-virtual {v0, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 138
    iget-object v0, p0, Lcom/kingroot/kinguser/cad;->bWg:Lcom/kingroot/kinguser/caf;

    iget-boolean v0, v0, Lcom/kingroot/kinguser/caf;->c:Z

    if-eqz v0, :cond_6

    .line 140
    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/cad;->b(Ljava/io/FileOutputStream;)V

    .line 145
    :goto_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 147
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Lcom/kingroot/kinguser/bzz; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_8

    .line 167
    iget-object v0, p0, Lcom/kingroot/kinguser/cad;->bWg:Lcom/kingroot/kinguser/caf;

    iget-wide v2, v0, Lcom/kingroot/kinguser/caf;->h:J

    iget-object v0, p0, Lcom/kingroot/kinguser/cad;->bWg:Lcom/kingroot/kinguser/caf;

    iget-wide v4, v0, Lcom/kingroot/kinguser/caf;->g:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/kingroot/kinguser/cad;->bWg:Lcom/kingroot/kinguser/caf;

    iget-wide v2, v0, Lcom/kingroot/kinguser/caf;->h:J

    cmp-long v0, v2, v8

    if-lez v0, :cond_4

    .line 168
    invoke-virtual {p0, v7}, Lcom/kingroot/kinguser/cad;->a(I)V

    .line 171
    :cond_4
    iget-object v2, p0, Lcom/kingroot/kinguser/cad;->g:Ljava/lang/Object;

    monitor-enter v2

    .line 172
    :try_start_5
    iget-object v0, p0, Lcom/kingroot/kinguser/cad;->bWh:Lcom/kingroot/kinguser/gn;

    if-eqz v0, :cond_5

    .line 174
    iget-object v0, p0, Lcom/kingroot/kinguser/cad;->bWh:Lcom/kingroot/kinguser/gn;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/gn;->f()V

    .line 175
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/cad;->bWh:Lcom/kingroot/kinguser/gn;

    .line 177
    :cond_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 179
    invoke-static {v1}, Lcom/kingroot/kinguser/gx;->a(Ljava/io/Closeable;)V

    .line 181
    iput-boolean v6, p0, Lcom/kingroot/kinguser/cad;->e:Z

    goto :goto_0

    .line 143
    :cond_6
    :try_start_6
    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/cad;->a(Ljava/io/FileOutputStream;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Lcom/kingroot/kinguser/bzz; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_8

    goto :goto_1

    .line 148
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 149
    :goto_2
    const/16 v1, -0x1b59

    :try_start_7
    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/cad;->b(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_9

    .line 167
    iget-object v1, p0, Lcom/kingroot/kinguser/cad;->bWg:Lcom/kingroot/kinguser/caf;

    iget-wide v2, v1, Lcom/kingroot/kinguser/caf;->h:J

    iget-object v1, p0, Lcom/kingroot/kinguser/cad;->bWg:Lcom/kingroot/kinguser/caf;

    iget-wide v4, v1, Lcom/kingroot/kinguser/caf;->g:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/kingroot/kinguser/cad;->bWg:Lcom/kingroot/kinguser/caf;

    iget-wide v2, v1, Lcom/kingroot/kinguser/caf;->h:J

    cmp-long v1, v2, v8

    if-lez v1, :cond_7

    .line 168
    invoke-virtual {p0, v7}, Lcom/kingroot/kinguser/cad;->a(I)V

    .line 171
    :cond_7
    iget-object v1, p0, Lcom/kingroot/kinguser/cad;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 172
    :try_start_8
    iget-object v2, p0, Lcom/kingroot/kinguser/cad;->bWh:Lcom/kingroot/kinguser/gn;

    if-eqz v2, :cond_8

    .line 174
    iget-object v2, p0, Lcom/kingroot/kinguser/cad;->bWh:Lcom/kingroot/kinguser/gn;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/gn;->f()V

    .line 175
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/kingroot/kinguser/cad;->bWh:Lcom/kingroot/kinguser/gn;

    .line 177
    :cond_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 179
    invoke-static {v0}, Lcom/kingroot/kinguser/gx;->a(Ljava/io/Closeable;)V

    .line 181
    iput-boolean v6, p0, Lcom/kingroot/kinguser/cad;->e:Z

    goto/16 :goto_0

    .line 177
    :catchall_1
    move-exception v0

    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw v0

    .line 151
    :catch_1
    move-exception v1

    .line 152
    :goto_3
    const/16 v1, -0x1b90

    :try_start_b
    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/cad;->b(I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    .line 167
    iget-object v1, p0, Lcom/kingroot/kinguser/cad;->bWg:Lcom/kingroot/kinguser/caf;

    iget-wide v2, v1, Lcom/kingroot/kinguser/caf;->h:J

    iget-object v1, p0, Lcom/kingroot/kinguser/cad;->bWg:Lcom/kingroot/kinguser/caf;

    iget-wide v4, v1, Lcom/kingroot/kinguser/caf;->g:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/kingroot/kinguser/cad;->bWg:Lcom/kingroot/kinguser/caf;

    iget-wide v2, v1, Lcom/kingroot/kinguser/caf;->h:J

    cmp-long v1, v2, v8

    if-lez v1, :cond_9

    .line 168
    invoke-virtual {p0, v7}, Lcom/kingroot/kinguser/cad;->a(I)V

    .line 171
    :cond_9
    iget-object v1, p0, Lcom/kingroot/kinguser/cad;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 172
    :try_start_c
    iget-object v2, p0, Lcom/kingroot/kinguser/cad;->bWh:Lcom/kingroot/kinguser/gn;

    if-eqz v2, :cond_a

    .line 174
    iget-object v2, p0, Lcom/kingroot/kinguser/cad;->bWh:Lcom/kingroot/kinguser/gn;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/gn;->f()V

    .line 175
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/kingroot/kinguser/cad;->bWh:Lcom/kingroot/kinguser/gn;

    .line 177
    :cond_a
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 179
    invoke-static {v0}, Lcom/kingroot/kinguser/gx;->a(Ljava/io/Closeable;)V

    .line 181
    iput-boolean v6, p0, Lcom/kingroot/kinguser/cad;->e:Z

    goto/16 :goto_0

    .line 177
    :catchall_3
    move-exception v0

    :try_start_d
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    throw v0

    .line 154
    :catch_2
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    .line 155
    :goto_4
    :try_start_e
    invoke-virtual {v0}, Lcom/kingroot/kinguser/bzz;->a()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/cad;->b(I)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    .line 167
    iget-object v0, p0, Lcom/kingroot/kinguser/cad;->bWg:Lcom/kingroot/kinguser/caf;

    iget-wide v2, v0, Lcom/kingroot/kinguser/caf;->h:J

    iget-object v0, p0, Lcom/kingroot/kinguser/cad;->bWg:Lcom/kingroot/kinguser/caf;

    iget-wide v4, v0, Lcom/kingroot/kinguser/caf;->g:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/kingroot/kinguser/cad;->bWg:Lcom/kingroot/kinguser/caf;

    iget-wide v2, v0, Lcom/kingroot/kinguser/caf;->h:J

    cmp-long v0, v2, v8

    if-lez v0, :cond_b

    .line 168
    invoke-virtual {p0, v7}, Lcom/kingroot/kinguser/cad;->a(I)V

    .line 171
    :cond_b
    iget-object v2, p0, Lcom/kingroot/kinguser/cad;->g:Ljava/lang/Object;

    monitor-enter v2

    .line 172
    :try_start_f
    iget-object v0, p0, Lcom/kingroot/kinguser/cad;->bWh:Lcom/kingroot/kinguser/gn;

    if-eqz v0, :cond_c

    .line 174
    iget-object v0, p0, Lcom/kingroot/kinguser/cad;->bWh:Lcom/kingroot/kinguser/gn;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/gn;->f()V

    .line 175
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/cad;->bWh:Lcom/kingroot/kinguser/gn;

    .line 177
    :cond_c
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 179
    invoke-static {v1}, Lcom/kingroot/kinguser/gx;->a(Ljava/io/Closeable;)V

    .line 181
    iput-boolean v6, p0, Lcom/kingroot/kinguser/cad;->e:Z

    goto/16 :goto_0

    .line 177
    :catchall_4
    move-exception v0

    :try_start_10
    monitor-exit v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    throw v0

    .line 157
    :catch_3
    move-exception v1

    .line 163
    :goto_5
    const/16 v1, -0x138e

    :try_start_11
    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/cad;->b(I)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    .line 167
    iget-object v1, p0, Lcom/kingroot/kinguser/cad;->bWg:Lcom/kingroot/kinguser/caf;

    iget-wide v2, v1, Lcom/kingroot/kinguser/caf;->h:J

    iget-object v1, p0, Lcom/kingroot/kinguser/cad;->bWg:Lcom/kingroot/kinguser/caf;

    iget-wide v4, v1, Lcom/kingroot/kinguser/caf;->g:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/kingroot/kinguser/cad;->bWg:Lcom/kingroot/kinguser/caf;

    iget-wide v2, v1, Lcom/kingroot/kinguser/caf;->h:J

    cmp-long v1, v2, v8

    if-lez v1, :cond_d

    .line 168
    invoke-virtual {p0, v7}, Lcom/kingroot/kinguser/cad;->a(I)V

    .line 171
    :cond_d
    iget-object v1, p0, Lcom/kingroot/kinguser/cad;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 172
    :try_start_12
    iget-object v2, p0, Lcom/kingroot/kinguser/cad;->bWh:Lcom/kingroot/kinguser/gn;

    if-eqz v2, :cond_e

    .line 174
    iget-object v2, p0, Lcom/kingroot/kinguser/cad;->bWh:Lcom/kingroot/kinguser/gn;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/gn;->f()V

    .line 175
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/kingroot/kinguser/cad;->bWh:Lcom/kingroot/kinguser/gn;

    .line 177
    :cond_e
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    .line 179
    invoke-static {v0}, Lcom/kingroot/kinguser/gx;->a(Ljava/io/Closeable;)V

    .line 181
    iput-boolean v6, p0, Lcom/kingroot/kinguser/cad;->e:Z

    goto/16 :goto_0

    .line 177
    :catchall_5
    move-exception v0

    :try_start_13
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    throw v0

    .line 167
    :catchall_6
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    :goto_6
    iget-object v2, p0, Lcom/kingroot/kinguser/cad;->bWg:Lcom/kingroot/kinguser/caf;

    iget-wide v2, v2, Lcom/kingroot/kinguser/caf;->h:J

    iget-object v4, p0, Lcom/kingroot/kinguser/cad;->bWg:Lcom/kingroot/kinguser/caf;

    iget-wide v4, v4, Lcom/kingroot/kinguser/caf;->g:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_f

    iget-object v2, p0, Lcom/kingroot/kinguser/cad;->bWg:Lcom/kingroot/kinguser/caf;

    iget-wide v2, v2, Lcom/kingroot/kinguser/caf;->h:J

    cmp-long v2, v2, v8

    if-lez v2, :cond_f

    .line 168
    invoke-virtual {p0, v7}, Lcom/kingroot/kinguser/cad;->a(I)V

    .line 171
    :cond_f
    iget-object v2, p0, Lcom/kingroot/kinguser/cad;->g:Ljava/lang/Object;

    monitor-enter v2

    .line 172
    :try_start_14
    iget-object v3, p0, Lcom/kingroot/kinguser/cad;->bWh:Lcom/kingroot/kinguser/gn;

    if-eqz v3, :cond_10

    .line 174
    iget-object v3, p0, Lcom/kingroot/kinguser/cad;->bWh:Lcom/kingroot/kinguser/gn;

    invoke-virtual {v3}, Lcom/kingroot/kinguser/gn;->f()V

    .line 175
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/kingroot/kinguser/cad;->bWh:Lcom/kingroot/kinguser/gn;

    .line 177
    :cond_10
    monitor-exit v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    .line 179
    invoke-static {v1}, Lcom/kingroot/kinguser/gx;->a(Ljava/io/Closeable;)V

    .line 181
    iput-boolean v6, p0, Lcom/kingroot/kinguser/cad;->e:Z

    throw v0

    .line 177
    :catchall_7
    move-exception v0

    :try_start_15
    monitor-exit v2
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    throw v0

    .line 167
    :catchall_8
    move-exception v0

    goto :goto_6

    :catchall_9
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_6

    .line 157
    :catch_4
    move-exception v0

    move-object v0, v1

    goto :goto_5

    .line 154
    :catch_5
    move-exception v0

    goto/16 :goto_4

    .line 151
    :catch_6
    move-exception v0

    move-object v0, v1

    goto/16 :goto_3

    .line 148
    :catch_7
    move-exception v1

    goto/16 :goto_2
.end method

.method private b(I)V
    .locals 1

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/kingroot/kinguser/cad;->e:Z

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/kingroot/kinguser/cad;->bWg:Lcom/kingroot/kinguser/caf;

    iput p1, v0, Lcom/kingroot/kinguser/caf;->l:I

    .line 193
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/cad;->a(I)V

    .line 195
    :cond_0
    return-void
.end method

.method private b(Ljava/io/FileOutputStream;)V
    .locals 17

    .prologue
    .line 360
    const/4 v4, 0x0

    .line 362
    const/4 v5, 0x1

    .line 363
    :try_start_0
    sget-object v2, Lcom/kingroot/kinguser/cad;->bWi:[S

    const/4 v3, 0x1

    aget-short v2, v2, v3

    shl-int/lit8 v2, v2, 0xa

    new-array v3, v2, [B
    :try_end_0
    .catch Lcom/kingroot/kinguser/bzz; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 369
    const/4 v2, 0x1

    move v6, v2

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    .line 370
    :goto_0
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/kingroot/kinguser/cad;->e:Z

    if-eqz v5, :cond_e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingroot/kinguser/cad;->bWg:Lcom/kingroot/kinguser/caf;

    iget-wide v8, v5, Lcom/kingroot/kinguser/caf;->g:J

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-lez v5, :cond_e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingroot/kinguser/cad;->bWg:Lcom/kingroot/kinguser/caf;

    iget-wide v8, v5, Lcom/kingroot/kinguser/caf;->g:J

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingroot/kinguser/cad;->bWg:Lcom/kingroot/kinguser/caf;

    iget-wide v10, v5, Lcom/kingroot/kinguser/caf;->h:J

    cmp-long v5, v8, v10

    if-lez v5, :cond_e

    .line 373
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingroot/kinguser/cad;->bWg:Lcom/kingroot/kinguser/caf;

    iget-wide v8, v5, Lcom/kingroot/kinguser/caf;->h:J

    .line 374
    const-wide/16 v10, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/kingroot/kinguser/cad;->d:I

    int-to-long v12, v5

    mul-long/2addr v10, v12

    int-to-long v4, v4

    mul-long/2addr v4, v10

    add-long/2addr v4, v8

    const-wide/16 v10, 0x1

    sub-long/2addr v4, v10

    .line 375
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kingroot/kinguser/cad;->bWg:Lcom/kingroot/kinguser/caf;

    iget-wide v10, v7, Lcom/kingroot/kinguser/caf;->g:J

    cmp-long v7, v4, v10

    if-ltz v7, :cond_0

    .line 376
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingroot/kinguser/cad;->bWg:Lcom/kingroot/kinguser/caf;

    iget-wide v4, v4, Lcom/kingroot/kinguser/caf;->g:J

    const-wide/16 v10, 0x1

    sub-long/2addr v4, v10

    .line 380
    :cond_0
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 381
    const-string v10, "bytes="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v10

    const/16 v11, 0x2d

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 383
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/kingroot/kinguser/cad;->g:Ljava/lang/Object;

    monitor-enter v10
    :try_end_1
    .catch Lcom/kingroot/kinguser/bzz; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 384
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingroot/kinguser/cad;->bWh:Lcom/kingroot/kinguser/gn;

    if-nez v4, :cond_3

    .line 385
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingroot/kinguser/cad;->a:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingroot/kinguser/cad;->bWg:Lcom/kingroot/kinguser/caf;

    iget-object v5, v5, Lcom/kingroot/kinguser/caf;->b:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/kingroot/kinguser/gn;->d(Landroid/content/Context;Ljava/lang/String;)Lcom/kingroot/kinguser/gn;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/kingroot/kinguser/cad;->bWh:Lcom/kingroot/kinguser/gn;

    .line 386
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingroot/kinguser/cad;->bWh:Lcom/kingroot/kinguser/gn;

    const-string v5, "Range"

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/kingroot/kinguser/gn;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingroot/kinguser/cad;->bWh:Lcom/kingroot/kinguser/gn;

    invoke-virtual {v4}, Lcom/kingroot/kinguser/gn;->c()I

    .line 396
    :cond_1
    :goto_1
    const/4 v5, 0x0

    .line 399
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingroot/kinguser/cad;->bWh:Lcom/kingroot/kinguser/gn;

    invoke-virtual {v4}, Lcom/kingroot/kinguser/gn;->e()I

    move-result v4

    const/16 v6, 0xce

    if-eq v4, v6, :cond_4

    .line 401
    new-instance v2, Ljava/io/IOException;

    const-string v4, "response code is not 206 error."

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 404
    :catchall_0
    move-exception v2

    :goto_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catch Lcom/kingroot/kinguser/bzz; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 473
    :catch_0
    move-exception v2

    move-object v4, v3

    .line 474
    :goto_3
    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 486
    :catchall_1
    move-exception v2

    :goto_4
    if-eqz v4, :cond_2

    .line 488
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    .line 492
    :cond_2
    :goto_5
    throw v2

    .line 388
    :cond_3
    if-nez v6, :cond_1

    .line 390
    :try_start_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingroot/kinguser/cad;->a:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingroot/kinguser/cad;->bWh:Lcom/kingroot/kinguser/gn;

    invoke-static {v4, v5}, Lcom/kingroot/kinguser/gn;->a(Landroid/content/Context;Lcom/kingroot/kinguser/gn;)Lcom/kingroot/kinguser/gn;

    move-result-object v4

    .line 391
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingroot/kinguser/cad;->bWh:Lcom/kingroot/kinguser/gn;

    invoke-virtual {v5}, Lcom/kingroot/kinguser/gn;->f()V

    .line 392
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/kingroot/kinguser/cad;->bWh:Lcom/kingroot/kinguser/gn;

    .line 393
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingroot/kinguser/cad;->bWh:Lcom/kingroot/kinguser/gn;

    const-string v5, "Range"

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/kingroot/kinguser/gn;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingroot/kinguser/cad;->bWh:Lcom/kingroot/kinguser/gn;

    invoke-virtual {v4}, Lcom/kingroot/kinguser/gn;->c()I

    goto :goto_1

    .line 403
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingroot/kinguser/cad;->bWh:Lcom/kingroot/kinguser/gn;

    invoke-virtual {v4}, Lcom/kingroot/kinguser/gn;->aC()Ljava/io/InputStream;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v4

    .line 404
    :try_start_7
    monitor-exit v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 407
    :try_start_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 410
    :cond_5
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/kingroot/kinguser/cad;->e:Z

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingroot/kinguser/cad;->bWg:Lcom/kingroot/kinguser/caf;

    iget-wide v10, v3, Lcom/kingroot/kinguser/caf;->g:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingroot/kinguser/cad;->bWg:Lcom/kingroot/kinguser/caf;

    iget-wide v12, v3, Lcom/kingroot/kinguser/caf;->h:J

    cmp-long v3, v10, v12

    if-lez v3, :cond_6

    .line 411
    invoke-virtual {v4, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 412
    const/4 v10, -0x1

    if-ne v3, v10, :cond_9

    .line 441
    :cond_6
    :goto_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v6, v10, v6

    .line 442
    const-wide/16 v10, 0x0

    cmp-long v3, v6, v10

    if-gtz v3, :cond_7

    .line 443
    const-wide/16 v6, 0x1

    .line 446
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingroot/kinguser/cad;->bWg:Lcom/kingroot/kinguser/caf;

    iget-wide v10, v3, Lcom/kingroot/kinguser/caf;->h:J

    sub-long v8, v10, v8

    div-long v6, v8, v6

    long-to-int v3, v6

    .line 447
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kingroot/kinguser/cad;->bWg:Lcom/kingroot/kinguser/caf;

    iget v6, v6, Lcom/kingroot/kinguser/caf;->j:I

    if-nez v6, :cond_b

    .line 448
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kingroot/kinguser/cad;->bWg:Lcom/kingroot/kinguser/caf;

    iput v3, v6, Lcom/kingroot/kinguser/caf;->j:I

    .line 453
    :goto_8
    const/16 v6, 0x21

    if-ge v3, v6, :cond_c

    .line 455
    const/4 v3, 0x1

    .line 456
    array-length v6, v2

    sget-object v7, Lcom/kingroot/kinguser/cad;->bWi:[S

    const/4 v8, 0x0

    aget-short v7, v7, v8

    shl-int/lit8 v7, v7, 0xa

    if-eq v6, v7, :cond_8

    .line 457
    sget-object v2, Lcom/kingroot/kinguser/cad;->bWi:[S

    const/4 v6, 0x0

    aget-short v2, v2, v6

    shl-int/lit8 v2, v2, 0xa

    new-array v2, v2, [B

    :cond_8
    :goto_9
    move v6, v5

    move/from16 v16, v3

    move-object v3, v4

    move/from16 v4, v16

    .line 472
    goto/16 :goto_0

    .line 416
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/kingroot/kinguser/cad;->e:Z

    if-eqz v10, :cond_6

    .line 421
    const/4 v10, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v10, v3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 422
    invoke-virtual/range {p1 .. p1}, Ljava/io/FileOutputStream;->flush()V

    .line 424
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/kingroot/kinguser/cad;->bWg:Lcom/kingroot/kinguser/caf;

    iget-wide v12, v10, Lcom/kingroot/kinguser/caf;->h:J

    int-to-long v14, v3

    add-long/2addr v12, v14

    iput-wide v12, v10, Lcom/kingroot/kinguser/caf;->h:J

    .line 427
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingroot/kinguser/cad;->bWg:Lcom/kingroot/kinguser/caf;

    iget-wide v10, v3, Lcom/kingroot/kinguser/caf;->g:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingroot/kinguser/cad;->bWg:Lcom/kingroot/kinguser/caf;

    iget-wide v12, v3, Lcom/kingroot/kinguser/caf;->h:J

    cmp-long v3, v10, v12

    if-nez v3, :cond_a

    .line 428
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingroot/kinguser/cad;->bWg:Lcom/kingroot/kinguser/caf;

    const/high16 v10, 0x3f800000    # 1.0f

    iput v10, v3, Lcom/kingroot/kinguser/caf;->bVY:F

    .line 429
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/cad;->a(I)V

    goto :goto_7

    .line 473
    :catch_1
    move-exception v2

    goto/16 :goto_3

    .line 434
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingroot/kinguser/cad;->bWg:Lcom/kingroot/kinguser/caf;

    iget-wide v10, v3, Lcom/kingroot/kinguser/caf;->g:J

    const-wide/16 v12, 0x0

    cmp-long v3, v10, v12

    if-lez v3, :cond_5

    .line 435
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingroot/kinguser/cad;->bWg:Lcom/kingroot/kinguser/caf;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/kingroot/kinguser/cad;->bWg:Lcom/kingroot/kinguser/caf;

    iget-wide v10, v10, Lcom/kingroot/kinguser/caf;->h:J

    long-to-float v10, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kingroot/kinguser/cad;->bWg:Lcom/kingroot/kinguser/caf;

    iget-wide v12, v11, Lcom/kingroot/kinguser/caf;->g:J

    long-to-float v11, v12

    div-float/2addr v10, v11

    iput v10, v3, Lcom/kingroot/kinguser/caf;->bVY:F

    .line 436
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/cad;->a(I)V
    :try_end_8
    .catch Lcom/kingroot/kinguser/bzz; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_6

    .line 475
    :catch_2
    move-exception v2

    .line 476
    :goto_a
    :try_start_9
    new-instance v3, Lcom/kingroot/kinguser/bzz;

    const/16 v5, -0x3b

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unbreakable download unsupported encoding: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 477
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v5, v2}, Lcom/kingroot/kinguser/bzz;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 450
    :cond_b
    :try_start_a
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kingroot/kinguser/cad;->bWg:Lcom/kingroot/kinguser/caf;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kingroot/kinguser/cad;->bWg:Lcom/kingroot/kinguser/caf;

    iget v7, v7, Lcom/kingroot/kinguser/caf;->j:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/kingroot/kinguser/cad;->bWg:Lcom/kingroot/kinguser/caf;

    iget v8, v8, Lcom/kingroot/kinguser/caf;->j:I

    add-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    iput v7, v6, Lcom/kingroot/kinguser/caf;->j:I
    :try_end_a
    .catch Lcom/kingroot/kinguser/bzz; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_8

    .line 478
    :catch_3
    move-exception v2

    .line 479
    :goto_b
    :try_start_b
    new-instance v3, Lcom/kingroot/kinguser/bzz;

    const/16 v5, -0x1b90

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unbreakable download IOException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 481
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v5, v2}, Lcom/kingroot/kinguser/bzz;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 459
    :cond_c
    const/16 v6, 0x41

    if-ge v3, v6, :cond_d

    .line 461
    const/4 v3, 0x2

    .line 462
    :try_start_c
    array-length v6, v2

    sget-object v7, Lcom/kingroot/kinguser/cad;->bWi:[S

    const/4 v8, 0x1

    aget-short v7, v7, v8

    shl-int/lit8 v7, v7, 0xa

    if-eq v6, v7, :cond_8

    .line 463
    sget-object v2, Lcom/kingroot/kinguser/cad;->bWi:[S

    const/4 v6, 0x1

    aget-short v2, v2, v6

    shl-int/lit8 v2, v2, 0xa

    new-array v2, v2, [B

    goto/16 :goto_9

    .line 467
    :cond_d
    const/4 v3, 0x3

    .line 468
    array-length v6, v2

    sget-object v7, Lcom/kingroot/kinguser/cad;->bWi:[S

    const/4 v8, 0x2

    aget-short v7, v7, v8

    shl-int/lit8 v7, v7, 0xa

    if-eq v6, v7, :cond_8

    .line 469
    sget-object v2, Lcom/kingroot/kinguser/cad;->bWi:[S

    const/4 v6, 0x2

    aget-short v2, v2, v6

    shl-int/lit8 v2, v2, 0xa

    new-array v2, v2, [B
    :try_end_c
    .catch Lcom/kingroot/kinguser/bzz; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto/16 :goto_9

    .line 486
    :cond_e
    if-eqz v3, :cond_f

    .line 488
    :try_start_d
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    .line 495
    :cond_f
    :goto_c
    return-void

    .line 482
    :catch_4
    move-exception v2

    .line 483
    :goto_d
    :try_start_e
    new-instance v3, Lcom/kingroot/kinguser/bzz;

    const/4 v5, -0x2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unbreakable download IOException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 484
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v5, v2}, Lcom/kingroot/kinguser/bzz;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 489
    :catch_5
    move-exception v2

    goto :goto_c

    :catch_6
    move-exception v3

    goto/16 :goto_5

    .line 486
    :catchall_2
    move-exception v2

    move-object v4, v3

    goto/16 :goto_4

    .line 482
    :catch_7
    move-exception v2

    move-object v4, v3

    goto :goto_d

    .line 478
    :catch_8
    move-exception v2

    move-object v4, v3

    goto/16 :goto_b

    .line 475
    :catch_9
    move-exception v2

    move-object v4, v3

    goto/16 :goto_a

    .line 404
    :catchall_3
    move-exception v2

    move-object v3, v4

    goto/16 :goto_2
.end method

.method private c()V
    .locals 6

    .prologue
    const/16 v5, 0xce

    const/4 v4, 0x1

    .line 202
    iget-object v1, p0, Lcom/kingroot/kinguser/cad;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 203
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cad;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/kingroot/kinguser/cad;->bWg:Lcom/kingroot/kinguser/caf;

    iget-object v2, v2, Lcom/kingroot/kinguser/caf;->b:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/gn;->d(Landroid/content/Context;Ljava/lang/String;)Lcom/kingroot/kinguser/gn;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/cad;->bWh:Lcom/kingroot/kinguser/gn;

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bytes=0-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/kingroot/kinguser/cad;->d:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 205
    iget-object v2, p0, Lcom/kingroot/kinguser/cad;->bWh:Lcom/kingroot/kinguser/gn;

    const-string v3, "Range"

    invoke-virtual {v2, v3, v0}, Lcom/kingroot/kinguser/gn;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/kingroot/kinguser/cad;->bWh:Lcom/kingroot/kinguser/gn;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/gn;->c()I

    move-result v0

    if-eq v0, v5, :cond_0

    .line 207
    iget-object v0, p0, Lcom/kingroot/kinguser/cad;->bWh:Lcom/kingroot/kinguser/gn;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/gn;->f()V

    .line 210
    iget-object v0, p0, Lcom/kingroot/kinguser/cad;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/kingroot/kinguser/cad;->bWg:Lcom/kingroot/kinguser/caf;

    iget-object v2, v2, Lcom/kingroot/kinguser/caf;->b:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/gn;->d(Landroid/content/Context;Ljava/lang/String;)Lcom/kingroot/kinguser/gn;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/cad;->bWh:Lcom/kingroot/kinguser/gn;

    .line 211
    iget-object v0, p0, Lcom/kingroot/kinguser/cad;->bWh:Lcom/kingroot/kinguser/gn;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/gn;->c()I

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cad;->bWh:Lcom/kingroot/kinguser/gn;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/gn;->e()I

    move-result v0

    .line 215
    if-ne v0, v5, :cond_3

    .line 216
    iget-object v0, p0, Lcom/kingroot/kinguser/cad;->bWg:Lcom/kingroot/kinguser/caf;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/kingroot/kinguser/caf;->c:Z

    .line 217
    iget-object v0, p0, Lcom/kingroot/kinguser/cad;->bWg:Lcom/kingroot/kinguser/caf;

    iget-object v2, p0, Lcom/kingroot/kinguser/cad;->bWh:Lcom/kingroot/kinguser/gn;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/gn;->g()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/kingroot/kinguser/caf;->g:J

    .line 229
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cad;->bWg:Lcom/kingroot/kinguser/caf;

    iget-wide v2, v0, Lcom/kingroot/kinguser/caf;->g:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_2

    .line 230
    const/16 v0, -0x1b59

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/cad;->b(I)V

    .line 232
    :cond_2
    monitor-exit v1

    .line 233
    :goto_1
    return-void

    .line 218
    :cond_3
    const/16 v2, 0xc8

    if-ne v0, v2, :cond_1

    .line 219
    iget-object v0, p0, Lcom/kingroot/kinguser/cad;->bWh:Lcom/kingroot/kinguser/gn;

    const-string v2, "Content-Type"

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/gn;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 220
    iget-object v2, p0, Lcom/kingroot/kinguser/cad;->bWg:Lcom/kingroot/kinguser/caf;

    iget v2, v2, Lcom/kingroot/kinguser/caf;->a:I

    if-ne v2, v4, :cond_4

    const-string v2, "text/html"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 222
    const/16 v0, -0x1b60

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/cad;->b(I)V

    .line 223
    monitor-exit v1

    goto :goto_1

    .line 232
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 225
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/cad;->bWg:Lcom/kingroot/kinguser/caf;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/kingroot/kinguser/caf;->c:Z

    .line 226
    iget-object v0, p0, Lcom/kingroot/kinguser/cad;->bWg:Lcom/kingroot/kinguser/caf;

    iget-object v2, p0, Lcom/kingroot/kinguser/cad;->bWh:Lcom/kingroot/kinguser/gn;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/gn;->h()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/kingroot/kinguser/caf;->g:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 498
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/cad;->e:Z

    .line 500
    invoke-virtual {p0}, Lcom/kingroot/kinguser/cad;->nA()V

    .line 501
    iget-object v1, p0, Lcom/kingroot/kinguser/cad;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 502
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cad;->bWh:Lcom/kingroot/kinguser/gn;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 504
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/cad;->bWh:Lcom/kingroot/kinguser/gn;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/gn;->f()V

    .line 505
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/cad;->bWh:Lcom/kingroot/kinguser/gn;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 511
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    .line 512
    return-void

    .line 511
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 507
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    iget-boolean v0, p0, Lcom/kingroot/kinguser/cad;->e:Z

    if-nez v0, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 53
    :pswitch_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cad;->bWj:Lcom/kingroot/kinguser/cah;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/kingroot/kinguser/cad;->bWg:Lcom/kingroot/kinguser/caf;

    iput v1, v0, Lcom/kingroot/kinguser/caf;->d:I

    .line 55
    iget-object v0, p0, Lcom/kingroot/kinguser/cad;->bWj:Lcom/kingroot/kinguser/cah;

    iget-object v1, p0, Lcom/kingroot/kinguser/cad;->bWg:Lcom/kingroot/kinguser/caf;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/cah;->e(Lcom/kingroot/kinguser/caf;)V

    goto :goto_0

    .line 59
    :pswitch_1
    iget-object v0, p0, Lcom/kingroot/kinguser/cad;->bWj:Lcom/kingroot/kinguser/cah;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/kingroot/kinguser/cad;->bWg:Lcom/kingroot/kinguser/caf;

    iput v1, v0, Lcom/kingroot/kinguser/caf;->d:I

    .line 61
    iget-object v0, p0, Lcom/kingroot/kinguser/cad;->bWj:Lcom/kingroot/kinguser/cah;

    iget-object v1, p0, Lcom/kingroot/kinguser/cad;->bWg:Lcom/kingroot/kinguser/caf;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/cah;->f(Lcom/kingroot/kinguser/caf;)V

    goto :goto_0

    .line 65
    :pswitch_2
    iget-object v0, p0, Lcom/kingroot/kinguser/cad;->bWj:Lcom/kingroot/kinguser/cah;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/kingroot/kinguser/cad;->bWg:Lcom/kingroot/kinguser/caf;

    const/4 v1, 0x2

    iput v1, v0, Lcom/kingroot/kinguser/caf;->d:I

    .line 67
    iget-object v0, p0, Lcom/kingroot/kinguser/cad;->bWj:Lcom/kingroot/kinguser/cah;

    iget-object v1, p0, Lcom/kingroot/kinguser/cad;->bWg:Lcom/kingroot/kinguser/caf;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/cah;->a(Lcom/kingroot/kinguser/caf;)V

    goto :goto_0

    .line 71
    :pswitch_3
    iget-object v0, p0, Lcom/kingroot/kinguser/cad;->bWj:Lcom/kingroot/kinguser/cah;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/kingroot/kinguser/cad;->bWg:Lcom/kingroot/kinguser/caf;

    const/4 v1, 0x3

    iput v1, v0, Lcom/kingroot/kinguser/caf;->d:I

    .line 73
    iget-object v0, p0, Lcom/kingroot/kinguser/cad;->bWj:Lcom/kingroot/kinguser/cah;

    iget-object v1, p0, Lcom/kingroot/kinguser/cad;->bWg:Lcom/kingroot/kinguser/caf;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/cah;->b(Lcom/kingroot/kinguser/caf;)V

    goto :goto_0

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public a(Lcom/kingroot/kinguser/cah;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kingroot/kinguser/cah",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 95
    iput-object p1, p0, Lcom/kingroot/kinguser/cad;->bWj:Lcom/kingroot/kinguser/cah;

    .line 96
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 106
    new-instance v0, Lcom/kingroot/kinguser/cae;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/cae;-><init>(Lcom/kingroot/kinguser/cad;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/gw;->a(Lcom/kingroot/kinguser/gw$a;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    return-void
.end method
