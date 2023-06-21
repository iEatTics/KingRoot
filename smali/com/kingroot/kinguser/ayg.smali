.class public Lcom/kingroot/kinguser/ayg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bkc;


# static fields
.field private static final bcL:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static bcM:Lcom/kingroot/kinguser/bed;

.field private static bcN:Lcom/kingroot/kinguser/bed;

.field private static final sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/ayg;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final bcK:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/kingroot/kinguser/ayf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 77
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/kingroot/kinguser/ayg;->bcL:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 79
    new-instance v0, Lcom/kingroot/kinguser/ayg$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/ayg$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/ayg;->sInstance:Lcom/kingroot/kinguser/cce;

    .line 157
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/ayg$2;

    invoke-direct {v3}, Lcom/kingroot/kinguser/ayg$2;-><init>()V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    sput-object v0, Lcom/kingroot/kinguser/ayg;->bcM:Lcom/kingroot/kinguser/bed;

    .line 304
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->blm:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/ayg$3;

    invoke-direct {v3}, Lcom/kingroot/kinguser/ayg$3;-><init>()V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    sput-object v0, Lcom/kingroot/kinguser/ayg;->bcN:Lcom/kingroot/kinguser/bed;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ayg;->bcK:Landroid/util/SparseArray;

    .line 91
    new-instance v0, Lcom/kingroot/kinguser/ayl;

    invoke-direct {v0}, Lcom/kingroot/kinguser/ayl;-><init>()V

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/ayg;->a(Lcom/kingroot/kinguser/ayf;)V

    .line 92
    new-instance v0, Lcom/kingroot/kinguser/ayv;

    invoke-direct {v0}, Lcom/kingroot/kinguser/ayv;-><init>()V

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/ayg;->a(Lcom/kingroot/kinguser/ayf;)V

    .line 93
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/ayg$1;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/kingroot/kinguser/ayg;-><init>()V

    return-void
.end method

.method public static UR()Lcom/kingroot/kinguser/ayg;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/kingroot/kinguser/ayg;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ayg;

    return-object v0
.end method

.method public static UT()Ljava/io/File;
    .locals 3

    .prologue
    .line 116
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    const-string v1, "plugin"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static UU()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    const-string v0, ".apk"

    return-object v0
.end method

.method public static UV()Z
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lcom/kingroot/kinguser/ayg;->bcL:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public static UW()V
    .locals 2

    .prologue
    .line 154
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    sget-object v1, Lcom/kingroot/kinguser/ayg;->bcM:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 155
    return-void
.end method

.method private static UX()V
    .locals 0

    .prologue
    .line 197
    return-void
.end method

.method private static UY()V
    .locals 6

    .prologue
    .line 203
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 206
    invoke-static {}, Lcom/kingroot/kinguser/baj;->Vv()Lcom/kingroot/kinguser/baj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/baj;->getUpgradeInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;

    .line 207
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->bdO:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 208
    new-instance v3, Ljava/io/File;

    iget-object v0, v0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->bdO:Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 218
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/ayg;->UT()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 219
    if-nez v2, :cond_3

    .line 231
    :cond_2
    return-void

    .line 220
    :cond_3
    array-length v3, v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    .line 221
    if-nez v4, :cond_5

    .line 220
    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 224
    :cond_5
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 229
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_2
.end method

.method public static UZ()V
    .locals 2

    .prologue
    .line 318
    invoke-static {}, Lcom/kingroot/kinguser/akv;->Gp()Lcom/kingroot/kinguser/akv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/akv;->Gs()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    sget-object v1, Lcom/kingroot/kinguser/ayg;->bcN:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 321
    :cond_0
    return-void
.end method

