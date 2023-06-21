.class Lcom/kingroot/kinguser/cac;
.super Lcom/kingroot/kinguser/cah;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kingroot/kinguser/cah",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic bWf:Lcom/kingroot/kinguser/cab;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/cab;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/kingroot/kinguser/cac;->bWf:Lcom/kingroot/kinguser/cab;

    invoke-direct {p0}, Lcom/kingroot/kinguser/cah;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/caf;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 193
    iget-object v0, p0, Lcom/kingroot/kinguser/cac;->bWf:Lcom/kingroot/kinguser/cab;

    invoke-static {v0}, Lcom/kingroot/kinguser/cab;->a(Lcom/kingroot/kinguser/cab;)Lcom/kingroot/kinguser/cah;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/kingroot/kinguser/cac;->bWf:Lcom/kingroot/kinguser/cab;

    invoke-static {v0}, Lcom/kingroot/kinguser/cab;->a(Lcom/kingroot/kinguser/cab;)Lcom/kingroot/kinguser/cah;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/cah;->a(Lcom/kingroot/kinguser/caf;)V

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cac;->bWf:Lcom/kingroot/kinguser/cab;

    invoke-static {v0}, Lcom/kingroot/kinguser/cab;->b(Lcom/kingroot/kinguser/cab;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 198
    :goto_0
    if-lez v0, :cond_1

    .line 199
    add-int/lit8 v1, v0, -0x1

    .line 201
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cac;->bWf:Lcom/kingroot/kinguser/cab;

    invoke-static {v0}, Lcom/kingroot/kinguser/cab;->b(Lcom/kingroot/kinguser/cab;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lkingcom/core/network/download/f;

    invoke-static {p1}, Lkingcom/core/network/download/NetworkLoadTaskInfo$a;->c(Lcom/kingroot/kinguser/caf;)Lkingcom/core/network/download/NetworkLoadTaskInfo;

    move-result-object v2

    invoke-interface {v0, v2}, Lkingcom/core/network/download/f;->e(Lkingcom/core/network/download/NetworkLoadTaskInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 202
    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/cac;->bWf:Lcom/kingroot/kinguser/cab;

    invoke-static {v0}, Lcom/kingroot/kinguser/cab;->b(Lcom/kingroot/kinguser/cab;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 206
    return-void
.end method

.method public b(Lcom/kingroot/kinguser/caf;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 210
    iget-object v0, p0, Lcom/kingroot/kinguser/cac;->bWf:Lcom/kingroot/kinguser/cab;

    invoke-static {v0}, Lcom/kingroot/kinguser/cab;->c(Lcom/kingroot/kinguser/cab;)V

    .line 211
    iget-object v0, p0, Lcom/kingroot/kinguser/cac;->bWf:Lcom/kingroot/kinguser/cab;

    invoke-static {v0}, Lcom/kingroot/kinguser/cab;->a(Lcom/kingroot/kinguser/cab;)Lcom/kingroot/kinguser/cah;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/kingroot/kinguser/cac;->bWf:Lcom/kingroot/kinguser/cab;

    invoke-static {v0}, Lcom/kingroot/kinguser/cab;->a(Lcom/kingroot/kinguser/cab;)Lcom/kingroot/kinguser/cah;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/cah;->b(Lcom/kingroot/kinguser/caf;)V

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cac;->bWf:Lcom/kingroot/kinguser/cab;

    invoke-static {v0}, Lcom/kingroot/kinguser/cab;->b(Lcom/kingroot/kinguser/cab;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 216
    :goto_0
    if-lez v0, :cond_1

    .line 217
    add-int/lit8 v1, v0, -0x1

    .line 219
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cac;->bWf:Lcom/kingroot/kinguser/cab;

    invoke-static {v0}, Lcom/kingroot/kinguser/cab;->b(Lcom/kingroot/kinguser/cab;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lkingcom/core/network/download/f;

    invoke-static {p1}, Lkingcom/core/network/download/NetworkLoadTaskInfo$a;->c(Lcom/kingroot/kinguser/caf;)Lkingcom/core/network/download/NetworkLoadTaskInfo;

    move-result-object v2

    invoke-interface {v0, v2}, Lkingcom/core/network/download/f;->d(Lkingcom/core/network/download/NetworkLoadTaskInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 220
    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/cac;->bWf:Lcom/kingroot/kinguser/cab;

    invoke-static {v0}, Lcom/kingroot/kinguser/cab;->b(Lcom/kingroot/kinguser/cab;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 224
    return-void
.end method

.method public d(Lcom/kingroot/kinguser/caf;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/kingroot/kinguser/cac;->bWf:Lcom/kingroot/kinguser/cab;

    invoke-static {v0}, Lcom/kingroot/kinguser/cab;->a(Lcom/kingroot/kinguser/cab;)Lcom/kingroot/kinguser/cah;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/kingroot/kinguser/cac;->bWf:Lcom/kingroot/kinguser/cab;

    invoke-static {v0}, Lcom/kingroot/kinguser/cab;->a(Lcom/kingroot/kinguser/cab;)Lcom/kingroot/kinguser/cah;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/cah;->d(Lcom/kingroot/kinguser/caf;)V

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cac;->bWf:Lcom/kingroot/kinguser/cab;

    invoke-static {v0}, Lcom/kingroot/kinguser/cab;->b(Lcom/kingroot/kinguser/cab;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 115
    :goto_0
    if-lez v0, :cond_1

    .line 116
    add-int/lit8 v1, v0, -0x1

    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cac;->bWf:Lcom/kingroot/kinguser/cab;

    invoke-static {v0}, Lcom/kingroot/kinguser/cab;->b(Lcom/kingroot/kinguser/cab;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lkingcom/core/network/download/f;

    invoke-static {p1}, Lkingcom/core/network/download/NetworkLoadTaskInfo$a;->c(Lcom/kingroot/kinguser/caf;)Lkingcom/core/network/download/NetworkLoadTaskInfo;

    move-result-object v2

    invoke-interface {v0, v2}, Lkingcom/core/network/download/f;->a(Lkingcom/core/network/download/NetworkLoadTaskInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 119
    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/cac;->bWf:Lcom/kingroot/kinguser/cab;

    invoke-static {v0}, Lcom/kingroot/kinguser/cab;->b(Lcom/kingroot/kinguser/cab;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 122
    return-void
.end method

.method public e(Lcom/kingroot/kinguser/caf;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lcom/kingroot/kinguser/cac;->bWf:Lcom/kingroot/kinguser/cab;

    invoke-static {v0}, Lcom/kingroot/kinguser/cab;->a(Lcom/kingroot/kinguser/cab;)Lcom/kingroot/kinguser/cah;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/kingroot/kinguser/cac;->bWf:Lcom/kingroot/kinguser/cab;

    invoke-static {v0}, Lcom/kingroot/kinguser/cab;->a(Lcom/kingroot/kinguser/cab;)Lcom/kingroot/kinguser/cah;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/cah;->e(Lcom/kingroot/kinguser/caf;)V

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cac;->bWf:Lcom/kingroot/kinguser/cab;

    invoke-static {v0}, Lcom/kingroot/kinguser/cab;->b(Lcom/kingroot/kinguser/cab;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 131
    :goto_0
    if-lez v0, :cond_1

    .line 132
    add-int/lit8 v1, v0, -0x1

    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cac;->bWf:Lcom/kingroot/kinguser/cab;

    invoke-static {v0}, Lcom/kingroot/kinguser/cab;->b(Lcom/kingroot/kinguser/cab;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lkingcom/core/network/download/f;

    invoke-static {p1}, Lkingcom/core/network/download/NetworkLoadTaskInfo$a;->c(Lcom/kingroot/kinguser/caf;)Lkingcom/core/network/download/NetworkLoadTaskInfo;

    move-result-object v2

    invoke-interface {v0, v2}, Lkingcom/core/network/download/f;->b(Lkingcom/core/network/download/NetworkLoadTaskInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 135
    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/cac;->bWf:Lcom/kingroot/kinguser/cab;

    invoke-static {v0}, Lcom/kingroot/kinguser/cab;->b(Lcom/kingroot/kinguser/cab;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 138
    return-void
.end method

.method public f(Lcom/kingroot/kinguser/caf;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lcom/kingroot/kinguser/cac;->bWf:Lcom/kingroot/kinguser/cab;

    invoke-static {v0}, Lcom/kingroot/kinguser/cab;->a(Lcom/kingroot/kinguser/cab;)Lcom/kingroot/kinguser/cah;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/kingroot/kinguser/cac;->bWf:Lcom/kingroot/kinguser/cab;

    invoke-static {v0}, Lcom/kingroot/kinguser/cab;->a(Lcom/kingroot/kinguser/cab;)Lcom/kingroot/kinguser/cah;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/cah;->f(Lcom/kingroot/kinguser/caf;)V

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cac;->bWf:Lcom/kingroot/kinguser/cab;

    invoke-static {v0}, Lcom/kingroot/kinguser/cab;->b(Lcom/kingroot/kinguser/cab;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 147
    :goto_0
    if-lez v0, :cond_1

    .line 148
    add-int/lit8 v1, v0, -0x1

    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cac;->bWf:Lcom/kingroot/kinguser/cab;

    invoke-static {v0}, Lcom/kingroot/kinguser/cab;->b(Lcom/kingroot/kinguser/cab;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lkingcom/core/network/download/f;

    invoke-static {p1}, Lkingcom/core/network/download/NetworkLoadTaskInfo$a;->c(Lcom/kingroot/kinguser/caf;)Lkingcom/core/network/download/NetworkLoadTaskInfo;

    move-result-object v2

    invoke-interface {v0, v2}, Lkingcom/core/network/download/f;->c(Lkingcom/core/network/download/NetworkLoadTaskInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 151
    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/cac;->bWf:Lcom/kingroot/kinguser/cab;

    invoke-static {v0}, Lcom/kingroot/kinguser/cab;->b(Lcom/kingroot/kinguser/cab;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 155
    return-void
.end method
