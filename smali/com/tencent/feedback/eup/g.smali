.class public final Lcom/tencent/feedback/eup/g;
.super Lcom/tencent/feedback/upload/AbstractUploadDatas;
.source "SourceFile"


# static fields
.field private static d:Lcom/tencent/feedback/eup/g;


# instance fields
.field private e:Lcom/tencent/feedback/proguard/O;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/feedback/eup/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/feedback/eup/g;->d:Lcom/tencent/feedback/eup/g;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 90
    const/4 v0, 0x3

    const/16 v1, 0x212

    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/feedback/upload/AbstractUploadDatas;-><init>(Landroid/content/Context;II)V

    .line 44
    iput-object v2, p0, Lcom/tencent/feedback/eup/g;->e:Lcom/tencent/feedback/proguard/O;

    .line 59
    iput-object v2, p0, Lcom/tencent/feedback/eup/g;->f:Ljava/util/List;

    .line 91
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/tencent/feedback/eup/g;
    .locals 2

    .prologue
    .line 68
    const-class v1, Lcom/tencent/feedback/eup/g;

    monitor-enter v1

    if-eqz p0, :cond_0

    :try_start_0
    sget-object v0, Lcom/tencent/feedback/eup/g;->d:Lcom/tencent/feedback/eup/g;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcom/tencent/feedback/eup/g;

    invoke-direct {v0, p0}, Lcom/tencent/feedback/eup/g;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/feedback/eup/g;->d:Lcom/tencent/feedback/eup/g;

    .line 71
    :cond_0
    sget-object v0, Lcom/tencent/feedback/eup/g;->d:Lcom/tencent/feedback/eup/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/feedback/proguard/L;
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v8, 0x0

    .line 643
    if-eqz p2, :cond_0

    if-nez p1, :cond_2

    .line 644
    :cond_0
    const-string v1, "rqdp{  createZipAttachment sourcePath == null || context == null ,pls check}"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/feedback/common/e;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 688
    :cond_1
    :goto_0
    return-object v0

    .line 648
    :cond_2
    const-string v1, "rqdp{  zp}%s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v8

    invoke-static {v1, v2}, Lcom/tencent/feedback/common/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 649
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 650
    new-instance v3, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v3, v2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 652
    const/16 v2, 0x1388

    invoke-static {v1, v3, v2}, Lcom/tencent/feedback/proguard/a;->a(Ljava/io/File;Ljava/io/File;I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 653
    const-string v1, "rqdp{  fail!}"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/feedback/common/e;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 657
    :cond_3
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 660
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 661
    const/16 v4, 0x3e8

    :try_start_1
    new-array v4, v4, [B

    .line 663
    :goto_1
    invoke-virtual {v2, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_6

    .line 664
    const/4 v6, 0x0

    invoke-virtual {v1, v4, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 665
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 672
    :catch_0
    move-exception v1

    .line 673
    :goto_2
    :try_start_2
    invoke-static {v1}, Lcom/tencent/feedback/common/e;->a(Ljava/lang/Throwable;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 674
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 677
    :cond_4
    if-eqz v2, :cond_5

    .line 679
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 686
    :cond_5
    :goto_3
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 687
    const-string v1, "rqdp{  del tmp}"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/feedback/common/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 688
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 667
    :cond_6
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 668
    const-string v1, "rqdp{  re sz:}%d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    array-length v7, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v1, v5}, Lcom/tencent/feedback/common/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 670
    new-instance v1, Lcom/tencent/feedback/proguard/L;

    const/4 v5, 0x2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v5, v6, v4}, Lcom/tencent/feedback/proguard/L;-><init>(BLjava/lang/String;[B)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 677
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 686
    :cond_7
    :goto_4
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 687
    const-string v0, "rqdp{  del tmp}"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/feedback/common/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 688
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_8
    move-object v0, v1

    goto/16 :goto_0

    .line 680
    :catch_1
    move-exception v0

    .line 681
    invoke-static {v0}, Lcom/tencent/feedback/common/e;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 682
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 680
    :catch_2
    move-exception v1

    .line 681
    invoke-static {v1}, Lcom/tencent/feedback/common/e;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 682
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 677
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_5
    if-eqz v2, :cond_9

    .line 679
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 686
    :cond_9
    :goto_6
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 687
    const-string v1, "rqdp{  del tmp}"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/feedback/common/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 688
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_a
    throw v0

    .line 680
    :catch_3
    move-exception v1

    .line 681
    invoke-static {v1}, Lcom/tencent/feedback/common/e;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 682
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 677
    :catchall_1
    move-exception v0

    goto :goto_5

    .line 672
    :catch_4
    move-exception v1

    move-object v2, v0

    goto/16 :goto_2
.end method

.method private static a([BLjava/lang/String;)Lcom/tencent/feedback/proguard/L;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 512
    if-eqz p0, :cond_0

    array-length v0, p0

    if-lez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 525
    :goto_0
    return-object v0

    .line 515
    :cond_1
    :try_start_0
    new-instance v0, Lcom/tencent/feedback/proguard/L;

    invoke-direct {v0}, Lcom/tencent/feedback/proguard/L;-><init>()V

    .line 516
    const/4 v2, 0x1

    iput-byte v2, v0, Lcom/tencent/feedback/proguard/L;->a:B

    .line 518
    iput-object p1, v0, Lcom/tencent/feedback/proguard/L;->b:Ljava/lang/String;

    .line 519
    iput-object p0, v0, Lcom/tencent/feedback/proguard/L;->c:[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 522
    :catch_0
    move-exception v0

    .line 523
    invoke-static {v0}, Lcom/tencent/feedback/common/e;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 524
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    move-object v0, v1

    .line 525
    goto :goto_0
.end method

.method private a(Landroid/content/Context;Lcom/tencent/feedback/eup/e;)Lcom/tencent/feedback/proguard/M;
    .locals 12

    .prologue
    const/4 v8, 0x2

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 260
    if-nez p2, :cond_0

    .line 261
    const-string v2, "rqdp{  params!}"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/feedback/common/e;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object v2, v4

    .line 500
    :goto_0
    return-object v2

    .line 265
    :cond_0
    const-string v2, "rqdp{  pack n:}%s , rqdp{  iM:}%b , rqdp{  tp:}%d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/tencent/feedback/eup/e;->f()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v7

    invoke-virtual {p2}, Lcom/tencent/feedback/eup/e;->c()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v6

    invoke-virtual {p2}, Lcom/tencent/feedback/eup/e;->S()B

    move-result v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v8

    invoke-static {v2, v3}, Lcom/tencent/feedback/common/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 268
    :try_start_0
    invoke-virtual {p2}, Lcom/tencent/feedback/eup/e;->d()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 272
    invoke-virtual {p2}, Lcom/tencent/feedback/eup/e;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "201"

    .line 286
    :goto_1
    new-instance v5, Lcom/tencent/feedback/proguard/M;

    invoke-direct {v5}, Lcom/tencent/feedback/proguard/M;-><init>()V

    .line 287
    iput-object v2, v5, Lcom/tencent/feedback/proguard/M;->a:Ljava/lang/String;

    .line 289
    invoke-virtual {p2}, Lcom/tencent/feedback/eup/e;->i()J

    move-result-wide v2

    iput-wide v2, v5, Lcom/tencent/feedback/proguard/M;->b:J

    .line 291
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/tencent/feedback/eup/e;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/tencent/feedback/proguard/M;->c:Ljava/lang/String;

    .line 293
    invoke-virtual {p2}, Lcom/tencent/feedback/eup/e;->f()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/tencent/feedback/proguard/M;->d:Ljava/lang/String;

    .line 295
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/tencent/feedback/eup/e;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/tencent/feedback/proguard/M;->e:Ljava/lang/String;

    .line 297
    invoke-virtual {p2}, Lcom/tencent/feedback/eup/e;->D()Ljava/util/Map;

    move-result-object v2

    iput-object v2, v5, Lcom/tencent/feedback/proguard/M;->h:Ljava/util/Map;

    .line 299
    invoke-virtual {p2}, Lcom/tencent/feedback/eup/e;->h()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/tencent/feedback/proguard/M;->g:Ljava/lang/String;

    .line 301
    invoke-virtual {p2}, Lcom/tencent/feedback/eup/e;->w()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/tencent/feedback/proguard/M;->i:Ljava/lang/String;

    .line 303
    invoke-virtual {p2}, Lcom/tencent/feedback/eup/e;->k()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/tencent/feedback/proguard/M;->k:Ljava/lang/String;

    .line 305
    invoke-virtual {p2}, Lcom/tencent/feedback/eup/e;->E()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/tencent/feedback/proguard/M;->l:Ljava/lang/String;

    .line 307
    invoke-virtual {p2}, Lcom/tencent/feedback/eup/e;->s()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/tencent/feedback/proguard/M;->f:Ljava/lang/String;

    .line 310
    invoke-virtual {p2}, Lcom/tencent/feedback/eup/e;->v()Ljava/util/Map;

    move-result-object v3

    .line 311
    const-string v8, "plugin size :%d"

    const/4 v2, 0x1

    new-array v9, v2, [Ljava/lang/Object;

    const/4 v10, 0x0

    if-nez v3, :cond_9

    move v2, v7

    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v9, v10

    invoke-static {v8, v9}, Lcom/tencent/feedback/common/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 312
    if-eqz v3, :cond_a

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_a

    .line 313
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v5, Lcom/tencent/feedback/proguard/M;->n:Ljava/util/ArrayList;

    .line 314
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 315
    new-instance v9, Lcom/tencent/feedback/proguard/J;

    invoke-direct {v9}, Lcom/tencent/feedback/proguard/J;-><init>()V

    .line 316
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/feedback/common/PlugInInfo;

    iget-object v3, v3, Lcom/tencent/feedback/common/PlugInInfo;->plugInId:Ljava/lang/String;

    iput-object v3, v9, Lcom/tencent/feedback/proguard/J;->a:Ljava/lang/String;

    .line 317
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/feedback/common/PlugInInfo;

    iget-object v3, v3, Lcom/tencent/feedback/common/PlugInInfo;->plugInUUID:Ljava/lang/String;

    iput-object v3, v9, Lcom/tencent/feedback/proguard/J;->c:Ljava/lang/String;

    .line 318
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/feedback/common/PlugInInfo;

    iget-object v2, v2, Lcom/tencent/feedback/common/PlugInInfo;->plugInVersion:Ljava/lang/String;

    iput-object v2, v9, Lcom/tencent/feedback/proguard/J;->d:Ljava/lang/String;

    .line 319
    iget-object v2, v5, Lcom/tencent/feedback/proguard/M;->n:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 497
    :catch_0
    move-exception v2

    .line 498
    invoke-static {v2}, Lcom/tencent/feedback/common/e;->a(Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 499
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    move-object v2, v4

    .line 500
    goto/16 :goto_0

    .line 272
    :cond_2
    :try_start_1
    const-string v2, "101"

    goto/16 :goto_1

    .line 273
    :cond_3
    invoke-virtual {p2}, Lcom/tencent/feedback/eup/e;->y()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 275
    invoke-virtual {p2}, Lcom/tencent/feedback/eup/e;->c()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "203"

    goto/16 :goto_1

    :cond_4
    const-string v2, "103"

    goto/16 :goto_1

    .line 276
    :cond_5
    invoke-virtual {p2}, Lcom/tencent/feedback/eup/e;->b()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 278
    invoke-virtual {p2}, Lcom/tencent/feedback/eup/e;->c()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "200"

    goto/16 :goto_1

    :cond_6
    const-string v2, "100"

    goto/16 :goto_1

    .line 281
    :cond_7
    invoke-virtual {p2}, Lcom/tencent/feedback/eup/e;->c()Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "202"

    goto/16 :goto_1

    :cond_8
    const-string v2, "102"

    goto/16 :goto_1

    .line 311
    :cond_9
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v2

    goto/16 :goto_2

    .line 324
    :cond_a
    invoke-virtual {p2}, Lcom/tencent/feedback/eup/e;->c()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {p2}, Lcom/tencent/feedback/eup/e;->m()I

    move-result v2

    if-le v2, v6, :cond_c

    .line 325
    invoke-virtual {p2}, Lcom/tencent/feedback/eup/e;->m()I

    move-result v2

    iput v2, v5, Lcom/tencent/feedback/proguard/M;->j:I

    .line 326
    invoke-virtual {p2}, Lcom/tencent/feedback/eup/e;->l()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-virtual {p2}, Lcom/tencent/feedback/eup/e;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_c

    .line 327
    iget-object v2, v5, Lcom/tencent/feedback/proguard/M;->o:Ljava/util/ArrayList;

    if-nez v2, :cond_b

    .line 328
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v5, Lcom/tencent/feedback/proguard/M;->o:Ljava/util/ArrayList;

    .line 330
    :cond_b
    iget-object v2, v5, Lcom/tencent/feedback/proguard/M;->o:Ljava/util/ArrayList;

    new-instance v3, Lcom/tencent/feedback/proguard/L;

    const/4 v8, 0x1

    const-string v9, "alltimes.txt"

    invoke-virtual {p2}, Lcom/tencent/feedback/eup/e;->l()Ljava/lang/String;

    move-result-object v10

    const-string v11, "utf-8"

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    invoke-direct {v3, v8, v9, v10}, Lcom/tencent/feedback/proguard/L;-><init>(BLjava/lang/String;[B)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    :cond_c
    invoke-virtual {p2}, Lcom/tencent/feedback/eup/e;->n()[B

    move-result-object v2

    if-eqz v2, :cond_e

    .line 338
    iget-object v2, v5, Lcom/tencent/feedback/proguard/M;->o:Ljava/util/ArrayList;

    if-nez v2, :cond_d

    .line 339
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v5, Lcom/tencent/feedback/proguard/M;->o:Ljava/util/ArrayList;

    .line 341
    :cond_d
    iget-object v2, v5, Lcom/tencent/feedback/proguard/M;->o:Ljava/util/ArrayList;

    new-instance v3, Lcom/tencent/feedback/proguard/L;

    const/4 v8, 0x1

    const-string v9, "log.txt"

    invoke-virtual {p2}, Lcom/tencent/feedback/eup/e;->n()[B

    move-result-object v10

    invoke-direct {v3, v8, v9, v10}, Lcom/tencent/feedback/proguard/L;-><init>(BLjava/lang/String;[B)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    :cond_e
    invoke-virtual {p2}, Lcom/tencent/feedback/eup/e;->o()[B

    move-result-object v2

    if-eqz v2, :cond_10

    .line 348
    new-instance v2, Lcom/tencent/feedback/proguard/L;

    const/4 v3, 0x2

    const-string v8, "CustomLog.zip"

    invoke-virtual {p2}, Lcom/tencent/feedback/eup/e;->o()[B

    move-result-object v9

    invoke-direct {v2, v3, v8, v9}, Lcom/tencent/feedback/proguard/L;-><init>(BLjava/lang/String;[B)V

    .line 351
    const-string v3, "attach user log"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v3, v8}, Lcom/tencent/feedback/common/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 353
    iget-object v3, v5, Lcom/tencent/feedback/proguard/M;->o:Ljava/util/ArrayList;

    if-nez v3, :cond_f

    .line 354
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v5, Lcom/tencent/feedback/proguard/M;->o:Ljava/util/ArrayList;

    .line 355
    :cond_f
    iget-object v3, v5, Lcom/tencent/feedback/proguard/M;->o:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    :cond_10
    invoke-virtual {p2}, Lcom/tencent/feedback/eup/e;->t()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_12

    invoke-virtual {p2}, Lcom/tencent/feedback/eup/e;->y()Z

    move-result v2

    if-nez v2, :cond_12

    .line 361
    invoke-virtual {p2}, Lcom/tencent/feedback/eup/e;->t()Ljava/lang/String;

    move-result-object v2

    const-string v3, "utf8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const-string v3, "extraMessage.txt"

    invoke-static {v2, v3}, Lcom/tencent/feedback/eup/g;->a([BLjava/lang/String;)Lcom/tencent/feedback/proguard/L;

    move-result-object v2

    .line 363
    if-eqz v2, :cond_12

    .line 364
    iget-object v3, v5, Lcom/tencent/feedback/proguard/M;->o:Ljava/util/ArrayList;

    if-nez v3, :cond_11

    .line 365
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v5, Lcom/tencent/feedback/proguard/M;->o:Ljava/util/ArrayList;

    .line 367
    :cond_11
    const-string v3, "rqdp{  attach extra msg}"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v3, v8}, Lcom/tencent/feedback/common/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 368
    iget-object v3, v5, Lcom/tencent/feedback/proguard/M;->o:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    :cond_12
    invoke-virtual {p2}, Lcom/tencent/feedback/eup/e;->u()[B

    move-result-object v2

    if-eqz v2, :cond_14

    .line 374
    invoke-virtual {p2}, Lcom/tencent/feedback/eup/e;->u()[B

    move-result-object v2

    const-string v3, "extraDatas.txt"

    invoke-static {v2, v3}, Lcom/tencent/feedback/eup/g;->a([BLjava/lang/String;)Lcom/tencent/feedback/proguard/L;

    move-result-object v2

    .line 375
    if-eqz v2, :cond_14

    .line 376
    const-string v3, "rqdp{  attach extra datas}"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v3, v8}, Lcom/tencent/feedback/common/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 377
    iget-object v3, v5, Lcom/tencent/feedback/proguard/M;->o:Ljava/util/ArrayList;

    if-nez v3, :cond_13

    .line 378
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v5, Lcom/tencent/feedback/proguard/M;->o:Ljava/util/ArrayList;

    .line 380
    :cond_13
    iget-object v3, v5, Lcom/tencent/feedback/proguard/M;->o:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    :cond_14
    invoke-virtual {p2}, Lcom/tencent/feedback/eup/e;->d()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual {p2}, Lcom/tencent/feedback/eup/e;->q()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_15

    .line 386
    const-string v2, "tomb.zip"

    invoke-virtual {p2}, Lcom/tencent/feedback/eup/e;->q()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, p1, v3}, Lcom/tencent/feedback/eup/g;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/feedback/proguard/L;

    move-result-object v2

    .line 388
    if-eqz v2, :cond_15

    .line 389
    const-string v3, "attach tomb"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v3, v8}, Lcom/tencent/feedback/common/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 390
    iget-object v3, v5, Lcom/tencent/feedback/proguard/M;->o:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    :cond_15
    invoke-virtual {p2}, Lcom/tencent/feedback/eup/e;->y()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-virtual {p2}, Lcom/tencent/feedback/eup/e;->q()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_17

    .line 395
    iget-object v2, v5, Lcom/tencent/feedback/proguard/M;->o:Ljava/util/ArrayList;

    if-nez v2, :cond_16

    .line 396
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v5, Lcom/tencent/feedback/proguard/M;->o:Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 400
    :cond_16
    :try_start_2
    iget-object v2, v5, Lcom/tencent/feedback/proguard/M;->o:Ljava/util/ArrayList;

    new-instance v3, Lcom/tencent/feedback/proguard/L;

    const/4 v8, 0x1

    const-string v9, "anrMessage.txt"

    invoke-virtual {p2}, Lcom/tencent/feedback/eup/e;->t()Ljava/lang/String;

    move-result-object v10

    const-string v11, "utf8"

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    invoke-direct {v3, v8, v9, v10}, Lcom/tencent/feedback/proguard/L;-><init>(BLjava/lang/String;[B)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    const-string v2, "attach anr message"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/feedback/common/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 408
    :goto_4
    :try_start_3
    const-string v2, "trace.zip"

    invoke-virtual {p2}, Lcom/tencent/feedback/eup/e;->q()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, p1, v3}, Lcom/tencent/feedback/eup/g;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/feedback/proguard/L;

    move-result-object v2

    .line 410
    if-eqz v2, :cond_17

    .line 411
    const-string v3, "attach traces"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v3, v8}, Lcom/tencent/feedback/common/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 412
    iget-object v3, v5, Lcom/tencent/feedback/proguard/M;->o:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    :cond_17
    invoke-static {p1}, Lcom/tencent/feedback/common/c;->a(Landroid/content/Context;)Lcom/tencent/feedback/common/c;

    move-result-object v2

    .line 416
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v5, Lcom/tencent/feedback/proguard/M;->p:Ljava/util/Map;

    .line 417
    iget-object v3, v5, Lcom/tencent/feedback/proguard/M;->p:Ljava/util/Map;

    const-string v8, "A9"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/tencent/feedback/eup/e;->I()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    iget-object v3, v5, Lcom/tencent/feedback/proguard/M;->p:Ljava/util/Map;

    const-string v8, "A11"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/tencent/feedback/eup/e;->J()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    iget-object v3, v5, Lcom/tencent/feedback/proguard/M;->p:Ljava/util/Map;

    const-string v8, "A10"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/tencent/feedback/eup/e;->K()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    iget-object v3, v5, Lcom/tencent/feedback/proguard/M;->p:Ljava/util/Map;

    const-string v8, "A23"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/tencent/feedback/eup/e;->Q()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    iget-object v3, v5, Lcom/tencent/feedback/proguard/M;->p:Ljava/util/Map;

    const-string v8, "A7"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/tencent/feedback/common/c;->e()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    iget-object v3, v5, Lcom/tencent/feedback/proguard/M;->p:Ljava/util/Map;

    const-string v8, "A6"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/tencent/feedback/common/c;->x()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    iget-object v3, v5, Lcom/tencent/feedback/proguard/M;->p:Ljava/util/Map;

    const-string v8, "A5"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/tencent/feedback/common/c;->w()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    iget-object v3, v5, Lcom/tencent/feedback/proguard/M;->p:Ljava/util/Map;

    const-string v8, "A22"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/tencent/feedback/common/c;->i()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    iget-object v3, v5, Lcom/tencent/feedback/proguard/M;->p:Ljava/util/Map;

    const-string v8, "A2"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/tencent/feedback/eup/e;->M()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    iget-object v3, v5, Lcom/tencent/feedback/proguard/M;->p:Ljava/util/Map;

    const-string v8, "A1"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/tencent/feedback/eup/e;->L()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    iget-object v3, v5, Lcom/tencent/feedback/proguard/M;->p:Ljava/util/Map;

    const-string v8, "A24"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/tencent/feedback/common/c;->g()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    iget-object v3, v5, Lcom/tencent/feedback/proguard/M;->p:Ljava/util/Map;

    const-string v8, "A17"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/tencent/feedback/eup/e;->N()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    iget-object v3, v5, Lcom/tencent/feedback/proguard/M;->p:Ljava/util/Map;

    const-string v8, "A3"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/tencent/feedback/common/c;->p()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    iget-object v3, v5, Lcom/tencent/feedback/proguard/M;->p:Ljava/util/Map;

    const-string v8, "A16"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/tencent/feedback/common/c;->r()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    iget-object v3, v5, Lcom/tencent/feedback/proguard/M;->p:Ljava/util/Map;

    const-string v8, "A25"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/tencent/feedback/common/c;->s()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    iget-object v3, v5, Lcom/tencent/feedback/proguard/M;->p:Ljava/util/Map;

    const-string v8, "A14"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/tencent/feedback/common/c;->q()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    iget-object v3, v5, Lcom/tencent/feedback/proguard/M;->p:Ljava/util/Map;

    const-string v8, "A15"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/tencent/feedback/common/c;->A()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    iget-object v3, v5, Lcom/tencent/feedback/proguard/M;->p:Ljava/util/Map;

    const-string v8, "A13"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/tencent/feedback/common/c;->D()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    iget-object v3, v5, Lcom/tencent/feedback/proguard/M;->p:Ljava/util/Map;

    const-string v8, "A34"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/tencent/feedback/eup/e;->r()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    iget-object v3, v5, Lcom/tencent/feedback/proguard/M;->p:Ljava/util/Map;

    const-string v8, "A30"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/tencent/feedback/eup/e;->C()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    iget-object v3, v5, Lcom/tencent/feedback/proguard/M;->p:Ljava/util/Map;

    const-string v8, "productIdentify"

    invoke-virtual {v2}, Lcom/tencent/feedback/common/c;->l()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_1c

    invoke-virtual {v2}, Lcom/tencent/feedback/common/c;->l()Ljava/lang/String;

    move-result-object v2

    :goto_5
    invoke-interface {v3, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/tencent/feedback/eup/e;->F()Z

    move-result v2

    if-nez v2, :cond_1d

    move v2, v6

    :goto_6
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/tencent/feedback/eup/e;->G()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 444
    iget-object v3, v5, Lcom/tencent/feedback/proguard/M;->p:Ljava/util/Map;

    const-string v6, "A36"

    invoke-interface {v3, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    invoke-virtual {p2}, Lcom/tencent/feedback/eup/e;->d()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 447
    iget-object v2, v5, Lcom/tencent/feedback/proguard/M;->p:Ljava/util/Map;

    const-string v3, "A27"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/tencent/feedback/eup/e;->B()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    iget-object v2, v5, Lcom/tencent/feedback/proguard/M;->p:Ljava/util/Map;

    const-string v3, "A28"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/tencent/feedback/eup/e;->A()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    iget-object v2, v5, Lcom/tencent/feedback/proguard/M;->p:Ljava/util/Map;

    const-string v3, "A29"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/tencent/feedback/eup/e;->H()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    :cond_18
    invoke-static {p1}, Lcom/tencent/feedback/eup/g;->b(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    .line 455
    if-eqz v2, :cond_19

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_19

    .line 456
    iput-object v2, v5, Lcom/tencent/feedback/proguard/M;->m:Ljava/util/ArrayList;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 459
    :cond_19
    :try_start_4
    iget-object v2, v5, Lcom/tencent/feedback/proguard/M;->p:Ljava/util/Map;

    const-string v3, "A26"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/tencent/feedback/eup/e;->z()Ljava/lang/String;

    move-result-object v7

    const-string v8, "utf-8"

    invoke-static {v7, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 473
    :try_start_5
    iget v2, p2, Lcom/tencent/feedback/eup/e;->a:I

    if-ltz v2, :cond_1a

    .line 474
    iget-object v2, v5, Lcom/tencent/feedback/proguard/M;->p:Ljava/util/Map;

    const-string v3, "C01"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p2, Lcom/tencent/feedback/eup/e;->a:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    :cond_1a
    iget v2, p2, Lcom/tencent/feedback/eup/e;->b:I

    if-ltz v2, :cond_1b

    .line 478
    iget-object v2, v5, Lcom/tencent/feedback/proguard/M;->p:Ljava/util/Map;

    const-string v3, "C02"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p2, Lcom/tencent/feedback/eup/e;->b:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    :cond_1b
    iget-object v2, p2, Lcom/tencent/feedback/eup/e;->c:Ljava/util/Map;

    if-eqz v2, :cond_1f

    iget-object v2, p2, Lcom/tencent/feedback/eup/e;->c:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_1f

    .line 482
    iget-object v2, p2, Lcom/tencent/feedback/eup/e;->c:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/util/Map$Entry;

    move-object v3, v0

    .line 483
    iget-object v7, v5, Lcom/tencent/feedback/proguard/M;->p:Ljava/util/Map;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v2, "C03_"

    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v7, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 403
    :catch_1
    move-exception v2

    .line 404
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 405
    const/4 v2, 0x0

    iput-object v2, v5, Lcom/tencent/feedback/proguard/M;->o:Ljava/util/ArrayList;

    goto/16 :goto_4

    .line 437
    :cond_1c
    invoke-virtual {v2}, Lcom/tencent/feedback/common/c;->m()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_5

    :cond_1d
    move v2, v7

    .line 442
    goto/16 :goto_6

    .line 461
    :catch_2
    move-exception v2

    .line 462
    invoke-static {v2}, Lcom/tencent/feedback/common/e;->a(Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 463
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_1e
    move-object v2, v4

    .line 465
    goto/16 :goto_0

    .line 488
    :cond_1f
    iget-object v2, p2, Lcom/tencent/feedback/eup/e;->d:Ljava/util/Map;

    if-eqz v2, :cond_20

    iget-object v2, p2, Lcom/tencent/feedback/eup/e;->d:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_20

    .line 489
    iget-object v2, p2, Lcom/tencent/feedback/eup/e;->d:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 490
    iget-object v7, v5, Lcom/tencent/feedback/proguard/M;->p:Ljava/util/Map;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v3, "C04_"

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v7, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_8

    :cond_20
    move-object v2, v5

    .line 496
    goto/16 :goto_0
.end method

.method private a(Landroid/content/Context;Ljava/util/List;)Lcom/tencent/feedback/proguard/N;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/feedback/eup/e;",
            ">;)",
            "Lcom/tencent/feedback/proguard/N;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 216
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_2

    .line 217
    :cond_0
    const-string v0, "rqdp{  params!}"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/feedback/common/e;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object v0, v1

    .line 252
    :cond_1
    :goto_0
    return-object v0

    .line 222
    :cond_2
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 223
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 224
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/feedback/eup/e;

    .line 225
    invoke-static {p1}, Lcom/tencent/feedback/common/c;->a(Landroid/content/Context;)Lcom/tencent/feedback/common/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/feedback/common/c;->C()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/tencent/feedback/eup/e;->Q()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 227
    const-string v5, "updated drop it"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/tencent/feedback/common/e;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 228
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 249
    :catch_0
    move-exception v0

    .line 250
    invoke-static {v0}, Lcom/tencent/feedback/common/e;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 251
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    move-object v0, v1

    .line 252
    goto :goto_0

    .line 232
    :cond_4
    :try_start_1
    invoke-direct {p0, p1, v0}, Lcom/tencent/feedback/eup/g;->a(Landroid/content/Context;Lcom/tencent/feedback/eup/e;)Lcom/tencent/feedback/proguard/M;

    move-result-object v5

    .line 233
    if-eqz v5, :cond_5

    .line 234
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 236
    :cond_5
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 239
    :cond_6
    new-instance v0, Lcom/tencent/feedback/proguard/N;

    invoke-direct {v0}, Lcom/tencent/feedback/proguard/N;-><init>()V

    .line 240
    iput-object v2, v0, Lcom/tencent/feedback/proguard/N;->a:Ljava/util/ArrayList;

    .line 242
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 244
    invoke-static {p1, v3}, Lcom/tencent/feedback/eup/b;->a(Landroid/content/Context;Ljava/util/List;)I

    move-result v2

    .line 245
    const-string v4, "rqdp{ delete error eup} %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Lcom/tencent/feedback/common/e;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 246
    invoke-interface {p2, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private static a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/feedback/eup/e;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 729
    if-eqz p0, :cond_0

    .line 730
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/feedback/eup/e;

    .line 731
    invoke-virtual {v0}, Lcom/tencent/feedback/eup/e;->j()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lcom/tencent/feedback/eup/e;->a(I)V

    goto :goto_0

    .line 734
    :cond_0
    return-void
.end method

.method private static b(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/feedback/proguard/J;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x0

    .line 696
    :try_start_0
    invoke-static {p0}, Lcom/tencent/feedback/common/c;->a(Landroid/content/Context;)Lcom/tencent/feedback/common/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/feedback/common/c;->B()Ljava/util/List;

    move-result-object v0

    .line 698
    if-nez v0, :cond_0

    .line 699
    const-string v0, "no setted solist from db"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/feedback/common/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 700
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v3, 0x32

    invoke-static {p0, v0, v1, v3}, Lcom/tencent/feedback/proguard/m;->a(Landroid/content/Context;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    .line 702
    :cond_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 703
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 704
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/feedback/proguard/p;

    .line 705
    new-instance v4, Lcom/tencent/feedback/proguard/J;

    invoke-direct {v4}, Lcom/tencent/feedback/proguard/J;-><init>()V

    .line 706
    invoke-virtual {v0}, Lcom/tencent/feedback/proguard/p;->f()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/tencent/feedback/proguard/J;->b:Ljava/lang/String;

    .line 707
    invoke-virtual {v0}, Lcom/tencent/feedback/proguard/p;->a()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/tencent/feedback/proguard/J;->a:Ljava/lang/String;

    .line 708
    invoke-virtual {v0}, Lcom/tencent/feedback/proguard/p;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/tencent/feedback/proguard/J;->c:Ljava/lang/String;

    .line 709
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 710
    const-string v0, "up %s %s %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, v4, Lcom/tencent/feedback/proguard/J;->b:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, v4, Lcom/tencent/feedback/proguard/J;->a:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget-object v4, v4, Lcom/tencent/feedback/proguard/J;->c:Ljava/lang/String;

    aput-object v4, v5, v6

    invoke-static {v0, v5}, Lcom/tencent/feedback/common/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 714
    :catch_0
    move-exception v0

    .line 715
    invoke-static {v0}, Lcom/tencent/feedback/common/e;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 716
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 717
    :cond_1
    const-string v0, "rqdp{  Error: lb pack fail!}"

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/feedback/common/e;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_2
    move-object v0, v2

    .line 720
    :goto_1
    return-object v0

    :cond_3
    move-object v0, v1

    .line 712
    goto :goto_1
.end method

.method private b(Landroid/content/Context;I)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/feedback/eup/e;",
            ">;"
        }
    .end annotation

    .prologue
    .line 177
    const-string v2, "rqdp{  get MN:}%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/tencent/feedback/common/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 179
    if-eqz p1, :cond_0

    if-gtz p2, :cond_1

    .line 180
    :cond_0
    const-string v2, "rqdp{  params!}"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/feedback/common/e;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 181
    const/4 v2, 0x0

    .line 210
    :goto_0
    return-object v2

    .line 186
    :cond_1
    :try_start_0
    const-string v5, "desc"

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v11, 0x3

    const-wide/16 v14, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    const-wide/16 v12, -0x1

    const/16 v16, 0x0

    move-object/from16 v3, p1

    move/from16 v4, p2

    invoke-static/range {v3 .. v16}, Lcom/tencent/feedback/eup/b;->a(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;IIIIJJLjava/lang/Boolean;)Ljava/util/List;

    move-result-object v2

    .line 190
    if-nez v2, :cond_2

    .line 191
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 193
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, p2

    if-ge v3, v0, :cond_3

    .line 194
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    sub-int v4, p2, v3

    const-string v5, "desc"

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v11, 0x3

    const-wide/16 v14, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    const-wide/16 v12, -0x1

    const/16 v16, 0x0

    move-object/from16 v3, p1

    invoke-static/range {v3 .. v16}, Lcom/tencent/feedback/eup/b;->a(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;IIIIJJLjava/lang/Boolean;)Ljava/util/List;

    move-result-object v3

    .line 199
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 200
    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 204
    :cond_3
    invoke-static {v2}, Lcom/tencent/feedback/eup/g;->a(Ljava/util/List;)V

    .line 205
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/tencent/feedback/eup/b;->b(Landroid/content/Context;Ljava/util/List;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 207
    :catch_0
    move-exception v2

    .line 208
    invoke-static {v2}, Lcom/tencent/feedback/common/e;->a(Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 209
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 210
    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized a()Lcom/tencent/feedback/proguard/O;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 105
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/feedback/eup/g;->e:Lcom/tencent/feedback/proguard/O;

    if-eqz v1, :cond_1

    .line 106
    iget-object v0, p0, Lcom/tencent/feedback/eup/g;->e:Lcom/tencent/feedback/proguard/O;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 108
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/tencent/feedback/eup/f;->l()Lcom/tencent/feedback/eup/f;

    move-result-object v1

    .line 110
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/tencent/feedback/eup/f;->a()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    :try_start_2
    invoke-static {}, Lcom/tencent/feedback/eup/f;->l()Lcom/tencent/feedback/eup/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/feedback/eup/f;->s()Lcom/tencent/feedback/eup/CrashStrategyBean;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    .line 124
    const/4 v2, 0x0

    :try_start_3
    iput-object v2, p0, Lcom/tencent/feedback/eup/g;->f:Ljava/util/List;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 126
    :try_start_4
    invoke-virtual {v1}, Lcom/tencent/feedback/eup/CrashStrategyBean;->isMerged()Z

    move-result v2

    .line 127
    iget-object v3, p0, Lcom/tencent/feedback/eup/g;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/feedback/common/h;->a(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v1}, Lcom/tencent/feedback/eup/CrashStrategyBean;->getMaxUploadNum_Wifi()I

    move-result v1

    .line 131
    :goto_1
    if-nez v2, :cond_6

    .line 132
    const-string v3, "rqdp{  not merge:}"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/tencent/feedback/common/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 134
    iget-object v3, p0, Lcom/tencent/feedback/eup/g;->c:Landroid/content/Context;

    invoke-direct {p0, v3, v1}, Lcom/tencent/feedback/eup/g;->b(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/feedback/eup/g;->f:Ljava/util/List;

    .line 141
    :goto_2
    iget-object v1, p0, Lcom/tencent/feedback/eup/g;->f:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/feedback/eup/g;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_7

    .line 142
    :cond_2
    const-string v1, "rqdp{  empty eup!}"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/feedback/common/e;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 162
    :catch_0
    move-exception v1

    .line 163
    :try_start_5
    invoke-static {v1}, Lcom/tencent/feedback/common/e;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 164
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 166
    :cond_3
    iget-object v1, p0, Lcom/tencent/feedback/eup/g;->f:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/feedback/eup/g;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 167
    iget-object v1, p0, Lcom/tencent/feedback/eup/g;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/feedback/eup/g;->f:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/tencent/feedback/eup/b;->a(Landroid/content/Context;Ljava/util/List;)I

    move-result v1

    .line 168
    const-string v2, "rqdp{ eup error remove} %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/tencent/feedback/common/e;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 169
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/feedback/eup/g;->f:Ljava/util/List;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 117
    :catch_1
    move-exception v1

    .line 118
    :try_start_6
    invoke-static {v1}, Lcom/tencent/feedback/common/e;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 119
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 120
    :cond_4
    const-string v2, "rqdp{  imposiable} %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/tencent/feedback/common/e;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 127
    :cond_5
    :try_start_7
    invoke-virtual {v1}, Lcom/tencent/feedback/eup/CrashStrategyBean;->getMaxUploadNum_GPRS()I

    move-result v1

    goto :goto_1

    .line 136
    :cond_6
    const-string v3, "rqdp{  in merge:}"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/tencent/feedback/common/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 138
    iget-object v3, p0, Lcom/tencent/feedback/eup/g;->c:Landroid/content/Context;

    invoke-virtual {p0, v3, v1}, Lcom/tencent/feedback/eup/g;->a(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/feedback/eup/g;->f:Ljava/util/List;

    goto :goto_2

    .line 146
    :cond_7
    const-string v1, "rqdp{  pack n:}%d ,isM:%b"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/tencent/feedback/eup/g;->f:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v3, v4

    invoke-static {v1, v3}, Lcom/tencent/feedback/common/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 148
    iget-object v1, p0, Lcom/tencent/feedback/eup/g;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/feedback/eup/g;->f:Ljava/util/List;

    invoke-direct {p0, v1, v2}, Lcom/tencent/feedback/eup/g;->a(Landroid/content/Context;Ljava/util/List;)Lcom/tencent/feedback/proguard/N;

    move-result-object v1

    .line 150
    if-eqz v1, :cond_0

    .line 152
    invoke-static {v1}, Lcom/tencent/feedback/proguard/a;->a(Lcom/tencent/feedback/proguard/j;)[B

    move-result-object v1

    .line 153
    if-nez v1, :cond_8

    .line 154
    const-string v1, "rqdp{  empty edatas!}"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/feedback/common/e;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 158
    :cond_8
    iget-object v2, p0, Lcom/tencent/feedback/eup/g;->c:Landroid/content/Context;

    iget v3, p0, Lcom/tencent/feedback/eup/g;->a:I

    invoke-static {v2, v3, v1}, Lcom/tencent/feedback/eup/g;->a(Landroid/content/Context;I[B)Lcom/tencent/feedback/proguard/O;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/feedback/eup/g;->e:Lcom/tencent/feedback/proguard/O;

    .line 159
    iget-object v0, p0, Lcom/tencent/feedback/eup/g;->e:Lcom/tencent/feedback/proguard/O;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0
.end method

.method protected final a(Landroid/content/Context;I)Ljava/util/List;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/feedback/eup/e;",
            ">;"
        }
    .end annotation

    .prologue
    .line 585
    const-string v2, "rqdp{  getEupInMe}"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/feedback/common/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 587
    if-eqz p1, :cond_0

    if-gtz p2, :cond_1

    .line 588
    :cond_0
    const-string v2, "rqdp{  params!}"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/feedback/common/e;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 589
    const/4 v2, 0x0

    .line 639
    :goto_0
    return-object v2

    .line 594
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/tencent/feedback/proguard/a;->c()J

    move-result-wide v12

    .line 595
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 598
    const-string v5, "desc"

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, 0x3

    const-wide/16 v14, -0x1

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    move-object/from16 v3, p1

    move/from16 v4, p2

    invoke-static/range {v3 .. v16}, Lcom/tencent/feedback/eup/b;->a(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;IIIIJJLjava/lang/Boolean;)Ljava/util/List;

    move-result-object v3

    .line 601
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 602
    const-string v4, "rqdp{  tdeup ge c=1, n:}%d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/tencent/feedback/common/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 603
    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 604
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 608
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, p2

    if-ge v3, v0, :cond_3

    .line 609
    const-string v17, "desc"

    const/16 v18, -0x1

    const/16 v19, 0x0

    const/16 v20, 0x2

    const/16 v23, 0x3

    const/16 v21, -0x1

    const/16 v22, -0x1

    const-wide/16 v24, -0x1

    const/16 v28, 0x0

    move-object/from16 v15, p1

    move/from16 v16, p2

    move-wide/from16 v26, v12

    invoke-static/range {v15 .. v28}, Lcom/tencent/feedback/eup/b;->a(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;IIIIJJLjava/lang/Boolean;)Ljava/util/List;

    move-result-object v3

    .line 612
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 613
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "rqdp{  yeseup c>=2,n:}%d"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/tencent/feedback/common/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 614
    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 615
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 620
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, p2

    if-ge v3, v0, :cond_4

    .line 621
    const-string v17, "desc"

    const/16 v18, -0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, -0x1

    const/16 v23, -0x1

    const-wide/16 v24, 0x3

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    move-object/from16 v15, p1

    move/from16 v16, p2

    move-wide/from16 v26, v12

    invoke-static/range {v15 .. v28}, Lcom/tencent/feedback/eup/b;->a(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;IIIIJJLjava/lang/Boolean;)Ljava/util/List;

    move-result-object v3

    .line 624
    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 625
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "rqdp{  yeseup c>=2,n:}%d"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/tencent/feedback/common/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 626
    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 627
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 632
    :cond_4
    invoke-static {v2}, Lcom/tencent/feedback/eup/g;->a(Ljava/util/List;)V

    .line 633
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/tencent/feedback/eup/b;->b(Landroid/content/Context;Ljava/util/List;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 635
    :catch_0
    move-exception v2

    .line 636
    invoke-static {v2}, Lcom/tencent/feedback/common/e;->a(Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 637
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 639
    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public final declared-synchronized done(Z)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 532
    monitor-enter p0

    :try_start_0
    const-string v2, "rqdp{  eupdone :} %s"

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    const-string v0, "SUCC"

    :goto_0
    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/tencent/feedback/common/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 533
    iget-object v0, p0, Lcom/tencent/feedback/eup/g;->f:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    .line 536
    :try_start_1
    invoke-static {}, Lcom/tencent/feedback/eup/f;->l()Lcom/tencent/feedback/eup/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/feedback/eup/f;->s()Lcom/tencent/feedback/eup/CrashStrategyBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/feedback/eup/CrashStrategyBean;->isMerged()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 544
    :goto_1
    if-eqz v0, :cond_5

    .line 546
    :try_start_2
    invoke-static {}, Lcom/tencent/feedback/proguard/a;->c()J

    move-result-wide v2

    .line 547
    iget-object v0, p0, Lcom/tencent/feedback/eup/g;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 549
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 550
    :cond_0
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 552
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/feedback/eup/e;

    .line 553
    invoke-virtual {v0}, Lcom/tencent/feedback/eup/e;->i()J

    move-result-wide v6

    cmp-long v5, v6, v2

    if-lez v5, :cond_0

    .line 555
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/tencent/feedback/eup/e;->b(Z)V

    .line 556
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/tencent/feedback/eup/e;->a(I)V

    .line 557
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 558
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 532
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_3
    const-string v0, "FAIL"

    goto :goto_0

    .line 539
    :catch_0
    move-exception v0

    .line 540
    invoke-static {v0}, Lcom/tencent/feedback/common/e;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 541
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    move v0, v1

    goto :goto_1

    .line 562
    :cond_3
    iget-object v0, p0, Lcom/tencent/feedback/eup/g;->c:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/tencent/feedback/eup/b;->b(Landroid/content/Context;Ljava/util/List;)Z

    move-result v0

    .line 563
    const-string v1, "rqdp{  merge update today eup n:}%d , res:%b"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/tencent/feedback/eup/g;->f:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/feedback/common/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 565
    iget-object v0, p0, Lcom/tencent/feedback/eup/g;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/feedback/eup/g;->f:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/tencent/feedback/eup/b;->a(Landroid/content/Context;Ljava/util/List;)I

    move-result v0

    .line 566
    const-string v1, "rqdp{  me rm num:}%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/feedback/common/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 578
    :cond_4
    :goto_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/feedback/eup/g;->e:Lcom/tencent/feedback/proguard/O;

    .line 579
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/feedback/eup/g;->f:Ljava/util/List;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 581
    monitor-exit p0

    return-void

    .line 570
    :cond_5
    :try_start_4
    iget-object v0, p0, Lcom/tencent/feedback/eup/g;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/feedback/eup/g;->f:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/tencent/feedback/eup/b;->a(Landroid/content/Context;Ljava/util/List;)I

    move-result v0

    .line 571
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "rqdp{  rm n:}"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/feedback/common/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3
.end method
