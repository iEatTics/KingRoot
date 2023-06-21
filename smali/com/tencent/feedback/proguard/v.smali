.class public final Lcom/tencent/feedback/proguard/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static a:J


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/tencent/feedback/proguard/v;->a:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/feedback/proguard/v;->b:Landroid/content/Context;

    .line 32
    iput-object p1, p0, Lcom/tencent/feedback/proguard/v;->b:Landroid/content/Context;

    .line 33
    return-void
.end method

.method private static declared-synchronized a()J
    .locals 4

    .prologue
    .line 36
    const-class v0, Lcom/tencent/feedback/proguard/v;

    monitor-enter v0

    :try_start_0
    sget-wide v2, Lcom/tencent/feedback/proguard/v;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-wide v2

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(J)V
    .locals 2

    .prologue
    .line 40
    const-class v0, Lcom/tencent/feedback/proguard/v;

    monitor-enter v0

    :try_start_0
    sput-wide p0, Lcom/tencent/feedback/proguard/v;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    monitor-exit v0

    return-void

    .line 40
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private a(JJ)V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 185
    invoke-static {}, Lcom/tencent/feedback/proguard/u;->a()Lcom/tencent/feedback/upload/e;

    move-result-object v0

    .line 187
    iget-object v1, p0, Lcom/tencent/feedback/proguard/v;->b:Landroid/content/Context;

    invoke-static {}, Lcom/tencent/feedback/common/b;->b()Lcom/tencent/feedback/common/b;

    move-result-object v3

    invoke-static {v1, v3, v0}, Lcom/tencent/feedback/proguard/z;->a(Landroid/content/Context;Lcom/tencent/feedback/common/b;Lcom/tencent/feedback/upload/e;)Lcom/tencent/feedback/proguard/z;

    move-result-object v3

    .line 190
    invoke-virtual {v3}, Lcom/tencent/feedback/proguard/z;->b()Z

    move-result v4

    .line 191
    if-nez v4, :cond_0

    .line 192
    const-wide/32 v6, 0xea60

    invoke-virtual {v3, v6, v7}, Lcom/tencent/feedback/proguard/z;->a(J)Z

    .line 194
    :cond_0
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    add-long v8, p1, p3

    cmp-long v1, v6, v8

    if-gez v1, :cond_1

    .line 195
    const-string v0, "lastUpdate:%d ,return not query"

    new-array v1, v10, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/feedback/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 231
    :goto_0
    return-void

    :cond_1
    move v1, v2

    .line 201
    :goto_1
    if-nez v0, :cond_3

    add-int/lit8 v1, v1, 0x1

    const/4 v5, 0x5

    if-ge v1, v5, :cond_3

    .line 203
    const-string v0, "rqdp{  wait uphandler:} %d"

    new-array v5, v10, [Ljava/lang/Object;

    const/16 v6, 0xc8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v0, v5}, Lcom/tencent/feedback/common/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 204
    const-wide/16 v6, 0xc8

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :cond_2
    :goto_2
    invoke-static {}, Lcom/tencent/feedback/proguard/u;->a()Lcom/tencent/feedback/upload/e;

    move-result-object v0

    goto :goto_1

    .line 204
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/tencent/feedback/common/e;->a(Ljava/lang/Throwable;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 209
    :cond_3
    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/tencent/feedback/proguard/v;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/feedback/common/h;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 211
    if-nez v4, :cond_4

    iget-object v1, p0, Lcom/tencent/feedback/proguard/v;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/feedback/common/c;->a(Landroid/content/Context;)Lcom/tencent/feedback/common/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/feedback/common/c;->H()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/tencent/feedback/proguard/z;->b(Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_4

    .line 213
    const-string v1, "rqdp{  wait lanch record:} %d"

    new-array v4, v10, [Ljava/lang/Object;

    const/16 v5, 0x1f4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Lcom/tencent/feedback/common/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 214
    const-wide/16 v4, 0x1f4

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 217
    :cond_4
    :goto_3
    iget-object v1, p0, Lcom/tencent/feedback/proguard/v;->b:Landroid/content/Context;

    const/4 v4, 0x2

    invoke-static {v1, v3, v4}, Lcom/tencent/feedback/proguard/B;->a(Landroid/content/Context;Lcom/tencent/feedback/proguard/z;B)Lcom/tencent/feedback/proguard/T;

    move-result-object v1

    .line 220
    if-eqz v1, :cond_5

    .line 221
    const-string v3, "create uPkg fail!"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v2}, Lcom/tencent/feedback/common/e;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 223
    :cond_5
    new-instance v2, Lcom/tencent/feedback/proguard/w;

    iget-object v3, p0, Lcom/tencent/feedback/proguard/v;->b:Landroid/content/Context;

    const/16 v4, 0x457

    const/16 v5, 0x21c

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/tencent/feedback/proguard/w;-><init>(Landroid/content/Context;IILcom/tencent/feedback/proguard/T;)V

    .line 226
    invoke-interface {v0, v2}, Lcom/tencent/feedback/upload/e;->a(Lcom/tencent/feedback/upload/AbstractUploadDatas;)V

    goto :goto_0

    .line 214
    :catch_1
    move-exception v1

    invoke-static {v1}, Lcom/tencent/feedback/common/e;->a(Ljava/lang/Throwable;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    .line 229
    :cond_6
    const-string v0, "rqdp{  no uphandler or offline ,not query!!}"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/feedback/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private b()J
    .locals 5

    .prologue
    const/16 v2, 0x1fe

    .line 50
    iget-object v0, p0, Lcom/tencent/feedback/proguard/v;->b:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/tencent/feedback/proguard/a;->a(Landroid/content/Context;I)Lcom/tencent/feedback/proguard/A;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/tencent/feedback/proguard/A;->b()I

    move-result v1

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/tencent/feedback/proguard/A;->c()[B

    move-result-object v1

    if-eqz v1, :cond_1

    .line 55
    :try_start_0
    iget-object v1, p0, Lcom/tencent/feedback/proguard/v;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/feedback/proguard/u;->a(Landroid/content/Context;)Lcom/tencent/feedback/proguard/u;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/feedback/proguard/u;->c()Lcom/tencent/feedback/upload/d;

    move-result-object v1

    .line 57
    if-eqz v1, :cond_0

    .line 58
    const/16 v2, 0x1fe

    invoke-virtual {v0}, Lcom/tencent/feedback/proguard/A;->c()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/tencent/feedback/upload/d;->a(I[BZ)V

    .line 60
    const-string v1, "rqdp{  common strategy setted by history}"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/feedback/common/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 62
    :cond_0
    invoke-virtual {v0}, Lcom/tencent/feedback/proguard/A;->d()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 69
    :goto_0
    return-wide v0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    invoke-static {v0}, Lcom/tencent/feedback/common/e;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 65
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 69
    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method private c()V
    .locals 10

    .prologue
    const/4 v6, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 262
    const-string v0, "rqdp{  AppFirstRun } %s"

    new-array v1, v9, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/tencent/feedback/proguard/v;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/feedback/common/c;->a(Landroid/content/Context;)Lcom/tencent/feedback/common/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/feedback/common/c;->l()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Lcom/tencent/feedback/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 265
    iget-object v0, p0, Lcom/tencent/feedback/proguard/v;->b:Landroid/content/Context;

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    const-wide v4, 0x7fffffffffffffffL

    move v7, v6

    invoke-static/range {v0 .. v7}, Lcom/tencent/feedback/proguard/m;->a(Landroid/content/Context;[IJJII)I

    move-result v0

    .line 266
    const-string v1, "rqdp{  clear ao count} %d"

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v8

    invoke-static {v1, v2}, Lcom/tencent/feedback/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 269
    iget-object v0, p0, Lcom/tencent/feedback/proguard/v;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/feedback/proguard/u;->a(Landroid/content/Context;)Lcom/tencent/feedback/proguard/u;

    move-result-object v1

    .line 270
    monitor-enter v1

    .line 272
    :try_start_0
    invoke-virtual {v1}, Lcom/tencent/feedback/proguard/u;->d()[Lcom/tencent/feedback/proguard/t;

    move-result-object v2

    .line 273
    iget-object v0, p0, Lcom/tencent/feedback/proguard/v;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/feedback/proguard/u;->a(Landroid/content/Context;)Lcom/tencent/feedback/proguard/u;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/tencent/feedback/proguard/u;->a(Z)V

    .line 274
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    if-eqz v2, :cond_0

    .line 277
    array-length v1, v2

    move v0, v8

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v3, v2, v0

    .line 278
    invoke-interface {v3}, Lcom/tencent/feedback/proguard/t;->f()V

    .line 277
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 274
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 281
    :cond_0
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    .prologue
    .line 350
    invoke-direct/range {p0 .. p0}, Lcom/tencent/feedback/proguard/v;->b()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/feedback/proguard/v;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/feedback/proguard/u;->a(Landroid/content/Context;)Lcom/tencent/feedback/proguard/u;

    move-result-object v8

    invoke-virtual {v8}, Lcom/tencent/feedback/proguard/u;->b()Lcom/tencent/feedback/proguard/x;

    move-result-object v2

    if-nez v2, :cond_2

    const-wide/16 v2, -0x1

    move-wide v4, v2

    :goto_0
    invoke-virtual {v8}, Lcom/tencent/feedback/proguard/u;->e()I

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "rqdp{  onlaunch}"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/feedback/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Lcom/tencent/feedback/proguard/u;->a(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/feedback/proguard/v;->b:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/feedback/proguard/v;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/feedback/common/c;->a(Landroid/content/Context;)Lcom/tencent/feedback/common/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/feedback/common/c;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/feedback/common/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    :cond_0
    const-string v2, "not found apk %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    invoke-static {v2, v9}, Lcom/tencent/feedback/common/e;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_c

    invoke-direct/range {p0 .. p0}, Lcom/tencent/feedback/proguard/v;->c()V

    :cond_1
    :goto_2
    const-string v2, "rqdp{  on Query Start}"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/feedback/common/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    monitor-enter v8

    :try_start_0
    invoke-virtual {v8}, Lcom/tencent/feedback/proguard/u;->d()[Lcom/tencent/feedback/proguard/t;

    move-result-object v3

    const/4 v2, 0x2

    invoke-virtual {v8, v2}, Lcom/tencent/feedback/proguard/u;->a(I)V

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_d

    const-string v2, "rqdp{  notify Query Start}"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v2, v9}, Lcom/tencent/feedback/common/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    array-length v9, v3

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v9, :cond_d

    aget-object v10, v3, v2

    invoke-interface {v10}, Lcom/tencent/feedback/proguard/t;->d()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_2
    invoke-virtual {v2}, Lcom/tencent/feedback/proguard/x;->c()I

    move-result v2

    mul-int/lit16 v2, v2, 0xe10

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    move-wide v4, v2

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v9

    if-nez v9, :cond_5

    :cond_4
    const-string v2, "apk not exist or read %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    invoke-static {v2, v9}, Lcom/tencent/feedback/common/e;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 v2, 0x0

    goto :goto_1

    :cond_5
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/feedback/proguard/v;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/feedback/common/c;->a(Landroid/content/Context;)Lcom/tencent/feedback/common/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/feedback/common/c;->C()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/feedback/proguard/v;->b:Landroid/content/Context;

    const/4 v14, 0x0

    const/16 v15, 0xa

    invoke-static {v2, v3, v14, v15}, Lcom/tencent/feedback/proguard/m;->a(Landroid/content/Context;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v14

    const/4 v2, 0x0

    if-eqz v14, :cond_6

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    if-lez v15, :cond_6

    const/4 v2, 0x0

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/feedback/proguard/p;

    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tencent/feedback/proguard/v;->b:Landroid/content/Context;

    invoke-static {v15}, Lcom/tencent/feedback/common/c;->a(Landroid/content/Context;)Lcom/tencent/feedback/common/c;

    move-result-object v15

    if-nez v2, :cond_7

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Lcom/tencent/feedback/proguard/p;

    invoke-direct {v14}, Lcom/tencent/feedback/proguard/p;-><init>()V

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/tencent/feedback/proguard/p;->a(I)V

    invoke-virtual {v14, v3}, Lcom/tencent/feedback/proguard/p;->a(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/tencent/feedback/common/c;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Lcom/tencent/feedback/proguard/p;->b(Ljava/lang/String;)V

    invoke-virtual {v14, v9}, Lcom/tencent/feedback/proguard/p;->c(Ljava/lang/String;)V

    invoke-virtual {v14, v10, v11}, Lcom/tencent/feedback/proguard/p;->b(J)V

    invoke-virtual {v14, v12, v13}, Lcom/tencent/feedback/proguard/p;->c(J)V

    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/feedback/proguard/v;->b:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/tencent/feedback/proguard/m;->c(Landroid/content/Context;Ljava/util/List;)I

    const-string v2, "new app %s "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v14}, Lcom/tencent/feedback/proguard/p;->d()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v3, v9

    invoke-static {v2, v3}, Lcom/tencent/feedback/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_7
    invoke-virtual {v15}, Lcom/tencent/feedback/common/c;->n()Z

    move-result v16

    if-eqz v16, :cond_9

    invoke-virtual {v15}, Lcom/tencent/feedback/common/c;->m()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v2}, Lcom/tencent/feedback/proguard/p;->d()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/feedback/proguard/v;->b:Landroid/content/Context;

    invoke-static {v2, v14}, Lcom/tencent/feedback/proguard/m;->d(Landroid/content/Context;Ljava/util/List;)I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Lcom/tencent/feedback/proguard/p;

    invoke-direct {v14}, Lcom/tencent/feedback/proguard/p;-><init>()V

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/tencent/feedback/proguard/p;->a(I)V

    invoke-virtual {v14, v3}, Lcom/tencent/feedback/proguard/p;->a(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/tencent/feedback/common/c;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Lcom/tencent/feedback/proguard/p;->b(Ljava/lang/String;)V

    invoke-virtual {v14, v9}, Lcom/tencent/feedback/proguard/p;->c(Ljava/lang/String;)V

    invoke-virtual {v14, v10, v11}, Lcom/tencent/feedback/proguard/p;->b(J)V

    invoke-virtual {v14, v12, v13}, Lcom/tencent/feedback/proguard/p;->c(J)V

    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/feedback/proguard/v;->b:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/tencent/feedback/proguard/m;->c(Landroid/content/Context;Ljava/util/List;)I

    const-string v2, "new app %s "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v14}, Lcom/tencent/feedback/proguard/p;->d()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v3, v9

    invoke-static {v2, v3}, Lcom/tencent/feedback/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_9
    invoke-virtual {v2}, Lcom/tencent/feedback/proguard/p;->d()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_a

    invoke-virtual {v2}, Lcom/tencent/feedback/proguard/p;->f()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    invoke-virtual {v2}, Lcom/tencent/feedback/proguard/p;->b()J

    move-result-wide v16

    cmp-long v15, v10, v16

    if-nez v15, :cond_a

    invoke-virtual {v2}, Lcom/tencent/feedback/proguard/p;->c()J

    move-result-wide v16

    cmp-long v15, v12, v16

    if-nez v15, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/feedback/proguard/v;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/feedback/common/c;->a(Landroid/content/Context;)Lcom/tencent/feedback/common/c;

    move-result-object v3

    invoke-virtual {v2}, Lcom/tencent/feedback/proguard/p;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/tencent/feedback/common/c;->d(Ljava/lang/String;)V

    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tencent/feedback/proguard/v;->b:Landroid/content/Context;

    invoke-static {v15}, Lcom/tencent/feedback/common/c;->a(Landroid/content/Context;)Lcom/tencent/feedback/common/c;

    move-result-object v15

    invoke-virtual {v15}, Lcom/tencent/feedback/common/c;->m()Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_b

    const-string v2, "rqdp{  apkid get error!return false}"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/feedback/common/e;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_b
    invoke-virtual {v2}, Lcom/tencent/feedback/proguard/p;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/feedback/proguard/v;->b:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v0, v14}, Lcom/tencent/feedback/proguard/m;->d(Landroid/content/Context;Ljava/util/List;)I

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    new-instance v16, Lcom/tencent/feedback/proguard/p;

    invoke-direct/range {v16 .. v16}, Lcom/tencent/feedback/proguard/p;-><init>()V

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/tencent/feedback/proguard/p;->a(I)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/tencent/feedback/proguard/p;->a(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/tencent/feedback/proguard/p;->b(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Lcom/tencent/feedback/proguard/p;->c(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v10, v11}, Lcom/tencent/feedback/proguard/p;->b(J)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12, v13}, Lcom/tencent/feedback/proguard/p;->c(J)V

    move-object/from16 v0, v16

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/feedback/proguard/v;->b:Landroid/content/Context;

    invoke-static {v3, v14}, Lcom/tencent/feedback/proguard/m;->c(Landroid/content/Context;Ljava/util/List;)I

    const-string v3, "is new :%b %s "

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual/range {v16 .. v16}, Lcom/tencent/feedback/proguard/p;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v3, v9}, Lcom/tencent/feedback/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_c
    invoke-static {}, Lcom/tencent/feedback/proguard/v;->a()J

    move-result-wide v2

    const-wide/16 v10, 0x0

    cmp-long v9, v2, v10

    if-lez v9, :cond_1

    const-string v9, "rqdp{  delay:} %d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lcom/tencent/feedback/common/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v2

    invoke-static {v2}, Lcom/tencent/feedback/common/e;->a(Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_2

    :catchall_0
    move-exception v2

    monitor-exit v8

    throw v2

    :cond_d
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v4, v5}, Lcom/tencent/feedback/proguard/v;->a(JJ)V

    const-string v2, "rqdp{  on query end!}"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/feedback/common/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    monitor-enter v8

    :try_start_2
    invoke-virtual {v8}, Lcom/tencent/feedback/proguard/u;->d()[Lcom/tencent/feedback/proguard/t;

    move-result-object v3

    const/4 v2, 0x3

    invoke-virtual {v8, v2}, Lcom/tencent/feedback/proguard/u;->a(I)V

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v3, :cond_e

    const-string v2, "rqdp{  notify Query end}"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2, v6}, Lcom/tencent/feedback/common/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    array-length v6, v3

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v6, :cond_e

    aget-object v7, v3, v2

    invoke-interface {v7}, Lcom/tencent/feedback/proguard/t;->e()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :catchall_1
    move-exception v2

    monitor-exit v8

    throw v2

    :cond_e
    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-gtz v2, :cond_f

    const-string v2, "periodLimit %d return"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/tencent/feedback/common/e;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 351
    :goto_5
    return-void

    .line 350
    :cond_f
    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-lez v2, :cond_10

    invoke-static {}, Lcom/tencent/feedback/common/b;->b()Lcom/tencent/feedback/common/b;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v4, v5}, Lcom/tencent/feedback/common/b;->a(Ljava/lang/Runnable;J)Z

    const-string v2, "rqdp{  next time} %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/tencent/feedback/common/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/feedback/proguard/v;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/feedback/proguard/u;->a(Landroid/content/Context;)Lcom/tencent/feedback/proguard/u;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/tencent/feedback/proguard/u;->a(I)V

    goto :goto_5

    :cond_10
    const-string v2, "rqdp{  stop loop query}"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/feedback/common/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_5
.end method
