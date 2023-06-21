.class public Lcom/kingroot/kinguser/amy;
.super Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/amy$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/amy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private azR:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingroot/kinguser/amy$a;",
            ">;"
        }
    .end annotation
.end field

.field private azS:Lcom/kingroot/kinguser/alz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/alz",
            "<",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;",
            ">;>;"
        }
    .end annotation
.end field

.field private final azT:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IOnWifiAutoDownloadListener;",
            ">;"
        }
    .end annotation
.end field

.field private final azU:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppStatusListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/kingroot/kinguser/aiq;->arY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AppsMarketDownloader"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/amy;->TAG:Ljava/lang/String;

    .line 91
    new-instance v0, Lcom/kingroot/kinguser/amy$2;

    invoke-direct {v0}, Lcom/kingroot/kinguser/amy$2;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/amy;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;-><init>()V

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/amy;->azR:Ljava/util/Map;

    .line 79
    new-instance v0, Lcom/kingroot/kinguser/amy$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/amy$1;-><init>(Lcom/kingroot/kinguser/amy;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/amy;->azS:Lcom/kingroot/kinguser/alz;

    .line 97
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/amy;->azT:Landroid/os/RemoteCallbackList;

    .line 98
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/amy;->azU:Landroid/os/RemoteCallbackList;

    .line 105
    iget-object v0, p0, Lcom/kingroot/kinguser/amy;->azS:Lcom/kingroot/kinguser/alz;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/alz;->a(Lcom/kingroot/kinguser/alz$a;)V

    .line 106
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/net/AppsMarketDownloader$3;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/distribution/appsmarket/net/AppsMarketDownloader$3;-><init>(Lcom/kingroot/kinguser/amy;)V

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/amy;->a(Lcom/kingroot/kinguser/distribution/net/download/NetworkChangedRemoteListener;)V

    .line 130
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/amy$1;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/kingroot/kinguser/amy;-><init>()V

    return-void
.end method

.method public static IB()Lcom/kingroot/kinguser/amy;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/kingroot/kinguser/amy;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/amy;

    return-object v0
.end method

.method public static synthetic a(Lcom/kingroot/kinguser/amy;)Lcom/kingroot/kinguser/alz;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/kingroot/kinguser/amy;->azS:Lcom/kingroot/kinguser/alz;

    return-object v0
.end method

.method public static synthetic a(Lcom/kingroot/kinguser/amy;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/amy;->hw(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;Lcom/kingroot/kinguser/amy$a;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 457
    if-eqz p2, :cond_0

    iget-boolean v0, p2, Lcom/kingroot/kinguser/amy$a;->azX:Z

    if-nez v0, :cond_1

    .line 466
    :cond_0
    :goto_0
    return-void

    .line 461
    :cond_1
    iget-boolean v0, p1, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->isUpdate:Z

    if-eqz v0, :cond_2

    .line 462
    invoke-direct {p0, p1, p2, p3}, Lcom/kingroot/kinguser/amy;->c(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;Lcom/kingroot/kinguser/amy$a;Ljava/lang/String;)V

    goto :goto_0

    .line 464
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/kingroot/kinguser/amy;->b(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;Lcom/kingroot/kinguser/amy$a;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;ZLcom/kingroot/kinguser/gamebox/common/IAppInstallListener;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;)V
    .locals 3
    .param p1    # Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 744
    new-instance v0, Lcom/kingroot/kinguser/amy$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/amy$a;-><init>(Lcom/kingroot/kinguser/amy$1;)V

    .line 745
    iput-boolean p2, v0, Lcom/kingroot/kinguser/amy$a;->azX:Z

    .line 746
    iput-object p3, v0, Lcom/kingroot/kinguser/amy$a;->azY:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;

    .line 747
    iput-object p4, v0, Lcom/kingroot/kinguser/amy$a;->azZ:Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;

    .line 748
    iget-object v1, p0, Lcom/kingroot/kinguser/amy;->azR:Ljava/util/Map;

    iget-object v2, p1, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->pkgName:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    return-void
.end method

.method static synthetic b(Lcom/kingroot/kinguser/amy;)Landroid/os/RemoteCallbackList;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/kingroot/kinguser/amy;->azU:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method private b(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)Lcom/kingroot/kinguser/amy$a;
    .locals 2
    .param p1    # Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 753
    iget-object v0, p0, Lcom/kingroot/kinguser/amy;->azR:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->KM()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/amy$a;

    return-object v0
.end method

.method private b(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;Lcom/kingroot/kinguser/amy$a;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 470
    new-instance v0, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;

    iget-object v1, p1, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->pkgName:Ljava/lang/String;

    iget-object v2, p1, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->apkMd5:Ljava/lang/String;

    invoke-direct {v0, p3, v1, v2}, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    iget-object v1, p1, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->reportInfo:Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;

    iput-object v1, v0, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->reportInfo:Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;

    .line 472
    iget-object v1, p1, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->appName:Ljava/lang/String;

    iput-object v1, v0, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->appName:Ljava/lang/String;

    .line 473
    invoke-static {}, Lcom/kingroot/kinguser/alm;->GQ()Lcom/kingroot/kinguser/asy;

    move-result-object v1

    iget-object v2, p2, Lcom/kingroot/kinguser/amy$a;->azY:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;

    invoke-interface {v1, v0, v2}, Lcom/kingroot/kinguser/asy;->a(Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;)V

    .line 474
    return-void
.end method

.method static synthetic c(Lcom/kingroot/kinguser/amy;)Landroid/os/RemoteCallbackList;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/kingroot/kinguser/amy;->azT:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method private c(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;Lcom/kingroot/kinguser/amy$a;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 478
    const/4 v1, 0x0

    .line 479
    invoke-static {}, Lcom/kingroot/kinguser/alv;->Hq()Lcom/kingroot/kinguser/amu;

    move-result-object v0

    invoke-interface {v0}, Lcom/kingroot/kinguser/amu;->Hw()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->e(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;

    .line 480
    iget-object v3, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->pkgName:Ljava/lang/String;

    iget-object v4, p1, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->pkgName:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    :goto_1
    move-object v1, v0

    .line 483
    goto :goto_0

    .line 485
    :cond_0
    if-nez v1, :cond_2

    .line 486
    invoke-static {}, Lcom/kingroot/kinguser/alv;->Hq()Lcom/kingroot/kinguser/amu;

    move-result-object v0

    invoke-interface {v0}, Lcom/kingroot/kinguser/amu;->Hx()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->e(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;

    .line 487
    iget-object v3, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->pkgName:Ljava/lang/String;

    iget-object v4, p1, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->pkgName:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v1, v0

    .line 488
    goto :goto_2

    .line 493
    :cond_2
    if-eqz v1, :cond_3

    .line 495
    iget-boolean v0, p1, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->isDiff:Z

    if-eqz v0, :cond_4

    .line 498
    invoke-static {}, Lcom/kingroot/kinguser/alq;->GY()Lcom/kingroot/kinguser/ams;

    move-result-object v0

    .line 500
    invoke-static {p1}, Lcom/kingroot/kinguser/apu;->l(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/kingroot/kinguser/distribution/appsmarket/net/AppsMarketDownloader$4;

    invoke-direct {v3, p0, p2, v1, p3}, Lcom/kingroot/kinguser/distribution/appsmarket/net/AppsMarketDownloader$4;-><init>(Lcom/kingroot/kinguser/amy;Lcom/kingroot/kinguser/amy$a;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;Ljava/lang/String;)V

    .line 498
    invoke-interface {v0, p3, v2, v1, v3}, Lcom/kingroot/kinguser/ams;->a(Ljava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IMergeApkPatchListener;)V

    .line 541
    :cond_3
    :goto_3
    return-void

    .line 537
    :cond_4
    invoke-static {}, Lcom/kingroot/kinguser/alm;->GQ()Lcom/kingroot/kinguser/asy;

    move-result-object v0

    invoke-static {v1, p3}, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->a(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;Ljava/lang/String;)Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;

    move-result-object v1

    iget-object v2, p2, Lcom/kingroot/kinguser/amy$a;->azY:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;

    invoke-interface {v0, v1, v2}, Lcom/kingroot/kinguser/asy;->a(Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;)V

    goto :goto_3

    :cond_5
    move-object v0, v1

    goto :goto_1
.end method

.method private d(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;)Z
    .locals 3
    .param p1    # Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 152
    if-nez p1, :cond_0

    move v0, v1

    .line 167
    :goto_0
    return v0

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/amy;->azS:Lcom/kingroot/kinguser/alz;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HR()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p1, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;

    .line 161
    invoke-virtual {p1, v0}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/kingroot/kinguser/amy;->azS:Lcom/kingroot/kinguser/alz;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HR()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object v0, p0, Lcom/kingroot/kinguser/amy;->azS:Lcom/kingroot/kinguser/alz;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HT()V

    .line 165
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 167
    goto :goto_0
.end method

.method private e(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;)Z
    .locals 2

    .prologue
    .line 189
    iget v0, p1, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->appStatus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 196
    iget v1, p1, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->appStatus:I

    if-ne v1, v0, :cond_0

    .line 197
    invoke-static {}, Lcom/kingroot/kinguser/amz;->II()Lcom/kingroot/kinguser/amz;

    move-result-object v1

    iget-object v2, p1, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/amz;->hM(Ljava/lang/String;)Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

    move-result-object v1

    if-nez v1, :cond_0

    .line 196
    :goto_0
    return v0

    .line 197
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hA(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 757
    iget-object v0, p0, Lcom/kingroot/kinguser/amy;->azR:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 758
    return-void
.end method

.method private hw(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/kingroot/kinguser/amy;->azS:Lcom/kingroot/kinguser/alz;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HR()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    iget-object v0, p0, Lcom/kingroot/kinguser/amy;->azS:Lcom/kingroot/kinguser/alz;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HT()V

    .line 318
    return-void
.end method


# virtual methods
.method public IC()Ljava/util/List;
    .locals 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 172
    iget-object v0, p0, Lcom/kingroot/kinguser/amy;->azS:Lcom/kingroot/kinguser/alz;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HR()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 173
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 174
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;

    .line 175
    iget v3, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->appStatus:I

    const/16 v4, 0x9

    if-eq v3, v4, :cond_1

    .line 176
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/amy;->e(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 177
    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 179
    :cond_2
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/amy;->f(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 180
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 184
    :cond_3
    return-object v1
.end method

.method public ID()V
    .locals 6

    .prologue
    .line 653
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->blm:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    const/4 v4, 0x0

    new-instance v5, Lcom/kingroot/kinguser/amy$4;

    invoke-direct {v5, p0}, Lcom/kingroot/kinguser/amy$4;-><init>(Lcom/kingroot/kinguser/amy;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 734
    return-void
.end method

.method public IE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 762
    const-class v0, Lcom/kingroot/kinguser/amy;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public IF()V
    .locals 6

    .prologue
    .line 791
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->blm:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v4, 0x0

    new-instance v5, Lcom/kingroot/kinguser/amy$5;

    invoke-direct {v5, p0}, Lcom/kingroot/kinguser/amy$5;-><init>(Lcom/kingroot/kinguser/amy;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 842
    return-void
.end method

.method public IG()V
    .locals 6

    .prologue
    .line 867
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->bll:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    const/4 v4, 0x0

    new-instance v5, Lcom/kingroot/kinguser/amy$6;

    invoke-direct {v5, p0}, Lcom/kingroot/kinguser/amy$6;-><init>(Lcom/kingroot/kinguser/amy;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 905
    return-void
.end method

.method public a(Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppHistoryListener;)V
    .locals 6
    .param p1    # Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppHistoryListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 600
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->blm:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v4, 0x0

    new-instance v5, Lcom/kingroot/kinguser/amy$3;

    invoke-direct {v5, p0, p1}, Lcom/kingroot/kinguser/amy$3;-><init>(Lcom/kingroot/kinguser/amy;Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppHistoryListener;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 644
    return-void
.end method

.method public a(Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppStatusListener;)V
    .locals 2

    .prologue
    .line 774
    iget-object v1, p0, Lcom/kingroot/kinguser/amy;->azU:Landroid/os/RemoteCallbackList;

    monitor-enter v1

    .line 775
    if-eqz p1, :cond_0

    .line 776
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/amy;->azU:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 778
    :cond_0
    monitor-exit v1

    .line 779
    return-void

    .line 778
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IOnWifiAutoDownloadListener;)V
    .locals 2

    .prologue
    .line 766
    iget-object v1, p0, Lcom/kingroot/kinguser/amy;->azT:Landroid/os/RemoteCallbackList;

    monitor-enter v1

    .line 767
    if-eqz p1, :cond_0

    .line 768
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/amy;->azT:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 770
    :cond_0
    monitor-exit v1

    .line 771
    return-void

    .line 770
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;ILcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;)V
    .locals 8
    .param p1    # Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    .line 215
    .line 216
    const/4 v1, 0x0

    .line 220
    :try_start_0
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/amy;->d(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {p0}, Lcom/kingroot/kinguser/amy;->IF()V

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/amy;->azS:Lcom/kingroot/kinguser/alz;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HR()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, p1, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;

    .line 228
    iget v3, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->appStatus:I

    invoke-static {v3}, Lcom/kingroot/kinguser/amg;->fv(I)Z

    move-result v3

    .line 230
    invoke-static {}, Lcom/kingroot/kinguser/apu;->LN()J

    move-result-wide v4

    .line 232
    iget-wide v6, p1, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->fileSize:J

    cmp-long v4, v6, v4

    if-lez v4, :cond_2

    if-eqz v3, :cond_2

    .line 233
    const/16 v1, 0x9

    iput v1, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->appStatus:I

    .line 235
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f070487

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 236
    if-ne p2, v2, :cond_1

    .line 237
    invoke-static {v0}, Lcom/kingroot/kinguser/zj;->b(Ljava/lang/CharSequence;)V

    .line 238
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x1896b

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/amy;->azS:Lcom/kingroot/kinguser/alz;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HT()V

    .line 288
    :goto_0
    return-void

    .line 244
    :cond_2
    :try_start_1
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/amy;->e(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/amy;->f(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    move v1, v2

    .line 248
    :cond_4
    invoke-static {v0}, Lcom/kingroot/kinguser/apu;->h(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;)Ljava/io/File;

    move-result-object v2

    .line 249
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    .line 250
    if-eqz v4, :cond_6

    .line 251
    const/4 v5, 0x5

    iput v5, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->appStatus:I

    .line 257
    :goto_1
    if-eqz v4, :cond_7

    .line 258
    iget-object v1, p0, Lcom/kingroot/kinguser/amy;->azR:Ljava/util/Map;

    iget-object v3, p1, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->pkgName:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/amy$a;

    .line 259
    iget-boolean v3, v1, Lcom/kingroot/kinguser/amy$a;->azX:Z

    if-eqz v3, :cond_5

    .line 260
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/kingroot/kinguser/amy;->a(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;Lcom/kingroot/kinguser/amy$a;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 286
    :cond_5
    iget-object v0, p0, Lcom/kingroot/kinguser/amy;->azS:Lcom/kingroot/kinguser/alz;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HT()V

    goto :goto_0

    .line 253
    :cond_6
    const/4 v5, 0x1

    :try_start_2
    iput v5, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->appStatus:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 286
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/kingroot/kinguser/amy;->azS:Lcom/kingroot/kinguser/alz;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/alz;->HT()V

    throw v0

    .line 265
    :cond_7
    :try_start_3
    iget-object v2, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->reportInfo:Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;

    .line 266
    if-eqz v3, :cond_a

    .line 267
    if-eqz v2, :cond_8

    .line 268
    invoke-static {}, Lcom/kingroot/kinguser/ana;->IO()Lcom/kingroot/kinguser/anc;

    move-result-object v1

    const/16 v3, 0xa

    invoke-interface {v1, v2, v3}, Lcom/kingroot/kinguser/anc;->a(Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;I)V

    .line 270
    :cond_8
    iget v1, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->cid:I

    if-eqz v1, :cond_9

    .line 271
    invoke-static {}, Lcom/kingroot/kinguser/ana;->IO()Lcom/kingroot/kinguser/anc;

    move-result-object v1

    iget v2, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->cid:I

    iget-object v3, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->pkgName:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/kingroot/kinguser/anc;->I(ILjava/lang/String;)V

    .line 283
    :cond_9
    :goto_2
    invoke-super {p0, v0, p2, p3}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->a(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;ILcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;)V

    .line 284
    invoke-virtual {p0}, Lcom/kingroot/kinguser/amy;->ID()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 286
    iget-object v0, p0, Lcom/kingroot/kinguser/amy;->azS:Lcom/kingroot/kinguser/alz;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HT()V

    goto :goto_0

    .line 274
    :cond_a
    if-eqz v1, :cond_9

    .line 275
    if-eqz v2, :cond_b

    .line 276
    :try_start_4
    invoke-static {}, Lcom/kingroot/kinguser/ana;->IO()Lcom/kingroot/kinguser/anc;

    move-result-object v1

    const/16 v3, 0x3c

    invoke-interface {v1, v2, v3}, Lcom/kingroot/kinguser/anc;->a(Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;I)V

    .line 278
    :cond_b
    iget v1, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->cid:I

    if-eqz v1, :cond_9

    .line 279
    invoke-static {}, Lcom/kingroot/kinguser/ana;->IO()Lcom/kingroot/kinguser/anc;

    move-result-object v1

    iget v2, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->cid:I

    iget-object v3, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->pkgName:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/kingroot/kinguser/anc;->L(ILjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method public a(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;ILcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;ZLcom/kingroot/kinguser/gamebox/common/IAppInstallListener;)V
    .locals 0
    .param p1    # Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 207
    invoke-direct {p0, p1, p4, p5, p3}, Lcom/kingroot/kinguser/amy;->a(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;ZLcom/kingroot/kinguser/gamebox/common/IAppInstallListener;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;)V

    .line 208
    invoke-virtual {p0, p1, p2, p3}, Lcom/kingroot/kinguser/amy;->a(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;ILcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;)V

    .line 209
    return-void
.end method

.method public a(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 1

    .prologue
    .line 322
    if-eqz p1, :cond_0

    .line 323
    invoke-virtual {p1}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->KM()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/amy;->hw(Ljava/lang/String;)V

    .line 325
    :cond_0
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->a(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    .line 326
    return-void
.end method

.method public a(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;Z)V
    .locals 1

    .prologue
    .line 338
    if-eqz p1, :cond_0

    .line 339
    invoke-virtual {p1}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->KM()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/amy;->hw(Ljava/lang/String;)V

    .line 341
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->a(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;Z)V

    .line 342
    return-void
.end method

.method public b(Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppStatusListener;)V
    .locals 2

    .prologue
    .line 854
    iget-object v1, p0, Lcom/kingroot/kinguser/amy;->azU:Landroid/os/RemoteCallbackList;

    monitor-enter v1

    .line 855
    if-eqz p1, :cond_0

    .line 856
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/amy;->azU:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 857
    invoke-virtual {p0}, Lcom/kingroot/kinguser/amy;->ID()V

    .line 859
    :cond_0
    monitor-exit v1

    .line 860
    return-void

    .line 859
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IOnWifiAutoDownloadListener;)V
    .locals 2

    .prologue
    .line 846
    iget-object v1, p0, Lcom/kingroot/kinguser/amy;->azT:Landroid/os/RemoteCallbackList;

    monitor-enter v1

    .line 847
    if-eqz p1, :cond_0

    .line 848
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/amy;->azT:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 850
    :cond_0
    monitor-exit v1

    .line 851
    return-void

    .line 850
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method c(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;)V
    .locals 3
    .param p1    # Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/amy;->d(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;)Z

    .line 138
    iget-object v0, p0, Lcom/kingroot/kinguser/amy;->azS:Lcom/kingroot/kinguser/alz;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HR()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;

    .line 139
    const/16 v1, 0x9

    iput v1, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->appStatus:I

    .line 140
    iget-object v1, p0, Lcom/kingroot/kinguser/amy;->azS:Lcom/kingroot/kinguser/alz;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/alz;->HR()Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v0, p0, Lcom/kingroot/kinguser/amy;->azS:Lcom/kingroot/kinguser/alz;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HT()V

    .line 142
    invoke-virtual {p0}, Lcom/kingroot/kinguser/amy;->ID()V

    .line 143
    return-void
.end method

.method public g(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;)V
    .locals 3

    .prologue
    .line 552
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/amy;->d(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;)Z

    .line 554
    iget-object v0, p0, Lcom/kingroot/kinguser/amy;->azS:Lcom/kingroot/kinguser/alz;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HR()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;

    .line 555
    const/4 v1, 0x4

    iput v1, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->appStatus:I

    .line 556
    iget-object v1, p0, Lcom/kingroot/kinguser/amy;->azS:Lcom/kingroot/kinguser/alz;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/alz;->HR()Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    iget-object v0, p0, Lcom/kingroot/kinguser/amy;->azS:Lcom/kingroot/kinguser/alz;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HT()V

    .line 558
    return-void
.end method

.method public hx(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 330
    if-eqz p1, :cond_0

    .line 331
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/amy;->hw(Ljava/lang/String;)V

    .line 333
    :cond_0
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->hx(Ljava/lang/String;)V

    .line 334
    return-void
.end method

.method public hy(Ljava/lang/String;)Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 567
    iget-object v0, p0, Lcom/kingroot/kinguser/amy;->azS:Lcom/kingroot/kinguser/alz;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HR()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;

    .line 568
    if-nez v0, :cond_0

    .line 591
    :goto_0
    return-object v2

    .line 571
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v1

    .line 573
    iget-object v3, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/kingroot/kinguser/zh;->du(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->isUpdate:Z

    if-nez v1, :cond_2

    .line 575
    invoke-static {v0}, Lcom/kingroot/kinguser/apu;->h(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/rs;->r(Ljava/io/File;)V

    .line 576
    iget-object v1, p0, Lcom/kingroot/kinguser/amy;->azS:Lcom/kingroot/kinguser/alz;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/alz;->HR()Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    .line 590
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/kingroot/kinguser/amy;->azS:Lcom/kingroot/kinguser/alz;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/alz;->HT()V

    move-object v2, v0

    .line 591
    goto :goto_0

    .line 579
    :cond_2
    invoke-static {v0}, Lcom/kingroot/kinguser/apu;->h(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;)Ljava/io/File;

    move-result-object v1

    .line 581
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->appStatus:I

    invoke-static {v2}, Lcom/kingroot/kinguser/anf;->fH(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 582
    const/4 v2, 0x5

    iput v2, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->appStatus:I

    .line 585
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->appStatus:I

    invoke-static {v1}, Lcom/kingroot/kinguser/anf;->fI(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 586
    const/4 v1, 0x0

    iput v1, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->appStatus:I

    goto :goto_1
.end method

.method protected hz(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 739
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/amy;->hR(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/amy;->hA(Ljava/lang/String;)V

    .line 740
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->hz(Ljava/lang/String;)V

    .line 741
    return-void
.end method

.method public onComplete(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 429
    if-eqz p1, :cond_3

    .line 430
    iget-object v0, p0, Lcom/kingroot/kinguser/amy;->azS:Lcom/kingroot/kinguser/alz;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HR()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->KM()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;

    .line 431
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/amy;->b(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)Lcom/kingroot/kinguser/amy$a;

    move-result-object v1

    .line 432
    if-eqz v0, :cond_2

    .line 433
    iget-object v2, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->reportInfo:Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;

    .line 434
    if-eqz v2, :cond_0

    .line 435
    invoke-static {}, Lcom/kingroot/kinguser/ana;->IO()Lcom/kingroot/kinguser/anc;

    move-result-object v3

    invoke-interface {v3, v2, v5}, Lcom/kingroot/kinguser/anc;->a(Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;I)V

    .line 437
    :cond_0
    iget v2, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->cid:I

    if-eqz v2, :cond_1

    .line 439
    invoke-static {}, Lcom/kingroot/kinguser/ana;->IO()Lcom/kingroot/kinguser/anc;

    move-result-object v2

    iget v3, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->cid:I

    iget-object v4, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->pkgName:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v5}, Lcom/kingroot/kinguser/anc;->d(ILjava/lang/String;I)V

    .line 442
    :cond_1
    const/4 v2, 0x5

    iput v2, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->appStatus:I

    .line 443
    iget-object v2, p0, Lcom/kingroot/kinguser/amy;->azS:Lcom/kingroot/kinguser/alz;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/alz;->HT()V

    .line 445
    invoke-virtual {p0}, Lcom/kingroot/kinguser/amy;->ID()V

    .line 447
    :cond_2
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->onComplete(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    .line 449
    if-eqz v0, :cond_3

    .line 451
    invoke-virtual {p1}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->KI()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/kingroot/kinguser/amy;->a(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;Lcom/kingroot/kinguser/amy$a;Ljava/lang/String;)V

    .line 454
    :cond_3
    return-void
.end method

.method public onFailed(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 5

    .prologue
    .line 292
    if-eqz p1, :cond_3

    .line 293
    iget-object v0, p0, Lcom/kingroot/kinguser/amy;->azS:Lcom/kingroot/kinguser/alz;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HR()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->KM()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;

    .line 294
    if-eqz v0, :cond_2

    .line 296
    const/4 v1, 0x3

    iput v1, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->appStatus:I

    .line 297
    iget-object v1, p0, Lcom/kingroot/kinguser/amy;->azS:Lcom/kingroot/kinguser/alz;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/alz;->HT()V

    .line 300
    iget-object v1, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->reportInfo:Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;

    .line 301
    if-eqz v1, :cond_0

    .line 302
    invoke-static {}, Lcom/kingroot/kinguser/ana;->IO()Lcom/kingroot/kinguser/anc;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lcom/kingroot/kinguser/anc;->a(Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;I)V

    .line 304
    :cond_0
    iget v1, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->cid:I

    if-eqz v1, :cond_1

    .line 306
    invoke-static {}, Lcom/kingroot/kinguser/ana;->IO()Lcom/kingroot/kinguser/anc;

    move-result-object v1

    iget v2, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->cid:I

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->pkgName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->KN()I

    move-result v3

    const/4 v4, 0x2

    invoke-interface {v1, v2, v0, v3, v4}, Lcom/kingroot/kinguser/anc;->b(ILjava/lang/String;II)V

    .line 309
    :cond_1
    invoke-virtual {p0}, Lcom/kingroot/kinguser/amy;->ID()V

    .line 311
    :cond_2
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->onFailed(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    .line 313
    :cond_3
    return-void
.end method

.method public onPaused(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 392
    if-eqz p1, :cond_4

    .line 393
    iget-object v0, p0, Lcom/kingroot/kinguser/amy;->azS:Lcom/kingroot/kinguser/alz;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HR()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->KM()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;

    .line 394
    if-eqz v0, :cond_3

    .line 395
    iget-object v1, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->reportInfo:Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;

    .line 396
    if-eqz v1, :cond_0

    .line 397
    invoke-static {}, Lcom/kingroot/kinguser/ana;->IO()Lcom/kingroot/kinguser/anc;

    move-result-object v1

    iget-object v2, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->reportInfo:Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;

    const/16 v3, 0xf

    invoke-interface {v1, v2, v3}, Lcom/kingroot/kinguser/anc;->a(Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;I)V

    .line 399
    :cond_0
    iget v1, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->cid:I

    if-eqz v1, :cond_1

    .line 401
    invoke-static {}, Lcom/kingroot/kinguser/ana;->IO()Lcom/kingroot/kinguser/anc;

    move-result-object v1

    iget v2, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->cid:I

    iget-object v3, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->pkgName:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4}, Lcom/kingroot/kinguser/anc;->d(ILjava/lang/String;I)V

    .line 405
    :cond_1
    iget v1, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->appStatus:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    .line 406
    iput v4, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->appStatus:I

    .line 407
    iget-object v0, p0, Lcom/kingroot/kinguser/amy;->azS:Lcom/kingroot/kinguser/alz;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HT()V

    .line 409
    :cond_2
    invoke-virtual {p0}, Lcom/kingroot/kinguser/amy;->ID()V

    .line 411
    :cond_3
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->onPaused(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    .line 413
    :cond_4
    return-void
.end method

.method public onPending(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 2

    .prologue
    .line 417
    if-eqz p1, :cond_1

    .line 418
    iget-object v0, p0, Lcom/kingroot/kinguser/amy;->azS:Lcom/kingroot/kinguser/alz;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HR()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->KM()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;

    .line 419
    if-eqz v0, :cond_0

    .line 420
    const/4 v1, 0x2

    iput v1, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->appStatus:I

    .line 421
    iget-object v0, p0, Lcom/kingroot/kinguser/amy;->azS:Lcom/kingroot/kinguser/alz;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HT()V

    .line 423
    :cond_0
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->onPending(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    .line 425
    :cond_1
    return-void
.end method

.method public onProgress(ILcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 360
    invoke-super {p0, p1, p2}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->onProgress(ILcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    .line 361
    if-nez p2, :cond_1

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 365
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/amy;->azS:Lcom/kingroot/kinguser/alz;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HR()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->KM()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;

    .line 366
    if-eqz v0, :cond_0

    .line 371
    iget v1, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->appStatus:I

    if-eq v1, v2, :cond_2

    .line 372
    iput v2, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->appStatus:I

    .line 373
    iget-object v1, p0, Lcom/kingroot/kinguser/amy;->azS:Lcom/kingroot/kinguser/alz;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/alz;->HT()V

    .line 377
    :cond_2
    rem-int/lit8 v1, p1, 0x5

    if-nez v1, :cond_0

    .line 378
    if-eqz v0, :cond_0

    .line 379
    iput p1, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->progress:I

    .line 380
    iget-object v0, p0, Lcom/kingroot/kinguser/amy;->azS:Lcom/kingroot/kinguser/alz;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HT()V

    goto :goto_0
.end method

.method public onRemove(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 0

    .prologue
    .line 354
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->onRemove(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    .line 355
    invoke-virtual {p0}, Lcom/kingroot/kinguser/amy;->ID()V

    .line 356
    return-void
.end method

.method public onStartDownload(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 0

    .prologue
    .line 387
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->onStartDownload(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    .line 388
    return-void
.end method

.method public z(Ljava/lang/String;Z)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 346
    if-eqz p1, :cond_0

    .line 347
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/amy;->hw(Ljava/lang/String;)V

    .line 349
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->z(Ljava/lang/String;Z)V

    .line 350
    return-void
.end method
