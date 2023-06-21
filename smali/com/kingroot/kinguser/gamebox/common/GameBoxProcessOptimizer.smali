.class public Lcom/kingroot/kinguser/gamebox/common/GameBoxProcessOptimizer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/gamebox/common/GameBoxProcessOptimizer$OptimizeResult;,
        Lcom/kingroot/kinguser/gamebox/common/GameBoxProcessOptimizer$a;
    }
.end annotation


# static fields
.field private static aND:Lcom/kingroot/kinguser/bed;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 81
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->blm:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v3, 0x1

    new-instance v4, Lcom/kingroot/kinguser/gamebox/common/GameBoxProcessOptimizer$1;

    invoke-direct {v4}, Lcom/kingroot/kinguser/gamebox/common/GameBoxProcessOptimizer$1;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    sput-object v0, Lcom/kingroot/kinguser/gamebox/common/GameBoxProcessOptimizer;->aND:Lcom/kingroot/kinguser/bed;

    return-void
.end method

.method public static Os()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/kingroot/kinguser/gamebox/common/GameBoxProcessOptimizer;->a(Lcom/kingroot/kinguser/gamebox/common/GameBoxProcessOptimizer$a;)V

    .line 78
    return-void
.end method

.method public static Ot()Lcom/kingroot/kinguser/gamebox/common/GameBoxProcessOptimizer$OptimizeResult;
    .locals 3

    .prologue
    .line 165
    const/4 v1, 0x0

    .line 167
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/gamebox/common/GameBoxProcessOptimizer;->Ov()Lcom/kingroot/kinguser/sk;

    move-result-object v0

    invoke-interface {v0}, Lcom/kingroot/kinguser/sk;->jp()Ljava/lang/Object;

    move-result-object v0

    .line 168
    instance-of v2, v0, Lcom/kingroot/kinguser/gamebox/common/GameBoxProcessOptimizer$OptimizeResult;

    if-eqz v2, :cond_0

    .line 169
    check-cast v0, Lcom/kingroot/kinguser/gamebox/common/GameBoxProcessOptimizer$OptimizeResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :goto_0
    return-object v0

    .line 171
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public static Ou()Ljava/util/Map;
    .locals 10
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingroot/kinguser/atz;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 229
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 230
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 233
    invoke-static {}, Lcom/kingroot/kinguser/abd;->qb()I

    move-result v0

    const/16 v3, 0x15

    if-ge v0, v3, :cond_1

    .line 234
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    const-string v3, "activity"

    .line 235
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 237
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 238
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 239
    iget-object v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_0

    .line 240
    new-instance v5, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;

    iget v6, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    iget v7, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    iget-object v8, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v8, v8, v2

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-direct {v5, v6, v7, v8, v0}, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 244
    :cond_1
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/kingroot/common/utils/system/ProcessUtils;->f(Landroid/content/Context;Ljava/util/List;)Ljava/util/Map;

    .line 249
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 251
    invoke-static {}, Lcom/kingroot/common/utils/system/ProcessUtils;->qI()Ljava/util/List;

    move-result-object v6

    .line 252
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 253
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;

    .line 256
    iget-object v7, v0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;->pkg:Ljava/lang/String;

    .line 259
    invoke-static {v7}, Lcom/kingroot/kinguser/akf;->gG(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v7}, Lcom/kingroot/kinguser/akf;->gH(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 266
    const-string v1, "com.tencent.qqpimsecure"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 273
    invoke-static {v7}, Lcom/kingroot/kinguser/gamebox/common/GameBoxProcessOptimizer;->iN(Ljava/lang/String;)Z

    move-result v1

    .line 278
    invoke-static {}, Lcom/kingroot/kinguser/bhb;->abV()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 286
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v3

    .line 285
    invoke-static {v3}, Lcom/kingroot/kinguser/bhb;->aD(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 286
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 293
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 294
    new-instance v3, Lcom/kingroot/kinguser/atz;

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    :goto_1
    invoke-direct {v3, v7, v1}, Lcom/kingroot/kinguser/atz;-><init>(Ljava/lang/String;I)V

    .line 297
    invoke-interface {v4, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    :goto_2
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 304
    :cond_4
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 305
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;

    .line 306
    iget v8, v1, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;->uid:I

    iget v9, v0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;->uid:I

    if-ne v8, v9, :cond_4

    .line 307
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 308
    iget v9, v1, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;->pid:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    invoke-static {v8}, Lcom/kingroot/common/utils/system/ProcessUtils;->O(Ljava/util/List;)I

    move-result v8

    .line 311
    iget-object v1, v1, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/kingroot/kinguser/atz;->jj(Ljava/lang/String;)V

    .line 312
    invoke-virtual {v3, v8}, Lcom/kingroot/kinguser/atz;->gF(I)V

    .line 313
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    :cond_5
    move v1, v2

    .line 294
    goto :goto_1

    .line 299
    :cond_6
    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/atz;

    move-object v3, v1

    goto :goto_2

    .line 319
    :cond_7
    return-object v4
.end method

.method private static Ov()Lcom/kingroot/kinguser/sk;
    .locals 2

    .prologue
    .line 404
    invoke-static {}, Lcom/kingroot/kinguser/tj;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 405
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "gb_optimize_result"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/rv;->cD(Ljava/lang/String;)Lcom/kingroot/kinguser/sk;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/util/List;Lcom/kingroot/kinguser/gamebox/common/GameBoxProcessOptimizer$a;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/atz;",
            ">;",
            "Lcom/kingroot/kinguser/gamebox/common/GameBoxProcessOptimizer$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 336
    if-nez p1, :cond_1

    .line 401
    :cond_0
    :goto_0
    return-void

    .line 340
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/aav;->qo()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long v4, v0, v2

    .line 342
    new-instance v3, Lcom/kingroot/kinguser/gamebox/common/GameBoxProcessOptimizer$OptimizeResult;

    invoke-direct {v3}, Lcom/kingroot/kinguser/gamebox/common/GameBoxProcessOptimizer$OptimizeResult;-><init>()V

    .line 343
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, v3, Lcom/kingroot/kinguser/gamebox/common/GameBoxProcessOptimizer$OptimizeResult;->processCountOptimized:I

    .line 345
    invoke-static {}, Lcom/kingroot/kinguser/abd;->qb()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 348
    const-string v0, "activity"

    .line 349
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 350
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_5

    .line 351
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/atz;

    .line 352
    invoke-virtual {v1}, Lcom/kingroot/kinguser/atz;->PF()I

    move-result v6

    .line 353
    iget v7, v3, Lcom/kingroot/kinguser/gamebox/common/GameBoxProcessOptimizer$OptimizeResult;->memoryreReleased:I

    add-int/2addr v6, v7

    iput v6, v3, Lcom/kingroot/kinguser/gamebox/common/GameBoxProcessOptimizer$OptimizeResult;->memoryreReleased:I

    .line 354
    if-eqz p2, :cond_2

    .line 355
    iget-object v6, v1, Lcom/kingroot/kinguser/atz;->adZ:Ljava/lang/String;

    .line 357
    invoke-virtual {v1}, Lcom/kingroot/kinguser/atz;->PF()I

    move-result v7

    iget v8, v3, Lcom/kingroot/kinguser/gamebox/common/GameBoxProcessOptimizer$OptimizeResult;->memoryreReleased:I

    mul-int/lit8 v8, v8, 0x64

    int-to-long v8, v8

    div-long/2addr v8, v4

    long-to-int v8, v8

    .line 355
    invoke-interface {p2, v6, v7, v8}, Lcom/kingroot/kinguser/gamebox/common/GameBoxProcessOptimizer$a;->f(Ljava/lang/String;II)V

    .line 360
    :cond_2
    iget v6, v1, Lcom/kingroot/kinguser/atz;->mFlag:I

    packed-switch v6, :pswitch_data_0

    .line 380
    :goto_2
    if-eqz p2, :cond_3

    .line 382
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2, v1}, Lcom/kingroot/kinguser/gamebox/common/GameBoxProcessOptimizer$a;->gz(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 350
    :cond_3
    :goto_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 363
    :pswitch_0
    invoke-static {}, Lcom/kingroot/kinguser/aie;->xx()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 364
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v6

    invoke-virtual {v6}, Lcom/kingroot/kinguser/abc;->isRootPermition()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 365
    invoke-static {}, Lcom/kingroot/kinguser/aie;->xw()Lcom/kingroot/kinguser/aie;

    move-result-object v6

    iget-object v1, v1, Lcom/kingroot/kinguser/atz;->adZ:Ljava/lang/String;

    invoke-virtual {v6, v1}, Lcom/kingroot/kinguser/aie;->eh(Ljava/lang/String;)Z

    goto :goto_2

    .line 368
    :cond_4
    invoke-static {}, Lcom/kingroot/kinguser/aie;->xw()Lcom/kingroot/kinguser/aie;

    move-result-object v6

    iget-object v7, v1, Lcom/kingroot/kinguser/atz;->adZ:Ljava/lang/String;

    invoke-virtual {v6, p0, v7}, Lcom/kingroot/kinguser/aie;->n(Landroid/content/Context;Ljava/lang/String;)Z

    .line 370
    iget-object v1, v1, Lcom/kingroot/kinguser/atz;->adZ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto :goto_2

    .line 374
    :pswitch_1
    iget-object v1, v1, Lcom/kingroot/kinguser/atz;->adZ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto :goto_2

    .line 389
    :cond_5
    iget v0, v3, Lcom/kingroot/kinguser/gamebox/common/GameBoxProcessOptimizer$OptimizeResult;->memoryreReleased:I

    mul-int/lit8 v0, v0, 0x64

    int-to-long v0, v0

    div-long/2addr v0, v4

    long-to-int v0, v0

    iput v0, v3, Lcom/kingroot/kinguser/gamebox/common/GameBoxProcessOptimizer$OptimizeResult;->optimizePercent:I

    .line 390
    if-eqz p2, :cond_6

    .line 391
    iget v0, v3, Lcom/kingroot/kinguser/gamebox/common/GameBoxProcessOptimizer$OptimizeResult;->memoryreReleased:I

    int-to-double v0, v0

    iget v2, v3, Lcom/kingroot/kinguser/gamebox/common/GameBoxProcessOptimizer$OptimizeResult;->optimizePercent:I

    invoke-interface {p2, v0, v1, v2}, Lcom/kingroot/kinguser/gamebox/common/GameBoxProcessOptimizer$a;->b(DI)V

    .line 396
    :cond_6
    :try_start_1
    invoke-static {}, Lcom/kingroot/kinguser/gamebox/common/GameBoxProcessOptimizer;->Ov()Lcom/kingroot/kinguser/sk;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/kingroot/kinguser/sk;->b(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 397
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 383
    :catch_1
    move-exception v1

    goto :goto_3

    .line 360
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Lcom/kingroot/kinguser/gamebox/common/GameBoxProcessOptimizer$a;)V
    .locals 4

    .prologue
    .line 66
    if-eqz p0, :cond_0

    .line 67
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    sget-object v1, Lcom/kingroot/kinguser/gamebox/common/GameBoxProcessOptimizer;->aND:Lcom/kingroot/kinguser/bed;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/beg;->a(Lcom/kingroot/kinguser/bed;[Ljava/lang/Object;)Z

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    sget-object v1, Lcom/kingroot/kinguser/gamebox/common/GameBoxProcessOptimizer;->aND:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    goto :goto_0
.end method

.method public static b(Lcom/kingroot/kinguser/gamebox/common/GameBoxProcessOptimizer$a;)V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 107
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    const-string v2, "activity"

    .line 108
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 110
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 111
    if-eqz v0, :cond_0

    .line 112
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/gamebox/common/GameBoxProcessOptimizer;->Ou()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/gamebox/common/GameBoxProcessOptimizer;->l(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 118
    if-eqz p0, :cond_2

    .line 119
    invoke-interface {p0}, Lcom/kingroot/kinguser/gamebox/common/GameBoxProcessOptimizer$a;->Ow()V

    .line 123
    :cond_2
    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->f(Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/kingroot/kinguser/abd;->qb()I

    move-result v2

    const/16 v3, 0x15

    if-lt v2, v3, :cond_3

    .line 125
    if-eqz p0, :cond_4

    .line 126
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 127
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 128
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v3, v0, 0x4

    .line 129
    invoke-static {}, Lcom/kingroot/kinguser/aav;->qo()J

    move-result-wide v4

    const-wide/16 v6, 0x400

    div-long/2addr v4, v6

    .line 130
    int-to-long v6, v2

    mul-long/2addr v6, v4

    const-wide/16 v8, 0x64

    div-long/2addr v6, v8

    long-to-int v0, v6

    .line 131
    div-int v2, v0, v3

    move v0, v1

    .line 134
    :goto_1
    if-ge v0, v3, :cond_4

    .line 136
    const-wide/16 v6, 0x15e

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_2
    const-string v6, ""

    const/4 v7, 0x1

    add-int/2addr v1, v2

    mul-int/lit8 v8, v1, 0x64

    int-to-long v8, v8

    div-long/2addr v8, v4

    long-to-int v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-interface {p0, v6, v2, v7}, Lcom/kingroot/kinguser/gamebox/common/GameBoxProcessOptimizer$a;->f(Ljava/lang/String;II)V

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 146
    :cond_3
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    .line 147
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 145
    invoke-static {v1, v2, p0}, Lcom/kingroot/kinguser/gamebox/common/GameBoxProcessOptimizer;->a(Landroid/content/Context;Ljava/util/List;Lcom/kingroot/kinguser/gamebox/common/GameBoxProcessOptimizer$a;)V

    .line 152
    :cond_4
    if-eqz p0, :cond_5

    .line 153
    invoke-interface {p0}, Lcom/kingroot/kinguser/gamebox/common/GameBoxProcessOptimizer$a;->Ox()V

    .line 157
    :cond_5
    invoke-static {}, Lcom/kingroot/kinguser/asz;->OL()Lcom/kingroot/kinguser/asz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/asz;->OM()Lcom/kingroot/kinguser/ate;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/kingroot/kinguser/ate;->bW(J)V

    goto :goto_0

    .line 137
    :catch_0
    move-exception v6

    goto :goto_2
.end method

.method private static iN(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 323
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v1

    .line 326
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, p0, v2}, Lcom/kingroot/kinguser/zh;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 331
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    .line 327
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static l(Ljava/util/Map;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingroot/kinguser/atz;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingroot/kinguser/atz;",
            ">;"
        }
    .end annotation

    .prologue
    .line 184
    invoke-static {p0}, Lcom/kingroot/kinguser/yy;->e(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 218
    :goto_0
    return-object v0

    .line 187
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/asw;->OH()Ljava/util/List;

    move-result-object v2

    .line 188
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 189
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 190
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 192
    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 201
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/asm;->Od()Lcom/kingroot/kinguser/asm;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kingroot/kinguser/asm;->Oe()Ljava/util/List;

    move-result-object v4

    .line 202
    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 209
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {}, Lcom/kingroot/kinguser/ake;->Al()Lcom/kingroot/kinguser/ake;

    move-result-object v5

    invoke-virtual {v5}, Lcom/kingroot/kinguser/ake;->Ak()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 210
    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 216
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 218
    goto :goto_0
.end method
