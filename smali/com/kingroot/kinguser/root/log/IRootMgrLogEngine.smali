.class public interface abstract Lcom/kingroot/kinguser/root/log/IRootMgrLogEngine;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/root/log/IRootMgrLogEngine$Stub;
    }
.end annotation


# virtual methods
.method public abstract addLog(Lcom/kingroot/kinguser/model/RootMgrLogInfo;)V
.end method

.method public abstract addLogsChangeListener(Lcom/kingroot/kinguser/root/log/ILogsChangeListener;)V
.end method

.method public abstract clearAllLogs()I
.end method

.method public abstract clearTimeOutLogs()V
.end method

.method public abstract getLogs()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/model/RootMgrLogInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTodayRequestAllowAppList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTodayRequestAppCount()I
.end method

.method public abstract hasExistLogs()Z
.end method

.method public abstract removeLogsChangeListener(Lcom/kingroot/kinguser/root/log/ILogsChangeListener;)V
.end method

.method public abstract setLogAble(Z)V
.end method

.method public abstract setLogLimit(I)V
.end method
