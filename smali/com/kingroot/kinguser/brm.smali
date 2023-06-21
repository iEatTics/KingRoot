.class public Lcom/kingroot/kinguser/brm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final bKh:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingroot/kinguser/brl;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/brm;->bKh:Landroid/util/SparseArray;

    .line 25
    const-string v0, "AdLifecycleMgr()"

    invoke-static {v0}, Lcom/kingroot/kinguser/bth;->i(Ljava/lang/String;)V

    .line 26
    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/bso;)V
    .locals 4

    .prologue
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onCreateAd():"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/kingroot/kinguser/bso;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bth;->i(Ljava/lang/String;)V

    .line 101
    iget-object v2, p0, Lcom/kingroot/kinguser/brm;->bKh:Landroid/util/SparseArray;

    monitor-enter v2

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/brm;->bKh:Landroid/util/SparseArray;

    iget-object v1, p1, Lcom/kingroot/kinguser/bso;->bLV:Lcom/kingroot/kinguser/bsp;

    iget v1, v1, Lcom/kingroot/kinguser/bsp;->bJp:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 103
    if-nez v0, :cond_1

    .line 104
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 105
    iget-object v1, p0, Lcom/kingroot/kinguser/brm;->bKh:Landroid/util/SparseArray;

    iget-object v3, p1, Lcom/kingroot/kinguser/bso;->bLV:Lcom/kingroot/kinguser/bsp;

    iget v3, v3, Lcom/kingroot/kinguser/bsp;->bJp:I

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v1, v0

    .line 107
    :goto_0
    iget-object v0, p1, Lcom/kingroot/kinguser/bso;->bLV:Lcom/kingroot/kinguser/bsp;

    iget-object v0, v0, Lcom/kingroot/kinguser/bsp;->uniqueKey:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/brl;

    .line 108
    if-nez v0, :cond_0

    .line 109
    new-instance v0, Lcom/kingroot/kinguser/brr;

    invoke-direct {v0}, Lcom/kingroot/kinguser/brr;-><init>()V

    .line 110
    iget-object v3, p1, Lcom/kingroot/kinguser/bso;->bLV:Lcom/kingroot/kinguser/bsp;

    iget-object v3, v3, Lcom/kingroot/kinguser/bsp;->uniqueKey:Ljava/lang/String;

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    :cond_0
    iget-object v1, p1, Lcom/kingroot/kinguser/bso;->bLV:Lcom/kingroot/kinguser/bsp;

    iget-object v1, v1, Lcom/kingroot/kinguser/bsp;->activityId:Ljava/lang/String;

    iput-object v1, v0, Lcom/kingroot/kinguser/brl;->bKc:Ljava/lang/String;

    .line 114
    iget v1, p1, Lcom/kingroot/kinguser/bso;->gw:I

    iput v1, v0, Lcom/kingroot/kinguser/brl;->mState:I

    .line 115
    iget v1, p1, Lcom/kingroot/kinguser/bso;->weight:I

    iput v1, v0, Lcom/kingroot/kinguser/brl;->bKf:I

    .line 116
    iget-object v1, p1, Lcom/kingroot/kinguser/bso;->bLV:Lcom/kingroot/kinguser/bsp;

    iget v1, v1, Lcom/kingroot/kinguser/bsp;->bKb:I

    iput v1, v0, Lcom/kingroot/kinguser/brl;->bKb:I

    .line 117
    iget v1, p1, Lcom/kingroot/kinguser/bso;->bLU:I

    iput v1, v0, Lcom/kingroot/kinguser/brl;->bKe:I

    .line 118
    iget v1, p1, Lcom/kingroot/kinguser/bso;->bLT:I

    iput v1, v0, Lcom/kingroot/kinguser/brl;->bKd:I

    .line 101
    monitor-exit v2

    .line 120
    return-void

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method public a(Lcom/kingroot/kinguser/bsp;)V
    .locals 3

    .prologue
    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setAdExpired():"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/kingroot/kinguser/bsp;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bth;->i(Ljava/lang/String;)V

    .line 157
    iget-object v1, p0, Lcom/kingroot/kinguser/brm;->bKh:Landroid/util/SparseArray;

    monitor-enter v1

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/brm;->bKh:Landroid/util/SparseArray;

    iget v2, p1, Lcom/kingroot/kinguser/bsp;->bJp:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 159
    if-eqz v0, :cond_0

    .line 160
    iget-object v2, p1, Lcom/kingroot/kinguser/bsp;->uniqueKey:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/brl;

    .line 161
    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {v0}, Lcom/kingroot/kinguser/brl;->ahI()V

    .line 157
    :cond_0
    monitor-exit v1

    .line 166
    return-void

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Lcom/kingroot/kinguser/bsp;)Lcom/kingroot/kinguser/brl;
    .locals 5

    .prologue
    .line 176
    iget-object v3, p0, Lcom/kingroot/kinguser/brm;->bKh:Landroid/util/SparseArray;

    monitor-enter v3

    .line 177
    const/4 v1, 0x0

    .line 178
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/brm;->bKh:Landroid/util/SparseArray;

    iget v2, p1, Lcom/kingroot/kinguser/bsp;->bJp:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 179
    if-eqz v0, :cond_3

    .line 180
    const/4 v1, 0x0

    .line 181
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 182
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    .line 183
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v1

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    .line 187
    :cond_0
    iget-object v2, p1, Lcom/kingroot/kinguser/bsp;->uniqueKey:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/brl;

    .line 188
    if-eqz v0, :cond_1

    .line 189
    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/brl;->kd(I)V

    .line 192
    :cond_1
    :goto_1
    monitor-exit v3

    return-object v0

    .line 183
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/brl;

    .line 184
    iget v1, v1, Lcom/kingroot/kinguser/brl;->bKf:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_0

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public b(Lcom/kingroot/kinguser/bso;)V
    .locals 4

    .prologue
    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onReceiveAd():"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/kingroot/kinguser/bso;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bth;->i(Ljava/lang/String;)V

    .line 131
    iget-object v2, p0, Lcom/kingroot/kinguser/brm;->bKh:Landroid/util/SparseArray;

    monitor-enter v2

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/brm;->bKh:Landroid/util/SparseArray;

    iget-object v1, p1, Lcom/kingroot/kinguser/bso;->bLV:Lcom/kingroot/kinguser/bsp;

    iget v1, v1, Lcom/kingroot/kinguser/bsp;->bJp:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 133
    if-nez v0, :cond_1

    .line 134
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 135
    iget-object v1, p0, Lcom/kingroot/kinguser/brm;->bKh:Landroid/util/SparseArray;

    iget-object v3, p1, Lcom/kingroot/kinguser/bso;->bLV:Lcom/kingroot/kinguser/bsp;

    iget v3, v3, Lcom/kingroot/kinguser/bsp;->bJp:I

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v1, v0

    .line 137
    :goto_0
    iget-object v0, p1, Lcom/kingroot/kinguser/bso;->bLV:Lcom/kingroot/kinguser/bsp;

    iget-object v0, v0, Lcom/kingroot/kinguser/bsp;->uniqueKey:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/brl;

    .line 138
    if-nez v0, :cond_0

    .line 139
    new-instance v0, Lcom/kingroot/kinguser/brr;

    invoke-direct {v0}, Lcom/kingroot/kinguser/brr;-><init>()V

    .line 140
    iget-object v3, p1, Lcom/kingroot/kinguser/bso;->bLV:Lcom/kingroot/kinguser/bsp;

    iget-object v3, v3, Lcom/kingroot/kinguser/bsp;->activityId:Ljava/lang/String;

    iput-object v3, v0, Lcom/kingroot/kinguser/brl;->bKc:Ljava/lang/String;

    .line 141
    iget-object v3, p1, Lcom/kingroot/kinguser/bso;->bLV:Lcom/kingroot/kinguser/bsp;

    iget v3, v3, Lcom/kingroot/kinguser/bsp;->bKb:I

    iput v3, v0, Lcom/kingroot/kinguser/brl;->bKb:I

    .line 142
    iget v3, p1, Lcom/kingroot/kinguser/bso;->bLU:I

    iput v3, v0, Lcom/kingroot/kinguser/brl;->bKe:I

    .line 143
    iget v3, p1, Lcom/kingroot/kinguser/bso;->bLT:I

    iput v3, v0, Lcom/kingroot/kinguser/brl;->bKd:I

    .line 144
    iget-object v3, p1, Lcom/kingroot/kinguser/bso;->bLV:Lcom/kingroot/kinguser/bsp;

    iget-object v3, v3, Lcom/kingroot/kinguser/bsp;->uniqueKey:Ljava/lang/String;

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    :goto_1
    invoke-virtual {v0}, Lcom/kingroot/kinguser/brl;->ahF()V

    .line 131
    monitor-exit v2

    .line 153
    return-void

    .line 146
    :cond_0
    iget-object v1, p1, Lcom/kingroot/kinguser/bso;->bLV:Lcom/kingroot/kinguser/bsp;

    iget-object v1, v1, Lcom/kingroot/kinguser/bsp;->activityId:Ljava/lang/String;

    iput-object v1, v0, Lcom/kingroot/kinguser/brl;->bKc:Ljava/lang/String;

    .line 147
    iget-object v1, p1, Lcom/kingroot/kinguser/bso;->bLV:Lcom/kingroot/kinguser/bsp;

    iget v1, v1, Lcom/kingroot/kinguser/bsp;->bKb:I

    iput v1, v0, Lcom/kingroot/kinguser/brl;->bKb:I

    .line 148
    iget v1, p1, Lcom/kingroot/kinguser/bso;->bLU:I

    iput v1, v0, Lcom/kingroot/kinguser/brl;->bKe:I

    .line 149
    iget v1, p1, Lcom/kingroot/kinguser/bso;->bLT:I

    iput v1, v0, Lcom/kingroot/kinguser/brl;->bKd:I

    goto :goto_1

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method public c(Lcom/kingroot/kinguser/bsp;)Lcom/kingroot/kinguser/brl;
    .locals 4

    .prologue
    .line 204
    iget-object v2, p0, Lcom/kingroot/kinguser/brm;->bKh:Landroid/util/SparseArray;

    monitor-enter v2

    .line 205
    const/4 v1, 0x0

    .line 206
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/brm;->bKh:Landroid/util/SparseArray;

    iget v3, p1, Lcom/kingroot/kinguser/bsp;->bJp:I

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 207
    if-eqz v0, :cond_1

    .line 208
    iget-object v1, p1, Lcom/kingroot/kinguser/bsp;->uniqueKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/brl;

    .line 209
    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {v0}, Lcom/kingroot/kinguser/brl;->onClick()V

    .line 213
    :cond_0
    :goto_0
    monitor-exit v2

    return-object v0

    .line 204
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public ke(I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v2, p0, Lcom/kingroot/kinguser/brm;->bKh:Landroid/util/SparseArray;

    monitor-enter v2

    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/brm;->bKh:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 40
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 41
    if-eqz v0, :cond_2

    .line 42
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 43
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 44
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    .line 55
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 56
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 64
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getReachableSortedAId() posId:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " return:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bth;->i(Ljava/lang/String;)V

    .line 65
    monitor-exit v2

    return-object v3

    .line 44
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 45
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/brl;

    .line 51
    invoke-virtual {v1}, Lcom/kingroot/kinguser/brl;->ahG()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 52
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 56
    :cond_4
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/brl;

    .line 58
    iget-object v4, v0, Lcom/kingroot/kinguser/brl;->bKc:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 61
    iget-object v0, v0, Lcom/kingroot/kinguser/brl;->bKc:Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
