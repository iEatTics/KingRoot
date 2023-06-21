.class public abstract Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/aoy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected final aGA:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final aGB:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final aGC:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final aGD:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final aGE:Lcom/kingroot/kinguser/aox$a;

.field private final aGF:Lcom/kingroot/kinguser/apa$a;

.field private aGz:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/kingroot/kinguser/distribution/net/download/NetworkChangedRemoteListener;",
            ">;"
        }
    .end annotation
.end field

.field protected final axV:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/kingroot/kinguser/aiq;->arY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_AppDownloadServiceImp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->axV:Ljava/util/Map;

    .line 33
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->aGz:Landroid/os/RemoteCallbackList;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 37
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->aGA:Ljava/util/Map;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->aGB:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->aGC:Ljava/util/Map;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->aGD:Ljava/util/Map;

    .line 51
    new-instance v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$1;-><init>(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->aGE:Lcom/kingroot/kinguser/aox$a;

    .line 67
    new-instance v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$2;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$2;-><init>(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->aGF:Lcom/kingroot/kinguser/apa$a;

    .line 48
    invoke-static {}, Lcom/kingroot/kinguser/aox;->KC()Lcom/kingroot/kinguser/aox;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->aGE:Lcom/kingroot/kinguser/aox$a;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aox;->a(Lcom/kingroot/kinguser/aox$a;)V

    .line 49
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;)Landroid/os/RemoteCallbackList;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->aGz:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->hQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;Ljava/lang/String;Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->a(Ljava/lang/String;Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;Ljava/lang/String;)V
    .locals 3
    .param p2    # Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 164
    new-instance v0, Lcom/kingroot/kinguser/apa$b;

    invoke-direct {v0}, Lcom/kingroot/kinguser/apa$b;-><init>()V

    .line 165
    iput-object p1, v0, Lcom/kingroot/kinguser/apa$b;->url:Ljava/lang/String;

    .line 166
    invoke-static {}, Lcom/kingroot/kinguser/apu;->LM()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kingroot/kinguser/apa$b;->aHa:Ljava/lang/String;

    .line 167
    invoke-static {p2}, Lcom/kingroot/kinguser/apu;->i(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kingroot/kinguser/apa$b;->aGZ:Ljava/lang/String;

    .line 168
    iput-object p3, v0, Lcom/kingroot/kinguser/apa$b;->tag:Ljava/lang/String;

    .line 169
    invoke-static {}, Lcom/kingroot/kinguser/aox;->KC()Lcom/kingroot/kinguser/aox;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->aGF:Lcom/kingroot/kinguser/apa$a;

    invoke-virtual {v1, v0, v2}, Lcom/kingroot/kinguser/aox;->a(Lcom/kingroot/kinguser/apa$b;Lcom/kingroot/kinguser/apa$a;)Lcom/kingroot/kinguser/bom;

    .line 170
    return-void
.end method

.method static synthetic b(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->aGB:Ljava/util/Map;

    return-object v0
.end method

.method private c(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 3

    .prologue
    .line 338
    if-nez p1, :cond_0

    .line 343
    :goto_0
    return-void

    .line 341
    :cond_0
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->aGD:Ljava/util/Map;

    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->aGC:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->getOriginalUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/kingroot/kinguser/aab;->dH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->aGC:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->getOriginalUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/aab;->dH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private hP(Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 223
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 232
    :cond_0
    :goto_0
    return-object v0

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->aGB:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 227
    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 229
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private hQ(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 238
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    const-string v0, ""

    .line 248
    :goto_0
    return-object v0

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->aGB:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 243
    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->e(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 244
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 245
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 248
    goto :goto_0
.end method

.method private hS(Ljava/lang/String;)Landroid/os/RemoteCallbackList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 565
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->hR(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 566
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->axV:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallbackList;

    goto :goto_0
.end method


# virtual methods
.method public KA()V
    .locals 2

    .prologue
    .line 203
    invoke-static {}, Lcom/kingroot/kinguser/aox;->KC()Lcom/kingroot/kinguser/aox;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->IE()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aox;->hY(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 204
    invoke-static {}, Lcom/kingroot/kinguser/aox;->KC()Lcom/kingroot/kinguser/aox;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/aox;->k(Ljava/util/Collection;)V

    .line 205
    return-void
.end method

.method public Ky()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 370
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 371
    invoke-static {}, Lcom/kingroot/kinguser/aox;->KC()Lcom/kingroot/kinguser/aox;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->IE()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aox;->hY(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 372
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bom;

    .line 373
    invoke-interface {v0}, Lcom/kingroot/kinguser/bom;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->hQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 374
    new-instance v5, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

    invoke-virtual {p0, v4}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->hR(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->aGA:Ljava/util/Map;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;

    invoke-direct {v5, v0, v4, v6, v1}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;-><init>(Lcom/kingroot/kinguser/bom;Ljava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 376
    :cond_0
    return-object v2
.end method

.method public Kz()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 382
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 383
    invoke-static {}, Lcom/kingroot/kinguser/aox;->KC()Lcom/kingroot/kinguser/aox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aox;->KP()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bom;

    .line 384
    invoke-interface {v0}, Lcom/kingroot/kinguser/bom;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->hQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 385
    new-instance v5, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

    invoke-virtual {p0, v4}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->hR(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->aGA:Ljava/util/Map;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;

    invoke-direct {v5, v0, v4, v6, v1}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;-><init>(Lcom/kingroot/kinguser/bom;Ljava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 387
    :cond_0
    return-object v2
.end method

.method public a(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;ILcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;)V
    .locals 3
    .param p1    # Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 121
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->apkUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    if-eqz p3, :cond_3

    .line 127
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->axV:Ljava/util/Map;

    iget-object v1, p1, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->pkgName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallbackList;

    .line 128
    if-nez v0, :cond_2

    .line 129
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 130
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->axV:Ljava/util/Map;

    iget-object v2, p1, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->pkgName:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    :cond_2
    invoke-virtual {v0, p3}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 135
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->aGC:Ljava/util/Map;

    iget-object v1, p1, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->apkUrl:Ljava/lang/String;

    iget-object v2, p1, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->pkgName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->aGD:Ljava/util/Map;

    iget-object v1, p1, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->pkgName:Ljava/lang/String;

    iget-object v2, p1, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->apkUrl:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    new-instance v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$3;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$3;-><init>(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 158
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->aGA:Ljava/util/Map;

    iget-object v1, p1, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->apkUrl:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public a(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 1

    .prologue
    .line 321
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->a(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;Z)V

    .line 322
    return-void
.end method

.method public a(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;)V
    .locals 1
    .param p1    # Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 312
    if-nez p1, :cond_0

    .line 317
    :goto_0
    return-void

    .line 315
    :cond_0
    invoke-virtual {p1}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    .line 316
    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->hR(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->a(Ljava/lang/String;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;)V

    goto :goto_0
.end method

.method public a(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;Z)V
    .locals 2

    .prologue
    .line 326
    if-nez p1, :cond_0

    .line 335
    :goto_0
    return-void

    .line 330
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/aox;->KC()Lcom/kingroot/kinguser/aox;

    move-result-object v0

    invoke-virtual {p1}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/kingroot/kinguser/aox;->z(Ljava/lang/String;Z)V

    .line 332
    invoke-virtual {p1}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->hz(Ljava/lang/String;)V

    .line 333
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->onRemove(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    .line 334
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->c(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    goto :goto_0
.end method

.method public a(Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;)V
    .locals 3
    .param p1    # Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 299
    if-eqz p1, :cond_1

    .line 300
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->axV:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 301
    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->axV:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallbackList;

    .line 302
    if-eqz v0, :cond_0

    .line 303
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    goto :goto_0

    .line 307
    :cond_1
    return-void
.end method

.method public a(Lcom/kingroot/kinguser/distribution/net/download/NetworkChangedRemoteListener;)V
    .locals 1
    .param p1    # Lcom/kingroot/kinguser/distribution/net/download/NetworkChangedRemoteListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 174
    if-eqz p1, :cond_0

    .line 175
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->aGz:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 177
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 283
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 286
    :cond_1
    if-eqz p2, :cond_0

    .line 287
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->axV:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallbackList;

    .line 288
    if-nez v0, :cond_2

    .line 289
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 290
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->axV:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    :cond_2
    invoke-virtual {v0, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    goto :goto_0
.end method

.method public b(Lcom/kingroot/kinguser/distribution/net/download/NetworkChangedRemoteListener;)V
    .locals 1
    .param p1    # Lcom/kingroot/kinguser/distribution/net/download/NetworkChangedRemoteListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 182
    if-eqz p1, :cond_0

    .line 183
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->aGz:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 185
    :cond_0
    return-void
.end method

.method public hK(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 190
    if-eqz p1, :cond_0

    .line 191
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->hO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->hP(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 192
    invoke-static {}, Lcom/kingroot/kinguser/aox;->KC()Lcom/kingroot/kinguser/aox;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/aox;->hK(Ljava/lang/String;)V

    goto :goto_0

    .line 195
    :cond_0
    return-void
.end method

.method public hL(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 209
    if-eqz p1, :cond_0

    .line 210
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->hO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->hP(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 212
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/aox;->KC()Lcom/kingroot/kinguser/aox;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/aox;->hL(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/kingroot/kinguser/bnx; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 213
    :catch_0
    move-exception v0

    goto :goto_0

    .line 219
    :cond_0
    return-void
.end method

.method public hM(Ljava/lang/String;)Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 253
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 264
    :goto_0
    return-object v0

    .line 257
    :cond_0
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->hO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->hP(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 258
    invoke-static {}, Lcom/kingroot/kinguser/aox;->KC()Lcom/kingroot/kinguser/aox;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/kingroot/kinguser/aox;->hX(Ljava/lang/String;)Lcom/kingroot/kinguser/bom;

    move-result-object v3

    .line 259
    if-eqz v3, :cond_1

    .line 260
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->hQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 261
    new-instance v1, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->aGA:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;

    invoke-direct {v1, v3, v2, p1, v0}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;-><init>(Lcom/kingroot/kinguser/bom;Ljava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;)V

    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 264
    goto :goto_0
.end method

.method public hN(Ljava/lang/String;)Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 269
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 278
    :cond_0
    :goto_0
    return-object v0

    .line 273
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/aox;->KC()Lcom/kingroot/kinguser/aox;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/kingroot/kinguser/aox;->hZ(Ljava/lang/String;)Lcom/kingroot/kinguser/bom;

    move-result-object v2

    .line 274
    if-eqz v2, :cond_0

    .line 275
    invoke-interface {v2}, Lcom/kingroot/kinguser/bom;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->hQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 276
    new-instance v1, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

    invoke-virtual {p0, v3}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->hR(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->aGA:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;-><init>(Lcom/kingroot/kinguser/bom;Ljava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;)V

    move-object v0, v1

    goto :goto_0
.end method

.method protected hO(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 198
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->aGD:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/kingroot/kinguser/aab;->dH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected hR(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 400
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    const-string v0, ""

    .line 403
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->aGC:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public hx(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 347
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->z(Ljava/lang/String;Z)V

    .line 348
    return-void
.end method

.method public hz(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 395
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->axV:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->hR(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->aGA:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    return-void
.end method

.method public onComplete(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 4

    .prologue
    .line 476
    invoke-virtual {p1}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->hS(Ljava/lang/String;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    .line 477
    if-nez v2, :cond_0

    .line 495
    :goto_0
    return-void

    .line 480
    :cond_0
    iget-object v3, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->axV:Ljava/util/Map;

    monitor-enter v3

    .line 481
    :try_start_0
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 482
    :goto_1
    if-lez v0, :cond_1

    .line 483
    add-int/lit8 v1, v0, -0x1

    .line 485
    :try_start_1
    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;

    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;->onComplete(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 487
    goto :goto_1

    .line 486
    :catch_0
    move-exception v0

    move v0, v1

    .line 487
    goto :goto_1

    .line 489
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 490
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 492
    invoke-virtual {p1}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->hz(Ljava/lang/String;)V

    goto :goto_0

    .line 490
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public onFailed(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 4

    .prologue
    .line 499
    invoke-virtual {p1}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->hS(Ljava/lang/String;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    .line 500
    if-nez v2, :cond_0

    .line 517
    :goto_0
    return-void

    .line 503
    :cond_0
    iget-object v3, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->axV:Ljava/util/Map;

    monitor-enter v3

    .line 504
    :try_start_0
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 505
    :goto_1
    if-lez v0, :cond_1

    .line 506
    add-int/lit8 v1, v0, -0x1

    .line 508
    :try_start_1
    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;

    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;->onFailed(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 510
    goto :goto_1

    .line 509
    :catch_0
    move-exception v0

    move v0, v1

    .line 510
    goto :goto_1

    .line 512
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 513
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 515
    invoke-virtual {p1}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->hz(Ljava/lang/String;)V

    goto :goto_0

    .line 513
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public onPaused(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 4

    .prologue
    .line 521
    invoke-virtual {p1}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->hS(Ljava/lang/String;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    .line 523
    if-nez v2, :cond_0

    .line 540
    :goto_0
    return-void

    .line 526
    :cond_0
    iget-object v3, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->axV:Ljava/util/Map;

    monitor-enter v3

    .line 527
    :try_start_0
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 528
    :goto_1
    if-lez v0, :cond_1

    .line 529
    add-int/lit8 v1, v0, -0x1

    .line 531
    :try_start_1
    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;

    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;->onPaused(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 534
    goto :goto_1

    .line 532
    :catch_0
    move-exception v0

    move v0, v1

    .line 534
    goto :goto_1

    .line 537
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 538
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public onPending(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 4

    .prologue
    .line 544
    invoke-virtual {p1}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->hS(Ljava/lang/String;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    .line 546
    if-nez v2, :cond_0

    .line 562
    :goto_0
    return-void

    .line 549
    :cond_0
    iget-object v3, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->axV:Ljava/util/Map;

    monitor-enter v3

    .line 550
    :try_start_0
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 551
    :goto_1
    if-lez v0, :cond_1

    .line 552
    add-int/lit8 v1, v0, -0x1

    .line 554
    :try_start_1
    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;

    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;->onPending(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 557
    goto :goto_1

    .line 555
    :catch_0
    move-exception v0

    move v0, v1

    .line 557
    goto :goto_1

    .line 560
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 561
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public onProgress(ILcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 5

    .prologue
    .line 435
    invoke-virtual {p2}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->hS(Ljava/lang/String;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    .line 437
    if-nez v2, :cond_0

    .line 453
    :goto_0
    return-void

    .line 440
    :cond_0
    iget-object v3, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->axV:Ljava/util/Map;

    monitor-enter v3

    .line 441
    :try_start_0
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 442
    :goto_1
    if-lez v0, :cond_1

    .line 443
    add-int/lit8 v1, v0, -0x1

    .line 445
    :try_start_1
    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;

    invoke-virtual {p2}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->KL()I

    move-result v4

    invoke-interface {v0, v4, p2}, Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;->onProgress(ILcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 448
    goto :goto_1

    .line 446
    :catch_0
    move-exception v0

    move v0, v1

    .line 448
    goto :goto_1

    .line 451
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 452
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public onRemove(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 4

    .prologue
    .line 409
    if-nez p1, :cond_1

    .line 431
    :cond_0
    :goto_0
    return-void

    .line 412
    :cond_1
    invoke-virtual {p1}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->hS(Ljava/lang/String;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    .line 414
    if-eqz v2, :cond_0

    .line 417
    iget-object v3, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->axV:Ljava/util/Map;

    monitor-enter v3

    .line 418
    :try_start_0
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 419
    :goto_1
    if-lez v0, :cond_2

    .line 420
    add-int/lit8 v1, v0, -0x1

    .line 422
    :try_start_1
    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;

    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;->onRemove(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 425
    goto :goto_1

    .line 423
    :catch_0
    move-exception v0

    move v0, v1

    .line 425
    goto :goto_1

    .line 428
    :cond_2
    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 429
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public onStartDownload(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 4

    .prologue
    .line 457
    invoke-virtual {p1}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->hS(Ljava/lang/String;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    .line 458
    if-nez v2, :cond_0

    .line 472
    :goto_0
    return-void

    .line 461
    :cond_0
    iget-object v3, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->axV:Ljava/util/Map;

    monitor-enter v3

    .line 462
    :try_start_0
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 463
    :goto_1
    if-lez v0, :cond_1

    .line 464
    add-int/lit8 v1, v0, -0x1

    .line 466
    :try_start_1
    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;

    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;->onStartDownload(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 468
    goto :goto_1

    .line 467
    :catch_0
    move-exception v0

    move v0, v1

    .line 468
    goto :goto_1

    .line 470
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 471
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public z(Ljava/lang/String;Z)V
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 352
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->hO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 353
    if-eqz p1, :cond_1

    .line 354
    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->hP(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 355
    invoke-static {}, Lcom/kingroot/kinguser/aox;->KC()Lcom/kingroot/kinguser/aox;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/kingroot/kinguser/aox;->hX(Ljava/lang/String;)Lcom/kingroot/kinguser/bom;

    move-result-object v3

    .line 356
    invoke-static {}, Lcom/kingroot/kinguser/aox;->KC()Lcom/kingroot/kinguser/aox;

    move-result-object v4

    invoke-virtual {v4, v0, p2}, Lcom/kingroot/kinguser/aox;->z(Ljava/lang/String;Z)V

    .line 357
    if-eqz v3, :cond_0

    .line 358
    new-instance v4, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->aGA:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;

    invoke-direct {v4, v3, v1, p1, v0}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;-><init>(Lcom/kingroot/kinguser/bom;Ljava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;)V

    invoke-virtual {p0, v4}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->onRemove(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    goto :goto_0

    .line 363
    :cond_1
    invoke-virtual {p0, v1}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->hz(Ljava/lang/String;)V

    .line 364
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->hM(Ljava/lang/String;)Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->c(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    .line 365
    return-void
.end method
