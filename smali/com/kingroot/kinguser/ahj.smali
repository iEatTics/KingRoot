.class Lcom/kingroot/kinguser/ahj;
.super Lcom/kingroot/kinguser/rw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/ahj$a;
    }
.end annotation


# instance fields
.field private final apU:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/rw;-><init>(Landroid/content/Context;)V

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/ahj;->apU:Ljava/lang/Object;

    .line 32
    return-void
.end method


# virtual methods
.method protected H(Landroid/content/Context;)Landroid/database/sqlite/SQLiteOpenHelper;
    .locals 5

    .prologue
    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    new-instance v1, Lcom/kingroot/kinguser/rx$a;

    const-string v2, "ai_log"

    sget-object v3, Lcom/kingroot/kinguser/ai/AntiInjectLogModel$a;->COLUMNS:[Ljava/lang/String;

    sget-object v4, Lcom/kingroot/kinguser/ai/AntiInjectLogModel$a;->GK:[Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/kingroot/kinguser/rx$a;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    new-instance v1, Lcom/kingroot/kinguser/ahj$a;

    const-string v2, "ai_info"

    const/4 v3, 0x1

    invoke-direct {v1, p1, v2, v3, v0}, Lcom/kingroot/kinguser/ahj$a;-><init>(Landroid/content/Context;Ljava/lang/String;ILjava/util/List;)V

    return-object v1
.end method

.method public a(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 2

    .prologue
    .line 61
    iget-object v1, p0, Lcom/kingroot/kinguser/ahj;->apU:Ljava/lang/Object;

    monitor-enter v1

    .line 63
    :try_start_0
    const-string v0, "ai_log"

    invoke-virtual {p0, v0, p1, p2}, Lcom/kingroot/kinguser/ahj;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Lcom/kingroot/kinguser/sb; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :goto_0
    :try_start_1
    monitor-exit v1

    .line 68
    return-void

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 64
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public dt(I)V
    .locals 6

    .prologue
    .line 71
    iget-object v1, p0, Lcom/kingroot/kinguser/ahj;->apU:Ljava/lang/Object;

    monitor-enter v1

    .line 72
    :try_start_0
    const-string v0, "_id = ?"

    .line 73
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :try_start_1
    const-string v3, "ai_log"

    invoke-virtual {p0, v3, v0, v2}, Lcom/kingroot/kinguser/ahj;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/kingroot/kinguser/rz; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    :goto_0
    :try_start_2
    monitor-exit v1

    .line 80
    return-void

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 76
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getAllLogs()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/ai/AntiInjectLogModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    iget-object v9, p0, Lcom/kingroot/kinguser/ahj;->apU:Ljava/lang/Object;

    monitor-enter v9

    .line 84
    :try_start_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    :try_start_1
    const-string v1, "ai_log"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v8, Lcom/kingroot/kinguser/ahj$1;

    invoke-direct {v8, p0, v10}, Lcom/kingroot/kinguser/ahj$1;-><init>(Lcom/kingroot/kinguser/ahj;Ljava/util/List;)V

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/kingroot/kinguser/ahj;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/rw$a;)V
    :try_end_1
    .catch Lcom/kingroot/kinguser/sc; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    :goto_0
    :try_start_2
    monitor-exit v9

    return-object v10

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 93
    :catch_0
    move-exception v0

    goto :goto_0
.end method
