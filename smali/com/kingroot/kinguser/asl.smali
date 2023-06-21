.class public Lcom/kingroot/kinguser/asl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final aMS:J

.field private static aMT:Ljava/lang/String;

.field private static aMV:Ljava/lang/String;

.field private static final sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/asl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private aMU:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/kingroot/kinguser/aiq;->ask:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_RiskFileUpload"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/asl;->TAG:Ljava/lang/String;

    .line 35
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/kingroot/kinguser/asl;->aMS:J

    .line 61
    new-instance v0, Lcom/kingroot/kinguser/asl$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/asl$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/asl;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->hY()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/asl;->aMT:Ljava/lang/String;

    .line 70
    sget-object v0, Lcom/kingroot/kinguser/asl;->aMT:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/asl;->ir(Ljava/lang/String;)V

    .line 71
    invoke-direct {p0}, Lcom/kingroot/kinguser/asl;->NX()V

    .line 72
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/asl$1;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/kingroot/kinguser/asl;-><init>()V

    return-void
.end method

.method private E(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 146
    const/16 v0, 0x1a

    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/asl;->iu(Ljava/lang/String;)Z

    move-result v1

    invoke-direct {p0, v0, p1, v1, p2}, Lcom/kingroot/kinguser/asl;->a(ILjava/lang/String;ZI)Z

    .line 147
    return-void
.end method

.method private F(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 169
    const/4 v0, 0x3

    .line 171
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/asl;->G(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 172
    add-int/lit8 v0, v0, -0x1

    .line 173
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 175
    const/4 v0, 0x0

    .line 176
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/asl;->it(Ljava/lang/String;)Z

    .line 180
    :cond_1
    if-nez v0, :cond_0

    .line 181
    return-object v1
.end method

.method private G(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5

    .prologue
    .line 194
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 195
    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 196
    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 197
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 200
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 201
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 202
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/kingroot/kinguser/asl;->aMV:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    .line 203
    if-eqz v1, :cond_0

    .line 210
    :goto_0
    return-object v0

    .line 206
    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 210
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public static NW()Lcom/kingroot/kinguser/asl;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/kingroot/kinguser/asl;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/asl;

    return-object v0
.end method

.method private NX()V
    .locals 3

    .prologue
    .line 185
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "rrm"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 186
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 187
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 189
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/asl;->aMV:Ljava/lang/String;

    .line 190
    return-void
.end method

.method private NZ()V
    .locals 3

    .prologue
    .line 490
    sget-object v0, Lcom/kingroot/kinguser/asl;->aMV:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/asl;->is(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 491
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 492
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/asl;->iw(Ljava/lang/String;)I

    move-result v2

    .line 493
    invoke-direct {p0, v0, v2}, Lcom/kingroot/kinguser/asl;->E(Ljava/lang/String;I)V

    goto :goto_0

    .line 495
    :cond_0
    return-void
.end method

.method static synthetic Oa()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/kingroot/kinguser/asl;->aMV:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic Ob()J
    .locals 2

    .prologue
    .line 31
    sget-wide v0, Lcom/kingroot/kinguser/asl;->aMS:J

    return-wide v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/asl;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/kingroot/kinguser/asl;->aMU:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/asl;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/asl;->F(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/RandomAccessFile;Ljava/io/BufferedOutputStream;J)V
    .locals 4

    .prologue
    .line 289
    long-to-int v0, p2

    new-array v0, v0, [B

    .line 290
    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v1

    .line 291
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 292
    invoke-virtual {p1, v0}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 294
    :cond_0
    return-void
.end method

.method private a(ILjava/lang/String;ZI)Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 321
    const/4 v1, 0x2

    .line 326
    invoke-virtual {p0, p4}, Lcom/kingroot/kinguser/asl;->gv(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 397
    :cond_0
    :goto_0
    return v0

    .line 331
    :cond_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 332
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 337
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 340
    if-nez p3, :cond_2

    .line 341
    invoke-direct {p0, p4, v4, v5}, Lcom/kingroot/kinguser/asl;->c(IJ)Z

    move-result v4

    .line 343
    if-eqz v4, :cond_2

    move p3, v2

    .line 352
    :cond_2
    :goto_1
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/kingroot/kinguser/vb;->O(Landroid/content/Context;)B

    move-result v4

    .line 353
    if-eqz p3, :cond_3

    if-nez v4, :cond_0

    .line 359
    :cond_3
    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5, p1}, Lcom/kingroot/kinguser/ask;->e(Ljava/io/File;I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 360
    if-nez v5, :cond_6

    .line 364
    if-eqz v4, :cond_4

    .line 365
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-direct {p0, p4, v4, v5}, Lcom/kingroot/kinguser/asl;->d(IJ)Z

    .line 369
    :cond_4
    invoke-direct {p0, p4}, Lcom/kingroot/kinguser/asl;->gw(I)Z

    .line 372
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 374
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_5
    move v0, v2

    .line 376
    goto :goto_0

    .line 377
    :cond_6
    const/16 v4, -0xfa0

    if-ne v5, v4, :cond_0

    .line 378
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    .line 384
    const-wide/16 v4, 0x3e8

    :try_start_2
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 389
    :catch_0
    move-exception v4

    .line 391
    :goto_2
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_2

    goto :goto_0

    .line 389
    :catch_1
    move-exception v0

    move v0, v2

    goto :goto_2
.end method

.method static synthetic a(Lcom/kingroot/kinguser/asl;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/asl;->iu(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static at(Ljava/lang/String;Ljava/lang/String;)J
    .locals 24

    .prologue
    .line 232
    const/4 v2, 0x0

    .line 233
    const/4 v6, 0x0

    .line 234
    const-wide/16 v4, 0x0

    .line 236
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 237
    new-instance v8, Ljava/io/RandomAccessFile;

    const-string v3, "r"

    invoke-direct {v8, v7, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    :try_start_1
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->length()J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v10

    .line 240
    const-wide/16 v2, 0x1

    cmp-long v2, v10, v2

    if-gez v2, :cond_0

    .line 281
    invoke-static {v8}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 282
    invoke-static {v6}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 284
    :goto_0
    return-wide v4

    .line 244
    :cond_0
    const-wide/32 v12, 0x80000

    .line 245
    :try_start_2
    div-long v2, v10, v12

    .line 246
    rem-long v14, v10, v12

    .line 247
    const-wide/16 v16, 0x2000

    .line 249
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "-"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-wide/16 v10, 0x0

    cmp-long v9, v14, v10

    if-lez v9, :cond_1

    const-wide/16 v10, 0x1

    add-long/2addr v10, v2

    :goto_1
    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "-"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v10

    .line 254
    const/4 v7, 0x1

    move v9, v7

    move-object v7, v6

    :goto_2
    int-to-long v0, v9

    move-wide/from16 v18, v0

    cmp-long v6, v18, v2

    if-gtz v6, :cond_4

    .line 256
    :try_start_3
    new-instance v6, Ljava/io/BufferedOutputStream;

    new-instance v11, Ljava/io/FileOutputStream;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v11, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v11}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 258
    :try_start_4
    div-long v18, v12, v16

    .line 259
    rem-long v20, v12, v16

    .line 262
    const/4 v7, 0x0

    :goto_3
    int-to-long v0, v7

    move-wide/from16 v22, v0

    cmp-long v11, v22, v18

    if-gez v11, :cond_2

    .line 263
    move-wide/from16 v0, v16

    invoke-static {v8, v6, v0, v1}, Lcom/kingroot/kinguser/asl;->a(Ljava/io/RandomAccessFile;Ljava/io/BufferedOutputStream;J)V

    .line 262
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_1
    move-wide v10, v2

    .line 249
    goto :goto_1

    .line 265
    :cond_2
    const-wide/16 v18, 0x0

    cmp-long v7, v20, v18

    if-lez v7, :cond_3

    .line 266
    move-wide/from16 v0, v20

    invoke-static {v8, v6, v0, v1}, Lcom/kingroot/kinguser/asl;->a(Ljava/io/RandomAccessFile;Ljava/io/BufferedOutputStream;J)V

    .line 268
    :cond_3
    invoke-static {v6}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 254
    add-int/lit8 v7, v9, 0x1

    move v9, v7

    move-object v7, v6

    goto :goto_2

    .line 270
    :cond_4
    const-wide/16 v12, 0x0

    cmp-long v6, v14, v12

    if-lez v6, :cond_6

    .line 271
    :try_start_5
    new-instance v6, Ljava/io/BufferedOutputStream;

    new-instance v9, Ljava/io/FileOutputStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-wide/16 v12, 0x1

    add-long/2addr v12, v2

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 273
    :try_start_6
    invoke-static {v8, v6, v14, v15}, Lcom/kingroot/kinguser/asl;->a(Ljava/io/RandomAccessFile;Ljava/io/BufferedOutputStream;J)V

    .line 274
    invoke-static {v6}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 277
    :goto_4
    const-wide/16 v4, 0x0

    cmp-long v4, v14, v4

    if-lez v4, :cond_5

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    .line 281
    :cond_5
    invoke-static {v8}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 282
    invoke-static {v6}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    :goto_5
    move-wide v4, v2

    .line 284
    goto/16 :goto_0

    .line 278
    :catch_0
    move-exception v3

    move-object v3, v2

    move-object v2, v6

    .line 281
    :goto_6
    invoke-static {v3}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 282
    invoke-static {v2}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    move-wide v2, v4

    .line 283
    goto :goto_5

    .line 281
    :catchall_0
    move-exception v3

    move-object v8, v2

    move-object v2, v3

    :goto_7
    invoke-static {v8}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    .line 282
    invoke-static {v6}, Lcom/kingroot/kinguser/za;->c(Ljava/io/Closeable;)V

    throw v2

    .line 281
    :catchall_1
    move-exception v2

    goto :goto_7

    :catchall_2
    move-exception v2

    move-object v6, v7

    goto :goto_7

    .line 278
    :catch_1
    move-exception v2

    move-object v2, v6

    move-object v3, v8

    goto :goto_6

    :catch_2
    move-exception v2

    move-object v2, v6

    move-object v3, v8

    goto :goto_6

    :catch_3
    move-exception v2

    move-object v2, v7

    move-object v3, v8

    goto :goto_6

    :catch_4
    move-exception v2

    move-object v2, v6

    move-object v3, v8

    goto :goto_6

    :cond_6
    move-object v6, v7

    goto :goto_4
.end method

.method static synthetic au(Ljava/lang/String;Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 31
    invoke-static {p0, p1}, Lcom/kingroot/kinguser/asl;->at(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/asl;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/kingroot/kinguser/asl;->NZ()V

    return-void
.end method

.method static synthetic b(Lcom/kingroot/kinguser/asl;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/asl;->E(Ljava/lang/String;I)V

    return-void
.end method

.method private static b(IJ)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 299
    :goto_0
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/vb;->O(Landroid/content/Context;)B

    move-result v1

    .line 301
    if-nez v1, :cond_1

    .line 303
    const/4 v0, 0x1

    .line 315
    :cond_0
    :goto_1
    return v0

    .line 306
    :cond_1
    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_0

    .line 312
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 313
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private c(IJ)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 402
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "rfu_snow_%1$d"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 403
    invoke-static {}, Lcom/kingroot/kinguser/akp;->BJ()Lcom/kingroot/kinguser/akp;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v2, v4, v5}, Lcom/kingroot/kinguser/akp;->l(Ljava/lang/String;J)J

    move-result-wide v2

    .line 404
    add-long/2addr v2, p2

    const-wide/32 v4, 0x200000

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 408
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private d(IJ)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 412
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "rfu_snow_%1$d"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 413
    invoke-static {}, Lcom/kingroot/kinguser/akp;->BJ()Lcom/kingroot/kinguser/akp;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/kingroot/kinguser/akp;->l(Ljava/lang/String;J)J

    move-result-wide v2

    .line 414
    add-long/2addr v2, p2

    .line 416
    invoke-static {}, Lcom/kingroot/kinguser/akp;->BJ()Lcom/kingroot/kinguser/akp;

    move-result-object v1

    invoke-virtual {v1, v0, v2, v3}, Lcom/kingroot/kinguser/akp;->m(Ljava/lang/String;J)V

    .line 417
    return v5
.end method

.method static synthetic e(IJ)Z
    .locals 1

    .prologue
    .line 31
    invoke-static {p0, p1, p2}, Lcom/kingroot/kinguser/asl;->b(IJ)Z

    move-result v0

    return v0
.end method

.method private gw(I)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 458
    const/16 v2, 0x3e8

    .line 459
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string v4, "rfu_c_%1$d"

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 460
    invoke-static {}, Lcom/kingroot/kinguser/akp;->BJ()Lcom/kingroot/kinguser/akp;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/kingroot/kinguser/akp;->w(Ljava/lang/String;I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    .line 462
    invoke-static {}, Lcom/kingroot/kinguser/akp;->BJ()Lcom/kingroot/kinguser/akp;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Lcom/kingroot/kinguser/akp;->x(Ljava/lang/String;I)V

    .line 463
    if-lt v4, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private ir(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UFThread"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    new-instance v1, Landroid/os/HandlerThread;

    invoke-direct {v1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 78
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/asl;->aMU:Landroid/os/Handler;

    .line 79
    return-void
.end method

.method private is(Ljava/lang/String;)Ljava/util/ArrayList;
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
    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 153
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 155
    if-nez v2, :cond_1

    .line 164
    :cond_0
    return-object v0

    .line 159
    :cond_1
    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 160
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 162
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private it(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 215
    invoke-static {p1}, Lcom/kingroot/kinguser/rs;->deleteFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private iu(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 221
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 223
    const-wide/32 v2, 0x19000

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 224
    const/4 v0, 0x0

    .line 226
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private iv(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/kingroot/kinguser/asl;->aMU:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 468
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/asl;->ir(Ljava/lang/String;)V

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/asl;->aMU:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private iw(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 498
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 499
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 500
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 501
    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 503
    return v0
.end method


# virtual methods
.method public D(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 92
    sget-object v0, Lcom/kingroot/kinguser/asl;->aMT:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/asl;->iv(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/kingroot/kinguser/asl;->aMU:Landroid/os/Handler;

    new-instance v1, Lcom/kingroot/kinguser/asl$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/kingroot/kinguser/asl$2;-><init>(Lcom/kingroot/kinguser/asl;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 142
    :cond_0
    return-void
.end method

.method public NY()V
    .locals 2

    .prologue
    .line 474
    sget-object v0, Lcom/kingroot/kinguser/asl;->aMT:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/asl;->iv(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/kingroot/kinguser/asl;->aMU:Landroid/os/Handler;

    new-instance v1, Lcom/kingroot/kinguser/asl$3;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/asl$3;-><init>(Lcom/kingroot/kinguser/asl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 485
    :cond_0
    return-void
.end method

.method public gv(I)Z
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 426
    const/16 v2, 0x3e8

    .line 427
    const-wide/32 v4, 0x5265c00

    .line 429
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string v6, "rfu_cs_%1$d"

    new-array v7, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {v3, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 430
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    const-string v7, "rfu_c_%1$d"

    new-array v8, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v1

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 431
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    const-string v8, "rfu_snow_%1$d"

    new-array v9, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v1

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 433
    invoke-static {}, Lcom/kingroot/kinguser/akp;->BJ()Lcom/kingroot/kinguser/akp;

    move-result-object v8

    invoke-virtual {v8, v3, v12, v13}, Lcom/kingroot/kinguser/akp;->l(Ljava/lang/String;J)J

    move-result-wide v8

    .line 434
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 437
    sub-long v8, v10, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    .line 438
    cmp-long v4, v8, v4

    if-lez v4, :cond_0

    .line 442
    invoke-static {}, Lcom/kingroot/kinguser/akp;->BJ()Lcom/kingroot/kinguser/akp;

    move-result-object v0

    invoke-virtual {v0, v3, v10, v11}, Lcom/kingroot/kinguser/akp;->m(Ljava/lang/String;J)V

    .line 444
    invoke-static {}, Lcom/kingroot/kinguser/akp;->BJ()Lcom/kingroot/kinguser/akp;

    move-result-object v0

    invoke-virtual {v0, v6, v1}, Lcom/kingroot/kinguser/akp;->x(Ljava/lang/String;I)V

    .line 446
    invoke-static {}, Lcom/kingroot/kinguser/akp;->BJ()Lcom/kingroot/kinguser/akp;

    move-result-object v0

    invoke-virtual {v0, v7, v12, v13}, Lcom/kingroot/kinguser/akp;->m(Ljava/lang/String;J)V

    .line 453
    :goto_0
    return v1

    .line 449
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/akp;->BJ()Lcom/kingroot/kinguser/akp;

    move-result-object v3

    invoke-virtual {v3, v6, v1}, Lcom/kingroot/kinguser/akp;->w(Ljava/lang/String;I)I

    move-result v3

    .line 451
    add-int/lit8 v3, v3, 0x1

    if-lt v3, v2, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method
