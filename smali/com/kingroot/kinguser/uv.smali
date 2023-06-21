.class public Lcom/kingroot/kinguser/uv;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/uv;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final Jf:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Method;",
            "Lcom/kingroot/kinguser/uw;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/kingroot/kinguser/uv$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/uv$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/uv;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/uv;->Jf:Ljava/util/Map;

    .line 37
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/uv$1;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/kingroot/kinguser/uv;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/uv;Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Class;)Lcom/kingroot/kinguser/uw;
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/kingroot/kinguser/uv;->a(Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Class;)Lcom/kingroot/kinguser/uw;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Class;)Lcom/kingroot/kinguser/uw;
    .locals 3
    .param p1    # Ljava/lang/reflect/Method;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Method;",
            "TT;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/kingroot/kinguser/uw",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/kingroot/kinguser/uv;->Jf:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/uw;

    .line 72
    if-eqz v0, :cond_0

    .line 82
    :goto_0
    return-object v0

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/kingroot/kinguser/uv;->Jf:Ljava/util/Map;

    monitor-enter v1

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/uv;->Jf:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/uw;

    .line 77
    if-nez v0, :cond_1

    .line 78
    new-instance v0, Lcom/kingroot/kinguser/uw$a;

    invoke-direct {v0, p2, p1, p3}, Lcom/kingroot/kinguser/uw$a;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/Class;)V

    invoke-virtual {v0}, Lcom/kingroot/kinguser/uw$a;->kS()Lcom/kingroot/kinguser/uw;

    move-result-object v0

    .line 79
    iget-object v2, p0, Lcom/kingroot/kinguser/uv;->Jf:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
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

.method public static kM()Lcom/kingroot/kinguser/uv;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/kingroot/kinguser/uv;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/uv;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 46
    invoke-static {p1}, Lcom/kingroot/kinguser/zd;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-static {p2}, Lcom/kingroot/kinguser/zd;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    new-instance v2, Lcom/kingroot/kinguser/uv$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/kingroot/kinguser/uv$2;-><init>(Lcom/kingroot/kinguser/uv;Ljava/lang/Object;Ljava/lang/Class;)V

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
