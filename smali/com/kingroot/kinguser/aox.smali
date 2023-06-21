.class public Lcom/kingroot/kinguser/aox;
.super Lcom/kingroot/kinguser/apa;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/boo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/aox$a;
    }
.end annotation


# static fields
.field private static volatile aGI:Lcom/kingroot/kinguser/aox;


# instance fields
.field private aGJ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/kingroot/kinguser/aox$a;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/kingroot/kinguser/apa;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/aox;->aGJ:Ljava/util/List;

    .line 38
    return-void
.end method

.method public static KC()Lcom/kingroot/kinguser/aox;
    .locals 2

    .prologue
    .line 27
    sget-object v0, Lcom/kingroot/kinguser/aox;->aGI:Lcom/kingroot/kinguser/aox;

    if-nez v0, :cond_1

    .line 28
    const-class v1, Lcom/kingroot/kinguser/aox;

    monitor-enter v1

    .line 29
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/aox;->aGI:Lcom/kingroot/kinguser/aox;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/kingroot/kinguser/aox;

    invoke-direct {v0}, Lcom/kingroot/kinguser/aox;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/aox;->aGI:Lcom/kingroot/kinguser/aox;

    .line 32
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/aox;->aGI:Lcom/kingroot/kinguser/aox;

    return-object v0

    .line 32
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private KE()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/kingroot/kinguser/aox;->aGJ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 97
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aox$a;

    .line 98
    if-eqz v0, :cond_0

    .line 99
    invoke-interface {v0}, Lcom/kingroot/kinguser/aox$a;->onTurnIntoMobileNetwork()V

    goto :goto_0

    .line 102
    :cond_1
    return-void
.end method


# virtual methods
.method public KD()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 69
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/vb;->O(Landroid/content/Context;)B

    move-result v0

    .line 70
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    if-ne v0, v2, :cond_4

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/aox;->axW:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 73
    const/4 v0, 0x0

    .line 74
    invoke-static {v1}, Lcom/kingroot/kinguser/yy;->c(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 75
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bom;

    .line 81
    invoke-interface {v0}, Lcom/kingroot/kinguser/bom;->agG()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v0}, Lcom/kingroot/kinguser/bom;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 84
    :cond_1
    invoke-interface {v0}, Lcom/kingroot/kinguser/bom;->pause()V

    move v0, v2

    :goto_1
    move v1, v0

    .line 87
    goto :goto_0

    :cond_2
    move v1, v0

    .line 89
    :cond_3
    if-eqz v1, :cond_4

    .line 90
    invoke-direct {p0}, Lcom/kingroot/kinguser/aox;->KE()V

    .line 93
    :cond_4
    return-void

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method protected Kv()Z
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public a(Lcom/kingroot/kinguser/aox$a;)V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/kingroot/kinguser/aox;->aGJ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 58
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 63
    :goto_0
    return-void

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/aox;->aGJ:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected hJ(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 47
    return-object p1
.end method
