.class public Lcom/kingroot/kinguser/arq;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final aMc:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingroot/kinguser/arl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/arq;->aMc:Ljava/util/HashMap;

    return-void
.end method

.method public static a(Ljava/lang/Class;Z)Lcom/kingroot/kinguser/aqb;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/kingroot/kinguser/arl;",
            ">;Z)",
            "Lcom/kingroot/kinguser/aqb;"
        }
    .end annotation

    .prologue
    .line 27
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 29
    sget-object v2, Lcom/kingroot/kinguser/arq;->aMc:Ljava/util/HashMap;

    monitor-enter v2

    .line 30
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/arq;->aMc:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/arl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 33
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/arl;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    :try_start_2
    sget-object v3, Lcom/kingroot/kinguser/arq;->aMc:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    :cond_0
    monitor-exit v2

    .line 41
    :goto_0
    return-object v0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    const/4 v0, 0x0

    monitor-exit v2

    goto :goto_0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public static gK()V
    .locals 2

    .prologue
    .line 65
    sget-object v1, Lcom/kingroot/kinguser/arq;->aMc:Ljava/util/HashMap;

    monitor-enter v1

    .line 66
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/arq;->aMc:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 67
    monitor-exit v1

    .line 68
    return-void

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
