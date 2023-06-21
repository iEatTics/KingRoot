.class public Lcom/kingroot/kinguser/examination/service/CloudCheckService;
.super Lcom/kingroot/kinguser/examination/service/ICloudCheckManager$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/examination/service/CloudCheckService$a;,
        Lcom/kingroot/kinguser/examination/service/CloudCheckService$b;
    }
.end annotation


# static fields
.field private static final EXPIRED_TIME:J = 0xdbba00L

.field private static final TAG:Ljava/lang/String; = "common_cloudcheckservice"

.field private static final sForceStopAutoStartThread:Lcom/kingroot/kinguser/bed;

.field private static final sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/examination/service/CloudCheckService;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCacheList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/examination/service/CloudCheckService$a;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallbackMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/kingroot/kinguser/examination/service/ICloudCheckCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCheckingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mProductInfo:Lcom/kingroot/kinguser/bng;

.field private volatile mService:Lcom/kingroot/kinguser/bvx;

.field private final mWeSecureDownloadListener:Lcom/kingroot/kinguser/bvu;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 76
    new-instance v0, Lcom/kingroot/kinguser/examination/service/CloudCheckService$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/examination/service/CloudCheckService$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/examination/service/CloudCheckService;->sInstance:Lcom/kingroot/kinguser/cce;

    .line 866
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->blm:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v3, 0x1

    new-instance v4, Lcom/kingroot/kinguser/examination/service/CloudCheckService$6;

    invoke-direct {v4}, Lcom/kingroot/kinguser/examination/service/CloudCheckService$6;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    sput-object v0, Lcom/kingroot/kinguser/examination/service/CloudCheckService;->sForceStopAutoStartThread:Lcom/kingroot/kinguser/bed;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/kingroot/kinguser/examination/service/ICloudCheckManager$Stub;-><init>()V

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/examination/service/CloudCheckService;->mLock:Ljava/lang/Object;

    .line 83
    new-instance v0, Lcom/kingroot/kinguser/bng;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bng;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/examination/service/CloudCheckService;->mProductInfo:Lcom/kingroot/kinguser/bng;

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/examination/service/CloudCheckService;->mService:Lcom/kingroot/kinguser/bvx;

    .line 87
    new-instance v0, Lcom/kingroot/kinguser/examination/service/CloudCheckService$2;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/examination/service/CloudCheckService$2;-><init>(Lcom/kingroot/kinguser/examination/service/CloudCheckService;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/examination/service/CloudCheckService;->mWeSecureDownloadListener:Lcom/kingroot/kinguser/bvu;

    .line 417
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/examination/service/CloudCheckService;->mCheckingList:Ljava/util/List;

    .line 418
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/examination/service/CloudCheckService;->mCacheList:Ljava/util/List;

    .line 419
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/examination/service/CloudCheckService;->mCallbackMap:Ljava/util/HashMap;

    .line 130
    iget-object v0, p0, Lcom/kingroot/kinguser/examination/service/CloudCheckService;->mProductInfo:Lcom/kingroot/kinguser/bng;

    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kingroot/kinguser/bng;->packageName:Ljava/lang/String;

    .line 131
    iget-object v0, p0, Lcom/kingroot/kinguser/examination/service/CloudCheckService;->mProductInfo:Lcom/kingroot/kinguser/bng;

    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ii()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kingroot/kinguser/bng;->versionName:Ljava/lang/String;

    .line 132
    iget-object v0, p0, Lcom/kingroot/kinguser/examination/service/CloudCheckService;->mProductInfo:Lcom/kingroot/kinguser/bng;

    invoke-static {}, Lcom/kingroot/common/app/KApplication;->hZ()I

    move-result v1

    iput v1, v0, Lcom/kingroot/kinguser/bng;->bDs:I

    .line 133
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/examination/service/CloudCheckService$1;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/kingroot/kinguser/examination/service/CloudCheckService;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/kingroot/kinguser/examination/service/CloudCheckService;Lcom/kingroot/kinguser/examination/service/ICloudCheckCallback;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/kingroot/kinguser/examination/service/CloudCheckService;->onRiskFound(Lcom/kingroot/kinguser/examination/service/ICloudCheckCallback;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/kingroot/kinguser/examination/service/CloudCheckService;)Ljava/util/List;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/kingroot/kinguser/examination/service/CloudCheckService;->mCheckingList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/kingroot/kinguser/examination/service/CloudCheckService;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/examination/service/CloudCheckService;->notifyScanFinish(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/kingroot/kinguser/examination/service/CloudCheckService;Ljava/util/Set;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/examination/service/CloudCheckService;->setRiskAppsRootDenied(Ljava/util/Set;)V

    return-void
.end method

.method static synthetic access$300(Lcom/kingroot/kinguser/examination/service/CloudCheckService;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/kingroot/kinguser/examination/service/CloudCheckService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/kingroot/kinguser/examination/service/CloudCheckService;Ljava/util/Set;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/examination/service/CloudCheckService;->banRiskAppsRoot(Ljava/util/Set;)V

    return-void
.end method

.method static synthetic access$500(Lcom/kingroot/kinguser/examination/service/CloudCheckService;Ljava/util/Set;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/examination/service/CloudCheckService;->banRiskAppsAutoStart(Ljava/util/Set;)V

    return-void
.end method

.method static synthetic access$600(Lcom/kingroot/kinguser/examination/service/CloudCheckService;Ljava/util/Set;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/examination/service/CloudCheckService;->banSilentInstallApp(Ljava/util/Set;)V

    return-void
.end method

.method static synthetic access$700(Lcom/kingroot/kinguser/examination/service/CloudCheckService;Lcom/kingroot/kinguser/examination/service/ICloudCheckCallback;I)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/examination/service/CloudCheckService;->onFinish(Lcom/kingroot/kinguser/examination/service/ICloudCheckCallback;I)V

    return-void
.end method

.method static synthetic access$800(Lcom/kingroot/kinguser/examination/service/CloudCheckService;Ljava/lang/String;Lcom/tencent/securemodule/api/AppInfo;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/examination/service/CloudCheckService;->saveInCache(Ljava/lang/String;Lcom/tencent/securemodule/api/AppInfo;)V

    return-void
.end method

.method static synthetic access$900(Lcom/kingroot/kinguser/examination/service/CloudCheckService;Lcom/tencent/securemodule/api/AppInfo;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/examination/service/CloudCheckService;->notifyRiskFound(Lcom/tencent/securemodule/api/AppInfo;)V

    return-void
.end method

.method private banRiskAppsAutoStart(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 839
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    sget-object v1, Lcom/kingroot/kinguser/examination/service/CloudCheckService;->sForceStopAutoStartThread:Lcom/kingroot/kinguser/bed;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/beg;->a(Lcom/kingroot/kinguser/bed;[Ljava/lang/Object;)Z

    .line 840
    return-void
.end method

.method private banRiskAppsRoot(Ljava/util/Set;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 809
    invoke-static {p1}, Lcom/kingroot/kinguser/yy;->c(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 833
    :goto_0
    return-void

    .line 812
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 814
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 815
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 816
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 817
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 818
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 823
    :cond_2
    const/4 v3, -0x1

    invoke-static {}, Lcom/kingroot/kinguser/bbt;->WG()Lcom/kingroot/kinguser/bbt;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/kingroot/kinguser/bbt;->getRuleType(Ljava/lang/String;)I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 827
    invoke-static {}, Lcom/kingroot/kinguser/bbt;->WG()Lcom/kingroot/kinguser/bbt;

    move-result-object v3

    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-virtual {v3, v0, v4, v6, v7}, Lcom/kingroot/kinguser/bbt;->updateRule(Ljava/lang/String;IJ)V

    .line 828
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 830
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v3, 0x1882d

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/ady;->bi(I)V

    goto :goto_1

    .line 832
    :cond_3
    invoke-static {}, Lcom/kingroot/kinguser/awb;->Sy()Lcom/kingroot/kinguser/awb;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/awb;->d(Ljava/util/Set;)V

    goto :goto_0
.end method

.method private banSilentInstallApp(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 846
    invoke-static {p1}, Lcom/kingroot/kinguser/yy;->c(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 860
    :cond_0
    return-void

    .line 850
    :cond_1
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 851
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 852
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 853
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 854
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 858
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/agy;->wk()Lcom/kingroot/kinguser/agy;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/kingroot/kinguser/agy;->p(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static getInstance()Lcom/kingroot/kinguser/examination/service/CloudCheckService;
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lcom/kingroot/kinguser/examination/service/CloudCheckService;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/examination/service/CloudCheckService;

    return-object v0
.end method

.method private getSecureModuleService()Lcom/kingroot/kinguser/bvx;
    .locals 3

    .prologue
    .line 136
    iget-object v0, p0, Lcom/kingroot/kinguser/examination/service/CloudCheckService;->mService:Lcom/kingroot/kinguser/bvx;

    .line 137
    if-nez v0, :cond_1

    .line 138
    iget-object v1, p0, Lcom/kingroot/kinguser/examination/service/CloudCheckService;->mProductInfo:Lcom/kingroot/kinguser/bng;

    monitor-enter v1

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/examination/service/CloudCheckService;->mService:Lcom/kingroot/kinguser/bvx;

    .line 140
    if-nez v0, :cond_3

    .line 141
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bvy;->bR(Landroid/content/Context;)Lcom/kingroot/kinguser/bvy;

    move-result-object v0

    .line 142
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/kingroot/kinguser/examination/service/CloudCheckService;->mProductInfo:Lcom/kingroot/kinguser/bng;

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/bvx;->a(Lcom/kingroot/kinguser/bng;)I

    move-result v2

    if-eqz v2, :cond_2

    .line 143
    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    .line 150
    :cond_1
    :goto_0
    return-object v0

    .line 146
    :cond_2
    iput-object v0, p0, Lcom/kingroot/kinguser/examination/service/CloudCheckService;->mService:Lcom/kingroot/kinguser/bvx;

    .line 148
    :cond_3
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleExpiredCache()V
    .locals 8

    .prologue
    .line 514
    iget-object v1, p0, Lcom/kingroot/kinguser/examination/service/CloudCheckService;->mCacheList:Ljava/util/List;

    monitor-enter v1

    .line 515
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/examination/service/CloudCheckService;->mCacheList:Ljava/util/List;

    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 516
    monitor-exit v1

    .line 532
    :goto_0
    return-void

    .line 519
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/examination/service/CloudCheckService;->mCacheList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 521
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 522
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/examination/service/CloudCheckService$a;

    .line 524
    iget-wide v4, v0, Lcom/kingroot/kinguser/examination/service/CloudCheckService$a;->aMp:J

    const-wide/32 v6, 0xdbba00

    invoke-static {v4, v5, v6, v7}, Lcom/kingroot/kinguser/acu;->g(JJ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 525
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 531
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private notifyRiskFound(Lcom/tencent/securemodule/api/AppInfo;)V
    .locals 5

    .prologue
    .line 471
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/tencent/securemodule/api/AppInfo;->apkPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 490
    :cond_0
    :goto_0
    return-void

    .line 475
    :cond_1
    iget-object v3, p0, Lcom/kingroot/kinguser/examination/service/CloudCheckService;->mCallbackMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 476
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/examination/service/CloudCheckService;->mCallbackMap:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/tencent/securemodule/api/AppInfo;->apkPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallbackList;

    .line 477
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 478
    :goto_1
    if-lez v1, :cond_2

    .line 479
    add-int/lit8 v2, v1, -0x1

    .line 481
    :try_start_1
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 482
    const-string v1, "risk"

    invoke-virtual {v4, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 483
    invoke-virtual {v0, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/examination/service/ICloudCheckCallback;

    invoke-interface {v1, v4}, Lcom/kingroot/kinguser/examination/service/ICloudCheckCallback;->onRiskFound(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v2

    .line 486
    goto :goto_1

    .line 484
    :catch_0
    move-exception v1

    move v1, v2

    .line 486
    goto :goto_1

    .line 488
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 489
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private notifyScanFinish(Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 494
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 511
    :goto_0
    return-void

    .line 498
    :cond_0
    iget-object v3, p0, Lcom/kingroot/kinguser/examination/service/CloudCheckService;->mCallbackMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 499
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/examination/service/CloudCheckService;->mCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallbackList;

    .line 500
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 501
    :goto_1
    if-lez v1, :cond_1

    .line 502
    add-int/lit8 v2, v1, -0x1

    .line 504
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/examination/service/ICloudCheckCallback;

    invoke-interface {v1, p2}, Lcom/kingroot/kinguser/examination/service/ICloudCheckCallback;->onFinish(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v2

    .line 507
    goto :goto_1

    .line 505
    :catch_0
    move-exception v1

    move v1, v2

    .line 507
    goto :goto_1

    .line 509
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 510
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private onFinish(Lcom/kingroot/kinguser/examination/service/ICloudCheckCallback;I)V
    .locals 1

    .prologue
    .line 765
    if-eqz p1, :cond_0

    .line 767
    :try_start_0
    invoke-interface {p1, p2}, Lcom/kingroot/kinguser/examination/service/ICloudCheckCallback;->onFinish(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 772
    :cond_0
    :goto_0
    return-void

    .line 768
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private onRiskFound(Lcom/kingroot/kinguser/examination/service/ICloudCheckCallback;Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kingroot/kinguser/examination/service/ICloudCheckCallback;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/securemodule/api/AppInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/securemodule/api/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 740
    if-nez p1, :cond_0

    .line 761
    :goto_0
    return-void

    .line 744
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 745
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 746
    invoke-static {p2}, Lcom/kingroot/kinguser/yy;->c(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 747
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 749
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 750
    invoke-static {p3}, Lcom/kingroot/kinguser/yy;->c(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 751
    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 754
    :cond_2
    const-string v3, "risk"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 755
    const-string v1, "unknown"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 757
    :try_start_0
    invoke-interface {p1, v0}, Lcom/kingroot/kinguser/examination/service/ICloudCheckCallback;->onRiskFound(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 758
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private saveInCache(Ljava/lang/String;Lcom/tencent/securemodule/api/AppInfo;)V
    .locals 3

    .prologue
    .line 564
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 572
    :goto_0
    return-void

    .line 568
    :cond_0
    iget-object v1, p0, Lcom/kingroot/kinguser/examination/service/CloudCheckService;->mCacheList:Ljava/util/List;

    monitor-enter v1

    .line 569
    :try_start_0
    new-instance v0, Lcom/kingroot/kinguser/examination/service/CloudCheckService$a;

    invoke-direct {v0, p1, p2}, Lcom/kingroot/kinguser/examination/service/CloudCheckService$a;-><init>(Ljava/lang/String;Lcom/tencent/securemodule/api/AppInfo;)V

    .line 570
    iget-object v2, p0, Lcom/kingroot/kinguser/examination/service/CloudCheckService;->mCacheList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 571
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private searchInCache(Ljava/lang/String;)Lcom/kingroot/kinguser/examination/service/CloudCheckService$a;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 535
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 560
    :goto_0
    return-object v0

    .line 540
    :cond_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/examination/service/CloudCheckService;->handleExpiredCache()V

    .line 542
    iget-object v2, p0, Lcom/kingroot/kinguser/examination/service/CloudCheckService;->mCacheList:Ljava/util/List;

    monitor-enter v2

    .line 544
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/examination/service/CloudCheckService;->mCacheList:Ljava/util/List;

    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 545
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 548
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/examination/service/CloudCheckService;->mCacheList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/examination/service/CloudCheckService$a;

    .line 549
    iget-object v4, v0, Lcom/kingroot/kinguser/examination/service/CloudCheckService$a;->apkPath:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 554
    iget-object v4, v0, Lcom/kingroot/kinguser/examination/service/CloudCheckService$a;->apkPath:Ljava/lang/String;

    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 555
    monitor-exit v2

    goto :goto_0

    .line 558
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    .line 560
    goto :goto_0
.end method

.method private setRiskAppsRootDenied(Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 778
    invoke-static {p1}, Lcom/kingroot/kinguser/yy;->c(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 803
    :goto_0
    return-void

    .line 783
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 784
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 785
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 786
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 787
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 792
    :cond_1
    const/4 v2, -0x1

    invoke-static {}, Lcom/kingroot/kinguser/bbt;->WG()Lcom/kingroot/kinguser/bbt;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/kingroot/kinguser/bbt;->getRuleType(Ljava/lang/String;)I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 793
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 798
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/bbt;->WG()Lcom/kingroot/kinguser/bbt;

    move-result-object v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/kingroot/kinguser/bbt;->updateRule(Ljava/lang/String;IJ)V

    goto :goto_1

    .line 802
    :cond_3
    invoke-static {}, Lcom/kingroot/kinguser/avu;->Sb()Lcom/kingroot/kinguser/avu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/avu;->d(Ljava/util/Set;)V

    goto :goto_0
.end method


# virtual methods
.method public cloudCheckAll(Lcom/kingroot/kinguser/examination/service/ICloudCheckCallback;)V
    .locals 2

    .prologue
    .line 286
    invoke-direct {p0}, Lcom/kingroot/kinguser/examination/service/CloudCheckService;->getSecureModuleService()Lcom/kingroot/kinguser/bvx;

    move-result-object v0

    .line 287
    if-nez v0, :cond_0

    .line 288
    const/16 v0, -0x7d0

    invoke-direct {p0, p1, v0}, Lcom/kingroot/kinguser/examination/service/CloudCheckService;->onFinish(Lcom/kingroot/kinguser/examination/service/ICloudCheckCallback;I)V

    .line 398
    :goto_0
    return-void

    .line 292
    :cond_0
    new-instance v1, Lcom/kingroot/kinguser/examination/service/CloudCheckService$4;

    invoke-direct {v1, p0, p1}, Lcom/kingroot/kinguser/examination/service/CloudCheckService$4;-><init>(Lcom/kingroot/kinguser/examination/service/CloudCheckService;Lcom/kingroot/kinguser/examination/service/ICloudCheckCallback;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bvx;->a(Lcom/kingroot/kinguser/bvw;)V

    goto :goto_0
.end method

.method public cloudCheckApks(Ljava/lang/String;Lcom/kingroot/kinguser/examination/service/ICloudCheckCallback;)V
    .locals 3

    .prologue
    .line 576
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 577
    const/16 v0, -0x3e8

    invoke-direct {p0, p2, v0}, Lcom/kingroot/kinguser/examination/service/CloudCheckService;->onFinish(Lcom/kingroot/kinguser/examination/service/ICloudCheckCallback;I)V

    .line 642
    :cond_0
    :goto_0
    return-void

    .line 581
    :cond_1
    invoke-direct {p0}, Lcom/kingroot/kinguser/examination/service/CloudCheckService;->getSecureModuleService()Lcom/kingroot/kinguser/bvx;

    move-result-object v0

    .line 582
    if-nez v0, :cond_2

    .line 583
    const/16 v0, -0x7d0

    invoke-direct {p0, p2, v0}, Lcom/kingroot/kinguser/examination/service/CloudCheckService;->onFinish(Lcom/kingroot/kinguser/examination/service/ICloudCheckCallback;I)V

    goto :goto_0

    .line 589
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/kingroot/kinguser/examination/service/CloudCheckService;->registerCallback(Ljava/lang/String;Lcom/kingroot/kinguser/examination/service/ICloudCheckCallback;)V

    .line 591
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/examination/service/CloudCheckService;->searchInCache(Ljava/lang/String;)Lcom/kingroot/kinguser/examination/service/CloudCheckService$a;

    move-result-object v1

    .line 594
    if-eqz v1, :cond_4

    .line 595
    iget-object v0, v1, Lcom/kingroot/kinguser/examination/service/CloudCheckService$a;->aMq:Lcom/tencent/securemodule/api/AppInfo;

    if-eqz v0, :cond_3

    .line 597
    iget-object v0, v1, Lcom/kingroot/kinguser/examination/service/CloudCheckService$a;->aMq:Lcom/tencent/securemodule/api/AppInfo;

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/examination/service/CloudCheckService;->notifyRiskFound(Lcom/tencent/securemodule/api/AppInfo;)V

    goto :goto_0

    .line 600
    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kingroot/kinguser/examination/service/CloudCheckService;->notifyScanFinish(Ljava/lang/String;I)V

    goto :goto_0

    .line 608
    :cond_4
    iget-object v1, p0, Lcom/kingroot/kinguser/examination/service/CloudCheckService;->mCheckingList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 612
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 613
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 614
    new-instance v2, Lcom/kingroot/kinguser/examination/service/CloudCheckService$5;

    invoke-direct {v2, p0, p1}, Lcom/kingroot/kinguser/examination/service/CloudCheckService$5;-><init>(Lcom/kingroot/kinguser/examination/service/CloudCheckService;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/bvx;->b(Ljava/util/List;Lcom/kingroot/kinguser/bvw;)V

    .line 641
    iget-object v0, p0, Lcom/kingroot/kinguser/examination/service/CloudCheckService;->mCheckingList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public cloudCheckApps(Ljava/util/List;Lcom/kingroot/kinguser/examination/service/ICloudCheckCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/kingroot/kinguser/examination/service/ICloudCheckCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 155
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 156
    :cond_0
    const/16 v0, -0x3e8

    invoke-direct {p0, p2, v0}, Lcom/kingroot/kinguser/examination/service/CloudCheckService;->onFinish(Lcom/kingroot/kinguser/examination/service/ICloudCheckCallback;I)V

    .line 282
    :goto_0
    return-void

    .line 160
    :cond_1
    invoke-direct {p0}, Lcom/kingroot/kinguser/examination/service/CloudCheckService;->getSecureModuleService()Lcom/kingroot/kinguser/bvx;

    move-result-object v0

    .line 161
    if-nez v0, :cond_2

    .line 162
    const/16 v0, -0x7d0

    invoke-direct {p0, p2, v0}, Lcom/kingroot/kinguser/examination/service/CloudCheckService;->onFinish(Lcom/kingroot/kinguser/examination/service/ICloudCheckCallback;I)V

    goto :goto_0

    .line 166
    :cond_2
    new-instance v1, Lcom/kingroot/kinguser/examination/service/CloudCheckService$3;

    invoke-direct {v1, p0, p2, p1}, Lcom/kingroot/kinguser/examination/service/CloudCheckService$3;-><init>(Lcom/kingroot/kinguser/examination/service/CloudCheckService;Lcom/kingroot/kinguser/examination/service/ICloudCheckCallback;Ljava/util/List;)V

    invoke-virtual {v0, p1, v1}, Lcom/kingroot/kinguser/bvx;->a(Ljava/util/List;Lcom/kingroot/kinguser/bvw;)V

    goto :goto_0
.end method

.method public downloadWeSecure()V
    .locals 5

    .prologue
    .line 669
    invoke-direct {p0}, Lcom/kingroot/kinguser/examination/service/CloudCheckService;->getSecureModuleService()Lcom/kingroot/kinguser/bvx;

    move-result-object v0

    .line 670
    if-nez v0, :cond_0

    .line 688
    :goto_0
    return-void

    .line 674
    :cond_0
    iget-object v1, p0, Lcom/kingroot/kinguser/examination/service/CloudCheckService;->mWeSecureDownloadListener:Lcom/kingroot/kinguser/bvu;

    monitor-enter v1

    .line 676
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v2

    .line 677
    invoke-virtual {v2}, Lcom/kingroot/kinguser/aks;->Ex()Ljava/lang/String;

    move-result-object v3

    .line 678
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 680
    monitor-exit v1

    goto :goto_0

    .line 687
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 682
    :cond_1
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/aks;->hg(Ljava/lang/String;)V

    .line 686
    iget-object v2, p0, Lcom/kingroot/kinguser/examination/service/CloudCheckService;->mWeSecureDownloadListener:Lcom/kingroot/kinguser/bvu;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/bvx;->a(Lcom/kingroot/kinguser/bvu;Z)I

    .line 687
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getAllRiskApps()Ljava/util/List;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 703
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lcom/kingroot/kinguser/avu;->Sb()Lcom/kingroot/kinguser/avu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/avu;->Sf()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getAllRiskAppsLiteInfo()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/examination/service/CloudCheckLiteInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 735
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lcom/kingroot/kinguser/avu;->Sb()Lcom/kingroot/kinguser/avu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/avu;->Sd()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getAllUnknownApps()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 730
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lcom/kingroot/kinguser/avu;->Sb()Lcom/kingroot/kinguser/avu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/avu;->Sg()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getCloudCheckFailedAppsCache()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 725
    invoke-static {}, Lcom/kingroot/kinguser/avu;->Sb()Lcom/kingroot/kinguser/avu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/avu;->getCloudCheckFailedAppsCache()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRiskType(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 697
    invoke-static {}, Lcom/kingroot/kinguser/avu;->Sb()Lcom/kingroot/kinguser/avu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/avu;->getRiskType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getUndeniedRiskApps()Ljava/util/List;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 658
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lcom/kingroot/kinguser/avu;->Sb()Lcom/kingroot/kinguser/avu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/avu;->Se()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getUntreatedRiskApps()Ljava/util/List;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 647
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lcom/kingroot/kinguser/avu;->Sb()Lcom/kingroot/kinguser/avu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/avu;->Sc()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public gotoWeSecureVirusScan()V
    .locals 2

    .prologue
    .line 715
    invoke-direct {p0}, Lcom/kingroot/kinguser/examination/service/CloudCheckService;->getSecureModuleService()Lcom/kingroot/kinguser/bvx;

    move-result-object v0

    .line 716
    if-nez v0, :cond_0

    .line 721
    :goto_0
    return-void

    .line 720
    :cond_0
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bvx;->bQ(Landroid/content/Context;)I

    goto :goto_0
.end method

.method public isWeSecureInstalled()Z
    .locals 1

    .prologue
    .line 708
    invoke-direct {p0}, Lcom/kingroot/kinguser/examination/service/CloudCheckService;->getSecureModuleService()Lcom/kingroot/kinguser/bvx;

    move-result-object v0

    .line 709
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bvx;->isWeSecureInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public markDeniedRiskApps(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 663
    invoke-static {}, Lcom/kingroot/kinguser/avu;->Sb()Lcom/kingroot/kinguser/avu;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/avu;->d(Ljava/util/Set;)V

    .line 664
    return-void
.end method

.method public markTreatedRiskApps(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 652
    invoke-static {}, Lcom/kingroot/kinguser/avu;->Sb()Lcom/kingroot/kinguser/avu;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/avu;->c(Ljava/util/Set;)V

    .line 653
    return-void
.end method

.method public registerCallback(Ljava/lang/String;Lcom/kingroot/kinguser/examination/service/ICloudCheckCallback;)V
    .locals 3

    .prologue
    .line 425
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    .line 451
    :cond_0
    :goto_0
    return-void

    .line 428
    :cond_1
    iget-object v1, p0, Lcom/kingroot/kinguser/examination/service/CloudCheckService;->mCallbackMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 429
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/examination/service/CloudCheckService;->mCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallbackList;

    .line 430
    if-nez v0, :cond_2

    .line 431
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 435
    :cond_2
    invoke-virtual {v0, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 436
    iget-object v2, p0, Lcom/kingroot/kinguser/examination/service/CloudCheckService;->mCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeAppInfos(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 692
    invoke-static {}, Lcom/kingroot/kinguser/avu;->Sb()Lcom/kingroot/kinguser/avu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/avu;->removeAppInfos(Ljava/util/List;)V

    .line 693
    return-void
.end method

.method public unregisterCallback(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 455
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 467
    :goto_0
    return-void

    .line 458
    :cond_0
    iget-object v1, p0, Lcom/kingroot/kinguser/examination/service/CloudCheckService;->mCallbackMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 459
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/examination/service/CloudCheckService;->mCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallbackList;

    .line 460
    if-eqz v0, :cond_1

    .line 462
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V

    .line 463
    iget-object v0, p0, Lcom/kingroot/kinguser/examination/service/CloudCheckService;->mCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
