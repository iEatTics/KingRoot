.class public Lcom/kingroot/kinguser/vi;
.super Lcom/kingroot/kinguser/wo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/kingroot/kinguser/vj;",
        ">",
        "Lcom/kingroot/kinguser/wo;"
    }
.end annotation


# static fields
.field private static final KO:[S


# instance fields
.field private Gx:Ljava/lang/String;

.field private KC:Lcom/kingroot/kinguser/vj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private KK:I

.field private volatile KL:Z

.field private KM:Lcom/kingroot/kinguser/uy;

.field private final KN:Ljava/lang/Object;

.field private KP:Lcom/kingroot/kinguser/vk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/vk",
            "<TT;>;"
        }
    .end annotation
.end field

.field private KQ:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x3

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Lcom/kingroot/kinguser/vi;->KO:[S

    return-void

    nop

    :array_0
    .array-data 2
        0x8s
        0x40s
        0x80s
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/kingroot/kinguser/vj;Ljava/lang/String;)V
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
    invoke-direct {p0}, Lcom/kingroot/kinguser/wo;-><init>()V

    .line 38
    const v0, 0x4b000

    iput v0, p0, Lcom/kingroot/kinguser/vi;->KK:I

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/vi;->KL:Z

    .line 41
    iput-object v1, p0, Lcom/kingroot/kinguser/vi;->KM:Lcom/kingroot/kinguser/uy;

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/vi;->KN:Ljava/lang/Object;

    .line 45
    iput-object v1, p0, Lcom/kingroot/kinguser/vi;->KP:Lcom/kingroot/kinguser/vk;

    .line 496
    new-instance v0, Lcom/kingroot/kinguser/vi$2;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/vi$2;-><init>(Lcom/kingroot/kinguser/vi;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/vi;->KQ:Ljava/lang/Runnable;

    .line 89
    iput-object p1, p0, Lcom/kingroot/kinguser/vi;->mContext:Landroid/content/Context;

    .line 90
    iput-object p2, p0, Lcom/kingroot/kinguser/vi;->KC:Lcom/kingroot/kinguser/vj;

    .line 91
    iput-object p3, p0, Lcom/kingroot/kinguser/vi;->Gx:Ljava/lang/String;

    .line 92
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/vi;Lcom/kingroot/kinguser/uy;)Lcom/kingroot/kinguser/uy;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/kingroot/kinguser/vi;->KM:Lcom/kingroot/kinguser/uy;

    return-object p1
.end method

