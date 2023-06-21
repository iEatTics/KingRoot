.class public interface abstract Lcom/kingroot/kinguser/plugin/upgrade/PluginDownloadCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/plugin/upgrade/PluginDownloadCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onDeleted()V
.end method

.method public abstract onFailed(Ljava/lang/String;I)V
.end method

.method public abstract onFinished(Ljava/lang/String;I)V
.end method

.method public abstract onProgressChanged(F)V
.end method

.method public abstract onRunning()V
.end method
