.class public Lcom/kingroot/kinguser/aot;
.super Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/aot$a;
    }
.end annotation


# static fields
.field private static final aGq:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/aot;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final aGw:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/aot$a;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/kingroot/kinguser/aot$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/aot$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/aot;->aGq:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;-><init>()V

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/aot;->aGw:Ljava/util/Map;

    .line 47
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/aot$1;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/kingroot/kinguser/aot;-><init>()V

    return-void
.end method

.method public static Kw()Lcom/kingroot/kinguser/aot;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/kingroot/kinguser/aot;->aGq:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aot;

    return-object v0
.end method


# virtual methods
.method public IE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    const-class v0, Lcom/kingroot/kinguser/aot;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;ILcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;)V
    .locals 4
    .param p1    # Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 51
    iget-object v1, p0, Lcom/kingroot/kinguser/aot;->aGw:Ljava/util/Map;

    monitor-enter v1

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/aot;->aGw:Ljava/util/Map;

    iget-object v2, p1, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->pkgName:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 53
    if-nez v0, :cond_0

    .line 54
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 55
    iget-object v2, p0, Lcom/kingroot/kinguser/aot;->aGw:Ljava/util/Map;

    iget-object v3, p1, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->pkgName:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :cond_0
    new-instance v2, Lcom/kingroot/kinguser/aot$a;

    iget-object v3, p1, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->pkgName:Ljava/lang/String;

    invoke-direct {v2, p0, v3, p2}, Lcom/kingroot/kinguser/aot$a;-><init>(Lcom/kingroot/kinguser/aot;Ljava/lang/String;I)V

    .line 58
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    iget-object v1, p1, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->pkgName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v1

    const v2, 0x187fa

    invoke-virtual {v1, v2, v0}, Lcom/kingroot/kinguser/ady;->a(ILjava/util/List;)V

    .line 68
    invoke-super {p0, p1, p2, p3}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->a(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;ILcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;)V

    .line 69
    return-void

    .line 59
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected hz(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/kingroot/kinguser/aot;->aGw:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/aot;->hR(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->hz(Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public onComplete(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 6

    .prologue
    .line 73
    const/4 v2, 0x0

    .line 74
    const-string v1, ""

    .line 75
    iget-object v0, p0, Lcom/kingroot/kinguser/aot;->aGw:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->KM()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 76
    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->e(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aot$a;

    .line 77
    if-eqz v0, :cond_0

    .line 79
    iget v4, v0, Lcom/kingroot/kinguser/aot$a;->type:I

    if-nez v4, :cond_1

    .line 80
    const/4 v2, 0x1

    .line 81
    iget-object v1, v0, Lcom/kingroot/kinguser/aot$a;->pkgName:Ljava/lang/String;

    .line 85
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 86
    iget-object v5, v0, Lcom/kingroot/kinguser/aot$a;->pkgName:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    iget v0, v0, Lcom/kingroot/kinguser/aot$a;->type:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v5, 0x187fb

    invoke-virtual {v0, v5, v4}, Lcom/kingroot/kinguser/ady;->a(ILjava/util/List;)V

    goto :goto_0

    .line 94
    :cond_2
    if-eqz v2, :cond_3

    .line 95
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aks;->hi(Ljava/lang/String;)V

    .line 98
    :cond_3
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->onComplete(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    .line 99
    return-void
.end method
