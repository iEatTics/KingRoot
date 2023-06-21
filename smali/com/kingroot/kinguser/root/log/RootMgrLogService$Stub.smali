.class Lcom/kingroot/kinguser/root/log/RootMgrLogService$Stub;
.super Lcom/kingroot/kinguser/root/log/IRootMgrLogEngine$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/root/log/RootMgrLogService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Stub"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/kingroot/kinguser/root/log/IRootMgrLogEngine$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/root/log/RootMgrLogService$1;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/kingroot/kinguser/root/log/RootMgrLogService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addLog(Lcom/kingroot/kinguser/model/RootMgrLogInfo;)V
    .locals 1

    .prologue
    .line 129
    invoke-static {}, Lcom/kingroot/kinguser/bbp;->Ww()Lcom/kingroot/kinguser/bbp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/bbp;->addLog(Lcom/kingroot/kinguser/model/RootMgrLogInfo;)V

    .line 131
    return-void
.end method

.method public addLogsChangeListener(Lcom/kingroot/kinguser/root/log/ILogsChangeListener;)V
    .locals 1

    .prologue
    .line 123
    invoke-static {}, Lcom/kingroot/kinguser/bbp;->Ww()Lcom/kingroot/kinguser/bbp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/bbp;->addLogsChangeListener(Lcom/kingroot/kinguser/root/log/ILogsChangeListener;)V

    .line 125
    return-void
.end method

.method public clearAllLogs()I
    .locals 1

    .prologue
    .line 117
    invoke-static {}, Lcom/kingroot/kinguser/bbp;->Ww()Lcom/kingroot/kinguser/bbp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bbp;->clearAllLogs()I

    move-result v0

    return v0
.end method

.method public clearTimeOutLogs()V
    .locals 1

    .prologue
    .line 111
    invoke-static {}, Lcom/kingroot/kinguser/bbp;->Ww()Lcom/kingroot/kinguser/bbp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bbp;->clearTimeOutLogs()V

    .line 113
    return-void
.end method

.method public getLogs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/model/RootMgrLogInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    invoke-static {}, Lcom/kingroot/kinguser/bbp;->Ww()Lcom/kingroot/kinguser/bbp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bbp;->getLogs()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTodayRequestAllowAppList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    invoke-static {}, Lcom/kingroot/kinguser/bbp;->Ww()Lcom/kingroot/kinguser/bbp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bbp;->getTodayRequestAllowAppList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTodayRequestAppCount()I
    .locals 1

    .prologue
    .line 96
    invoke-static {}, Lcom/kingroot/kinguser/bbp;->Ww()Lcom/kingroot/kinguser/bbp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bbp;->getTodayRequestAppCount()I

    move-result v0

    return v0
.end method

.method public hasExistLogs()Z
    .locals 1

    .prologue
    .line 135
    invoke-static {}, Lcom/kingroot/kinguser/bbp;->Ww()Lcom/kingroot/kinguser/bbp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bbp;->hasExistLogs()Z

    move-result v0

    return v0
.end method

.method public removeLogsChangeListener(Lcom/kingroot/kinguser/root/log/ILogsChangeListener;)V
    .locals 1

    .prologue
    .line 90
    invoke-static {}, Lcom/kingroot/kinguser/bbp;->Ww()Lcom/kingroot/kinguser/bbp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/bbp;->removeLogsChangeListener(Lcom/kingroot/kinguser/root/log/ILogsChangeListener;)V

    .line 92
    return-void
.end method

.method public setLogAble(Z)V
    .locals 1

    .prologue
    .line 83
    invoke-static {}, Lcom/kingroot/kinguser/bbp;->Ww()Lcom/kingroot/kinguser/bbp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/bbp;->setLogAble(Z)V

    .line 85
    return-void
.end method

.method public setLogLimit(I)V
    .locals 1

    .prologue
    .line 78
    invoke-static {}, Lcom/kingroot/kinguser/bbp;->Ww()Lcom/kingroot/kinguser/bbp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/bbp;->setLogLimit(I)V

    .line 79
    return-void
.end method