.method private static Va()Z
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 330
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 331
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 332
    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 380
    :goto_0
    return v0

    .line 338
    :cond_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    .line 339
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    .line 340
    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x3

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 341
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 342
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 344
    iget v7, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne v7, v2, :cond_1

    .line 347
    iget v7, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-eq v7, v3, :cond_1

    .line 350
    iget-object v7, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    if-eqz v7, :cond_2

    iget-object v7, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 351
    invoke-static {v7, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget v7, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v8, 0xc8

    if-ne v7, v8, :cond_2

    move v0, v1

    .line 353
    goto :goto_0

    .line 356
    :cond_2
    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 361
    :cond_3
    invoke-static {}, Lcom/kingroot/kinguser/akv;->Gp()Lcom/kingroot/kinguser/akv;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/akv;->cv(Z)V

    .line 364
    invoke-static {}, Lcom/kingroot/kinguser/baj;->Vv()Lcom/kingroot/kinguser/baj;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/baj;->processLocalOrderSync(I)I

    move-result v0

    .line 365
    if-nez v0, :cond_4

    move v0, v1

    .line 367
    goto :goto_0

    .line 372
    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 373
    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    goto :goto_2

    .line 377
    :cond_5
    invoke-static {v3}, Landroid/os/Process;->killProcess(I)V

    .line 378
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 380
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic Vb()V
    .locals 0

    .prologue
    .line 57
    invoke-static {}, Lcom/kingroot/kinguser/ayg;->UY()V

    return-void
.end method

.method static synthetic Vc()Z
    .locals 1

    .prologue
    .line 57
    invoke-static {}, Lcom/kingroot/kinguser/ayg;->Va()Z

    move-result v0

    return v0
.end method

.method private a(Lcom/kingroot/kinguser/ayf;)V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/kingroot/kinguser/ayg;->bcK:Landroid/util/SparseArray;

    invoke-interface {p1}, Lcom/kingroot/kinguser/ayf;->getPluginId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 97
    return-void
.end method

.method private static a(Lcom/kingroot/loader/sdk/IPluginInstallListener;)V
    .locals 13

    .prologue
    const/16 v12, -0xf

    const/4 v4, 0x0

    .line 248
    const-class v0, Lcom/kingroot/loader/sdk/service/IKlPackageManager;

    invoke-static {v0}, Lcom/kingroot/loader/common/KlServiceManager;->getKService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/loader/sdk/service/IKlPackageManager;

    .line 252
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 253
    invoke-interface {v0}, Lcom/kingroot/loader/sdk/service/IKlPackageManager;->getInstalledKlInfos()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/loader/sdk/KlInfo;

    .line 254
    iget v3, v1, Lcom/kingroot/loader/sdk/KlInfo;->pluginId:I

    invoke-virtual {v5, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 256
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/bwa;->aiI()Landroid/util/SparseArray;

    move-result-object v6

    .line 257
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v7

    move v3, v4

    :goto_1
    if-ge v3, v7, :cond_5

    .line 259
    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/cn;

    .line 260
    if-eqz v1, :cond_1

    iget v2, v1, Lcom/kingroot/kinguser/cn;->id:I

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingroot/loader/sdk/KlInfo;

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/ayg;->a(Lcom/kingroot/kinguser/cn;Lcom/kingroot/loader/sdk/KlInfo;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 257
    :cond_1
    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    .line 266
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, v1, Lcom/kingroot/kinguser/cn;->id:I

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, ".apk"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 267
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "plugins"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 268
    new-instance v9, Ljava/io/File;

    invoke-static {}, Lcom/kingroot/kinguser/bkd;->aeG()Landroid/content/Context;

    move-result-object v10

    const-string v11, "klex"

    invoke-virtual {v10, v11, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v10

    invoke-direct {v9, v10, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 273
    :try_start_0
    invoke-static {v8, v9}, Lcom/kingroot/kinguser/rs;->e(Ljava/lang/String;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v8}, Lcom/kingroot/kinguser/rs;->B(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 285
    if-eqz p0, :cond_1

    .line 286
    invoke-interface {p0, v8, v12}, Lcom/kingroot/loader/sdk/IPluginInstallListener;->onPluginInstallEnd(Ljava/lang/String;I)V

    goto :goto_2

    .line 274
    :catch_0
    move-exception v1

    .line 277
    if-eqz p0, :cond_1

    .line 278
    invoke-interface {p0, v8, v12}, Lcom/kingroot/loader/sdk/IPluginInstallListener;->onPluginInstallEnd(Ljava/lang/String;I)V

    goto :goto_2

    .line 292
    :cond_3
    new-instance v2, Lcom/kingroot/loader/sdk/KlInfo;

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v10}, Lcom/kingroot/loader/sdk/KlInfo;-><init>(Ljava/lang/String;)V

    .line 293
    invoke-static {v1, v2}, Lcom/kingroot/kinguser/bkr;->b(Lcom/kingroot/kinguser/cn;Lcom/kingroot/loader/sdk/KlInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 294
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2, v4}, Lcom/kingroot/loader/sdk/service/IKlPackageManager;->installPlugin(Ljava/lang/String;Lcom/kingroot/loader/sdk/KlInfo;Z)I

    move-result v1

    .line 295
    if-eqz p0, :cond_4

    .line 296
    invoke-interface {p0, v8, v1}, Lcom/kingroot/loader/sdk/IPluginInstallListener;->onPluginInstallEnd(Ljava/lang/String;I)V

    .line 300
    :cond_4
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 302
    :cond_5
    return-void
.end method

.method private static a(Lcom/kingroot/kinguser/cn;Lcom/kingroot/loader/sdk/KlInfo;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 235
    if-nez p1, :cond_1

    .line 238
    :cond_0
    :goto_0
    return v0

    .line 236
    :cond_1
    iget v1, p1, Lcom/kingroot/loader/sdk/KlInfo;->versionCode:I

    iget v2, p0, Lcom/kingroot/kinguser/cn;->kd:I

    if-lt v1, v2, :cond_0

    .line 238
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/kingroot/loader/sdk/IPluginInstallListener;)V
    .locals 0

    .prologue
    .line 57
    invoke-static {p0}, Lcom/kingroot/kinguser/ayg;->a(Lcom/kingroot/loader/sdk/IPluginInstallListener;)V

    return-void
.end method

.method public static h(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 133
    invoke-static {}, Lcom/kingroot/kinguser/akv;->Gp()Lcom/kingroot/kinguser/akv;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Lcom/kingroot/kinguser/akv;->Gv()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    :goto_0
    return-void

    .line 136
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/kingroot/kinguser/bkd;->el(Z)V

    .line 137
    invoke-static {}, Lcom/kingroot/kinguser/ayg;->UR()Lcom/kingroot/kinguser/ayg;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/kingroot/kinguser/bkk;->a(Landroid/content/Context;ZLcom/kingroot/kinguser/bkc;)V

    .line 140
    new-instance v0, Lcom/kingroot/kinguser/ayj;

    invoke-direct {v0}, Lcom/kingroot/kinguser/ayj;-><init>()V

    invoke-static {p0, v0}, Lcom/tencent/qqpimsdk/qqloginaar/QQLogin;->init(Landroid/content/Context;Lcom/tencent/qqpimsdk/qqloginaar/shark/ISharkUtil;)V

    .line 142
    sget-object v0, Lcom/kingroot/kinguser/ayg;->bcL:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0
.end method

.method static synthetic jK()V
    .locals 0

    .prologue
    .line 57
    invoke-static {}, Lcom/kingroot/kinguser/ayg;->UX()V

    return-void
.end method


# virtual methods
.method public US()Landroid/app/Activity;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 108
    invoke-static {}, Lcom/kingroot/kinguser/aft;->vt()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public a(ILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/kingroot/kinguser/ayg;->bcK:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ayf;

    .line 102
    if-eqz v0, :cond_0

    invoke-interface {v0, p2, p3}, Lcom/kingroot/kinguser/ayf;->a(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
