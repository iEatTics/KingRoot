.class public Lcom/kingroot/kinguser/aos;
.super Lcom/kingroot/kinguser/apa;
.source "SourceFile"


# static fields
.field private static volatile aGt:Lcom/kingroot/kinguser/aos;


# instance fields
.field private aGu:Lcom/kingroot/kinguser/apa$a;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/kingroot/kinguser/apa;-><init>()V

    .line 60
    new-instance v0, Lcom/kingroot/kinguser/aos$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/aos$1;-><init>(Lcom/kingroot/kinguser/aos;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aos;->aGu:Lcom/kingroot/kinguser/apa$a;

    .line 27
    return-void
.end method

.method public static Ku()Lcom/kingroot/kinguser/aos;
    .locals 2

    .prologue
    .line 40
    sget-object v0, Lcom/kingroot/kinguser/aos;->aGt:Lcom/kingroot/kinguser/aos;

    if-nez v0, :cond_1

    .line 41
    const-class v1, Lcom/kingroot/kinguser/aos;

    monitor-enter v1

    .line 42
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/aos;->aGt:Lcom/kingroot/kinguser/aos;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/kingroot/kinguser/aos;

    invoke-direct {v0}, Lcom/kingroot/kinguser/aos;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/aos;->aGt:Lcom/kingroot/kinguser/aos;

    .line 45
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/aos;->aGt:Lcom/kingroot/kinguser/aos;

    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/aos;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/kingroot/kinguser/aos;->aGY:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/aos;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/kingroot/kinguser/aos;->aGY:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic c(Lcom/kingroot/kinguser/aos;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/kingroot/kinguser/aos;->aGY:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic d(Lcom/kingroot/kinguser/aos;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/kingroot/kinguser/aos;->aGY:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic e(Lcom/kingroot/kinguser/aos;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/kingroot/kinguser/aos;->aGY:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic f(Lcom/kingroot/kinguser/aos;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/kingroot/kinguser/aos;->aGY:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic g(Lcom/kingroot/kinguser/aos;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/kingroot/kinguser/aos;->aGY:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic h(Lcom/kingroot/kinguser/aos;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/kingroot/kinguser/aos;->aGY:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic i(Lcom/kingroot/kinguser/aos;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/kingroot/kinguser/aos;->aGY:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic j(Lcom/kingroot/kinguser/aos;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/kingroot/kinguser/aos;->aGY:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic k(Lcom/kingroot/kinguser/aos;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/kingroot/kinguser/aos;->aGY:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic l(Lcom/kingroot/kinguser/aos;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/kingroot/kinguser/aos;->aGY:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic m(Lcom/kingroot/kinguser/aos;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/kingroot/kinguser/aos;->aGY:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method protected Kv()Z
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x1

    return v0
.end method

.method public a(Lcom/kingroot/kinguser/apa$b;Lcom/kingroot/kinguser/apa$a;)Lcom/kingroot/kinguser/bom;
    .locals 2
    .param p1    # Lcom/kingroot/kinguser/apa$b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/kingroot/kinguser/apa$a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 32
    invoke-super {p0, p1, p2}, Lcom/kingroot/kinguser/apa;->a(Lcom/kingroot/kinguser/apa$b;Lcom/kingroot/kinguser/apa$a;)Lcom/kingroot/kinguser/bom;

    move-result-object v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    sget-object v1, Lcom/kingroot/kinguser/bop;->bFy:Lcom/kingroot/kinguser/bop;

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/bom;->a(Lcom/kingroot/kinguser/bop;)V

    .line 36
    :cond_0
    return-object v0
.end method

.method protected hJ(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 52
    return-object p1
.end method
