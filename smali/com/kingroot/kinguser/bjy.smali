.class public Lcom/kingroot/kinguser/bjy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/loader/sdk/service/IKlPackageManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/bjy$c;,
        Lcom/kingroot/kinguser/bjy$a;,
        Lcom/kingroot/kinguser/bjy$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/kingroot/loader/sdk/KlPackage;",
            ">;"
        }
    .end annotation
.end field

.field private byL:Lcom/kingroot/kinguser/bkb;

.field private final byM:Lcom/kingroot/kinguser/bkj;

.field private byN:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/kingroot/kinguser/bjy;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/bjy;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bjy;->b:Landroid/util/SparseArray;

    .line 47
    iput-object v1, p0, Lcom/kingroot/kinguser/bjy;->byL:Lcom/kingroot/kinguser/bkb;

    .line 52
    iput-object v1, p0, Lcom/kingroot/kinguser/bjy;->byN:Landroid/os/Handler;

    .line 86
    sget-object v0, Lcom/kingroot/kinguser/bjy;->a:Ljava/lang/String;

    const-string v1, "KlPackageManagerService begin"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bkq;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "KlPackageManagerService"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 91
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 92
    new-instance v1, Lcom/kingroot/kinguser/bjy$b;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/kingroot/kinguser/bjy$b;-><init>(Lcom/kingroot/kinguser/bjy;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/kingroot/kinguser/bjy;->byN:Landroid/os/Handler;

    .line 94
    new-instance v0, Lcom/kingroot/kinguser/bkj;

    invoke-static {}, Lcom/kingroot/kinguser/bkd;->aeG()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/bkj;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bjy;->byM:Lcom/kingroot/kinguser/bkj;

    .line 95
    new-instance v0, Lcom/kingroot/kinguser/bkb;

    invoke-static {}, Lcom/kingroot/kinguser/bkd;->aeG()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/bkb;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bjy;->byL:Lcom/kingroot/kinguser/bkb;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 99
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/bjy;->a(Ljava/util/List;)V

    .line 102
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/loader/sdk/KlInfo;

    .line 103
    iget-object v2, v0, Lcom/kingroot/loader/sdk/KlInfo;->rawPluginPath:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/kingroot/kinguser/bjy;->installPlugin(Ljava/lang/String;)I

    move-result v2

    .line 104
    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 106
    const-string v2, ""

    iput-object v2, v0, Lcom/kingroot/loader/sdk/KlInfo;->rawPluginPath:Ljava/lang/String;

    .line 107
    iget-object v2, p0, Lcom/kingroot/kinguser/bjy;->byL:Lcom/kingroot/kinguser/bkb;

    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/bkb;->a(Lcom/kingroot/loader/sdk/KlInfo;)V

    goto :goto_0

    .line 112
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/bjy;->a:Ljava/lang/String;

    const-string v1, "KlPackageManagerService end"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bkq;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method private a(Lcom/kingroot/loader/sdk/KlInfo;Lcom/kingroot/loader/sdk/KlInfo;Z)I
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v0, 0x0

    .line 331
    iget-object v1, p1, Lcom/kingroot/loader/sdk/KlInfo;->rawPluginPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 332
    const/4 v0, -0x8

    .line 377
    :cond_0
    :goto_0
    return v0

    .line 336
    :cond_1
    new-instance v2, Ljava/io/File;

    iget-object v1, p1, Lcom/kingroot/loader/sdk/KlInfo;->rawPluginPath:Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 337
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 338
    const/4 v0, -0x6

    goto :goto_0

    .line 342
    :cond_2
    const/4 v1, 0x1

    .line 343
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/kingroot/kinguser/bjy;->byM:Lcom/kingroot/kinguser/bkj;

    iget-object v5, p1, Lcom/kingroot/loader/sdk/KlInfo;->packageMd5:Ljava/lang/String;

    iget-object v6, p1, Lcom/kingroot/loader/sdk/KlInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/kingroot/kinguser/bkj;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 344
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 346
    invoke-static {v3}, Lcom/kingroot/kinguser/bkp;->I(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    .line 349
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p1, Lcom/kingroot/loader/sdk/KlInfo;->packageMd5:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v1, v0

    .line 355
    :cond_3
    if-eqz v1, :cond_4

    invoke-direct {p0, v2, v3}, Lcom/kingroot/kinguser/bjy;->b(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 357
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bkp;->deleteFile(Ljava/lang/String;)Z

    .line 358
    const/16 v0, -0x9

    goto :goto_0

    .line 361
    :cond_4
    if-eqz p3, :cond_5

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/kingroot/loader/sdk/KlInfo;->foreEntryClass:Ljava/lang/String;

    iget-object v3, p1, Lcom/kingroot/loader/sdk/KlInfo;->backEntryClass:Ljava/lang/String;

    iget-object v4, p0, Lcom/kingroot/kinguser/bjy;->byM:Lcom/kingroot/kinguser/bkj;

    .line 364
    invoke-virtual {v4}, Lcom/kingroot/kinguser/bkj;->aeM()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 361
    invoke-static {v1, v2, v3, v4}, Lcom/kingroot/kinguser/bkr;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 365
    iput v7, p1, Lcom/kingroot/loader/sdk/KlInfo;->installState:I

    .line 366
    iget-object v0, p0, Lcom/kingroot/kinguser/bjy;->byM:Lcom/kingroot/kinguser/bkj;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/bkj;->a(Lcom/kingroot/loader/sdk/KlInfo;)V

    .line 367
    const/16 v0, -0x14

    goto :goto_0

    .line 371
    :cond_5
    if-eqz p2, :cond_0

    iget-object v1, p2, Lcom/kingroot/loader/sdk/KlInfo;->packageMd5:Ljava/lang/String;

    iget-object v2, p1, Lcom/kingroot/loader/sdk/KlInfo;->packageMd5:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 372
    iput v7, p2, Lcom/kingroot/loader/sdk/KlInfo;->installState:I

    .line 373
    iget-object v1, p0, Lcom/kingroot/kinguser/bjy;->byM:Lcom/kingroot/kinguser/bkj;

    invoke-virtual {v1, p2}, Lcom/kingroot/kinguser/bkj;->a(Lcom/kingroot/loader/sdk/KlInfo;)V

    goto/16 :goto_0
.end method

.method private a(Lcom/kingroot/loader/sdk/KlPackage;)I
    .locals 5

    .prologue
    .line 405
    invoke-virtual {p1}, Lcom/kingroot/loader/sdk/KlPackage;->getPluginSourcePath()Ljava/lang/String;

    move-result-object v0

    .line 406
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 407
    const/4 v0, -0x8

    .line 438
    :goto_0
    return v0

    .line 411
    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/kingroot/kinguser/bjy;->byM:Lcom/kingroot/kinguser/bkj;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/bkj;->aeL()Ljava/io/File;

    move-result-object v2

    iget-object v3, p1, Lcom/kingroot/loader/sdk/KlPackage;->klInfo:Lcom/kingroot/loader/sdk/KlInfo;

    iget-object v3, v3, Lcom/kingroot/loader/sdk/KlInfo;->packageName:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 412
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 413
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 417
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 418
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 419
    const/16 v0, -0xb

    goto :goto_0

    .line 423
    :cond_2
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "lib"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 425
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kingroot/kinguser/bkp;->cz(Ljava/lang/String;)Z

    .line 426
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v3, "lib"

    invoke-static {v2, v1, v3}, Lcom/kingroot/kinguser/bkr;->b(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 427
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bkp;->cz(Ljava/lang/String;)Z

    .line 428
    const/16 v0, -0xa

    goto :goto_0

    .line 433
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 434
    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 435
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 438
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Lcom/kingroot/loader/sdk/KlInfo;Z)I
    .locals 7

    .prologue
    const/4 v1, 0x1

    .line 238
    sget-object v0, Lcom/kingroot/kinguser/bjy;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "installPluginInternal | rawPluginPath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/bkq;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 242
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 243
    const/4 v0, -0x6

    .line 325
    :cond_0
    :goto_0
    return v0

    .line 248
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/kingroot/loader/sdk/KlInfo;->isInfoParsed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 249
    :cond_2
    new-instance p2, Lcom/kingroot/loader/sdk/KlInfo;

    invoke-direct {p2, p1}, Lcom/kingroot/loader/sdk/KlInfo;-><init>(Ljava/lang/String;)V

    .line 250
    invoke-static {p2}, Lcom/kingroot/kinguser/bkr;->c(Lcom/kingroot/loader/sdk/KlInfo;)I

    move-result v0

    .line 251
    if-ltz v0, :cond_0

    .line 257
    :cond_3
    iget-object v0, p2, Lcom/kingroot/loader/sdk/KlInfo;->packageMd5:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 258
    invoke-static {v2}, Lcom/kingroot/kinguser/bkp;->I(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/kingroot/loader/sdk/KlInfo;->packageMd5:Ljava/lang/String;

    .line 260
    :cond_4
    iget-object v0, p2, Lcom/kingroot/loader/sdk/KlInfo;->packageMd5:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, -0x10

    goto :goto_0

    .line 263
    :cond_5
    invoke-static {p2}, Lcom/kingroot/kinguser/bki;->b(Lcom/kingroot/loader/sdk/KlInfo;)Z

    move-result v0

    if-nez v0, :cond_6

    const/16 v0, -0x13

    goto :goto_0

    .line 265
    :cond_6
    invoke-static {}, Lcom/kingroot/kinguser/bkf;->aeJ()Lcom/kingroot/kinguser/bkf;

    move-result-object v0

    iget v2, p2, Lcom/kingroot/loader/sdk/KlInfo;->pluginId:I

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/bkf;->jA(I)Ljava/lang/Object;

    move-result-object v3

    .line 266
    monitor-enter v3

    .line 268
    :try_start_0
    iget v0, p2, Lcom/kingroot/loader/sdk/KlInfo;->pluginId:I

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/bjy;->jy(I)Lcom/kingroot/loader/sdk/KlPackage;

    move-result-object v4

    .line 270
    if-eqz v4, :cond_9

    .line 271
    invoke-virtual {v4}, Lcom/kingroot/loader/sdk/KlPackage;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 272
    const/16 v0, -0xd

    monitor-exit v3

    goto :goto_0

    .line 323
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 275
    :cond_7
    :try_start_1
    iget-object v0, v4, Lcom/kingroot/loader/sdk/KlPackage;->klInfo:Lcom/kingroot/loader/sdk/KlInfo;

    iget v0, v0, Lcom/kingroot/loader/sdk/KlInfo;->installState:I

    if-ne v0, v1, :cond_9

    .line 277
    iget v0, p2, Lcom/kingroot/loader/sdk/KlInfo;->versionCode:I

    iget-object v2, v4, Lcom/kingroot/loader/sdk/KlPackage;->klInfo:Lcom/kingroot/loader/sdk/KlInfo;

    iget v2, v2, Lcom/kingroot/loader/sdk/KlInfo;->versionCode:I

    if-ge v0, v2, :cond_8

    .line 278
    const/4 v0, -0x5

    monitor-exit v3

    goto :goto_0

    .line 282
    :cond_8
    iget-object v0, v4, Lcom/kingroot/loader/sdk/KlPackage;->klInfo:Lcom/kingroot/loader/sdk/KlInfo;

    iget-object v0, v0, Lcom/kingroot/loader/sdk/KlInfo;->packageMd5:Ljava/lang/String;

    iget-object v2, p2, Lcom/kingroot/loader/sdk/KlInfo;->packageMd5:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 283
    const/4 v0, -0x1

    monitor-exit v3

    goto :goto_0

    .line 289
    :cond_9
    if-eqz v4, :cond_a

    iget-object v0, v4, Lcom/kingroot/loader/sdk/KlPackage;->klInfo:Lcom/kingroot/loader/sdk/KlInfo;

    .line 290
    :goto_1
    invoke-direct {p0, p2, v0, p3}, Lcom/kingroot/kinguser/bjy;->a(Lcom/kingroot/loader/sdk/KlInfo;Lcom/kingroot/loader/sdk/KlInfo;Z)I

    move-result v0

    .line 291
    if-gez v0, :cond_b

    .line 292
    monitor-exit v3

    goto/16 :goto_0

    .line 289
    :cond_a
    const/4 v0, 0x0

    goto :goto_1

    .line 296
    :cond_b
    if-eqz v4, :cond_c

    iget-object v0, v4, Lcom/kingroot/loader/sdk/KlPackage;->config:Lcom/kingroot/loader/sdk/KlConfig;

    move-object v2, v0

    .line 300
    :goto_2
    invoke-direct {p0, p2, v2}, Lcom/kingroot/kinguser/bjy;->a(Lcom/kingroot/loader/sdk/KlInfo;Lcom/kingroot/loader/sdk/KlConfig;)Lcom/kingroot/loader/sdk/KlPackage;

    move-result-object v5

    .line 301
    if-nez v5, :cond_d

    const/16 v0, -0x16

    monitor-exit v3

    goto/16 :goto_0

    .line 296
    :cond_c
    new-instance v0, Lcom/kingroot/loader/sdk/KlConfig;

    iget v2, p2, Lcom/kingroot/loader/sdk/KlInfo;->pluginId:I

    const/4 v5, 0x0

    invoke-direct {v0, v2, v5}, Lcom/kingroot/loader/sdk/KlConfig;-><init>(II)V

    move-object v2, v0

    goto :goto_2

    .line 302
    :cond_d
    invoke-direct {p0, v5}, Lcom/kingroot/kinguser/bjy;->a(Lcom/kingroot/loader/sdk/KlPackage;)I

    move-result v0

    .line 303
    if-gez v0, :cond_e

    .line 304
    monitor-exit v3

    goto/16 :goto_0

    .line 306
    :cond_e
    invoke-virtual {v5}, Lcom/kingroot/loader/sdk/KlPackage;->updateLibPath()V

    .line 309
    const/4 v0, 0x1

    iput v0, p2, Lcom/kingroot/loader/sdk/KlInfo;->installState:I

    .line 312
    iget-object v0, v5, Lcom/kingroot/loader/sdk/KlPackage;->klInfo:Lcom/kingroot/loader/sdk/KlInfo;

    const-string v6, ""

    iput-object v6, v0, Lcom/kingroot/loader/sdk/KlInfo;->rawPluginPath:Ljava/lang/String;

    .line 313
    if-eqz v4, :cond_f

    .line 314
    iget-object v0, p0, Lcom/kingroot/kinguser/bjy;->byL:Lcom/kingroot/kinguser/bkb;

    iget-object v2, v5, Lcom/kingroot/loader/sdk/KlPackage;->klInfo:Lcom/kingroot/loader/sdk/KlInfo;

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/bkb;->a(Lcom/kingroot/loader/sdk/KlInfo;)V

    .line 320
    :goto_3
    iget-object v2, p0, Lcom/kingroot/kinguser/bjy;->b:Landroid/util/SparseArray;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 321
    :try_start_2
    iget-object v0, p0, Lcom/kingroot/kinguser/bjy;->b:Landroid/util/SparseArray;

    iget-object v4, v5, Lcom/kingroot/loader/sdk/KlPackage;->klInfo:Lcom/kingroot/loader/sdk/KlInfo;

    iget v4, v4, Lcom/kingroot/loader/sdk/KlInfo;->pluginId:I

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 322
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 323
    :try_start_3
    monitor-exit v3

    move v0, v1

    .line 325
    goto/16 :goto_0

    .line 316
    :cond_f
    iget-object v0, p0, Lcom/kingroot/kinguser/bjy;->byL:Lcom/kingroot/kinguser/bkb;

    iget-object v4, v5, Lcom/kingroot/loader/sdk/KlPackage;->klInfo:Lcom/kingroot/loader/sdk/KlInfo;

    invoke-virtual {v0, v4, v2}, Lcom/kingroot/kinguser/bkb;->b(Lcom/kingroot/loader/sdk/KlInfo;Lcom/kingroot/loader/sdk/KlConfig;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 322
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bjy;)Lcom/kingroot/kinguser/bkb;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/kingroot/kinguser/bjy;->byL:Lcom/kingroot/kinguser/bkb;

    return-object v0
.end method

.method private a(Lcom/kingroot/loader/sdk/KlInfo;Lcom/kingroot/loader/sdk/KlConfig;)Lcom/kingroot/loader/sdk/KlPackage;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 443
    iget-object v1, p1, Lcom/kingroot/loader/sdk/KlInfo;->packageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 462
    :cond_0
    :goto_0
    return-object v0

    .line 448
    :cond_1
    iget-object v1, p0, Lcom/kingroot/kinguser/bjy;->byM:Lcom/kingroot/kinguser/bkj;

    iget-object v2, p1, Lcom/kingroot/loader/sdk/KlInfo;->packageMd5:Ljava/lang/String;

    iget-object v3, p1, Lcom/kingroot/loader/sdk/KlInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/kingroot/kinguser/bkj;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 449
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 454
    new-instance v1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/kingroot/kinguser/bjy;->byM:Lcom/kingroot/kinguser/bkj;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/bkj;->aeL()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lcom/kingroot/loader/sdk/KlInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 455
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 456
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/kingroot/kinguser/bku;->qb()I

    move-result v0

    const/16 v2, 0x8

    if-le v0, v2, :cond_2

    .line 457
    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 461
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/bjy;->byM:Lcom/kingroot/kinguser/bkj;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bkj;->aeM()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 462
    new-instance v0, Lcom/kingroot/loader/sdk/KlPackage;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/kingroot/loader/sdk/KlPackage;-><init>(Lcom/kingroot/loader/sdk/KlInfo;Lcom/kingroot/loader/sdk/KlConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/loader/sdk/KlInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    .line 132
    iget-object v0, p0, Lcom/kingroot/kinguser/bjy;->byL:Lcom/kingroot/kinguser/bkb;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bkb;->aeD()Ljava/util/List;

    move-result-object v1

    .line 133
    iget-object v0, p0, Lcom/kingroot/kinguser/bjy;->byL:Lcom/kingroot/kinguser/bkb;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bkb;->aeE()Ljava/util/List;

    move-result-object v0

    .line 134
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 137
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 138
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/loader/sdk/KlConfig;

    .line 139
    invoke-virtual {v0}, Lcom/kingroot/loader/sdk/KlConfig;->isValid()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 140
    invoke-virtual {v0}, Lcom/kingroot/loader/sdk/KlConfig;->getPluginId()I

    move-result v5

    invoke-virtual {v3, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 142
    :cond_0
    iget-object v5, p0, Lcom/kingroot/kinguser/bjy;->byL:Lcom/kingroot/kinguser/bkb;

    invoke-virtual {v0}, Lcom/kingroot/loader/sdk/KlConfig;->getPluginId()I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/kingroot/kinguser/bkb;->a(I)V

    goto :goto_0

    .line 147
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/loader/sdk/KlInfo;

    .line 149
    invoke-static {v0}, Lcom/kingroot/kinguser/bki;->b(Lcom/kingroot/loader/sdk/KlInfo;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 151
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 156
    :cond_3
    iget v1, v0, Lcom/kingroot/loader/sdk/KlInfo;->installState:I

    if-eqz v1, :cond_4

    iget v1, v0, Lcom/kingroot/loader/sdk/KlInfo;->installState:I

    const/4 v5, 0x3

    if-eq v1, v5, :cond_4

    iget v1, v0, Lcom/kingroot/loader/sdk/KlInfo;->installState:I

    const/4 v5, 0x2

    if-eq v1, v5, :cond_4

    iget v1, v0, Lcom/kingroot/loader/sdk/KlInfo;->pluginId:I

    if-ne v1, v8, :cond_5

    .line 160
    :cond_4
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 164
    :cond_5
    iget v1, v0, Lcom/kingroot/loader/sdk/KlInfo;->pluginId:I

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/loader/sdk/KlConfig;

    .line 165
    if-nez v1, :cond_6

    .line 166
    new-instance v1, Lcom/kingroot/loader/sdk/KlConfig;

    iget v5, v0, Lcom/kingroot/loader/sdk/KlInfo;->pluginId:I

    const/4 v6, 0x0

    invoke-direct {v1, v5, v6}, Lcom/kingroot/loader/sdk/KlConfig;-><init>(II)V

    .line 167
    iget-object v5, p0, Lcom/kingroot/kinguser/bjy;->byL:Lcom/kingroot/kinguser/bkb;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v1}, Lcom/kingroot/kinguser/bkb;->b(Lcom/kingroot/loader/sdk/KlInfo;Lcom/kingroot/loader/sdk/KlConfig;)V

    .line 169
    :cond_6
    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/bjy;->a(Lcom/kingroot/loader/sdk/KlInfo;Lcom/kingroot/loader/sdk/KlConfig;)Lcom/kingroot/loader/sdk/KlPackage;

    move-result-object v1

    .line 170
    if-nez v1, :cond_7

    .line 171
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 176
    :cond_7
    iget-object v5, p0, Lcom/kingroot/kinguser/bjy;->b:Landroid/util/SparseArray;

    monitor-enter v5

    .line 177
    :try_start_0
    iget-object v6, p0, Lcom/kingroot/kinguser/bjy;->b:Landroid/util/SparseArray;

    iget v7, v0, Lcom/kingroot/loader/sdk/KlInfo;->pluginId:I

    invoke-virtual {v6, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 178
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    iget-object v1, v0, Lcom/kingroot/loader/sdk/KlInfo;->rawPluginPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 182
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 178
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 187
    :cond_8
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/loader/sdk/KlInfo;

    .line 188
    iget v2, v0, Lcom/kingroot/loader/sdk/KlInfo;->pluginId:I

    .line 189
    if-eq v2, v8, :cond_9

    .line 191
    iget-object v3, p0, Lcom/kingroot/kinguser/bjy;->byL:Lcom/kingroot/kinguser/bkb;

    invoke-virtual {v3, v2}, Lcom/kingroot/kinguser/bkb;->b(I)V

    .line 195
    :cond_9
    iget-object v2, p0, Lcom/kingroot/kinguser/bjy;->byM:Lcom/kingroot/kinguser/bkj;

    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/bkj;->a(Lcom/kingroot/loader/sdk/KlInfo;)V

    goto :goto_2

    .line 197
    :cond_a
    return-void
.end method

.method private b(Ljava/io/File;Ljava/io/File;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 387
    invoke-static {}, Lcom/kingroot/kinguser/bkd;->aeG()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 388
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 389
    invoke-virtual {p1, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 398
    :cond_0
    :goto_0
    return v0

    .line 394
    :cond_1
    invoke-static {p1, p2}, Lcom/kingroot/kinguser/bkp;->d(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 398
    invoke-static {p1, p2}, Lcom/kingroot/kinguser/bkp;->c(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    goto :goto_0
.end method

.method private jy(I)Lcom/kingroot/loader/sdk/KlPackage;
    .locals 2

    .prologue
    .line 116
    iget-object v1, p0, Lcom/kingroot/kinguser/bjy;->b:Landroid/util/SparseArray;

    monitor-enter v1

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bjy;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/loader/sdk/KlPackage;

    monitor-exit v1

    return-object v0

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private jz(I)Lcom/kingroot/loader/sdk/KlPackage;
    .locals 3

    .prologue
    .line 122
    iget-object v1, p0, Lcom/kingroot/kinguser/bjy;->b:Landroid/util/SparseArray;

    monitor-enter v1

    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bjy;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/loader/sdk/KlPackage;

    .line 124
    if-eqz v0, :cond_0

    .line 125
    iget-object v2, p0, Lcom/kingroot/kinguser/bjy;->b:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 127
    :cond_0
    monitor-exit v1

    return-object v0

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public getInstalledKlInfos()Ljava/util/List;
    .locals 6
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/loader/sdk/KlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 468
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 469
    iget-object v3, p0, Lcom/kingroot/kinguser/bjy;->b:Landroid/util/SparseArray;

    monitor-enter v3

    .line 470
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bjy;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 471
    iget-object v0, p0, Lcom/kingroot/kinguser/bjy;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/loader/sdk/KlPackage;

    .line 472
    if-nez v0, :cond_1

    .line 470
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 476
    :cond_1
    iget-object v0, v0, Lcom/kingroot/loader/sdk/KlPackage;->klInfo:Lcom/kingroot/loader/sdk/KlInfo;

    .line 477
    if-eqz v0, :cond_0

    iget v4, v0, Lcom/kingroot/loader/sdk/KlInfo;->installState:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 482
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 484
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 485
    return-object v2
.end method

.method public getInstalledKlPackage(I)Lcom/kingroot/loader/sdk/KlPackage;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 201
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bjy;->jy(I)Lcom/kingroot/loader/sdk/KlPackage;

    move-result-object v0

    .line 202
    if-nez v0, :cond_0

    .line 204
    :goto_0
    return-object v1

    :cond_0
    iget-object v2, v0, Lcom/kingroot/loader/sdk/KlPackage;->klInfo:Lcom/kingroot/loader/sdk/KlInfo;

    iget v2, v2, Lcom/kingroot/loader/sdk/KlInfo;->installState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public installPlugin(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 229
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/kingroot/kinguser/bjy;->a(Ljava/lang/String;Lcom/kingroot/loader/sdk/KlInfo;Z)I

    move-result v0

    return v0
.end method

.method public installPlugin(Ljava/lang/String;Lcom/kingroot/loader/sdk/KlInfo;Z)I
    .locals 1

    .prologue
    .line 234
    invoke-direct {p0, p1, p2, p3}, Lcom/kingroot/kinguser/bjy;->a(Ljava/lang/String;Lcom/kingroot/loader/sdk/KlInfo;Z)I

    move-result v0

    return v0
.end method

.method public markPluginRunning(II)V
    .locals 2

    .prologue
    .line 512
    iget-object v1, p0, Lcom/kingroot/kinguser/bjy;->b:Landroid/util/SparseArray;

    monitor-enter v1

    .line 513
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bjy;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/loader/sdk/KlPackage;

    .line 514
    if-eqz v0, :cond_0

    .line 515
    invoke-virtual {v0, p2}, Lcom/kingroot/loader/sdk/KlPackage;->triggerPidRunning(I)V

    .line 517
    :cond_0
    monitor-exit v1

    .line 518
    return-void

    .line 517
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public postRestartUpdate(Ljava/lang/String;Lcom/kingroot/loader/sdk/service/IKlPostRestartUpdateObserver;)V
    .locals 3

    .prologue
    .line 537
    iget-object v0, p0, Lcom/kingroot/kinguser/bjy;->byN:Landroid/os/Handler;

    const/4 v1, 0x0

    new-instance v2, Lcom/kingroot/kinguser/bjy$c;

    invoke-direct {v2, p0, p1, p2}, Lcom/kingroot/kinguser/bjy$c;-><init>(Lcom/kingroot/kinguser/bjy;Ljava/lang/String;Lcom/kingroot/loader/sdk/service/IKlPostRestartUpdateObserver;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 538
    return-void
.end method

.method public setEnabledSetting(IZ)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 522
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/bjy;->getInstalledKlPackage(I)Lcom/kingroot/loader/sdk/KlPackage;

    move-result-object v2

    .line 523
    if-nez v2, :cond_0

    .line 531
    :goto_0
    return v0

    .line 527
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/bkf;->aeJ()Lcom/kingroot/kinguser/bkf;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/kingroot/kinguser/bkf;->jA(I)Ljava/lang/Object;

    move-result-object v3

    .line 528
    monitor-enter v3

    .line 529
    :try_start_0
    iget-object v4, v2, Lcom/kingroot/loader/sdk/KlPackage;->config:Lcom/kingroot/loader/sdk/KlConfig;

    const/4 v5, 0x1

    if-nez p2, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {v4, v5, v0}, Lcom/kingroot/loader/sdk/KlConfig;->setFlagSetting(IZ)V

    .line 530
    iget-object v0, p0, Lcom/kingroot/kinguser/bjy;->byL:Lcom/kingroot/kinguser/bkb;

    iget-object v2, v2, Lcom/kingroot/loader/sdk/KlPackage;->config:Lcom/kingroot/loader/sdk/KlConfig;

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/bkb;->a(Lcom/kingroot/loader/sdk/KlConfig;)V

    .line 531
    monitor-exit v3

    move v0, v1

    goto :goto_0

    .line 532
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public uninstallPlugin(I)V
    .locals 3

    .prologue
    .line 213
    invoke-static {}, Lcom/kingroot/kinguser/bkf;->aeJ()Lcom/kingroot/kinguser/bkf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/bkf;->jA(I)Ljava/lang/Object;

    move-result-object v1

    .line 214
    monitor-enter v1

    .line 216
    :try_start_0
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bjy;->jz(I)Lcom/kingroot/loader/sdk/KlPackage;

    move-result-object v0

    .line 217
    if-eqz v0, :cond_0

    .line 218
    iget-object v0, v0, Lcom/kingroot/loader/sdk/KlPackage;->klInfo:Lcom/kingroot/loader/sdk/KlInfo;

    .line 219
    if-eqz v0, :cond_0

    .line 220
    const/4 v2, 0x0

    iput v2, v0, Lcom/kingroot/loader/sdk/KlInfo;->installState:I

    .line 221
    iget-object v2, p0, Lcom/kingroot/kinguser/bjy;->byL:Lcom/kingroot/kinguser/bkb;

    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/bkb;->a(Lcom/kingroot/loader/sdk/KlInfo;)V

    .line 224
    :cond_0
    monitor-exit v1

    .line 225
    return-void

    .line 224
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
