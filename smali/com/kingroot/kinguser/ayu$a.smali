.class Lcom/kingroot/kinguser/ayu$a;
.super Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/ayu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static final sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/ayu$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lcom/kingroot/kinguser/ayu$a$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/ayu$a$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/ayu$a;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;-><init>()V

    .line 74
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/ayu$1;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/kingroot/kinguser/ayu$a;-><init>()V

    return-void
.end method

.method public static Vk()Lcom/kingroot/kinguser/ayu$a;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/kingroot/kinguser/ayu$a;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ayu$a;

    return-object v0
.end method


# virtual methods
.method public IE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    const-class v0, Lcom/kingroot/kinguser/ayu$a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onComplete(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 8

    .prologue
    .line 78
    invoke-virtual {p1}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->getOriginalUrl()Ljava/lang/String;

    move-result-object v3

    .line 80
    iget-object v0, p0, Lcom/kingroot/kinguser/ayu$a;->aGA:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;

    .line 81
    instance-of v1, v0, Lcom/kingroot/kinguser/distribution/base/QQPimAppDownloadRequest;

    if-nez v1, :cond_0

    .line 114
    :goto_0
    return-void

    .line 84
    :cond_0
    check-cast v0, Lcom/kingroot/kinguser/distribution/base/QQPimAppDownloadRequest;

    .line 86
    invoke-static {p1, v0}, Lcom/kingroot/kinguser/ayt;->a(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;Lcom/kingroot/kinguser/distribution/base/QQPimAppDownloadRequest;)Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;

    move-result-object v4

    .line 87
    invoke-static {}, Lcom/kingroot/kinguser/ayw;->Vn()Lcom/kingroot/kinguser/ayw;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/kingroot/kinguser/ayw;->f(Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;)V

    .line 88
    invoke-static {}, Lcom/kingroot/kinguser/ays;->Vf()Lcom/kingroot/kinguser/ays;

    move-result-object v1

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/base/QQPimAppDownloadRequest;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/ays;->kd(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/kingroot/kinguser/ayu$a;->axV:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->KM()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallbackList;

    .line 91
    if-eqz v0, :cond_3

    .line 92
    monitor-enter p0

    .line 93
    :try_start_0
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 95
    if-gtz v1, :cond_1

    .line 96
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    invoke-static {}, Lcom/kingroot/kinguser/ayu;->Vi()Lcom/kingroot/kinguser/bed;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/beg;->a(Lcom/kingroot/kinguser/bed;[Ljava/lang/Object;)Z

    .line 97
    monitor-exit p0

    goto :goto_0

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 100
    :cond_1
    :goto_1
    if-lez v1, :cond_2

    .line 101
    add-int/lit8 v2, v1, -0x1

    .line 103
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;

    invoke-interface {v1, p1}, Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;->onComplete(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v2

    .line 107
    goto :goto_1

    .line 104
    :catch_0
    move-exception v1

    .line 106
    :try_start_2
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v1

    invoke-static {}, Lcom/kingroot/kinguser/ayu;->Vi()Lcom/kingroot/kinguser/bed;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    invoke-virtual {v1, v5, v6}, Lcom/kingroot/kinguser/beg;->a(Lcom/kingroot/kinguser/bed;[Ljava/lang/Object;)Z

    move v1, v2

    .line 107
    goto :goto_1

    .line 109
    :cond_2
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 110
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 113
    :cond_3
    invoke-virtual {p0, v3}, Lcom/kingroot/kinguser/ayu$a;->hz(Ljava/lang/String;)V

    goto :goto_0
.end method
