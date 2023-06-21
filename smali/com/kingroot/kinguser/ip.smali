.class public Lcom/kingroot/kinguser/ip;
.super Lcom/kingroot/kinguser/mg;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/kingroot/kinguser/ir;",
        ">",
        "Lcom/kingroot/kinguser/mg;"
    }
.end annotation


# static fields
.field private static final sk:[S


# instance fields
.field private mContext:Landroid/content/Context;

.field private se:Lcom/kingroot/kinguser/ir;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private sf:Ljava/lang/String;

.field private sg:I

.field private volatile sh:Z

.field private si:Lcom/kingroot/kinguser/ka;

.field private final sj:Ljava/lang/Object;

.field private sl:Lcom/kingroot/kinguser/is;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/is",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x3

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Lcom/kingroot/kinguser/ip;->sk:[S

    return-void

    nop

    :array_0
    .array-data 2
        0x8s
        0x40s
        0x80s
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/kingroot/kinguser/ir;Ljava/lang/String;)V
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
    invoke-direct {p0}, Lcom/kingroot/kinguser/mg;-><init>()V

    .line 37
    const v0, 0x4b000

    iput v0, p0, Lcom/kingroot/kinguser/ip;->sg:I

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/ip;->sh:Z

    .line 40
    iput-object v1, p0, Lcom/kingroot/kinguser/ip;->si:Lcom/kingroot/kinguser/ka;

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/ip;->sj:Ljava/lang/Object;

    .line 44
    iput-object v1, p0, Lcom/kingroot/kinguser/ip;->sl:Lcom/kingroot/kinguser/is;

    .line 89
    iput-object p1, p0, Lcom/kingroot/kinguser/ip;->mContext:Landroid/content/Context;

    .line 90
    iput-object p2, p0, Lcom/kingroot/kinguser/ip;->se:Lcom/kingroot/kinguser/ir;

    .line 91
    iput-object p3, p0, Lcom/kingroot/kinguser/ip;->sf:Ljava/lang/String;

    .line 92
    return-void
.end method

.method private P(I)V
    .locals 1

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/kingroot/kinguser/ip;->sh:Z

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/kingroot/kinguser/ip;->se:Lcom/kingroot/kinguser/ir;

    iput p1, v0, Lcom/kingroot/kinguser/ir;->ei:I

    .line 198
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/ip;->O(I)V

    .line 200
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/ip;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/kingroot/kinguser/ip;->cc()V

    return-void
.end method

.method private a(Ljava/io/FileOutputStream;)V
    .locals 17

    .prologue
    .line 240
    const/4 v3, 0x0

    .line 242
    :try_start_0
    sget-object v2, Lcom/kingroot/kinguser/ip;->sk:[S

    const/4 v4, 0x1

    aget-short v2, v2, v4

    shl-int/lit8 v2, v2, 0xa

    new-array v4, v2, [B

    .line 244
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingroot/kinguser/ip;->sj:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catch Lcom/king/uranus/ar; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 245
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/ip;->si:Lcom/kingroot/kinguser/ka;

    if-nez v2, :cond_0

    .line 246
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/ip;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kingroot/kinguser/ip;->se:Lcom/kingroot/kinguser/ir;

    iget-object v6, v6, Lcom/kingroot/kinguser/ir;->ra:Ljava/lang/String;

    invoke-static {v2, v6}, Lcom/kingroot/kinguser/ka;->e(Landroid/content/Context;Ljava/lang/String;)Lcom/kingroot/kinguser/ka;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/kingroot/kinguser/ip;->si:Lcom/kingroot/kinguser/ka;

    .line 247
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/ip;->si:Lcom/kingroot/kinguser/ka;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/ka;->I()I

    .line 249
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/ip;->si:Lcom/kingroot/kinguser/ka;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/ka;->getResponseCode()I

    move-result v2

    const/16 v6, 0xc8

    if-eq v2, v6, :cond_2

    .line 251
    new-instance v2, Lcom/king/uranus/ar;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingroot/kinguser/ip;->si:Lcom/kingroot/kinguser/ka;

    invoke-virtual {v4}, Lcom/kingroot/kinguser/ka;->getResponseCode()I

    move-result v4

    add-int/lit16 v4, v4, -0xbb8

    const-string v6, "error: response code is not 200."

    invoke-direct {v2, v4, v6}, Lcom/king/uranus/ar;-><init>(ILjava/lang/String;)V

    throw v2

    .line 255
    :catchall_0
    move-exception v2

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Lcom/king/uranus/ar; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 327
    :catch_0
    move-exception v2

    .line 328
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 339
    :catchall_1
    move-exception v2

    if-eqz v3, :cond_1

    .line 341
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 344
    :cond_1
    :goto_0
    throw v2

    .line 254
    :cond_2
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/ip;->si:Lcom/kingroot/kinguser/ka;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/ka;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 255
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 259
    :try_start_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 261
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/ip;->se:Lcom/kingroot/kinguser/ir;

    iget-wide v10, v2, Lcom/kingroot/kinguser/ir;->ss:J

    .line 262
    const/4 v2, 0x0

    move/from16 v16, v2

    move-object v2, v4

    move/from16 v4, v16

    .line 264
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/kingroot/kinguser/ip;->sh:Z

    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingroot/kinguser/ip;->se:Lcom/kingroot/kinguser/ir;

    iget-wide v6, v5, Lcom/kingroot/kinguser/ir;->sr:J

    const-wide/16 v12, 0x0

    cmp-long v5, v6, v12

    if-lez v5, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingroot/kinguser/ip;->se:Lcom/kingroot/kinguser/ir;

    iget-wide v6, v5, Lcom/kingroot/kinguser/ir;->sr:J

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingroot/kinguser/ip;->se:Lcom/kingroot/kinguser/ir;

    iget-wide v12, v5, Lcom/kingroot/kinguser/ir;->ss:J

    cmp-long v5, v6, v12

    if-lez v5, :cond_3

    .line 265
    invoke-virtual {v3, v2}, Ljava/io/InputStream;->read([B)I
    :try_end_6
    .catch Lcom/king/uranus/ar; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result v5

    .line 266
    const/4 v6, -0x1

    if-ne v5, v6, :cond_5

    .line 339
    :cond_3
    :goto_2
    if-eqz v3, :cond_4

    .line 341
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 348
    :cond_4
    :goto_3
    return-void

    .line 270
    :cond_5
    :try_start_8
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/kingroot/kinguser/ip;->sh:Z

    if-eqz v6, :cond_3

    .line 275
    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V

    .line 276
    invoke-virtual/range {p1 .. p1}, Ljava/io/FileOutputStream;->flush()V

    .line 278
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kingroot/kinguser/ip;->se:Lcom/kingroot/kinguser/ir;

    iget-wide v12, v6, Lcom/kingroot/kinguser/ir;->ss:J

    int-to-long v14, v5

    add-long/2addr v12, v14

    iput-wide v12, v6, Lcom/kingroot/kinguser/ir;->ss:J

    .line 279
    add-int v6, v4, v5

    .line 282
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingroot/kinguser/ip;->se:Lcom/kingroot/kinguser/ir;

    iget-wide v4, v4, Lcom/kingroot/kinguser/ir;->sr:J

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kingroot/kinguser/ip;->se:Lcom/kingroot/kinguser/ir;

    iget-wide v12, v7, Lcom/kingroot/kinguser/ir;->ss:J

    cmp-long v4, v4, v12

    if-nez v4, :cond_6

    .line 283
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/ip;->se:Lcom/kingroot/kinguser/ir;

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v2, Lcom/kingroot/kinguser/ir;->st:F

    .line 284
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/ip;->O(I)V
    :try_end_8
    .catch Lcom/king/uranus/ar; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_2

    .line 329
    :catch_1
    move-exception v2

    .line 330
    :try_start_9
    new-instance v4, Lcom/king/uranus/ar;

    const/16 v5, -0x3b

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unbreakable download unsupported encoding: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 331
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v5, v2}, Lcom/king/uranus/ar;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 289
    :cond_6
    :try_start_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingroot/kinguser/ip;->se:Lcom/kingroot/kinguser/ir;

    iget-wide v4, v4, Lcom/kingroot/kinguser/ir;->sr:J

    const-wide/16 v12, 0x0

    cmp-long v4, v4, v12

    if-lez v4, :cond_7

    .line 290
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingroot/kinguser/ip;->se:Lcom/kingroot/kinguser/ir;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingroot/kinguser/ip;->se:Lcom/kingroot/kinguser/ir;

    iget-wide v12, v5, Lcom/kingroot/kinguser/ir;->ss:J

    long-to-float v5, v12

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kingroot/kinguser/ip;->se:Lcom/kingroot/kinguser/ir;

    iget-wide v12, v7, Lcom/kingroot/kinguser/ir;->sr:J

    long-to-float v7, v12

    div-float/2addr v5, v7

    iput v5, v4, Lcom/kingroot/kinguser/ir;->st:F

    .line 291
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/kingroot/kinguser/ip;->O(I)V

    .line 295
    :cond_7
    move-object/from16 v0, p0

    iget v4, v0, Lcom/kingroot/kinguser/ip;->sg:I

    if-le v6, v4, :cond_d

    .line 296
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v8

    .line 297
    const-wide/16 v12, 0x0

    cmp-long v7, v4, v12

    if-gtz v7, :cond_8

    .line 298
    const-wide/16 v4, 0x1

    .line 301
    :cond_8
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kingroot/kinguser/ip;->se:Lcom/kingroot/kinguser/ir;

    iget-wide v12, v7, Lcom/kingroot/kinguser/ir;->ss:J

    sub-long/2addr v12, v10

    div-long v4, v12, v4

    long-to-int v4, v4

    .line 302
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingroot/kinguser/ip;->se:Lcom/kingroot/kinguser/ir;

    iget v5, v5, Lcom/kingroot/kinguser/ir;->su:I

    if-nez v5, :cond_a

    .line 303
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingroot/kinguser/ip;->se:Lcom/kingroot/kinguser/ir;

    iput v4, v5, Lcom/kingroot/kinguser/ir;->su:I

    .line 308
    :goto_4
    const/16 v5, 0x21

    if-ge v4, v5, :cond_b

    .line 310
    array-length v4, v2

    sget-object v5, Lcom/kingroot/kinguser/ip;->sk:[S

    const/4 v7, 0x0

    aget-short v5, v5, v7

    shl-int/lit8 v5, v5, 0xa

    if-eq v4, v5, :cond_9

    .line 311
    sget-object v2, Lcom/kingroot/kinguser/ip;->sk:[S

    const/4 v4, 0x0

    aget-short v2, v2, v4

    shl-int/lit8 v2, v2, 0xa

    new-array v2, v2, [B

    :cond_9
    :goto_5
    move v4, v6

    .line 324
    goto/16 :goto_1

    .line 305
    :cond_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingroot/kinguser/ip;->se:Lcom/kingroot/kinguser/ir;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kingroot/kinguser/ip;->se:Lcom/kingroot/kinguser/ir;

    iget v7, v7, Lcom/kingroot/kinguser/ir;->su:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kingroot/kinguser/ip;->se:Lcom/kingroot/kinguser/ir;

    iget v12, v12, Lcom/kingroot/kinguser/ir;->su:I

    add-int/2addr v7, v12

    div-int/lit8 v7, v7, 0x2

    iput v7, v5, Lcom/kingroot/kinguser/ir;->su:I
    :try_end_a
    .catch Lcom/king/uranus/ar; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_4

    .line 332
    :catch_2
    move-exception v2

    .line 333
    :try_start_b
    new-instance v4, Lcom/king/uranus/ar;

    const/16 v5, -0x1b90

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unbreakable download IOException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 334
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v5, v2}, Lcom/king/uranus/ar;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 313
    :cond_b
    const/16 v5, 0x41

    if-ge v4, v5, :cond_c

    .line 315
    :try_start_c
    array-length v4, v2

    sget-object v5, Lcom/kingroot/kinguser/ip;->sk:[S

    const/4 v7, 0x1

    aget-short v5, v5, v7

    shl-int/lit8 v5, v5, 0xa

    if-eq v4, v5, :cond_9

    .line 316
    sget-object v2, Lcom/kingroot/kinguser/ip;->sk:[S

    const/4 v4, 0x1

    aget-short v2, v2, v4

    shl-int/lit8 v2, v2, 0xa

    new-array v2, v2, [B

    goto :goto_5

    .line 320
    :cond_c
    array-length v4, v2

    sget-object v5, Lcom/kingroot/kinguser/ip;->sk:[S

    const/4 v7, 0x2

    aget-short v5, v5, v7

    shl-int/lit8 v5, v5, 0xa

    if-eq v4, v5, :cond_9

    .line 321
    sget-object v2, Lcom/kingroot/kinguser/ip;->sk:[S

    const/4 v4, 0x2

    aget-short v2, v2, v4

    shl-int/lit8 v2, v2, 0xa

    new-array v2, v2, [B
    :try_end_c
    .catch Lcom/king/uranus/ar; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_5

    .line 335
    :catch_3
    move-exception v2

    .line 336
    :try_start_d
    new-instance v4, Lcom/king/uranus/ar;

    const/4 v5, -0x2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unbreakable download IOException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 337
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v5, v2}, Lcom/king/uranus/ar;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 342
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

.method private b(Ljava/io/FileOutputStream;)V
    .locals 17

    .prologue
    .line 358
    const/4 v4, 0x0

    .line 360
    const/4 v5, 0x1

    .line 361
    :try_start_0
    sget-object v2, Lcom/kingroot/kinguser/ip;->sk:[S

    const/4 v3, 0x1

    aget-short v2, v2, v3

    shl-int/lit8 v2, v2, 0xa

    new-array v3, v2, [B
    :try_end_0
    .catch Lcom/king/uranus/ar; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 367
    const/4 v2, 0x1

    move v6, v2

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    .line 368
    :goto_0
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/kingroot/kinguser/ip;->sh:Z

    if-eqz v5, :cond_e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingroot/kinguser/ip;->se:Lcom/kingroot/kinguser/ir;

    iget-wide v8, v5, Lcom/kingroot/kinguser/ir;->sr:J

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-lez v5, :cond_e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingroot/kinguser/ip;->se:Lcom/kingroot/kinguser/ir;

    iget-wide v8, v5, Lcom/kingroot/kinguser/ir;->sr:J

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingroot/kinguser/ip;->se:Lcom/kingroot/kinguser/ir;

    iget-wide v10, v5, Lcom/kingroot/kinguser/ir;->ss:J

    cmp-long v5, v8, v10

    if-lez v5, :cond_e

    .line 371
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingroot/kinguser/ip;->se:Lcom/kingroot/kinguser/ir;

    iget-wide v8, v5, Lcom/kingroot/kinguser/ir;->ss:J

    .line 372
    move-object/from16 v0, p0

    iget v5, v0, Lcom/kingroot/kinguser/ip;->sg:I

    mul-int/2addr v4, v5

    int-to-long v4, v4

    add-long/2addr v4, v8

    const-wide/16 v10, 0x1

    sub-long/2addr v4, v10

    .line 373
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kingroot/kinguser/ip;->se:Lcom/kingroot/kinguser/ir;

    iget-wide v10, v7, Lcom/kingroot/kinguser/ir;->sr:J

    cmp-long v7, v4, v10

    if-ltz v7, :cond_0

    .line 374
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingroot/kinguser/ip;->se:Lcom/kingroot/kinguser/ir;

    iget-wide v4, v4, Lcom/kingroot/kinguser/ir;->sr:J

    const-wide/16 v10, 0x1

    sub-long/2addr v4, v10

    .line 378
    :cond_0
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 379
    const-string v10, "bytes="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v10

    const/16 v11, 0x2d

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 381
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/kingroot/kinguser/ip;->sj:Ljava/lang/Object;

    monitor-enter v10
    :try_end_1
    .catch Lcom/king/uranus/ar; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 382
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingroot/kinguser/ip;->si:Lcom/kingroot/kinguser/ka;

    if-nez v4, :cond_3

    .line 383
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingroot/kinguser/ip;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingroot/kinguser/ip;->se:Lcom/kingroot/kinguser/ir;

    iget-object v5, v5, Lcom/kingroot/kinguser/ir;->ra:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/kingroot/kinguser/ka;->e(Landroid/content/Context;Ljava/lang/String;)Lcom/kingroot/kinguser/ka;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/kingroot/kinguser/ip;->si:Lcom/kingroot/kinguser/ka;

    .line 384
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingroot/kinguser/ip;->si:Lcom/kingroot/kinguser/ka;

    const-string v5, "Range"

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/kingroot/kinguser/ka;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingroot/kinguser/ip;->si:Lcom/kingroot/kinguser/ka;

    invoke-virtual {v4}, Lcom/kingroot/kinguser/ka;->I()I

    .line 394
    :cond_1
    :goto_1
    const/4 v5, 0x0

    .line 397
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingroot/kinguser/ip;->si:Lcom/kingroot/kinguser/ka;

    invoke-virtual {v4}, Lcom/kingroot/kinguser/ka;->getResponseCode()I

    move-result v4

    const/16 v6, 0xce

    if-eq v4, v6, :cond_4

    .line 399
    new-instance v2, Ljava/io/IOException;

    const-string v4, "response code is not 206 error."

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 402
    :catchall_0
    move-exception v2

    :goto_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catch Lcom/king/uranus/ar; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 471
    :catch_0
    move-exception v2

    move-object v4, v3

    .line 472
    :goto_3
    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 484
    :catchall_1
    move-exception v2

    :goto_4
    if-eqz v4, :cond_2

    .line 486
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    .line 489
    :cond_2
    :goto_5
    throw v2

    .line 386
    :cond_3
    if-nez v6, :cond_1

    .line 388
    :try_start_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingroot/kinguser/ip;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingroot/kinguser/ip;->si:Lcom/kingroot/kinguser/ka;

    invoke-static {v4, v5}, Lcom/kingroot/kinguser/ka;->a(Landroid/content/Context;Lcom/kingroot/kinguser/ka;)Lcom/kingroot/kinguser/ka;

    move-result-object v4

    .line 389
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingroot/kinguser/ip;->si:Lcom/kingroot/kinguser/ka;

    invoke-virtual {v5}, Lcom/kingroot/kinguser/ka;->close()V

    .line 390
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/kingroot/kinguser/ip;->si:Lcom/kingroot/kinguser/ka;

    .line 391
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingroot/kinguser/ip;->si:Lcom/kingroot/kinguser/ka;

    const-string v5, "Range"

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/kingroot/kinguser/ka;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingroot/kinguser/ip;->si:Lcom/kingroot/kinguser/ka;

    invoke-virtual {v4}, Lcom/kingroot/kinguser/ka;->I()I

    goto :goto_1

    .line 401
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingroot/kinguser/ip;->si:Lcom/kingroot/kinguser/ka;

    invoke-virtual {v4}, Lcom/kingroot/kinguser/ka;->getInputStream()Ljava/io/InputStream;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v4

    .line 402
    :try_start_7
    monitor-exit v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 405
    :try_start_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 408
    :cond_5
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/kingroot/kinguser/ip;->sh:Z

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingroot/kinguser/ip;->se:Lcom/kingroot/kinguser/ir;

    iget-wide v10, v3, Lcom/kingroot/kinguser/ir;->sr:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingroot/kinguser/ip;->se:Lcom/kingroot/kinguser/ir;

    iget-wide v12, v3, Lcom/kingroot/kinguser/ir;->ss:J

    cmp-long v3, v10, v12

    if-lez v3, :cond_6

    .line 409
    invoke-virtual {v4, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 410
    const/4 v10, -0x1

    if-ne v3, v10, :cond_9

    .line 439
    :cond_6
    :goto_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v6, v10, v6

    .line 440
    const-wide/16 v10, 0x0

    cmp-long v3, v6, v10

    if-gtz v3, :cond_7

    .line 441
    const-wide/16 v6, 0x1

    .line 444
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingroot/kinguser/ip;->se:Lcom/kingroot/kinguser/ir;

    iget-wide v10, v3, Lcom/kingroot/kinguser/ir;->ss:J

    sub-long v8, v10, v8

    div-long v6, v8, v6

    long-to-int v3, v6

    .line 445
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kingroot/kinguser/ip;->se:Lcom/kingroot/kinguser/ir;

    iget v6, v6, Lcom/kingroot/kinguser/ir;->su:I

    if-nez v6, :cond_b

    .line 446
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kingroot/kinguser/ip;->se:Lcom/kingroot/kinguser/ir;

    iput v3, v6, Lcom/kingroot/kinguser/ir;->su:I

    .line 451
    :goto_8
    const/16 v6, 0x21

    if-ge v3, v6, :cond_c

    .line 453
    const/4 v3, 0x1

    .line 454
    array-length v6, v2

    sget-object v7, Lcom/kingroot/kinguser/ip;->sk:[S

    const/4 v8, 0x0

    aget-short v7, v7, v8

    shl-int/lit8 v7, v7, 0xa

    if-eq v6, v7, :cond_8

    .line 455
    sget-object v2, Lcom/kingroot/kinguser/ip;->sk:[S

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

    .line 470
    goto/16 :goto_0

    .line 414
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/kingroot/kinguser/ip;->sh:Z

    if-eqz v10, :cond_6

    .line 419
    const/4 v10, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v10, v3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 420
    invoke-virtual/range {p1 .. p1}, Ljava/io/FileOutputStream;->flush()V

    .line 422
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/kingroot/kinguser/ip;->se:Lcom/kingroot/kinguser/ir;

    iget-wide v12, v10, Lcom/kingroot/kinguser/ir;->ss:J

    int-to-long v14, v3

    add-long/2addr v12, v14

    iput-wide v12, v10, Lcom/kingroot/kinguser/ir;->ss:J

    .line 425
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingroot/kinguser/ip;->se:Lcom/kingroot/kinguser/ir;

    iget-wide v10, v3, Lcom/kingroot/kinguser/ir;->sr:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingroot/kinguser/ip;->se:Lcom/kingroot/kinguser/ir;

    iget-wide v12, v3, Lcom/kingroot/kinguser/ir;->ss:J

    cmp-long v3, v10, v12

    if-nez v3, :cond_a

    .line 426
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingroot/kinguser/ip;->se:Lcom/kingroot/kinguser/ir;

    const/high16 v10, 0x3f800000    # 1.0f

    iput v10, v3, Lcom/kingroot/kinguser/ir;->st:F

    .line 427
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/ip;->O(I)V

    goto :goto_7

    .line 471
    :catch_1
    move-exception v2

    goto/16 :goto_3

    .line 432
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingroot/kinguser/ip;->se:Lcom/kingroot/kinguser/ir;

    iget-wide v10, v3, Lcom/kingroot/kinguser/ir;->sr:J

    const-wide/16 v12, 0x0

    cmp-long v3, v10, v12

    if-lez v3, :cond_5

    .line 433
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingroot/kinguser/ip;->se:Lcom/kingroot/kinguser/ir;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/kingroot/kinguser/ip;->se:Lcom/kingroot/kinguser/ir;

    iget-wide v10, v10, Lcom/kingroot/kinguser/ir;->ss:J

    long-to-float v10, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kingroot/kinguser/ip;->se:Lcom/kingroot/kinguser/ir;

    iget-wide v12, v11, Lcom/kingroot/kinguser/ir;->sr:J

    long-to-float v11, v12

    div-float/2addr v10, v11

    iput v10, v3, Lcom/kingroot/kinguser/ir;->st:F

    .line 434
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/ip;->O(I)V
    :try_end_8
    .catch Lcom/king/uranus/ar; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_6

    .line 473
    :catch_2
    move-exception v2

    .line 474
    :goto_a
    :try_start_9
    new-instance v3, Lcom/king/uranus/ar;

    const/16 v5, -0x3b

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unbreakable download unsupported encoding: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 475
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v5, v2}, Lcom/king/uranus/ar;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 448
    :cond_b
    :try_start_a
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kingroot/kinguser/ip;->se:Lcom/kingroot/kinguser/ir;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kingroot/kinguser/ip;->se:Lcom/kingroot/kinguser/ir;

    iget v7, v7, Lcom/kingroot/kinguser/ir;->su:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/kingroot/kinguser/ip;->se:Lcom/kingroot/kinguser/ir;

    iget v8, v8, Lcom/kingroot/kinguser/ir;->su:I

    add-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    iput v7, v6, Lcom/kingroot/kinguser/ir;->su:I
    :try_end_a
    .catch Lcom/king/uranus/ar; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_8

    .line 476
    :catch_3
    move-exception v2

    .line 477
    :goto_b
    :try_start_b
    new-instance v3, Lcom/king/uranus/ar;

    const/16 v5, -0x1b90

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unbreakable download IOException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 479
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v5, v2}, Lcom/king/uranus/ar;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 457
    :cond_c
    const/16 v6, 0x41

    if-ge v3, v6, :cond_d

    .line 459
    const/4 v3, 0x2

    .line 460
    :try_start_c
    array-length v6, v2

    sget-object v7, Lcom/kingroot/kinguser/ip;->sk:[S

    const/4 v8, 0x1

    aget-short v7, v7, v8

    shl-int/lit8 v7, v7, 0xa

    if-eq v6, v7, :cond_8

    .line 461
    sget-object v2, Lcom/kingroot/kinguser/ip;->sk:[S

    const/4 v6, 0x1

    aget-short v2, v2, v6

    shl-int/lit8 v2, v2, 0xa

    new-array v2, v2, [B

    goto/16 :goto_9

    .line 465
    :cond_d
    const/4 v3, 0x3

    .line 466
    array-length v6, v2

    sget-object v7, Lcom/kingroot/kinguser/ip;->sk:[S

    const/4 v8, 0x2

    aget-short v7, v7, v8

    shl-int/lit8 v7, v7, 0xa

    if-eq v6, v7, :cond_8

    .line 467
    sget-object v2, Lcom/kingroot/kinguser/ip;->sk:[S

    const/4 v6, 0x2

    aget-short v2, v2, v6

    shl-int/lit8 v2, v2, 0xa

    new-array v2, v2, [B
    :try_end_c
    .catch Lcom/king/uranus/ar; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto/16 :goto_9

    .line 484
    :cond_e
    if-eqz v3, :cond_f

    .line 486
    :try_start_d
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    .line 492
    :cond_f
    :goto_c
    return-void

    .line 480
    :catch_4
    move-exception v2

    .line 481
    :goto_d
    :try_start_e
    new-instance v3, Lcom/king/uranus/ar;

    const/4 v5, -0x2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unbreakable download IOException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 482
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v5, v2}, Lcom/king/uranus/ar;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 487
    :catch_5
    move-exception v2

    goto :goto_c

    :catch_6
    move-exception v3

    goto/16 :goto_5

    .line 484
    :catchall_2
    move-exception v2

    move-object v4, v3

    goto/16 :goto_4

    .line 480
    :catch_7
    move-exception v2

    move-object v4, v3

    goto :goto_d

    .line 476
    :catch_8
    move-exception v2

    move-object v4, v3

    goto/16 :goto_b

    .line 473
    :catch_9
    move-exception v2

    move-object v4, v3

    goto/16 :goto_a

    .line 402
    :catchall_3
    move-exception v2

    move-object v3, v4

    goto/16 :goto_2
.end method

.method private cc()V
    .locals 11

    .prologue
    const/4 v1, 0x1

    const-wide/16 v8, 0x0

    const/4 v0, 0x0

    const/4 v7, 0x3

    const/4 v6, 0x0

    .line 116
    iput-boolean v1, p0, Lcom/kingroot/kinguser/ip;->sh:Z

    .line 119
    invoke-virtual {p0, v6}, Lcom/kingroot/kinguser/ip;->O(I)V

    .line 124
    :try_start_0
    iget-object v1, p0, Lcom/kingroot/kinguser/ip;->se:Lcom/kingroot/kinguser/ir;

    iget-wide v2, v1, Lcom/kingroot/kinguser/ir;->ss:J

    iget-object v1, p0, Lcom/kingroot/kinguser/ip;->se:Lcom/kingroot/kinguser/ir;

    iget-wide v4, v1, Lcom/kingroot/kinguser/ir;->sr:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/kingroot/kinguser/ip;->se:Lcom/kingroot/kinguser/ir;

    iget-wide v2, v1, Lcom/kingroot/kinguser/ir;->ss:J

    cmp-long v1, v2, v8

    if-lez v1, :cond_2

    .line 125
    iget-object v1, p0, Lcom/kingroot/kinguser/ip;->se:Lcom/kingroot/kinguser/ir;

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Lcom/kingroot/kinguser/ir;->st:F

    .line 126
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/kingroot/kinguser/ip;->O(I)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/king/uranus/ar; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    .line 172
    iget-object v1, p0, Lcom/kingroot/kinguser/ip;->se:Lcom/kingroot/kinguser/ir;

    iget-wide v2, v1, Lcom/kingroot/kinguser/ir;->ss:J

    iget-object v1, p0, Lcom/kingroot/kinguser/ip;->se:Lcom/kingroot/kinguser/ir;

    iget-wide v4, v1, Lcom/kingroot/kinguser/ir;->sr:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/kingroot/kinguser/ip;->se:Lcom/kingroot/kinguser/ir;

    iget-wide v2, v1, Lcom/kingroot/kinguser/ir;->ss:J

    cmp-long v1, v2, v8

    if-lez v1, :cond_0

    .line 173
    invoke-virtual {p0, v7}, Lcom/kingroot/kinguser/ip;->O(I)V

    .line 176
    :cond_0
    iget-object v1, p0, Lcom/kingroot/kinguser/ip;->sj:Ljava/lang/Object;

    monitor-enter v1

    .line 177
    :try_start_1
    iget-object v2, p0, Lcom/kingroot/kinguser/ip;->si:Lcom/kingroot/kinguser/ka;

    if-eqz v2, :cond_1

    .line 179
    iget-object v2, p0, Lcom/kingroot/kinguser/ip;->si:Lcom/kingroot/kinguser/ka;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/ka;->close()V

    .line 180
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/kingroot/kinguser/ip;->si:Lcom/kingroot/kinguser/ka;

    .line 182
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    invoke-static {v0}, Lcom/kingroot/kinguser/nn;->a(Ljava/io/Closeable;)V

    .line 186
    iput-boolean v6, p0, Lcom/kingroot/kinguser/ip;->sh:Z

    .line 188
    :goto_0
    return-void

    .line 182
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
    iget-object v1, p0, Lcom/kingroot/kinguser/ip;->se:Lcom/kingroot/kinguser/ir;

    iget-wide v2, v1, Lcom/kingroot/kinguser/ir;->sr:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_3

    .line 132
    invoke-direct {p0}, Lcom/kingroot/kinguser/ip;->cd()V

    .line 135
    :cond_3
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/kingroot/kinguser/ip;->sf:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Lcom/king/uranus/ar; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    .line 136
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iget-object v2, p0, Lcom/kingroot/kinguser/ip;->se:Lcom/kingroot/kinguser/ir;

    iget-wide v2, v2, Lcom/kingroot/kinguser/ir;->ss:J

    invoke-virtual {v0, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 139
    iget-object v2, p0, Lcom/kingroot/kinguser/ip;->sj:Ljava/lang/Object;

    monitor-enter v2
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/king/uranus/ar; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_9

    .line 140
    :try_start_5
    iget-object v0, p0, Lcom/kingroot/kinguser/ip;->se:Lcom/kingroot/kinguser/ir;

    iget-boolean v0, v0, Lcom/kingroot/kinguser/ir;->so:Z

    .line 141
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 143
    if-eqz v0, :cond_8

    .line 145
    :try_start_6
    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/ip;->b(Ljava/io/FileOutputStream;)V

    .line 150
    :goto_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 152
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lcom/king/uranus/ar; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_9

    .line 172
    iget-object v0, p0, Lcom/kingroot/kinguser/ip;->se:Lcom/kingroot/kinguser/ir;

    iget-wide v2, v0, Lcom/kingroot/kinguser/ir;->ss:J

    iget-object v0, p0, Lcom/kingroot/kinguser/ip;->se:Lcom/kingroot/kinguser/ir;

    iget-wide v4, v0, Lcom/kingroot/kinguser/ir;->sr:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/kingroot/kinguser/ip;->se:Lcom/kingroot/kinguser/ir;

    iget-wide v2, v0, Lcom/kingroot/kinguser/ir;->ss:J

    cmp-long v0, v2, v8

    if-lez v0, :cond_4

    .line 173
    invoke-virtual {p0, v7}, Lcom/kingroot/kinguser/ip;->O(I)V

    .line 176
    :cond_4
    iget-object v2, p0, Lcom/kingroot/kinguser/ip;->sj:Ljava/lang/Object;

    monitor-enter v2

    .line 177
    :try_start_7
    iget-object v0, p0, Lcom/kingroot/kinguser/ip;->si:Lcom/kingroot/kinguser/ka;

    if-eqz v0, :cond_5

    .line 179
    iget-object v0, p0, Lcom/kingroot/kinguser/ip;->si:Lcom/kingroot/kinguser/ka;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ka;->close()V

    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/ip;->si:Lcom/kingroot/kinguser/ka;

    .line 182
    :cond_5
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 184
    invoke-static {v1}, Lcom/kingroot/kinguser/nn;->a(Ljava/io/Closeable;)V

    .line 186
    iput-boolean v6, p0, Lcom/kingroot/kinguser/ip;->sh:Z

    goto :goto_0

    .line 141
    :catchall_1
    move-exception v0

    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v0
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Lcom/king/uranus/ar; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    .line 153
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 154
    :goto_2
    const/16 v1, -0x1b59

    :try_start_a
    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/ip;->P(I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    .line 172
    iget-object v1, p0, Lcom/kingroot/kinguser/ip;->se:Lcom/kingroot/kinguser/ir;

    iget-wide v2, v1, Lcom/kingroot/kinguser/ir;->ss:J

    iget-object v1, p0, Lcom/kingroot/kinguser/ip;->se:Lcom/kingroot/kinguser/ir;

    iget-wide v4, v1, Lcom/kingroot/kinguser/ir;->sr:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/kingroot/kinguser/ip;->se:Lcom/kingroot/kinguser/ir;

    iget-wide v2, v1, Lcom/kingroot/kinguser/ir;->ss:J

    cmp-long v1, v2, v8

    if-lez v1, :cond_6

    .line 173
    invoke-virtual {p0, v7}, Lcom/kingroot/kinguser/ip;->O(I)V

    .line 176
    :cond_6
    iget-object v1, p0, Lcom/kingroot/kinguser/ip;->sj:Ljava/lang/Object;

    monitor-enter v1

    .line 177
    :try_start_b
    iget-object v2, p0, Lcom/kingroot/kinguser/ip;->si:Lcom/kingroot/kinguser/ka;

    if-eqz v2, :cond_7

    .line 179
    iget-object v2, p0, Lcom/kingroot/kinguser/ip;->si:Lcom/kingroot/kinguser/ka;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/ka;->close()V

    .line 180
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/kingroot/kinguser/ip;->si:Lcom/kingroot/kinguser/ka;

    .line 182
    :cond_7
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 184
    invoke-static {v0}, Lcom/kingroot/kinguser/nn;->a(Ljava/io/Closeable;)V

    .line 186
    iput-boolean v6, p0, Lcom/kingroot/kinguser/ip;->sh:Z

    goto/16 :goto_0

    .line 148
    :cond_8
    :try_start_c
    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/ip;->a(Ljava/io/FileOutputStream;)V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catch Lcom/king/uranus/ar; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    goto :goto_1

    .line 156
    :catch_1
    move-exception v0

    move-object v0, v1

    .line 157
    :goto_3
    const/16 v1, -0x1b90

    :try_start_d
    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/ip;->P(I)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_a

    .line 172
    iget-object v1, p0, Lcom/kingroot/kinguser/ip;->se:Lcom/kingroot/kinguser/ir;

    iget-wide v2, v1, Lcom/kingroot/kinguser/ir;->ss:J

    iget-object v1, p0, Lcom/kingroot/kinguser/ip;->se:Lcom/kingroot/kinguser/ir;

    iget-wide v4, v1, Lcom/kingroot/kinguser/ir;->sr:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/kingroot/kinguser/ip;->se:Lcom/kingroot/kinguser/ir;

    iget-wide v2, v1, Lcom/kingroot/kinguser/ir;->ss:J

    cmp-long v1, v2, v8

    if-lez v1, :cond_9

    .line 173
    invoke-virtual {p0, v7}, Lcom/kingroot/kinguser/ip;->O(I)V

    .line 176
    :cond_9
    iget-object v1, p0, Lcom/kingroot/kinguser/ip;->sj:Ljava/lang/Object;

    monitor-enter v1

    .line 177
    :try_start_e
    iget-object v2, p0, Lcom/kingroot/kinguser/ip;->si:Lcom/kingroot/kinguser/ka;

    if-eqz v2, :cond_a

    .line 179
    iget-object v2, p0, Lcom/kingroot/kinguser/ip;->si:Lcom/kingroot/kinguser/ka;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/ka;->close()V

    .line 180
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/kingroot/kinguser/ip;->si:Lcom/kingroot/kinguser/ka;

    .line 182
    :cond_a
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 184
    invoke-static {v0}, Lcom/kingroot/kinguser/nn;->a(Ljava/io/Closeable;)V

    .line 186
    iput-boolean v6, p0, Lcom/kingroot/kinguser/ip;->sh:Z

    goto/16 :goto_0

    .line 182
    :catchall_2
    move-exception v0

    :try_start_f
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    throw v0

    :catchall_3
    move-exception v0

    :try_start_10
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    throw v0

    :catchall_4
    move-exception v0

    :try_start_11
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    throw v0

    .line 159
    :catch_2
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    .line 160
    :goto_4
    :try_start_12
    invoke-virtual {v0}, Lcom/king/uranus/ar;->cS()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/ip;->P(I)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    .line 172
    iget-object v0, p0, Lcom/kingroot/kinguser/ip;->se:Lcom/kingroot/kinguser/ir;

    iget-wide v2, v0, Lcom/kingroot/kinguser/ir;->ss:J

    iget-object v0, p0, Lcom/kingroot/kinguser/ip;->se:Lcom/kingroot/kinguser/ir;

    iget-wide v4, v0, Lcom/kingroot/kinguser/ir;->sr:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/kingroot/kinguser/ip;->se:Lcom/kingroot/kinguser/ir;

    iget-wide v2, v0, Lcom/kingroot/kinguser/ir;->ss:J

    cmp-long v0, v2, v8

    if-lez v0, :cond_b

    .line 173
    invoke-virtual {p0, v7}, Lcom/kingroot/kinguser/ip;->O(I)V

    .line 176
    :cond_b
    iget-object v2, p0, Lcom/kingroot/kinguser/ip;->sj:Ljava/lang/Object;

    monitor-enter v2

    .line 177
    :try_start_13
    iget-object v0, p0, Lcom/kingroot/kinguser/ip;->si:Lcom/kingroot/kinguser/ka;

    if-eqz v0, :cond_c

    .line 179
    iget-object v0, p0, Lcom/kingroot/kinguser/ip;->si:Lcom/kingroot/kinguser/ka;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ka;->close()V

    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/ip;->si:Lcom/kingroot/kinguser/ka;

    .line 182
    :cond_c
    monitor-exit v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    .line 184
    invoke-static {v1}, Lcom/kingroot/kinguser/nn;->a(Ljava/io/Closeable;)V

    .line 186
    iput-boolean v6, p0, Lcom/kingroot/kinguser/ip;->sh:Z

    goto/16 :goto_0

    .line 182
    :catchall_5
    move-exception v0

    :try_start_14
    monitor-exit v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    throw v0

    .line 162
    :catch_3
    move-exception v1

    .line 168
    :goto_5
    const/16 v1, -0x138e

    :try_start_15
    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/ip;->P(I)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_a

    .line 172
    iget-object v1, p0, Lcom/kingroot/kinguser/ip;->se:Lcom/kingroot/kinguser/ir;

    iget-wide v2, v1, Lcom/kingroot/kinguser/ir;->ss:J

    iget-object v1, p0, Lcom/kingroot/kinguser/ip;->se:Lcom/kingroot/kinguser/ir;

    iget-wide v4, v1, Lcom/kingroot/kinguser/ir;->sr:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/kingroot/kinguser/ip;->se:Lcom/kingroot/kinguser/ir;

    iget-wide v2, v1, Lcom/kingroot/kinguser/ir;->ss:J

    cmp-long v1, v2, v8

    if-lez v1, :cond_d

    .line 173
    invoke-virtual {p0, v7}, Lcom/kingroot/kinguser/ip;->O(I)V

    .line 176
    :cond_d
    iget-object v1, p0, Lcom/kingroot/kinguser/ip;->sj:Ljava/lang/Object;

    monitor-enter v1

    .line 177
    :try_start_16
    iget-object v2, p0, Lcom/kingroot/kinguser/ip;->si:Lcom/kingroot/kinguser/ka;

    if-eqz v2, :cond_e

    .line 179
    iget-object v2, p0, Lcom/kingroot/kinguser/ip;->si:Lcom/kingroot/kinguser/ka;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/ka;->close()V

    .line 180
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/kingroot/kinguser/ip;->si:Lcom/kingroot/kinguser/ka;

    .line 182
    :cond_e
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    .line 184
    invoke-static {v0}, Lcom/kingroot/kinguser/nn;->a(Ljava/io/Closeable;)V

    .line 186
    iput-boolean v6, p0, Lcom/kingroot/kinguser/ip;->sh:Z

    goto/16 :goto_0

    .line 182
    :catchall_6
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    throw v0

    .line 172
    :catchall_7
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    :goto_6
    iget-object v2, p0, Lcom/kingroot/kinguser/ip;->se:Lcom/kingroot/kinguser/ir;

    iget-wide v2, v2, Lcom/kingroot/kinguser/ir;->ss:J

    iget-object v4, p0, Lcom/kingroot/kinguser/ip;->se:Lcom/kingroot/kinguser/ir;

    iget-wide v4, v4, Lcom/kingroot/kinguser/ir;->sr:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_f

    iget-object v2, p0, Lcom/kingroot/kinguser/ip;->se:Lcom/kingroot/kinguser/ir;

    iget-wide v2, v2, Lcom/kingroot/kinguser/ir;->ss:J

    cmp-long v2, v2, v8

    if-lez v2, :cond_f

    .line 173
    invoke-virtual {p0, v7}, Lcom/kingroot/kinguser/ip;->O(I)V

    .line 176
    :cond_f
    iget-object v2, p0, Lcom/kingroot/kinguser/ip;->sj:Ljava/lang/Object;

    monitor-enter v2

    .line 177
    :try_start_18
    iget-object v3, p0, Lcom/kingroot/kinguser/ip;->si:Lcom/kingroot/kinguser/ka;

    if-eqz v3, :cond_10

    .line 179
    iget-object v3, p0, Lcom/kingroot/kinguser/ip;->si:Lcom/kingroot/kinguser/ka;

    invoke-virtual {v3}, Lcom/kingroot/kinguser/ka;->close()V

    .line 180
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/kingroot/kinguser/ip;->si:Lcom/kingroot/kinguser/ka;

    .line 182
    :cond_10
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_8

    .line 184
    invoke-static {v1}, Lcom/kingroot/kinguser/nn;->a(Ljava/io/Closeable;)V

    .line 186
    iput-boolean v6, p0, Lcom/kingroot/kinguser/ip;->sh:Z

    throw v0

    .line 182
    :catchall_8
    move-exception v0

    :try_start_19
    monitor-exit v2
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_8

    throw v0

    .line 172
    :catchall_9
    move-exception v0

    goto :goto_6

    :catchall_a
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_6

    .line 162
    :catch_4
    move-exception v0

    move-object v0, v1

    goto :goto_5

    .line 159
    :catch_5
    move-exception v0

    goto/16 :goto_4

    .line 156
    :catch_6
    move-exception v1

    goto/16 :goto_3

    .line 153
    :catch_7
    move-exception v1

    goto/16 :goto_2
.end method

.method private cd()V
    .locals 6

    .prologue
    const/16 v4, 0xce

    .line 207
    iget-object v1, p0, Lcom/kingroot/kinguser/ip;->sj:Ljava/lang/Object;

    monitor-enter v1

    .line 208
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ip;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/kingroot/kinguser/ip;->se:Lcom/kingroot/kinguser/ir;

    iget-object v2, v2, Lcom/kingroot/kinguser/ir;->ra:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/ka;->e(Landroid/content/Context;Ljava/lang/String;)Lcom/kingroot/kinguser/ka;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ip;->si:Lcom/kingroot/kinguser/ka;

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bytes=0-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/kingroot/kinguser/ip;->sg:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 210
    iget-object v2, p0, Lcom/kingroot/kinguser/ip;->si:Lcom/kingroot/kinguser/ka;

    const-string v3, "Range"

    invoke-virtual {v2, v3, v0}, Lcom/kingroot/kinguser/ka;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/kingroot/kinguser/ip;->si:Lcom/kingroot/kinguser/ka;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ka;->I()I

    move-result v0

    if-eq v0, v4, :cond_0

    .line 212
    iget-object v0, p0, Lcom/kingroot/kinguser/ip;->si:Lcom/kingroot/kinguser/ka;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ka;->close()V

    .line 215
    iget-object v0, p0, Lcom/kingroot/kinguser/ip;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/kingroot/kinguser/ip;->se:Lcom/kingroot/kinguser/ir;

    iget-object v2, v2, Lcom/kingroot/kinguser/ir;->ra:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/ka;->e(Landroid/content/Context;Ljava/lang/String;)Lcom/kingroot/kinguser/ka;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ip;->si:Lcom/kingroot/kinguser/ka;

    .line 216
    iget-object v0, p0, Lcom/kingroot/kinguser/ip;->si:Lcom/kingroot/kinguser/ka;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ka;->I()I

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ip;->si:Lcom/kingroot/kinguser/ka;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ka;->getResponseCode()I

    move-result v0

    .line 220
    if-ne v0, v4, :cond_3

    .line 221
    iget-object v0, p0, Lcom/kingroot/kinguser/ip;->se:Lcom/kingroot/kinguser/ir;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/kingroot/kinguser/ir;->so:Z

    .line 222
    iget-object v0, p0, Lcom/kingroot/kinguser/ip;->se:Lcom/kingroot/kinguser/ir;

    iget-object v2, p0, Lcom/kingroot/kinguser/ip;->si:Lcom/kingroot/kinguser/ka;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/ka;->J()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/kingroot/kinguser/ir;->sr:J

    .line 228
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ip;->se:Lcom/kingroot/kinguser/ir;

    iget-wide v2, v0, Lcom/kingroot/kinguser/ir;->sr:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_2

    .line 229
    const/16 v0, -0x1b59

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/ip;->P(I)V

    .line 231
    :cond_2
    monitor-exit v1

    .line 232
    return-void

    .line 223
    :cond_3
    const/16 v2, 0xc8

    if-ne v0, v2, :cond_1

    .line 224
    iget-object v0, p0, Lcom/kingroot/kinguser/ip;->se:Lcom/kingroot/kinguser/ir;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/kingroot/kinguser/ir;->so:Z

    .line 225
    iget-object v0, p0, Lcom/kingroot/kinguser/ip;->se:Lcom/kingroot/kinguser/ir;

    iget-object v2, p0, Lcom/kingroot/kinguser/ip;->si:Lcom/kingroot/kinguser/ka;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/ka;->getContentLength()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/kingroot/kinguser/ir;->sr:J

    goto :goto_0

    .line 231
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public O(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    iget-boolean v0, p0, Lcom/kingroot/kinguser/ip;->sh:Z

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
    iget-object v0, p0, Lcom/kingroot/kinguser/ip;->sl:Lcom/kingroot/kinguser/is;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/kingroot/kinguser/ip;->se:Lcom/kingroot/kinguser/ir;

    iput v1, v0, Lcom/kingroot/kinguser/ir;->sp:I

    .line 55
    iget-object v0, p0, Lcom/kingroot/kinguser/ip;->sl:Lcom/kingroot/kinguser/is;

    iget-object v1, p0, Lcom/kingroot/kinguser/ip;->se:Lcom/kingroot/kinguser/ir;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/is;->b(Lcom/kingroot/kinguser/ir;)V

    goto :goto_0

    .line 59
    :pswitch_1
    iget-object v0, p0, Lcom/kingroot/kinguser/ip;->sl:Lcom/kingroot/kinguser/is;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/kingroot/kinguser/ip;->se:Lcom/kingroot/kinguser/ir;

    iput v1, v0, Lcom/kingroot/kinguser/ir;->sp:I

    .line 61
    iget-object v0, p0, Lcom/kingroot/kinguser/ip;->sl:Lcom/kingroot/kinguser/is;

    iget-object v1, p0, Lcom/kingroot/kinguser/ip;->se:Lcom/kingroot/kinguser/ir;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/is;->c(Lcom/kingroot/kinguser/ir;)V

    goto :goto_0

    .line 65
    :pswitch_2
    iget-object v0, p0, Lcom/kingroot/kinguser/ip;->sl:Lcom/kingroot/kinguser/is;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/kingroot/kinguser/ip;->se:Lcom/kingroot/kinguser/ir;

    const/4 v1, 0x2

    iput v1, v0, Lcom/kingroot/kinguser/ir;->sp:I

    .line 67
    iget-object v0, p0, Lcom/kingroot/kinguser/ip;->sl:Lcom/kingroot/kinguser/is;

    iget-object v1, p0, Lcom/kingroot/kinguser/ip;->se:Lcom/kingroot/kinguser/ir;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/is;->d(Lcom/kingroot/kinguser/ir;)V

    goto :goto_0

    .line 71
    :pswitch_3
    iget-object v0, p0, Lcom/kingroot/kinguser/ip;->sl:Lcom/kingroot/kinguser/is;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/kingroot/kinguser/ip;->se:Lcom/kingroot/kinguser/ir;

    const/4 v1, 0x3

    iput v1, v0, Lcom/kingroot/kinguser/ir;->sp:I

    .line 73
    iget-object v0, p0, Lcom/kingroot/kinguser/ip;->sl:Lcom/kingroot/kinguser/is;

    iget-object v1, p0, Lcom/kingroot/kinguser/ip;->se:Lcom/kingroot/kinguser/ir;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/is;->e(Lcom/kingroot/kinguser/ir;)V

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

.method public a(Lcom/kingroot/kinguser/is;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kingroot/kinguser/is",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 95
    iput-object p1, p0, Lcom/kingroot/kinguser/ip;->sl:Lcom/kingroot/kinguser/is;

    .line 96
    return-void
.end method

.method public ce()V
    .locals 2

    .prologue
    .line 495
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/ip;->sh:Z

    .line 497
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ip;->eA()V

    .line 498
    iget-object v1, p0, Lcom/kingroot/kinguser/ip;->sj:Ljava/lang/Object;

    monitor-enter v1

    .line 499
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ip;->si:Lcom/kingroot/kinguser/ka;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 501
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/ip;->si:Lcom/kingroot/kinguser/ka;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ka;->close()V

    .line 502
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/ip;->si:Lcom/kingroot/kinguser/ka;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 508
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    .line 509
    return-void

    .line 508
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 504
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 106
    new-instance v0, Lcom/kingroot/kinguser/iq;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/iq;-><init>(Lcom/kingroot/kinguser/ip;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/ic;->a(Lcom/kingroot/kinguser/ic$a;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    return-void
.end method
