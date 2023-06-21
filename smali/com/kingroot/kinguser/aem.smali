.class public Lcom/kingroot/kinguser/aem;
.super Lcom/kingroot/kinguser/avj;
.source "SourceFile"


# static fields
.field private static final sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/aem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private afj:Lcom/kingroot/kinguser/aeo;

.field private afk:Lcom/kingroot/kingmaster/network/updatalist/CommonList;

.field private afl:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/kingroot/kingmaster/network/updatalist/CommonList$a;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/kingroot/kinguser/aem$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/aem$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/aem;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 31
    const v0, 0x9d66

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/avj;-><init>(I)V

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/aem;->mLock:Ljava/lang/Object;

    .line 28
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/aem;->afl:Ljava/util/WeakHashMap;

    .line 32
    new-instance v0, Lcom/kingroot/kinguser/aeo;

    invoke-static {}, Lcom/kingroot/kinguser/aep;->nF()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/aeo;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aem;->afj:Lcom/kingroot/kinguser/aeo;

    .line 33
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/aem$1;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/kingroot/kinguser/aem;-><init>()V

    return-void
.end method

.method private b([II)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 98
    array-length v2, p1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget v3, p1, v1

    .line 99
    if-ne v3, p2, :cond_1

    .line 100
    const/4 v0, 0x1

    .line 103
    :cond_0
    return v0

    .line 98
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private g([I)Lcom/kingroot/kingmaster/network/updatalist/CommonList;
    .locals 6

    .prologue
    .line 63
    new-instance v2, Lcom/kingroot/kingmaster/network/updatalist/CommonList;

    invoke-direct {v2}, Lcom/kingroot/kingmaster/network/updatalist/CommonList;-><init>()V

    .line 64
    invoke-virtual {p0}, Lcom/kingroot/kinguser/aem;->Rw()Lcom/kingroot/kinguser/br;

    move-result-object v0

    .line 65
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/kingroot/kinguser/br;->kU:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 66
    iget-object v3, v0, Lcom/kingroot/kinguser/br;->kU:Ljava/util/ArrayList;

    .line 67
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 68
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bq;

    .line 69
    iget-object v4, v0, Lcom/kingroot/kinguser/bq;->kM:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/kingroot/kinguser/bq;->kM:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    iget-object v4, v0, Lcom/kingroot/kinguser/bq;->kN:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/kingroot/kinguser/bq;->kN:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 79
    :try_start_0
    iget-object v4, v0, Lcom/kingroot/kinguser/bq;->kN:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 80
    invoke-direct {p0, p1, v4}, Lcom/kingroot/kinguser/aem;->b([II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 81
    iget-object v5, v2, Lcom/kingroot/kingmaster/network/updatalist/CommonList;->nameList:Ljava/util/HashMap;

    iget-object v0, v0, Lcom/kingroot/kinguser/bq;->kM:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 88
    :cond_1
    return-object v2

    .line 83
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static ux()Lcom/kingroot/kinguser/aem;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/kingroot/kinguser/aem;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aem;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/kingroot/kingmaster/network/updatalist/CommonList$a;)Lcom/kingroot/kingmaster/network/updatalist/CommonList;
    .locals 3

    .prologue
    .line 47
    if-eqz p1, :cond_0

    .line 48
    iget-object v0, p0, Lcom/kingroot/kinguser/aem;->afl:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    :cond_0
    iget-object v1, p0, Lcom/kingroot/kinguser/aem;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/aem;->afk:Lcom/kingroot/kingmaster/network/updatalist/CommonList;

    if-nez v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/kingroot/kinguser/aem;->afj:Lcom/kingroot/kinguser/aeo;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/aeo;->cO(I)[I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/aem;->g([I)Lcom/kingroot/kingmaster/network/updatalist/CommonList;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/aem;->afk:Lcom/kingroot/kingmaster/network/updatalist/CommonList;

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/aem;->afk:Lcom/kingroot/kingmaster/network/updatalist/CommonList;

    monitor-exit v1

    return-object v0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected uy()V
    .locals 3

    .prologue
    .line 108
    iget-object v1, p0, Lcom/kingroot/kinguser/aem;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/aem;->afj:Lcom/kingroot/kinguser/aeo;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/aeo;->cO(I)[I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/aem;->g([I)Lcom/kingroot/kingmaster/network/updatalist/CommonList;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/aem;->afk:Lcom/kingroot/kingmaster/network/updatalist/CommonList;

    .line 110
    iget-object v0, p0, Lcom/kingroot/kinguser/aem;->afl:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

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

    check-cast v0, Ljava/util/Map$Entry;

    .line 111
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kingmaster/network/updatalist/CommonList$a;

    .line 112
    if-eqz v0, :cond_0

    .line 113
    invoke-interface {v0}, Lcom/kingroot/kingmaster/network/updatalist/CommonList$a;->uA()V

    goto :goto_0

    .line 116
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

    .line 117
    return-void
.end method
