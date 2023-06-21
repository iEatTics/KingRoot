.class public abstract Lcom/kingroot/kinguser/ry;
.super Lcom/kingroot/kinguser/rw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/ry$a;
    }
.end annotation


# instance fields
.field private Gt:Lcom/kingroot/kinguser/rx$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/rw;-><init>(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/ry;)Lcom/kingroot/kinguser/rx$a;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/kingroot/kinguser/ry;->Gt:Lcom/kingroot/kinguser/rx$a;

    return-object v0
.end method


# virtual methods
.method protected H(Landroid/content/Context;)Landroid/database/sqlite/SQLiteOpenHelper;
    .locals 6

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ry;->ji()Lcom/kingroot/kinguser/rx$a;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ry;->Gt:Lcom/kingroot/kinguser/rx$a;

    .line 34
    new-instance v0, Lcom/kingroot/kinguser/ry$a;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/ry;->jg()Ljava/lang/String;

    move-result-object v3

    .line 35
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ry;->jh()I

    move-result v4

    iget-object v5, p0, Lcom/kingroot/kinguser/ry;->Gt:Lcom/kingroot/kinguser/rx$a;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/kingroot/kinguser/ry$a;-><init>(Lcom/kingroot/kinguser/ry;Landroid/content/Context;Ljava/lang/String;ILcom/kingroot/kinguser/rx$a;)V

    .line 34
    return-object v0
.end method

.method protected declared-synchronized a(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 135
    monitor-enter p0

    const/4 v0, 0x0

    .line 136
    :try_start_0
    iget-object v1, p0, Lcom/kingroot/kinguser/ry;->Gt:Lcom/kingroot/kinguser/rx$a;

    if-eqz v1, :cond_0

    .line 137
    iget-object v0, p0, Lcom/kingroot/kinguser/ry;->Gt:Lcom/kingroot/kinguser/rx$a;

    iget-object v0, v0, Lcom/kingroot/kinguser/rx$a;->Gp:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    :cond_0
    :try_start_1
    invoke-super {p0, v0, p1, p2, p3}, Lcom/kingroot/kinguser/rw;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/kingroot/kinguser/se; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 146
    :goto_0
    monitor-exit p0

    return v0

    .line 142
    :catch_0
    move-exception v0

    .line 143
    :try_start_2
    invoke-virtual {v0}, Lcom/kingroot/kinguser/se;->jj()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 146
    const/4 v0, -0x1

    goto :goto_0

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized a([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/rw$a;)V
    .locals 9

    .prologue
    .line 213
    monitor-enter p0

    const/4 v1, 0x0

    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ry;->Gt:Lcom/kingroot/kinguser/rx$a;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/kingroot/kinguser/ry;->Gt:Lcom/kingroot/kinguser/rx$a;

    iget-object v1, v0, Lcom/kingroot/kinguser/rx$a;->Gp:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    .line 219
    :try_start_1
    invoke-super/range {v0 .. v8}, Lcom/kingroot/kinguser/rw;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/rw$a;)V
    :try_end_1
    .catch Lcom/kingroot/kinguser/sc; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 224
    :goto_0
    monitor-exit p0

    return-void

    .line 221
    :catch_0
    move-exception v0

    .line 222
    :try_start_2
    invoke-virtual {v0}, Lcom/kingroot/kinguser/sc;->jj()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 213
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized b(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 164
    monitor-enter p0

    const/4 v0, 0x0

    .line 165
    :try_start_0
    iget-object v1, p0, Lcom/kingroot/kinguser/ry;->Gt:Lcom/kingroot/kinguser/rx$a;

    if-eqz v1, :cond_0

    .line 166
    iget-object v0, p0, Lcom/kingroot/kinguser/ry;->Gt:Lcom/kingroot/kinguser/rx$a;

    iget-object v0, v0, Lcom/kingroot/kinguser/rx$a;->Gp:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    :cond_0
    :try_start_1
    invoke-super {p0, v0, p1, p2}, Lcom/kingroot/kinguser/rw;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/kingroot/kinguser/rz; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 175
    :goto_0
    monitor-exit p0

    return v0

    .line 171
    :catch_0
    move-exception v0

    .line 172
    :try_start_2
    invoke-virtual {v0}, Lcom/kingroot/kinguser/rz;->jj()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 175
    const/4 v0, -0x1

    goto :goto_0

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized insert(Landroid/content/ContentValues;)J
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 104
    monitor-enter p0

    .line 105
    :try_start_0
    iget-object v1, p0, Lcom/kingroot/kinguser/ry;->Gt:Lcom/kingroot/kinguser/rx$a;

    if-eqz v1, :cond_0

    .line 106
    iget-object v0, p0, Lcom/kingroot/kinguser/ry;->Gt:Lcom/kingroot/kinguser/rx$a;

    iget-object v0, v0, Lcom/kingroot/kinguser/rx$a;->Gp:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-super {p0, v0, v1, p1}, Lcom/kingroot/kinguser/rw;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catch Lcom/kingroot/kinguser/sb; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    .line 115
    :goto_0
    monitor-exit p0

    return-wide v0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    :try_start_2
    invoke-virtual {v0}, Lcom/kingroot/kinguser/sb;->jj()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract jg()Ljava/lang/String;
.end method

.method protected abstract jh()I
.end method

.method protected abstract ji()Lcom/kingroot/kinguser/rx$a;
.end method

.method protected declared-synchronized s(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 62
    monitor-enter p0

    if-nez p1, :cond_0

    .line 90
    :goto_0
    monitor-exit p0

    return v0

    .line 68
    :cond_0
    :try_start_0
    new-instance v1, Lcom/kingroot/kinguser/ry$1;

    invoke-direct {v1, p0, p1}, Lcom/kingroot/kinguser/ry$1;-><init>(Lcom/kingroot/kinguser/ry;Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/kingroot/kinguser/ry;->a(Lcom/kingroot/kinguser/rw$b;)Z
    :try_end_0
    .catch Lcom/kingroot/kinguser/sd; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    goto :goto_0

    .line 86
    :catch_0
    move-exception v1

    .line 87
    :try_start_1
    invoke-virtual {v1}, Lcom/kingroot/kinguser/sd;->jj()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