.method static synthetic a(Lcom/kingroot/kinguser/vi;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/kingroot/kinguser/vi;->lr()V

    return-void
.end method

.method static synthetic b(Lcom/kingroot/kinguser/vi;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/kingroot/kinguser/vi;->KN:Ljava/lang/Object;

    return-object v0
.end method

.method private bf(I)V
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/kingroot/kinguser/vi;->KL:Z

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/kingroot/kinguser/vi;->KC:Lcom/kingroot/kinguser/vj;

    iput p1, v0, Lcom/kingroot/kinguser/vj;->mErrorCode:I

    .line 192
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/vi;->be(I)V

    .line 194
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/kingroot/kinguser/vi;)Lcom/kingroot/kinguser/uy;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/kingroot/kinguser/vi;->KM:Lcom/kingroot/kinguser/uy;

    return-object v0
.end method

.method private c(Ljava/io/FileOutputStream;)V
    .locals 17

    .prologue
    .line 240
    const/4 v3, 0x0

    .line 242
    :try_start_0
    sget-object v2, Lcom/kingroot/kinguser/vi;->KO:[S

    const/4 v4, 0x1

    aget-short v2, v2, v4

    shl-int/lit8 v2, v2, 0xa

    new-array v4, v2, [B

    .line 244
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingroot/kinguser/vi;->KN:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catch Lcom/kingroot/kinguser/va; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 245
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/vi;->KM:Lcom/kingroot/kinguser/uy;

    if-nez v2, :cond_0

    .line 246
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/vi;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kingroot/kinguser/vi;->KC:Lcom/kingroot/kinguser/vj;

    iget-object v6, v6, Lcom/kingroot/kinguser/vj;->ra:Ljava/lang/String;

    invoke-static {v2, v6}, Lcom/kingroot/kinguser/uy;->k(Landroid/content/Context;Ljava/lang/String;)Lcom/kingroot/kinguser/uy;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/kingroot/kinguser/vi;->KM:Lcom/kingroot/kinguser/uy;

    .line 247
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/vi;->KM:Lcom/kingroot/kinguser/uy;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/uy;->kZ()I

    .line 249
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/vi;->KM:Lcom/kingroot/kinguser/uy;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/uy;->getResponseCode()I

    move-result v2

    const/16 v6, 0xc8

    if-eq v2, v6, :cond_1

    .line 251
    new-instance v2, Lcom/kingroot/kinguser/va;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingroot/kinguser/vi;->KM:Lcom/kingroot/kinguser/uy;

    invoke-virtual {v4}, Lcom/kingroot/kinguser/uy;->getResponseCode()I

    move-result v4

    add-int/lit16 v4, v4, -0xbb8

    const-string v6, "error: response code is not 200."

    invoke-direct {v2, v4, v6}, Lcom/kingroot/kinguser/va;-><init>(ILjava/lang/String;)V

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
    .catch Lcom/kingroot/kinguser/va; {:try_start_2 .. :try_end_2} :catch_0
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

    invoke-static {v3}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    throw v2

    .line 254
    :cond_1
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/vi;->KM:Lcom/kingroot/kinguser/uy;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/uy;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 255
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 259
    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 261
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/vi;->KC:Lcom/kingroot/kinguser/vj;

    iget-wide v10, v2, Lcom/kingroot/kinguser/vj;->KU:J

    .line 262
    const/4 v2, 0x0

    move/from16 v16, v2

    move-object v2, v4

    move/from16 v4, v16

    .line 264
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/kingroot/kinguser/vi;->KL:Z

    if-eqz v5, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingroot/kinguser/vi;->KC:Lcom/kingroot/kinguser/vj;

    iget-wide v6, v5, Lcom/kingroot/kinguser/vj;->mSize:J

    const-wide/16 v12, 0x0

    cmp-long v5, v6, v12

    if-lez v5, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingroot/kinguser/vi;->KC:Lcom/kingroot/kinguser/vj;

    iget-wide v6, v5, Lcom/kingroot/kinguser/vj;->mSize:J

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingroot/kinguser/vi;->KC:Lcom/kingroot/kinguser/vj;

    iget-wide v12, v5, Lcom/kingroot/kinguser/vj;->KU:J

    cmp-long v5, v6, v12

    if-lez v5, :cond_2

    .line 265
    invoke-virtual {v3, v2}, Ljava/io/InputStream;->read([B)I
    :try_end_5
    .catch Lcom/kingroot/kinguser/va; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v5

    .line 266
    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    .line 339
    :cond_2
    :goto_1
    invoke-static {v3}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 342
    return-void

    .line 270
    :cond_3
    :try_start_6
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/kingroot/kinguser/vi;->KL:Z

    if-eqz v6, :cond_2

    .line 275
    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V

    .line 276
    invoke-virtual/range {p1 .. p1}, Ljava/io/FileOutputStream;->flush()V

    .line 278
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kingroot/kinguser/vi;->KC:Lcom/kingroot/kinguser/vj;

    iget-wide v12, v6, Lcom/kingroot/kinguser/vj;->KU:J

    int-to-long v14, v5

    add-long/2addr v12, v14

    iput-wide v12, v6, Lcom/kingroot/kinguser/vj;->KU:J

    .line 279
    add-int v6, v4, v5

    .line 282
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingroot/kinguser/vi;->KC:Lcom/kingroot/kinguser/vj;

    iget-wide v4, v4, Lcom/kingroot/kinguser/vj;->mSize:J

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kingroot/kinguser/vi;->KC:Lcom/kingroot/kinguser/vj;

    iget-wide v12, v7, Lcom/kingroot/kinguser/vj;->KU:J

    cmp-long v4, v4, v12

    if-nez v4, :cond_4

    .line 283
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/vi;->KC:Lcom/kingroot/kinguser/vj;

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v2, Lcom/kingroot/kinguser/vj;->BH:F

    .line 284
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/vi;->be(I)V
    :try_end_6
    .catch Lcom/kingroot/kinguser/va; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    .line 329
    :catch_1
    move-exception v2

    .line 330
    :try_start_7
    new-instance v4, Lcom/kingroot/kinguser/va;

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

    invoke-direct {v4, v5, v2}, Lcom/kingroot/kinguser/va;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 289
    :cond_4
    :try_start_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingroot/kinguser/vi;->KC:Lcom/kingroot/kinguser/vj;

    iget-wide v4, v4, Lcom/kingroot/kinguser/vj;->mSize:J

    const-wide/16 v12, 0x0

    cmp-long v4, v4, v12

    if-lez v4, :cond_5

    .line 290
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingroot/kinguser/vi;->KC:Lcom/kingroot/kinguser/vj;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingroot/kinguser/vi;->KC:Lcom/kingroot/kinguser/vj;

    iget-wide v12, v5, Lcom/kingroot/kinguser/vj;->KU:J

    long-to-float v5, v12

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kingroot/kinguser/vi;->KC:Lcom/kingroot/kinguser/vj;

    iget-wide v12, v7, Lcom/kingroot/kinguser/vj;->mSize:J

    long-to-float v7, v12

    div-float/2addr v5, v7

    iput v5, v4, Lcom/kingroot/kinguser/vj;->BH:F

    .line 291
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/kingroot/kinguser/vi;->be(I)V

    .line 295
    :cond_5
    move-object/from16 v0, p0

    iget v4, v0, Lcom/kingroot/kinguser/vi;->KK:I

    if-le v6, v4, :cond_b

    .line 296
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v8

    .line 297
    const-wide/16 v12, 0x0

    cmp-long v7, v4, v12

    if-gtz v7, :cond_6

    .line 298
    const-wide/16 v4, 0x1

    .line 301
    :cond_6
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kingroot/kinguser/vi;->KC:Lcom/kingroot/kinguser/vj;

    iget-wide v12, v7, Lcom/kingroot/kinguser/vj;->KU:J

    sub-long/2addr v12, v10

    div-long v4, v12, v4

    long-to-int v4, v4

    .line 302
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingroot/kinguser/vi;->KC:Lcom/kingroot/kinguser/vj;

    iget v5, v5, Lcom/kingroot/kinguser/vj;->mSpeed:I

    if-nez v5, :cond_8

    .line 303
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingroot/kinguser/vi;->KC:Lcom/kingroot/kinguser/vj;

    iput v4, v5, Lcom/kingroot/kinguser/vj;->mSpeed:I

    .line 308
    :goto_2
    const/16 v5, 0x21

    if-ge v4, v5, :cond_9

    .line 310
    array-length v4, v2

    sget-object v5, Lcom/kingroot/kinguser/vi;->KO:[S

    const/4 v7, 0x0

    aget-short v5, v5, v7

    shl-int/lit8 v5, v5, 0xa

    if-eq v4, v5, :cond_7

    .line 311
    sget-object v2, Lcom/kingroot/kinguser/vi;->KO:[S

    const/4 v4, 0x0

    aget-short v2, v2, v4

    shl-int/lit8 v2, v2, 0xa

    new-array v2, v2, [B

    :cond_7
    :goto_3
    move v4, v6

    .line 324
    goto/16 :goto_0

    .line 305
    :cond_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingroot/kinguser/vi;->KC:Lcom/kingroot/kinguser/vj;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kingroot/kinguser/vi;->KC:Lcom/kingroot/kinguser/vj;

    iget v7, v7, Lcom/kingroot/kinguser/vj;->mSpeed:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kingroot/kinguser/vi;->KC:Lcom/kingroot/kinguser/vj;

    iget v12, v12, Lcom/kingroot/kinguser/vj;->mSpeed:I

    add-int/2addr v7, v12

    div-int/lit8 v7, v7, 0x2

    iput v7, v5, Lcom/kingroot/kinguser/vj;->mSpeed:I
    :try_end_8
    .catch Lcom/kingroot/kinguser/va; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_2

    .line 332
    :catch_2
    move-exception v2

    .line 333
    :try_start_9
    new-instance v4, Lcom/kingroot/kinguser/va;

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

    invoke-direct {v4, v5, v2}, Lcom/kingroot/kinguser/va;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 313
    :cond_9
    const/16 v5, 0x41

    if-ge v4, v5, :cond_a

    .line 315
    :try_start_a
    array-length v4, v2

    sget-object v5, Lcom/kingroot/kinguser/vi;->KO:[S

    const/4 v7, 0x1

    aget-short v5, v5, v7

    shl-int/lit8 v5, v5, 0xa

    if-eq v4, v5, :cond_7

    .line 316
    sget-object v2, Lcom/kingroot/kinguser/vi;->KO:[S

    const/4 v4, 0x1

    aget-short v2, v2, v4

    shl-int/lit8 v2, v2, 0xa

    new-array v2, v2, [B

    goto :goto_3

    .line 320
    :cond_a
    array-length v4, v2

    sget-object v5, Lcom/kingroot/kinguser/vi;->KO:[S

    const/4 v7, 0x2

    aget-short v5, v5, v7

    shl-int/lit8 v5, v5, 0xa

    if-eq v4, v5, :cond_7

    .line 321
    sget-object v2, Lcom/kingroot/kinguser/vi;->KO:[S

    const/4 v4, 0x2

    aget-short v2, v2, v4

    shl-int/lit8 v2, v2, 0xa

    new-array v2, v2, [B
    :try_end_a
    .catch Lcom/kingroot/kinguser/va; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_3

    .line 335
    :catch_3
    move-exception v2

    .line 336
    :try_start_b
    new-instance v4, Lcom/kingroot/kinguser/va;

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

    invoke-direct {v4, v5, v2}, Lcom/kingroot/kinguser/va;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :cond_b
    move v4, v6

    goto/16 :goto_0
.end method

.method private d(Ljava/io/FileOutputStream;)V
    .locals 17

    .prologue
    .line 352
    const/4 v4, 0x0

    .line 354
    const/4 v5, 0x1

    .line 355
    :try_start_0
    sget-object v2, Lcom/kingroot/kinguser/vi;->KO:[S

    const/4 v3, 0x1

    aget-short v2, v2, v3

    shl-int/lit8 v2, v2, 0xa

    new-array v3, v2, [B
    :try_end_0
    .catch Lcom/kingroot/kinguser/va; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 361
    const/4 v2, 0x1

    move v6, v2

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    .line 362
    :goto_0
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/kingroot/kinguser/vi;->KL:Z

    if-eqz v5, :cond_d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingroot/kinguser/vi;->KC:Lcom/kingroot/kinguser/vj;

    iget-wide v8, v5, Lcom/kingroot/kinguser/vj;->mSize:J

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-lez v5, :cond_d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingroot/kinguser/vi;->KC:Lcom/kingroot/kinguser/vj;

    iget-wide v8, v5, Lcom/kingroot/kinguser/vj;->mSize:J

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingroot/kinguser/vi;->KC:Lcom/kingroot/kinguser/vj;

    iget-wide v10, v5, Lcom/kingroot/kinguser/vj;->KU:J

    cmp-long v5, v8, v10

    if-lez v5, :cond_d

    .line 365
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingroot/kinguser/vi;->KC:Lcom/kingroot/kinguser/vj;

    iget-wide v8, v5, Lcom/kingroot/kinguser/vj;->KU:J

    .line 366
    const-wide/16 v10, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/kingroot/kinguser/vi;->KK:I

    int-to-long v12, v5

    mul-long/2addr v10, v12

    int-to-long v4, v4

    mul-long/2addr v4, v10

    add-long/2addr v4, v8

    const-wide/16 v10, 0x1

    sub-long/2addr v4, v10

    .line 367
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kingroot/kinguser/vi;->KC:Lcom/kingroot/kinguser/vj;

    iget-wide v10, v7, Lcom/kingroot/kinguser/vj;->mSize:J

    cmp-long v7, v4, v10

    if-ltz v7, :cond_0

    .line 368
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingroot/kinguser/vi;->KC:Lcom/kingroot/kinguser/vj;

    iget-wide v4, v4, Lcom/kingroot/kinguser/vj;->mSize:J

    const-wide/16 v10, 0x1

    sub-long/2addr v4, v10

    .line 372
    :cond_0
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 373
    const-string v10, "bytes="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v10

    const/16 v11, 0x2d

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 375
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/kingroot/kinguser/vi;->KN:Ljava/lang/Object;

    monitor-enter v10
    :try_end_1
    .catch Lcom/kingroot/kinguser/va; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 376
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingroot/kinguser/vi;->KM:Lcom/kingroot/kinguser/uy;

    if-nez v4, :cond_2

    .line 377
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingroot/kinguser/vi;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingroot/kinguser/vi;->KC:Lcom/kingroot/kinguser/vj;

    iget-object v5, v5, Lcom/kingroot/kinguser/vj;->ra:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/kingroot/kinguser/uy;->k(Landroid/content/Context;Ljava/lang/String;)Lcom/kingroot/kinguser/uy;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/kingroot/kinguser/vi;->KM:Lcom/kingroot/kinguser/uy;

    .line 378
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingroot/kinguser/vi;->KM:Lcom/kingroot/kinguser/uy;

    const-string v5, "Range"

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/kingroot/kinguser/uy;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingroot/kinguser/vi;->KM:Lcom/kingroot/kinguser/uy;

    invoke-virtual {v4}, Lcom/kingroot/kinguser/uy;->kZ()I

    .line 388
    :cond_1
    :goto_1
    const/4 v5, 0x0

    .line 391
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingroot/kinguser/vi;->KM:Lcom/kingroot/kinguser/uy;

    invoke-virtual {v4}, Lcom/kingroot/kinguser/uy;->getResponseCode()I

    move-result v4

    const/16 v6, 0xce

    if-eq v4, v6, :cond_3

    .line 393
    new-instance v2, Ljava/io/IOException;

    const-string v4, "response code is not 206 error."

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 396
    :catchall_0
    move-exception v2

    :goto_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catch Lcom/kingroot/kinguser/va; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 465
    :catch_0
    move-exception v2

    move-object v4, v3

    .line 466
    :goto_3
    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 478
    :catchall_1
    move-exception v2

    :goto_4
    invoke-static {v4}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    throw v2

    .line 380
    :cond_2
    if-nez v6, :cond_1

    .line 382
    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingroot/kinguser/vi;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingroot/kinguser/vi;->KM:Lcom/kingroot/kinguser/uy;

    invoke-static {v4, v5}, Lcom/kingroot/kinguser/uy;->a(Landroid/content/Context;Lcom/kingroot/kinguser/uy;)Lcom/kingroot/kinguser/uy;

    move-result-object v4

    .line 383
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kingroot/kinguser/vi;->KM:Lcom/kingroot/kinguser/uy;

    invoke-virtual {v5}, Lcom/kingroot/kinguser/uy;->close()V

    .line 384
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/kingroot/kinguser/vi;->KM:Lcom/kingroot/kinguser/uy;

    .line 385
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingroot/kinguser/vi;->KM:Lcom/kingroot/kinguser/uy;

    const-string v5, "Range"

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/kingroot/kinguser/uy;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingroot/kinguser/vi;->KM:Lcom/kingroot/kinguser/uy;

    invoke-virtual {v4}, Lcom/kingroot/kinguser/uy;->kZ()I

    goto :goto_1

    .line 395
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingroot/kinguser/vi;->KM:Lcom/kingroot/kinguser/uy;

    invoke-virtual {v4}, Lcom/kingroot/kinguser/uy;->getInputStream()Ljava/io/InputStream;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v4

    .line 396
    :try_start_6
    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 399
    :try_start_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 402
    :cond_4
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/kingroot/kinguser/vi;->KL:Z

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingroot/kinguser/vi;->KC:Lcom/kingroot/kinguser/vj;

    iget-wide v10, v3, Lcom/kingroot/kinguser/vj;->mSize:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingroot/kinguser/vi;->KC:Lcom/kingroot/kinguser/vj;

    iget-wide v12, v3, Lcom/kingroot/kinguser/vj;->KU:J

    cmp-long v3, v10, v12

    if-lez v3, :cond_5

    .line 403
    invoke-virtual {v4, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 404
    const/4 v10, -0x1

    if-ne v3, v10, :cond_8

    .line 433
    :cond_5
    :goto_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v6, v10, v6

    .line 434
    const-wide/16 v10, 0x0

    cmp-long v3, v6, v10

    if-gtz v3, :cond_6

    .line 435
    const-wide/16 v6, 0x1

    .line 438
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingroot/kinguser/vi;->KC:Lcom/kingroot/kinguser/vj;

    iget-wide v10, v3, Lcom/kingroot/kinguser/vj;->KU:J

    sub-long v8, v10, v8

    div-long v6, v8, v6

    long-to-int v3, v6

    .line 439
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kingroot/kinguser/vi;->KC:Lcom/kingroot/kinguser/vj;

    iget v6, v6, Lcom/kingroot/kinguser/vj;->mSpeed:I

    if-nez v6, :cond_a

    .line 440
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kingroot/kinguser/vi;->KC:Lcom/kingroot/kinguser/vj;

    iput v3, v6, Lcom/kingroot/kinguser/vj;->mSpeed:I

    .line 445
    :goto_7
    const/16 v6, 0x21

    if-ge v3, v6, :cond_b

    .line 447
    const/4 v3, 0x1

    .line 448
    array-length v6, v2

    sget-object v7, Lcom/kingroot/kinguser/vi;->KO:[S

    const/4 v8, 0x0

    aget-short v7, v7, v8

    shl-int/lit8 v7, v7, 0xa

    if-eq v6, v7, :cond_7

    .line 449
    sget-object v2, Lcom/kingroot/kinguser/vi;->KO:[S

    const/4 v6, 0x0

    aget-short v2, v2, v6

    shl-int/lit8 v2, v2, 0xa

    new-array v2, v2, [B

    :cond_7
    :goto_8
    move v6, v5

    move/from16 v16, v3

    move-object v3, v4

    move/from16 v4, v16

    .line 464
    goto/16 :goto_0

    .line 408
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/kingroot/kinguser/vi;->KL:Z

    if-eqz v10, :cond_5

    .line 413
    const/4 v10, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v10, v3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 414
    invoke-virtual/range {p1 .. p1}, Ljava/io/FileOutputStream;->flush()V

    .line 416
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/kingroot/kinguser/vi;->KC:Lcom/kingroot/kinguser/vj;

    iget-wide v12, v10, Lcom/kingroot/kinguser/vj;->KU:J

    int-to-long v14, v3

    add-long/2addr v12, v14

    iput-wide v12, v10, Lcom/kingroot/kinguser/vj;->KU:J

    .line 419
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingroot/kinguser/vi;->KC:Lcom/kingroot/kinguser/vj;

    iget-wide v10, v3, Lcom/kingroot/kinguser/vj;->mSize:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingroot/kinguser/vi;->KC:Lcom/kingroot/kinguser/vj;

    iget-wide v12, v3, Lcom/kingroot/kinguser/vj;->KU:J

    cmp-long v3, v10, v12

    if-nez v3, :cond_9

    .line 420
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingroot/kinguser/vi;->KC:Lcom/kingroot/kinguser/vj;

    const/high16 v10, 0x3f800000    # 1.0f

    iput v10, v3, Lcom/kingroot/kinguser/vj;->BH:F

    .line 421
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/vi;->be(I)V

    goto :goto_6

    .line 465
    :catch_1
    move-exception v2

    goto/16 :goto_3

    .line 426
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingroot/kinguser/vi;->KC:Lcom/kingroot/kinguser/vj;

    iget-wide v10, v3, Lcom/kingroot/kinguser/vj;->mSize:J

    const-wide/16 v12, 0x0

    cmp-long v3, v10, v12

    if-lez v3, :cond_4

    .line 427
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kingroot/kinguser/vi;->KC:Lcom/kingroot/kinguser/vj;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/kingroot/kinguser/vi;->KC:Lcom/kingroot/kinguser/vj;

    iget-wide v10, v10, Lcom/kingroot/kinguser/vj;->KU:J

    long-to-float v10, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kingroot/kinguser/vi;->KC:Lcom/kingroot/kinguser/vj;

    iget-wide v12, v11, Lcom/kingroot/kinguser/vj;->mSize:J

    long-to-float v11, v12

    div-float/2addr v10, v11

    iput v10, v3, Lcom/kingroot/kinguser/vj;->BH:F

    .line 428
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/vi;->be(I)V
    :try_end_7
    .catch Lcom/kingroot/kinguser/va; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_5

    .line 467
    :catch_2
    move-exception v2

    .line 468
    :goto_9
    :try_start_8
    new-instance v3, Lcom/kingroot/kinguser/va;

    const/16 v5, -0x3b

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unbreakable download unsupported encoding: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 469
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v5, v2}, Lcom/kingroot/kinguser/va;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 442
    :cond_a
    :try_start_9
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kingroot/kinguser/vi;->KC:Lcom/kingroot/kinguser/vj;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/kingroot/kinguser/vi;->KC:Lcom/kingroot/kinguser/vj;

    iget v7, v7, Lcom/kingroot/kinguser/vj;->mSpeed:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/kingroot/kinguser/vi;->KC:Lcom/kingroot/kinguser/vj;

    iget v8, v8, Lcom/kingroot/kinguser/vj;->mSpeed:I

    add-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    iput v7, v6, Lcom/kingroot/kinguser/vj;->mSpeed:I
    :try_end_9
    .catch Lcom/kingroot/kinguser/va; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_7

    .line 470
    :catch_3
    move-exception v2

    .line 471
    :goto_a
    :try_start_a
    new-instance v3, Lcom/kingroot/kinguser/va;

    const/16 v5, -0x1b90

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unbreakable download IOException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 473
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v5, v2}, Lcom/kingroot/kinguser/va;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 451
    :cond_b
    const/16 v6, 0x41

    if-ge v3, v6, :cond_c

    .line 453
    const/4 v3, 0x2

    .line 454
    :try_start_b
    array-length v6, v2

    sget-object v7, Lcom/kingroot/kinguser/vi;->KO:[S

    const/4 v8, 0x1

    aget-short v7, v7, v8

    shl-int/lit8 v7, v7, 0xa

    if-eq v6, v7, :cond_7

    .line 455
    sget-object v2, Lcom/kingroot/kinguser/vi;->KO:[S

    const/4 v6, 0x1

    aget-short v2, v2, v6

    shl-int/lit8 v2, v2, 0xa

    new-array v2, v2, [B

    goto/16 :goto_8

    .line 459
    :cond_c
    const/4 v3, 0x3

    .line 460
    array-length v6, v2

    sget-object v7, Lcom/kingroot/kinguser/vi;->KO:[S

    const/4 v8, 0x2

    aget-short v7, v7, v8

    shl-int/lit8 v7, v7, 0xa

    if-eq v6, v7, :cond_7

    .line 461
    sget-object v2, Lcom/kingroot/kinguser/vi;->KO:[S

    const/4 v6, 0x2

    aget-short v2, v2, v6

    shl-int/lit8 v2, v2, 0xa

    new-array v2, v2, [B
    :try_end_b
    .catch Lcom/kingroot/kinguser/va; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/16 :goto_8

    .line 478
    :cond_d
    invoke-static {v3}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 480
    return-void

    .line 474
    :catch_4
    move-exception v2

    .line 475
    :goto_b
    :try_start_c
    new-instance v3, Lcom/kingroot/kinguser/va;

    const/4 v5, -0x2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unbreakable download IOException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 476
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v5, v2}, Lcom/kingroot/kinguser/va;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 478
    :catchall_2
    move-exception v2

    move-object v4, v3

    goto/16 :goto_4

    .line 474
    :catch_5
    move-exception v2

    move-object v4, v3

    goto :goto_b

    .line 470
    :catch_6
    move-exception v2

    move-object v4, v3

    goto :goto_a

    .line 467
    :catch_7
    move-exception v2

    move-object v4, v3

    goto/16 :goto_9

    .line 396
    :catchall_3
    move-exception v2

    move-object v3, v4

    goto/16 :goto_2
.end method

.method private lr()V
    .locals 11

    .prologue
    const/4 v1, 0x1

    const-wide/16 v8, 0x0

    const/4 v0, 0x0

    const/4 v7, 0x3

    const/4 v6, 0x0

    .line 116
    iput-boolean v1, p0, Lcom/kingroot/kinguser/vi;->KL:Z

    .line 119
    invoke-virtual {p0, v6}, Lcom/kingroot/kinguser/vi;->be(I)V

    .line 124
    :try_start_0
    iget-object v1, p0, Lcom/kingroot/kinguser/vi;->KC:Lcom/kingroot/kinguser/vj;

    iget-wide v2, v1, Lcom/kingroot/kinguser/vj;->KU:J

    iget-object v1, p0, Lcom/kingroot/kinguser/vi;->KC:Lcom/kingroot/kinguser/vj;

    iget-wide v4, v1, Lcom/kingroot/kinguser/vj;->mSize:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/kingroot/kinguser/vi;->KC:Lcom/kingroot/kinguser/vj;

    iget-wide v2, v1, Lcom/kingroot/kinguser/vj;->KU:J

    cmp-long v1, v2, v8

    if-lez v1, :cond_2

    .line 125
    iget-object v1, p0, Lcom/kingroot/kinguser/vi;->KC:Lcom/kingroot/kinguser/vj;

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Lcom/kingroot/kinguser/vj;->BH:F

    .line 126
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/kingroot/kinguser/vi;->be(I)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/kingroot/kinguser/va; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 166
    iget-object v1, p0, Lcom/kingroot/kinguser/vi;->KC:Lcom/kingroot/kinguser/vj;

    iget-wide v2, v1, Lcom/kingroot/kinguser/vj;->KU:J

    iget-object v1, p0, Lcom/kingroot/kinguser/vi;->KC:Lcom/kingroot/kinguser/vj;

    iget-wide v4, v1, Lcom/kingroot/kinguser/vj;->mSize:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/kingroot/kinguser/vi;->KC:Lcom/kingroot/kinguser/vj;

    iget-wide v2, v1, Lcom/kingroot/kinguser/vj;->KU:J

    cmp-long v1, v2, v8

    if-lez v1, :cond_0

    .line 167
    invoke-virtual {p0, v7}, Lcom/kingroot/kinguser/vi;->be(I)V

    .line 170
    :cond_0
    iget-object v1, p0, Lcom/kingroot/kinguser/vi;->KN:Ljava/lang/Object;

    monitor-enter v1

    .line 171
    :try_start_1
    iget-object v2, p0, Lcom/kingroot/kinguser/vi;->KM:Lcom/kingroot/kinguser/uy;

    if-eqz v2, :cond_1

    .line 173
    iget-object v2, p0, Lcom/kingroot/kinguser/vi;->KM:Lcom/kingroot/kinguser/uy;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/uy;->close()V

    .line 174
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/kingroot/kinguser/vi;->KM:Lcom/kingroot/kinguser/uy;

    .line 176
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    invoke-static {v0}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 180
    iput-boolean v6, p0, Lcom/kingroot/kinguser/vi;->KL:Z

    .line 182
    :goto_0
    return-void

    .line 176
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
    iget-object v1, p0, Lcom/kingroot/kinguser/vi;->KC:Lcom/kingroot/kinguser/vj;

    iget-wide v2, v1, Lcom/kingroot/kinguser/vj;->mSize:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_3

    .line 132
    invoke-direct {p0}, Lcom/kingroot/kinguser/vi;->ls()V

    .line 135
    :cond_3
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/kingroot/kinguser/vi;->Gx:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/kingroot/kinguser/va; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    .line 136
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iget-object v2, p0, Lcom/kingroot/kinguser/vi;->KC:Lcom/kingroot/kinguser/vj;

    iget-wide v2, v2, Lcom/kingroot/kinguser/vj;->KU:J

    invoke-virtual {v0, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 138
    iget-object v0, p0, Lcom/kingroot/kinguser/vi;->KC:Lcom/kingroot/kinguser/vj;

    iget-boolean v0, v0, Lcom/kingroot/kinguser/vj;->KS:Z

    if-eqz v0, :cond_6

    .line 140
    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/vi;->d(Ljava/io/FileOutputStream;)V

    .line 145
    :goto_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 147
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Lcom/kingroot/kinguser/va; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_8

    .line 166
    iget-object v0, p0, Lcom/kingroot/kinguser/vi;->KC:Lcom/kingroot/kinguser/vj;

    iget-wide v2, v0, Lcom/kingroot/kinguser/vj;->KU:J

    iget-object v0, p0, Lcom/kingroot/kinguser/vi;->KC:Lcom/kingroot/kinguser/vj;

    iget-wide v4, v0, Lcom/kingroot/kinguser/vj;->mSize:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/kingroot/kinguser/vi;->KC:Lcom/kingroot/kinguser/vj;

    iget-wide v2, v0, Lcom/kingroot/kinguser/vj;->KU:J

    cmp-long v0, v2, v8

    if-lez v0, :cond_4

    .line 167
    invoke-virtual {p0, v7}, Lcom/kingroot/kinguser/vi;->be(I)V

    .line 170
    :cond_4
    iget-object v2, p0, Lcom/kingroot/kinguser/vi;->KN:Ljava/lang/Object;

    monitor-enter v2

    .line 171
    :try_start_5
    iget-object v0, p0, Lcom/kingroot/kinguser/vi;->KM:Lcom/kingroot/kinguser/uy;

    if-eqz v0, :cond_5

    .line 173
    iget-object v0, p0, Lcom/kingroot/kinguser/vi;->KM:Lcom/kingroot/kinguser/uy;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/uy;->close()V

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/vi;->KM:Lcom/kingroot/kinguser/uy;

    .line 176
    :cond_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 178
    invoke-static {v1}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 180
    iput-boolean v6, p0, Lcom/kingroot/kinguser/vi;->KL:Z

    goto :goto_0

    .line 143
    :cond_6
    :try_start_6
    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/vi;->c(Ljava/io/FileOutputStream;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Lcom/kingroot/kinguser/va; {:try_start_6 .. :try_end_6} :catch_5
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
    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/vi;->bf(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_9

    .line 166
    iget-object v1, p0, Lcom/kingroot/kinguser/vi;->KC:Lcom/kingroot/kinguser/vj;

    iget-wide v2, v1, Lcom/kingroot/kinguser/vj;->KU:J

    iget-object v1, p0, Lcom/kingroot/kinguser/vi;->KC:Lcom/kingroot/kinguser/vj;

    iget-wide v4, v1, Lcom/kingroot/kinguser/vj;->mSize:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/kingroot/kinguser/vi;->KC:Lcom/kingroot/kinguser/vj;

    iget-wide v2, v1, Lcom/kingroot/kinguser/vj;->KU:J

    cmp-long v1, v2, v8

    if-lez v1, :cond_7

    .line 167
    invoke-virtual {p0, v7}, Lcom/kingroot/kinguser/vi;->be(I)V

    .line 170
    :cond_7
    iget-object v1, p0, Lcom/kingroot/kinguser/vi;->KN:Ljava/lang/Object;

    monitor-enter v1

    .line 171
    :try_start_8
    iget-object v2, p0, Lcom/kingroot/kinguser/vi;->KM:Lcom/kingroot/kinguser/uy;

    if-eqz v2, :cond_8

    .line 173
    iget-object v2, p0, Lcom/kingroot/kinguser/vi;->KM:Lcom/kingroot/kinguser/uy;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/uy;->close()V

    .line 174
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/kingroot/kinguser/vi;->KM:Lcom/kingroot/kinguser/uy;

    .line 176
    :cond_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 178
    invoke-static {v0}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 180
    iput-boolean v6, p0, Lcom/kingroot/kinguser/vi;->KL:Z

    goto/16 :goto_0

    .line 176
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
    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/vi;->bf(I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    .line 166
    iget-object v1, p0, Lcom/kingroot/kinguser/vi;->KC:Lcom/kingroot/kinguser/vj;

    iget-wide v2, v1, Lcom/kingroot/kinguser/vj;->KU:J

    iget-object v1, p0, Lcom/kingroot/kinguser/vi;->KC:Lcom/kingroot/kinguser/vj;

    iget-wide v4, v1, Lcom/kingroot/kinguser/vj;->mSize:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/kingroot/kinguser/vi;->KC:Lcom/kingroot/kinguser/vj;

    iget-wide v2, v1, Lcom/kingroot/kinguser/vj;->KU:J

    cmp-long v1, v2, v8

    if-lez v1, :cond_9

    .line 167
    invoke-virtual {p0, v7}, Lcom/kingroot/kinguser/vi;->be(I)V

    .line 170
    :cond_9
    iget-object v1, p0, Lcom/kingroot/kinguser/vi;->KN:Ljava/lang/Object;

    monitor-enter v1

    .line 171
    :try_start_c
    iget-object v2, p0, Lcom/kingroot/kinguser/vi;->KM:Lcom/kingroot/kinguser/uy;

    if-eqz v2, :cond_a

    .line 173
    iget-object v2, p0, Lcom/kingroot/kinguser/vi;->KM:Lcom/kingroot/kinguser/uy;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/uy;->close()V

    .line 174
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/kingroot/kinguser/vi;->KM:Lcom/kingroot/kinguser/uy;

    .line 176
    :cond_a
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 178
    invoke-static {v0}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 180
    iput-boolean v6, p0, Lcom/kingroot/kinguser/vi;->KL:Z

    goto/16 :goto_0

    .line 176
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
    invoke-virtual {v0}, Lcom/kingroot/kinguser/va;->lf()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/vi;->bf(I)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    .line 166
    iget-object v0, p0, Lcom/kingroot/kinguser/vi;->KC:Lcom/kingroot/kinguser/vj;

    iget-wide v2, v0, Lcom/kingroot/kinguser/vj;->KU:J

    iget-object v0, p0, Lcom/kingroot/kinguser/vi;->KC:Lcom/kingroot/kinguser/vj;

    iget-wide v4, v0, Lcom/kingroot/kinguser/vj;->mSize:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/kingroot/kinguser/vi;->KC:Lcom/kingroot/kinguser/vj;

    iget-wide v2, v0, Lcom/kingroot/kinguser/vj;->KU:J

    cmp-long v0, v2, v8

    if-lez v0, :cond_b

    .line 167
    invoke-virtual {p0, v7}, Lcom/kingroot/kinguser/vi;->be(I)V

    .line 170
    :cond_b
    iget-object v2, p0, Lcom/kingroot/kinguser/vi;->KN:Ljava/lang/Object;

    monitor-enter v2

    .line 171
    :try_start_f
    iget-object v0, p0, Lcom/kingroot/kinguser/vi;->KM:Lcom/kingroot/kinguser/uy;

    if-eqz v0, :cond_c

    .line 173
    iget-object v0, p0, Lcom/kingroot/kinguser/vi;->KM:Lcom/kingroot/kinguser/uy;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/uy;->close()V

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/vi;->KM:Lcom/kingroot/kinguser/uy;

    .line 176
    :cond_c
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 178
    invoke-static {v1}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 180
    iput-boolean v6, p0, Lcom/kingroot/kinguser/vi;->KL:Z

    goto/16 :goto_0

    .line 176
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

    .line 162
    :goto_5
    const/16 v1, -0x138e

    :try_start_11
    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/vi;->bf(I)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    .line 166
    iget-object v1, p0, Lcom/kingroot/kinguser/vi;->KC:Lcom/kingroot/kinguser/vj;

    iget-wide v2, v1, Lcom/kingroot/kinguser/vj;->KU:J

    iget-object v1, p0, Lcom/kingroot/kinguser/vi;->KC:Lcom/kingroot/kinguser/vj;

    iget-wide v4, v1, Lcom/kingroot/kinguser/vj;->mSize:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/kingroot/kinguser/vi;->KC:Lcom/kingroot/kinguser/vj;

    iget-wide v2, v1, Lcom/kingroot/kinguser/vj;->KU:J

    cmp-long v1, v2, v8

    if-lez v1, :cond_d

    .line 167
    invoke-virtual {p0, v7}, Lcom/kingroot/kinguser/vi;->be(I)V

    .line 170
    :cond_d
    iget-object v1, p0, Lcom/kingroot/kinguser/vi;->KN:Ljava/lang/Object;

    monitor-enter v1

    .line 171
    :try_start_12
    iget-object v2, p0, Lcom/kingroot/kinguser/vi;->KM:Lcom/kingroot/kinguser/uy;

    if-eqz v2, :cond_e

    .line 173
    iget-object v2, p0, Lcom/kingroot/kinguser/vi;->KM:Lcom/kingroot/kinguser/uy;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/uy;->close()V

    .line 174
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/kingroot/kinguser/vi;->KM:Lcom/kingroot/kinguser/uy;

    .line 176
    :cond_e
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    .line 178
    invoke-static {v0}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 180
    iput-boolean v6, p0, Lcom/kingroot/kinguser/vi;->KL:Z

    goto/16 :goto_0

    .line 176
    :catchall_5
    move-exception v0

    :try_start_13
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    throw v0

    .line 166
    :catchall_6
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    :goto_6
    iget-object v2, p0, Lcom/kingroot/kinguser/vi;->KC:Lcom/kingroot/kinguser/vj;

    iget-wide v2, v2, Lcom/kingroot/kinguser/vj;->KU:J

    iget-object v4, p0, Lcom/kingroot/kinguser/vi;->KC:Lcom/kingroot/kinguser/vj;

    iget-wide v4, v4, Lcom/kingroot/kinguser/vj;->mSize:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_f

    iget-object v2, p0, Lcom/kingroot/kinguser/vi;->KC:Lcom/kingroot/kinguser/vj;

    iget-wide v2, v2, Lcom/kingroot/kinguser/vj;->KU:J

    cmp-long v2, v2, v8

    if-lez v2, :cond_f

    .line 167
    invoke-virtual {p0, v7}, Lcom/kingroot/kinguser/vi;->be(I)V

    .line 170
    :cond_f
    iget-object v2, p0, Lcom/kingroot/kinguser/vi;->KN:Ljava/lang/Object;

    monitor-enter v2

    .line 171
    :try_start_14
    iget-object v3, p0, Lcom/kingroot/kinguser/vi;->KM:Lcom/kingroot/kinguser/uy;

    if-eqz v3, :cond_10

    .line 173
    iget-object v3, p0, Lcom/kingroot/kinguser/vi;->KM:Lcom/kingroot/kinguser/uy;

    invoke-virtual {v3}, Lcom/kingroot/kinguser/uy;->close()V

    .line 174
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/kingroot/kinguser/vi;->KM:Lcom/kingroot/kinguser/uy;

    .line 176
    :cond_10
    monitor-exit v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    .line 178
    invoke-static {v1}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 180
    iput-boolean v6, p0, Lcom/kingroot/kinguser/vi;->KL:Z

    throw v0

    .line 176
    :catchall_7
    move-exception v0

    :try_start_15
    monitor-exit v2
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    throw v0

    .line 166
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

.method private ls()V
    .locals 6

    .prologue
    const/16 v5, 0xce

    const/4 v4, 0x1

    .line 201
    iget-object v1, p0, Lcom/kingroot/kinguser/vi;->KN:Ljava/lang/Object;

    monitor-enter v1

    .line 202
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/vi;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/kingroot/kinguser/vi;->KC:Lcom/kingroot/kinguser/vj;

    iget-object v2, v2, Lcom/kingroot/kinguser/vj;->ra:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/uy;->k(Landroid/content/Context;Ljava/lang/String;)Lcom/kingroot/kinguser/uy;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/vi;->KM:Lcom/kingroot/kinguser/uy;

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bytes=0-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/kingroot/kinguser/vi;->KK:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 204
    iget-object v2, p0, Lcom/kingroot/kinguser/vi;->KM:Lcom/kingroot/kinguser/uy;

    const-string v3, "Range"

    invoke-virtual {v2, v3, v0}, Lcom/kingroot/kinguser/uy;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/kingroot/kinguser/vi;->KM:Lcom/kingroot/kinguser/uy;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/uy;->kZ()I

    move-result v0

    if-eq v0, v5, :cond_0

    .line 206
    iget-object v0, p0, Lcom/kingroot/kinguser/vi;->KM:Lcom/kingroot/kinguser/uy;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/uy;->close()V

    .line 209
    iget-object v0, p0, Lcom/kingroot/kinguser/vi;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/kingroot/kinguser/vi;->KC:Lcom/kingroot/kinguser/vj;

    iget-object v2, v2, Lcom/kingroot/kinguser/vj;->ra:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/uy;->k(Landroid/content/Context;Ljava/lang/String;)Lcom/kingroot/kinguser/uy;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/vi;->KM:Lcom/kingroot/kinguser/uy;

    .line 210
    iget-object v0, p0, Lcom/kingroot/kinguser/vi;->KM:Lcom/kingroot/kinguser/uy;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/uy;->kZ()I

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/vi;->KM:Lcom/kingroot/kinguser/uy;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/uy;->getResponseCode()I

    move-result v0

    .line 214
    if-ne v0, v5, :cond_3

    .line 215
    iget-object v0, p0, Lcom/kingroot/kinguser/vi;->KC:Lcom/kingroot/kinguser/vj;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/kingroot/kinguser/vj;->KS:Z

    .line 216
    iget-object v0, p0, Lcom/kingroot/kinguser/vi;->KC:Lcom/kingroot/kinguser/vj;

    iget-object v2, p0, Lcom/kingroot/kinguser/vi;->KM:Lcom/kingroot/kinguser/uy;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/uy;->la()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/kingroot/kinguser/vj;->mSize:J

    .line 228
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/vi;->KC:Lcom/kingroot/kinguser/vj;

    iget-wide v2, v0, Lcom/kingroot/kinguser/vj;->mSize:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_2

    .line 229
    const/16 v0, -0x1b59

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/vi;->bf(I)V

    .line 231
    :cond_2
    monitor-exit v1

    .line 232
    :goto_1
    return-void

    .line 217
    :cond_3
    const/16 v2, 0xc8

    if-ne v0, v2, :cond_1

    .line 218
    iget-object v0, p0, Lcom/kingroot/kinguser/vi;->KM:Lcom/kingroot/kinguser/uy;

    const-string v2, "Content-Type"

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/uy;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 219
    iget-object v2, p0, Lcom/kingroot/kinguser/vi;->KC:Lcom/kingroot/kinguser/vj;

    iget v2, v2, Lcom/kingroot/kinguser/vj;->mType:I

    if-ne v2, v4, :cond_4

    const-string v2, "text/html"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 221
    const/16 v0, -0x1b5f

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/vi;->bf(I)V

    .line 222
    monitor-exit v1

    goto :goto_1

    .line 231
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 224
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/vi;->KC:Lcom/kingroot/kinguser/vj;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/kingroot/kinguser/vj;->KS:Z

    .line 225
    iget-object v0, p0, Lcom/kingroot/kinguser/vi;->KC:Lcom/kingroot/kinguser/vj;

    iget-object v2, p0, Lcom/kingroot/kinguser/vi;->KM:Lcom/kingroot/kinguser/uy;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/uy;->getContentLength()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/kingroot/kinguser/vj;->mSize:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/vk;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kingroot/kinguser/vk",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 95
    iput-object p1, p0, Lcom/kingroot/kinguser/vi;->KP:Lcom/kingroot/kinguser/vk;

    .line 96
    return-void
.end method

.method public be(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    iget-boolean v0, p0, Lcom/kingroot/kinguser/vi;->KL:Z

    if-nez v0, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 54
    :pswitch_0
    iget-object v0, p0, Lcom/kingroot/kinguser/vi;->KP:Lcom/kingroot/kinguser/vk;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/kingroot/kinguser/vi;->KC:Lcom/kingroot/kinguser/vj;

    iput v1, v0, Lcom/kingroot/kinguser/vj;->mState:I

    .line 56
    iget-object v0, p0, Lcom/kingroot/kinguser/vi;->KP:Lcom/kingroot/kinguser/vk;

    iget-object v1, p0, Lcom/kingroot/kinguser/vi;->KC:Lcom/kingroot/kinguser/vj;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/vk;->d(Lcom/kingroot/kinguser/vj;)V

    goto :goto_0

    .line 60
    :pswitch_1
    iget-object v0, p0, Lcom/kingroot/kinguser/vi;->KP:Lcom/kingroot/kinguser/vk;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/kingroot/kinguser/vi;->KC:Lcom/kingroot/kinguser/vj;

    iput v1, v0, Lcom/kingroot/kinguser/vj;->mState:I

    .line 62
    iget-object v0, p0, Lcom/kingroot/kinguser/vi;->KP:Lcom/kingroot/kinguser/vk;

    iget-object v1, p0, Lcom/kingroot/kinguser/vi;->KC:Lcom/kingroot/kinguser/vj;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/vk;->e(Lcom/kingroot/kinguser/vj;)V

    goto :goto_0

    .line 66
    :pswitch_2
    iget-object v0, p0, Lcom/kingroot/kinguser/vi;->KP:Lcom/kingroot/kinguser/vk;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/kingroot/kinguser/vi;->KC:Lcom/kingroot/kinguser/vj;

    const/4 v1, 0x2

    iput v1, v0, Lcom/kingroot/kinguser/vj;->mState:I

    .line 68
    iget-object v0, p0, Lcom/kingroot/kinguser/vi;->KP:Lcom/kingroot/kinguser/vk;

    iget-object v1, p0, Lcom/kingroot/kinguser/vi;->KC:Lcom/kingroot/kinguser/vj;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/vk;->a(Lcom/kingroot/kinguser/vj;)V

    goto :goto_0

    .line 72
    :pswitch_3
    iget-object v0, p0, Lcom/kingroot/kinguser/vi;->KP:Lcom/kingroot/kinguser/vk;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/kingroot/kinguser/vi;->KC:Lcom/kingroot/kinguser/vj;

    const/4 v1, 0x3

    iput v1, v0, Lcom/kingroot/kinguser/vj;->mState:I

    .line 74
    iget-object v0, p0, Lcom/kingroot/kinguser/vi;->KP:Lcom/kingroot/kinguser/vk;

    iget-object v1, p0, Lcom/kingroot/kinguser/vi;->KC:Lcom/kingroot/kinguser/vj;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/vk;->b(Lcom/kingroot/kinguser/vj;)V

    goto :goto_0

    .line 52
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public lt()V
    .locals 1

    .prologue
    .line 483
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/vi;->KL:Z

    .line 485
    invoke-virtual {p0}, Lcom/kingroot/kinguser/vi;->nA()V

    .line 489
    invoke-static {}, Lcom/kingroot/kinguser/uj;->kA()Z

    move-result v0

    if-nez v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/kingroot/kinguser/vi;->KQ:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 494
    :goto_0
    return-void

    .line 492
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/vi;->KQ:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/kingroot/kinguser/wp;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 106
    new-instance v0, Lcom/kingroot/kinguser/vi$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/vi$1;-><init>(Lcom/kingroot/kinguser/vi;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/zk;->a(Lcom/kingroot/kinguser/zk$a;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    return-void
.end method
