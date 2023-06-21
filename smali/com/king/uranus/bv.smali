.class public Lcom/king/uranus/bv;
.super Lcom/king/uranus/bh$a;
.source "SourceFile"


# static fields
.field private static fW:Lcom/king/uranus/bv;


# instance fields
.field private fX:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/kingroot/kinguser/hl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/king/uranus/bv;

    invoke-direct {v0}, Lcom/king/uranus/bv;-><init>()V

    sput-object v0, Lcom/king/uranus/bv;->fW:Lcom/king/uranus/bv;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/king/uranus/bh$a;-><init>()V

    .line 27
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/king/uranus/bv;->fX:Ljava/util/Set;

    .line 30
    return-void
.end method

.method public static synthetic a(Lcom/king/uranus/bv;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/king/uranus/bv;->fX:Ljava/util/Set;

    return-object v0
.end method

.method public static aT()Lcom/king/uranus/bv;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/king/uranus/bv;->fW:Lcom/king/uranus/bv;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;II)V
    .locals 2

    .prologue
    .line 59
    invoke-static {}, Lcom/kingroot/kinguser/no;->fl()Lcom/kingroot/kinguser/no;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/ma;

    invoke-direct {v1, p0, p3, p2, p1}, Lcom/kingroot/kinguser/ma;-><init>(Lcom/king/uranus/bv;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/no;->a(Lcom/kingroot/kinguser/nj;)V

    .line 71
    return-void
.end method

.method public declared-synchronized aU()V
    .locals 1

    .prologue
    .line 46
    monitor-enter p0

    :try_start_0
    invoke-static {p0}, Lcom/kingroot/kinguser/lh;->a(Lcom/king/uranus/bh;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    monitor-exit p0

    return-void

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Ljava/lang/String;II)V
    .locals 2

    .prologue
    .line 75
    invoke-static {}, Lcom/kingroot/kinguser/no;->fl()Lcom/kingroot/kinguser/no;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/mb;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/kingroot/kinguser/mb;-><init>(Lcom/king/uranus/bv;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/no;->a(Lcom/kingroot/kinguser/nj;)V

    .line 95
    return-void
.end method

.method public registerClientObserver(Lcom/kingroot/kinguser/hl;)V
    .locals 1

    .prologue
    .line 37
    if-nez p1, :cond_0

    .line 43
    :goto_0
    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/king/uranus/bv;->fX:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 42
    invoke-virtual {p0}, Lcom/king/uranus/bv;->aU()V

    goto :goto_0
.end method

.method public unregisterClientObserver(Lcom/kingroot/kinguser/hl;)V
    .locals 1

    .prologue
    .line 50
    if-nez p1, :cond_0

    .line 54
    :goto_0
    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/king/uranus/bv;->fX:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
