.class Lcom/kingroot/kinguser/vh$1;
.super Lcom/kingroot/kinguser/vk;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/vh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kingroot/kinguser/vk",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic KJ:Lcom/kingroot/kinguser/vh;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/vh;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/kingroot/kinguser/vh$1;->KJ:Lcom/kingroot/kinguser/vh;

    invoke-direct {p0}, Lcom/kingroot/kinguser/vk;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/vj;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 202
    iget-object v0, p0, Lcom/kingroot/kinguser/vh$1;->KJ:Lcom/kingroot/kinguser/vh;

    invoke-static {v0}, Lcom/kingroot/kinguser/vh;->a(Lcom/kingroot/kinguser/vh;)Lcom/kingroot/kinguser/vk;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/kingroot/kinguser/vh$1;->KJ:Lcom/kingroot/kinguser/vh;

    invoke-static {v0}, Lcom/kingroot/kinguser/vh;->a(Lcom/kingroot/kinguser/vh;)Lcom/kingroot/kinguser/vk;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/vk;->a(Lcom/kingroot/kinguser/vj;)V

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/vh$1;->KJ:Lcom/kingroot/kinguser/vh;

    invoke-static {v0}, Lcom/kingroot/kinguser/vh;->b(Lcom/kingroot/kinguser/vh;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    monitor-enter v2

    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/vh$1;->KJ:Lcom/kingroot/kinguser/vh;

    invoke-static {v0}, Lcom/kingroot/kinguser/vh;->b(Lcom/kingroot/kinguser/vh;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 208
    :goto_0
    if-lez v0, :cond_1

    .line 209
    add-int/lit8 v1, v0, -0x1

    .line 211
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/vh$1;->KJ:Lcom/kingroot/kinguser/vh;

    invoke-static {v0}, Lcom/kingroot/kinguser/vh;->b(Lcom/kingroot/kinguser/vh;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/network/download/INetworkLoadTaskCallback;

    invoke-static {p1}, Lcom/kingroot/common/network/download/NetworkLoadTaskInfo$a;->h(Lcom/kingroot/kinguser/vj;)Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/kingroot/common/network/download/INetworkLoadTaskCallback;->onFailed(Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 212
    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    .line 214
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/kingroot/kinguser/vh$1;->KJ:Lcom/kingroot/kinguser/vh;

    invoke-static {v0}, Lcom/kingroot/kinguser/vh;->b(Lcom/kingroot/kinguser/vh;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 215
    monitor-exit v2

    .line 217
    return-void

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public b(Lcom/kingroot/kinguser/vj;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 221
    iget-object v0, p0, Lcom/kingroot/kinguser/vh$1;->KJ:Lcom/kingroot/kinguser/vh;

    invoke-static {v0}, Lcom/kingroot/kinguser/vh;->c(Lcom/kingroot/kinguser/vh;)V

    .line 222
    iget-object v0, p0, Lcom/kingroot/kinguser/vh$1;->KJ:Lcom/kingroot/kinguser/vh;

    invoke-static {v0}, Lcom/kingroot/kinguser/vh;->a(Lcom/kingroot/kinguser/vh;)Lcom/kingroot/kinguser/vk;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/kingroot/kinguser/vh$1;->KJ:Lcom/kingroot/kinguser/vh;

    invoke-static {v0}, Lcom/kingroot/kinguser/vh;->a(Lcom/kingroot/kinguser/vh;)Lcom/kingroot/kinguser/vk;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/vk;->b(Lcom/kingroot/kinguser/vj;)V

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/vh$1;->KJ:Lcom/kingroot/kinguser/vh;

    invoke-static {v0}, Lcom/kingroot/kinguser/vh;->b(Lcom/kingroot/kinguser/vh;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    monitor-enter v2

    .line 227
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/vh$1;->KJ:Lcom/kingroot/kinguser/vh;

    invoke-static {v0}, Lcom/kingroot/kinguser/vh;->b(Lcom/kingroot/kinguser/vh;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 228
    :goto_0
    if-lez v0, :cond_1

    .line 229
    add-int/lit8 v1, v0, -0x1

    .line 231
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/vh$1;->KJ:Lcom/kingroot/kinguser/vh;

    invoke-static {v0}, Lcom/kingroot/kinguser/vh;->b(Lcom/kingroot/kinguser/vh;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/network/download/INetworkLoadTaskCallback;

    invoke-static {p1}, Lcom/kingroot/common/network/download/NetworkLoadTaskInfo$a;->h(Lcom/kingroot/kinguser/vj;)Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/kingroot/common/network/download/INetworkLoadTaskCallback;->onFinished(Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 232
    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    .line 234
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/kingroot/kinguser/vh$1;->KJ:Lcom/kingroot/kinguser/vh;

    invoke-static {v0}, Lcom/kingroot/kinguser/vh;->b(Lcom/kingroot/kinguser/vh;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 235
    monitor-exit v2

    .line 237
    return-void

    .line 235
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public c(Lcom/kingroot/kinguser/vj;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/kingroot/kinguser/vh$1;->KJ:Lcom/kingroot/kinguser/vh;

    invoke-static {v0}, Lcom/kingroot/kinguser/vh;->a(Lcom/kingroot/kinguser/vh;)Lcom/kingroot/kinguser/vk;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/kingroot/kinguser/vh$1;->KJ:Lcom/kingroot/kinguser/vh;

    invoke-static {v0}, Lcom/kingroot/kinguser/vh;->a(Lcom/kingroot/kinguser/vh;)Lcom/kingroot/kinguser/vk;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/vk;->c(Lcom/kingroot/kinguser/vj;)V

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/vh$1;->KJ:Lcom/kingroot/kinguser/vh;

    invoke-static {v0}, Lcom/kingroot/kinguser/vh;->b(Lcom/kingroot/kinguser/vh;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    monitor-enter v2

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/vh$1;->KJ:Lcom/kingroot/kinguser/vh;

    invoke-static {v0}, Lcom/kingroot/kinguser/vh;->b(Lcom/kingroot/kinguser/vh;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 116
    :goto_0
    if-lez v0, :cond_1

    .line 117
    add-int/lit8 v1, v0, -0x1

    .line 119
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/vh$1;->KJ:Lcom/kingroot/kinguser/vh;

    invoke-static {v0}, Lcom/kingroot/kinguser/vh;->b(Lcom/kingroot/kinguser/vh;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/network/download/INetworkLoadTaskCallback;

    invoke-static {p1}, Lcom/kingroot/common/network/download/NetworkLoadTaskInfo$a;->h(Lcom/kingroot/kinguser/vj;)Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/kingroot/common/network/download/INetworkLoadTaskCallback;->onWaiting(Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 120
    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    .line 122
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/kingroot/kinguser/vh$1;->KJ:Lcom/kingroot/kinguser/vh;

    invoke-static {v0}, Lcom/kingroot/kinguser/vh;->b(Lcom/kingroot/kinguser/vh;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 123
    monitor-exit v2

    .line 124
    return-void

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public d(Lcom/kingroot/kinguser/vj;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lcom/kingroot/kinguser/vh$1;->KJ:Lcom/kingroot/kinguser/vh;

    invoke-static {v0}, Lcom/kingroot/kinguser/vh;->a(Lcom/kingroot/kinguser/vh;)Lcom/kingroot/kinguser/vk;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/kingroot/kinguser/vh$1;->KJ:Lcom/kingroot/kinguser/vh;

    invoke-static {v0}, Lcom/kingroot/kinguser/vh;->a(Lcom/kingroot/kinguser/vh;)Lcom/kingroot/kinguser/vk;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/vk;->d(Lcom/kingroot/kinguser/vj;)V

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/vh$1;->KJ:Lcom/kingroot/kinguser/vh;

    invoke-static {v0}, Lcom/kingroot/kinguser/vh;->b(Lcom/kingroot/kinguser/vh;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    monitor-enter v2

    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/vh$1;->KJ:Lcom/kingroot/kinguser/vh;

    invoke-static {v0}, Lcom/kingroot/kinguser/vh;->b(Lcom/kingroot/kinguser/vh;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 134
    :goto_0
    if-lez v0, :cond_1

    .line 135
    add-int/lit8 v1, v0, -0x1

    .line 137
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/vh$1;->KJ:Lcom/kingroot/kinguser/vh;

    invoke-static {v0}, Lcom/kingroot/kinguser/vh;->b(Lcom/kingroot/kinguser/vh;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/network/download/INetworkLoadTaskCallback;

    invoke-static {p1}, Lcom/kingroot/common/network/download/NetworkLoadTaskInfo$a;->h(Lcom/kingroot/kinguser/vj;)Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/kingroot/common/network/download/INetworkLoadTaskCallback;->onRunning(Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 138
    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    .line 140
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/kingroot/kinguser/vh$1;->KJ:Lcom/kingroot/kinguser/vh;

    invoke-static {v0}, Lcom/kingroot/kinguser/vh;->b(Lcom/kingroot/kinguser/vh;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 141
    monitor-exit v2

    .line 142
    return-void

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public e(Lcom/kingroot/kinguser/vj;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lcom/kingroot/kinguser/vh$1;->KJ:Lcom/kingroot/kinguser/vh;

    invoke-static {v0}, Lcom/kingroot/kinguser/vh;->a(Lcom/kingroot/kinguser/vh;)Lcom/kingroot/kinguser/vk;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/kingroot/kinguser/vh$1;->KJ:Lcom/kingroot/kinguser/vh;

    invoke-static {v0}, Lcom/kingroot/kinguser/vh;->a(Lcom/kingroot/kinguser/vh;)Lcom/kingroot/kinguser/vk;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/vk;->e(Lcom/kingroot/kinguser/vj;)V

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/vh$1;->KJ:Lcom/kingroot/kinguser/vh;

    invoke-static {v0}, Lcom/kingroot/kinguser/vh;->b(Lcom/kingroot/kinguser/vh;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    monitor-enter v2

    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/vh$1;->KJ:Lcom/kingroot/kinguser/vh;

    invoke-static {v0}, Lcom/kingroot/kinguser/vh;->b(Lcom/kingroot/kinguser/vh;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 152
    :goto_0
    if-lez v0, :cond_1

    .line 153
    add-int/lit8 v1, v0, -0x1

    .line 155
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/vh$1;->KJ:Lcom/kingroot/kinguser/vh;

    invoke-static {v0}, Lcom/kingroot/kinguser/vh;->b(Lcom/kingroot/kinguser/vh;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/network/download/INetworkLoadTaskCallback;

    invoke-static {p1}, Lcom/kingroot/common/network/download/NetworkLoadTaskInfo$a;->h(Lcom/kingroot/kinguser/vj;)Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/kingroot/common/network/download/INetworkLoadTaskCallback;->onProgressChanged(Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 156
    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    .line 158
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/kingroot/kinguser/vh$1;->KJ:Lcom/kingroot/kinguser/vh;

    invoke-static {v0}, Lcom/kingroot/kinguser/vh;->b(Lcom/kingroot/kinguser/vh;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 159
    monitor-exit v2

    .line 161
    return-void

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public f(Lcom/kingroot/kinguser/vj;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 165
    iget-object v0, p0, Lcom/kingroot/kinguser/vh$1;->KJ:Lcom/kingroot/kinguser/vh;

    invoke-static {v0}, Lcom/kingroot/kinguser/vh;->a(Lcom/kingroot/kinguser/vh;)Lcom/kingroot/kinguser/vk;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/kingroot/kinguser/vh$1;->KJ:Lcom/kingroot/kinguser/vh;

    invoke-static {v0}, Lcom/kingroot/kinguser/vh;->a(Lcom/kingroot/kinguser/vh;)Lcom/kingroot/kinguser/vk;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/vk;->f(Lcom/kingroot/kinguser/vj;)V

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/vh$1;->KJ:Lcom/kingroot/kinguser/vh;

    invoke-static {v0}, Lcom/kingroot/kinguser/vh;->b(Lcom/kingroot/kinguser/vh;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    monitor-enter v2

    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/vh$1;->KJ:Lcom/kingroot/kinguser/vh;

    invoke-static {v0}, Lcom/kingroot/kinguser/vh;->b(Lcom/kingroot/kinguser/vh;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 171
    :goto_0
    if-lez v0, :cond_1

    .line 172
    add-int/lit8 v1, v0, -0x1

    .line 174
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/vh$1;->KJ:Lcom/kingroot/kinguser/vh;

    invoke-static {v0}, Lcom/kingroot/kinguser/vh;->b(Lcom/kingroot/kinguser/vh;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/network/download/INetworkLoadTaskCallback;

    invoke-static {p1}, Lcom/kingroot/common/network/download/NetworkLoadTaskInfo$a;->h(Lcom/kingroot/kinguser/vj;)Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/kingroot/common/network/download/INetworkLoadTaskCallback;->onPaused(Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 175
    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    .line 177
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/kingroot/kinguser/vh$1;->KJ:Lcom/kingroot/kinguser/vh;

    invoke-static {v0}, Lcom/kingroot/kinguser/vh;->b(Lcom/kingroot/kinguser/vh;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 178
    monitor-exit v2

    .line 180
    return-void

    .line 178
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public g(Lcom/kingroot/kinguser/vj;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 184
    iget-object v0, p0, Lcom/kingroot/kinguser/vh$1;->KJ:Lcom/kingroot/kinguser/vh;

    invoke-static {v0}, Lcom/kingroot/kinguser/vh;->a(Lcom/kingroot/kinguser/vh;)Lcom/kingroot/kinguser/vk;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/kingroot/kinguser/vh$1;->KJ:Lcom/kingroot/kinguser/vh;

    invoke-static {v0}, Lcom/kingroot/kinguser/vh;->a(Lcom/kingroot/kinguser/vh;)Lcom/kingroot/kinguser/vk;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/vk;->g(Lcom/kingroot/kinguser/vj;)V

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/vh$1;->KJ:Lcom/kingroot/kinguser/vh;

    invoke-static {v0}, Lcom/kingroot/kinguser/vh;->b(Lcom/kingroot/kinguser/vh;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    monitor-enter v2

    .line 189
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/vh$1;->KJ:Lcom/kingroot/kinguser/vh;

    invoke-static {v0}, Lcom/kingroot/kinguser/vh;->b(Lcom/kingroot/kinguser/vh;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 190
    :goto_0
    if-lez v0, :cond_1

    .line 191
    add-int/lit8 v1, v0, -0x1

    .line 193
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/vh$1;->KJ:Lcom/kingroot/kinguser/vh;

    invoke-static {v0}, Lcom/kingroot/kinguser/vh;->b(Lcom/kingroot/kinguser/vh;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/network/download/INetworkLoadTaskCallback;

    invoke-static {p1}, Lcom/kingroot/common/network/download/NetworkLoadTaskInfo$a;->h(Lcom/kingroot/kinguser/vj;)Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/kingroot/common/network/download/INetworkLoadTaskCallback;->onDeleted(Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 194
    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    .line 196
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/kingroot/kinguser/vh$1;->KJ:Lcom/kingroot/kinguser/vh;

    invoke-static {v0}, Lcom/kingroot/kinguser/vh;->b(Lcom/kingroot/kinguser/vh;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 197
    monitor-exit v2

    .line 198
    return-void

    .line 197
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
