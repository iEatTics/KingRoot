.class Lcom/kingroot/kinguser/bwx;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final bRb:Lcom/kingroot/kinguser/bzc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/bzc",
            "<",
            "Lcom/kingroot/kinguser/bwx;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bSR:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/kingroot/kinguser/bxb;",
            ">;"
        }
    .end annotation
.end field

.field private bSS:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/kingroot/kinguser/bwx$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bwx$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bwx;->bRb:Lcom/kingroot/kinguser/bzc;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bwx;->bSR:Ljava/util/Map;

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/bwx;->bSS:I

    return-void
.end method

.method public static aje()Lcom/kingroot/kinguser/bwx;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/kingroot/kinguser/bwx;->bRb:Lcom/kingroot/kinguser/bzc;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bzc;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bwx;

    return-object v0
.end method


# virtual methods
.method public ajf()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/kingroot/kinguser/bwx;->bSS:I

    return v0
.end method

.method public ajg()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/kingroot/kinguser/bxb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/kingroot/kinguser/bwx;->bSR:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public aw(II)V
    .locals 4

    .prologue
    .line 30
    if-nez p2, :cond_2

    .line 31
    iget v0, p0, Lcom/kingroot/kinguser/bwx;->bSS:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/kingroot/kinguser/bwx;->bSS:I

    .line 33
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/bwx;->kM(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 37
    :cond_1
    new-instance v0, Lcom/kingroot/kinguser/bxb;

    invoke-direct {v0, p1}, Lcom/kingroot/kinguser/bxb;-><init>(I)V

    .line 38
    iget-object v1, p0, Lcom/kingroot/kinguser/bwx;->bSR:Ljava/util/Map;

    monitor-enter v1

    .line 39
    :try_start_0
    iget-object v2, p0, Lcom/kingroot/kinguser/bwx;->bSR:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 43
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/bwx;->bSR:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bxb;

    .line 44
    if-eqz v0, :cond_0

    .line 47
    iget-object v1, p0, Lcom/kingroot/kinguser/bwx;->bSR:Ljava/util/Map;

    monitor-enter v1

    .line 48
    :try_start_1
    invoke-virtual {v0, p2}, Lcom/kingroot/kinguser/bxb;->kN(I)V

    .line 49
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method public gK()V
    .locals 3

    .prologue
    .line 68
    iget-object v1, p0, Lcom/kingroot/kinguser/bwx;->bSR:Ljava/util/Map;

    monitor-enter v1

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bwx;->bSR:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bxb;

    .line 70
    invoke-virtual {v0}, Lcom/kingroot/kinguser/bxb;->reset()V

    goto :goto_0

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    return-void
.end method

.method public kM(I)Z
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/kingroot/kinguser/bwx;->bSR:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bxb;

    .line 56
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
