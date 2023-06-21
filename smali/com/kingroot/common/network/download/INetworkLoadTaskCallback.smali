.class public interface abstract Lcom/kingroot/common/network/download/INetworkLoadTaskCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/common/network/download/INetworkLoadTaskCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onDeleted(Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;)V
.end method

.method public abstract onFailed(Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;)V
.end method

.method public abstract onFinished(Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;)V
.end method

.method public abstract onInstallFailed(Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;)V
.end method

.method public abstract onInstallFinished(Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;)V
.end method

.method public abstract onPaused(Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;)V
.end method

.method public abstract onProgressChanged(Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;)V
.end method

.method public abstract onRunning(Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;)V
.end method

.method public abstract onWaiting(Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;)V
.end method
