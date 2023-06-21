.class public Lcom/kingroot/kinguser/tf;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/tf$a;,
        Lcom/kingroot/kinguser/tf$b;,
        Lcom/kingroot/kinguser/tf$c;
    }
.end annotation


# static fields
.field private static volatile Hc:Lcom/kingroot/kinguser/tf;


# instance fields
.field private Hd:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/kingroot/kinguser/tf$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/tf;->Hd:Ljava/util/Map;

    .line 31
    iget-object v0, p0, Lcom/kingroot/kinguser/tf;->Hd:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/kingroot/kinguser/tf$c;

    invoke-direct {v2, v3}, Lcom/kingroot/kinguser/tf$c;-><init>(Lcom/kingroot/kinguser/tf$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object v0, p0, Lcom/kingroot/kinguser/tf;->Hd:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/kingroot/kinguser/tf$b;

    invoke-direct {v2, v3}, Lcom/kingroot/kinguser/tf$b;-><init>(Lcom/kingroot/kinguser/tf$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    return-void
.end method

.method public static varargs a(ILjava/lang/Class;[Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<+",
            "Lcom/kingroot/kinguser/th;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 52
    invoke-static {}, Lcom/kingroot/kinguser/tf;->jB()Lcom/kingroot/kinguser/tf;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/kingroot/kinguser/tf;->b(ILjava/lang/Class;[Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Lcom/kingroot/kinguser/tf;->jB()Lcom/kingroot/kinguser/tf;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/kingroot/kinguser/tf;->b(Landroid/content/Context;Landroid/content/Intent;)V

    .line 48
    return-void
.end method

.method public static b(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/kingroot/kinguser/th;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    invoke-static {}, Lcom/kingroot/kinguser/tf;->jB()Lcom/kingroot/kinguser/tf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/kingroot/kinguser/tf;->c(Ljava/lang/Class;)V

    .line 57
    return-void
.end method

.method private static jB()Lcom/kingroot/kinguser/tf;
    .locals 2

    .prologue
    .line 36
    sget-object v0, Lcom/kingroot/kinguser/tf;->Hc:Lcom/kingroot/kinguser/tf;

    if-nez v0, :cond_1

    .line 37
    const-class v1, Lcom/kingroot/kinguser/tf;

    monitor-enter v1

    .line 38
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/tf;->Hc:Lcom/kingroot/kinguser/tf;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/kingroot/kinguser/tf;

    invoke-direct {v0}, Lcom/kingroot/kinguser/tf;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/tf;->Hc:Lcom/kingroot/kinguser/tf;

    .line 41
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/tf;->Hc:Lcom/kingroot/kinguser/tf;

    return-object v0

    .line 41
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public varargs declared-synchronized b(ILjava/lang/Class;[Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<+",
            "Lcom/kingroot/kinguser/th;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 84
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/tf;->Hd:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/tf$a;

    .line 85
    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0, p2, p3}, Lcom/kingroot/kinguser/tf$a;->a(Ljava/lang/Class;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :cond_0
    monitor-exit p0

    return-void

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 67
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/tf;->Hd:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

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

    check-cast v0, Ljava/util/Map$Entry;

    .line 68
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/tf$a;

    .line 69
    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {v0, p1, p2}, Lcom/kingroot/kinguser/tf$a;->c(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 73
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized c(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/kingroot/kinguser/th;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 97
    monitor-enter p0

    if-nez p1, :cond_1

    .line 106
    :cond_0
    monitor-exit p0

    return-void

    .line 100
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/tf;->Hd:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 101
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/tf$a;

    .line 102
    if-eqz v0, :cond_2

    .line 103
    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/tf$a;->d(Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
