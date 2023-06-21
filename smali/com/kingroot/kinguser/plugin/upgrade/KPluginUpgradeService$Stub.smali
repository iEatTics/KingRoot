.class Lcom/kingroot/kinguser/plugin/upgrade/KPluginUpgradeService$Stub;
.super Lcom/kingroot/kinguser/plugin/upgrade/IPluginUpgradeService$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/plugin/upgrade/KPluginUpgradeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Stub"
.end annotation


# instance fields
.field private mImpl:Lcom/kingroot/kinguser/bak;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/kingroot/kinguser/plugin/upgrade/IPluginUpgradeService$Stub;-><init>()V

    .line 79
    invoke-static {}, Lcom/kingroot/kinguser/bak;->Vx()Lcom/kingroot/kinguser/bak;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/plugin/upgrade/KPluginUpgradeService$Stub;->mImpl:Lcom/kingroot/kinguser/bak;

    .line 80
    return-void
.end method


# virtual methods
.method public deleteUpgradeInfo(I)V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/kingroot/kinguser/plugin/upgrade/KPluginUpgradeService$Stub;->mImpl:Lcom/kingroot/kinguser/bak;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bak;->Vy()Lcom/kingroot/kinguser/bah;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/bah;->hH(I)Z

    .line 113
    return-void
.end method

.method public getUpgradeInfo(I)Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/kingroot/kinguser/plugin/upgrade/KPluginUpgradeService$Stub;->mImpl:Lcom/kingroot/kinguser/bak;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bak;->Vy()Lcom/kingroot/kinguser/bah;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/bah;->getUpgradeInfo(I)Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;

    move-result-object v0

    return-object v0
.end method

.method public getUpgradeInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lcom/kingroot/kinguser/plugin/upgrade/KPluginUpgradeService$Stub;->mImpl:Lcom/kingroot/kinguser/bak;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bak;->Vy()Lcom/kingroot/kinguser/bah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bah;->getUpgradeInfoList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public processLocalOrderSync(I)I
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/kingroot/kinguser/plugin/upgrade/KPluginUpgradeService$Stub;->mImpl:Lcom/kingroot/kinguser/bak;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/bak;->processLocalOrderSync(I)I

    move-result v0

    return v0
.end method

.method public pullPluginOrderAsync(Z)V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/kingroot/kinguser/plugin/upgrade/KPluginUpgradeService$Stub;->mImpl:Lcom/kingroot/kinguser/bak;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/bak;->pullPluginOrderAsync(Z)V

    .line 85
    return-void
.end method

.method public pullPluginOrderSync(Z)I
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/kingroot/kinguser/plugin/upgrade/KPluginUpgradeService$Stub;->mImpl:Lcom/kingroot/kinguser/bak;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/bak;->pullPluginOrderSync(Z)I

    move-result v0

    return v0
.end method

.method public setUpgradeInfoFlag(II)V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/kingroot/kinguser/plugin/upgrade/KPluginUpgradeService$Stub;->mImpl:Lcom/kingroot/kinguser/bak;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bak;->Vy()Lcom/kingroot/kinguser/bah;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/kingroot/kinguser/bah;->Z(II)Z

    .line 119
    return-void
.end method

.method public startDownload(ILcom/kingroot/kinguser/plugin/upgrade/PluginDownloadCallback;)Z
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/kingroot/kinguser/plugin/upgrade/KPluginUpgradeService$Stub;->mImpl:Lcom/kingroot/kinguser/bak;

    invoke-virtual {v0, p1, p2}, Lcom/kingroot/kinguser/bak;->startDownload(ILcom/kingroot/kinguser/plugin/upgrade/PluginDownloadCallback;)Z

    move-result v0

    return v0
.end method

.method public stopDownload(I)V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/kingroot/kinguser/plugin/upgrade/KPluginUpgradeService$Stub;->mImpl:Lcom/kingroot/kinguser/bak;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/bak;->hJ(I)V

    .line 124
    return-void
.end method
