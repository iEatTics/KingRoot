.class public Lcom/kingroot/kinguser/ajp;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private X(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 286
    const/4 v1, 0x0

    .line 287
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    .line 297
    :cond_1
    :goto_0
    return v0

    .line 291
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 293
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method private a(Ljava/util/List;Landroid/util/SparseArray;Landroid/util/SparseArray;Ljava/util/List;Ljava/util/List;)Landroid/util/SparseArray;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 215
    new-instance v1, Landroid/util/SparseArray;

    const/4 v0, 0x1

    invoke-direct {v1, v0}, Landroid/util/SparseArray;-><init>(I)V

    .line 216
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;

    .line 217
    iget v3, v0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;->uid:I

    if-nez v3, :cond_0

    iget v3, v0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;->pid:I

    invoke-direct {p0, p2, p3, p4, v3}, Lcom/kingroot/kinguser/ajp;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;Ljava/util/List;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 219
    iget v3, v0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;->pid:I

    iget-object v4, v0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 221
    iget-object v0, v0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;->name:Ljava/lang/String;

    invoke-interface {p5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 225
    :cond_1
    return-object v1
.end method

.method private a(Landroid/util/SparseArray;Landroid/util/SparseArray;Ljava/util/List;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 230
    invoke-virtual {p1, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 231
    invoke-virtual {p2, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 233
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 234
    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    if-eqz v1, :cond_0

    .line 235
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 236
    :cond_2
    const/4 v0, 0x1

    .line 240
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private aR(Z)Ljava/util/LinkedList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    invoke-static {}, Lcom/kingroot/common/utils/system/ProcessUtils;->qJ()Ljava/util/List;

    move-result-object v0

    .line 103
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 105
    if-eqz v0, :cond_2

    .line 107
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;

    .line 111
    iget v3, v0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;->ppid:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 116
    iget v3, v0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;->uid:I

    if-nez v3, :cond_0

    .line 121
    if-nez p1, :cond_1

    .line 122
    iget-object v3, v0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;->name:Ljava/lang/String;

    const-string v4, "ku.sud"

    invoke-direct {p0, v3, v4}, Lcom/kingroot/kinguser/ajp;->X(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 124
    iget-object v3, v0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;->name:Ljava/lang/String;

    const-string v4, "daemonsu"

    invoke-direct {p0, v3, v4}, Lcom/kingroot/kinguser/ajp;->X(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 126
    iget-object v3, v0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;->name:Ljava/lang/String;

    const-string v4, "kuInotify"

    invoke-direct {p0, v3, v4}, Lcom/kingroot/kinguser/ajp;->X(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 131
    :cond_1
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 135
    :cond_2
    return-object v1
.end method

.method private ar(Ljava/util/List;)Landroid/util/SparseArray;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;",
            ">;)",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 159
    new-instance v1, Landroid/util/SparseArray;

    const/4 v0, 0x1

    invoke-direct {v1, v0}, Landroid/util/SparseArray;-><init>(I)V

    .line 161
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;

    .line 162
    iget v3, v0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;->uid:I

    if-nez v3, :cond_0

    .line 165
    invoke-static {}, Lcom/kingroot/kinguser/aba;->qF()Ljava/lang/String;

    move-result-object v3

    .line 167
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " head /proc/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;->pid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/maps"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/kingroot/kinguser/ajp;->dB(Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;

    move-result-object v3

    .line 168
    iget-object v4, v3, Lcom/kingroot/common/utils/system/VTCmdResult;->mStdOut:Ljava/lang/String;

    .line 173
    invoke-virtual {v3}, Lcom/kingroot/common/utils/system/VTCmdResult;->success()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v3, v3, Lcom/kingroot/common/utils/system/VTCmdResult;->mStdOut:Ljava/lang/String;

    const-string v5, "Failure"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 177
    iget v0, v0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;->pid:I

    invoke-virtual {v1, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 181
    :cond_1
    return-object v1
.end method

.method private as(Ljava/util/List;)Landroid/util/SparseArray;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;",
            ">;)",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 185
    new-instance v1, Landroid/util/SparseArray;

    const/4 v0, 0x1

    invoke-direct {v1, v0}, Landroid/util/SparseArray;-><init>(I)V

    .line 187
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;

    .line 188
    iget v3, v0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;->uid:I

    if-nez v3, :cond_0

    .line 191
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cat /proc/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;->pid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/environ"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/kingroot/kinguser/ajp;->dB(Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;

    move-result-object v3

    .line 192
    iget-object v4, v3, Lcom/kingroot/common/utils/system/VTCmdResult;->mStdOut:Ljava/lang/String;

    .line 194
    invoke-virtual {v3}, Lcom/kingroot/common/utils/system/VTCmdResult;->success()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v4, :cond_2

    .line 195
    iget v3, v0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;->pid:I

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 196
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 199
    :cond_1
    iget v3, v0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;->pid:I

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 204
    :cond_2
    iget v0, v0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;->uid:I

    if-eqz v0, :cond_0

    .line 205
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 209
    :cond_3
    return-object v1
.end method

.method private b(Landroid/util/SparseArray;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 249
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 250
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    .line 251
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 252
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 253
    if-nez v3, :cond_0

    .line 251
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 257
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_1

    .line 258
    const-string v4, " && "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    :cond_1
    const-string v4, "kill -9 "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 264
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/ajp;->dB(Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;

    move-result-object v0

    .line 265
    if-eqz v0, :cond_4

    .line 266
    invoke-virtual {v0}, Lcom/kingroot/common/utils/system/VTCmdResult;->success()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v0, v0, Lcom/kingroot/common/utils/system/VTCmdResult;->mStdOut:Ljava/lang/String;

    const-string v2, "Failure"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 274
    :cond_3
    :goto_2
    return v1

    .line 271
    :cond_4
    const/4 v1, 0x1

    goto :goto_2
.end method

.method private c(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    :try_start_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/ajp;->zs()Ljava/util/LinkedList;

    move-result-object v1

    .line 66
    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/ajp;->ar(Ljava/util/List;)Landroid/util/SparseArray;

    move-result-object v2

    .line 67
    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/ajp;->as(Ljava/util/List;)Landroid/util/SparseArray;

    move-result-object v3

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    .line 68
    invoke-direct/range {v0 .. v5}, Lcom/kingroot/kinguser/ajp;->a(Ljava/util/List;Landroid/util/SparseArray;Landroid/util/SparseArray;Ljava/util/List;Ljava/util/List;)Landroid/util/SparseArray;

    move-result-object v3

    .line 70
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 71
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;

    .line 72
    iget-object v6, v2, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;->name:Ljava/lang/String;

    invoke-direct {p0, v6, v0}, Lcom/kingroot/kinguser/ajp;->X(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget v6, v2, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;->pid:I

    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1

    .line 73
    iget v6, v2, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;->pid:I

    iget-object v7, v2, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 75
    iget-object v2, v2, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;->name:Ljava/lang/String;

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 86
    :cond_2
    :goto_1
    return-void

    .line 80
    :cond_3
    invoke-direct {p0, v3}, Lcom/kingroot/kinguser/ajp;->b(Landroid/util/SparseArray;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 81
    invoke-interface {p3}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method private dB(Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;
    .locals 1

    .prologue
    .line 245
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/abc;->el(Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;

    move-result-object v0

    return-object v0
.end method

.method private zs()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/ajp;->aR(Z)Ljava/util/LinkedList;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public b(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/kingroot/kinguser/ajp;->c(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    return-void

    .line 57
    :catch_0
    move-exception v0

    goto :goto_0
.end method
