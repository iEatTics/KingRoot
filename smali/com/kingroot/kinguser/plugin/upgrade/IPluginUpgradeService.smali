.class public interface abstract Lcom/kingroot/kinguser/plugin/upgrade/IPluginUpgradeService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/plugin/upgrade/IPluginUpgradeService$Stub;
    }
.end annotation


# virtual methods
.method public abstract deleteUpgradeInfo(I)V
.end method

.method public abstract getUpgradeInfo(I)Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;
.end method

.method public abstract getUpgradeInfoList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract processLocalOrderSync(I)I
.end method

.method public abstract pullPluginOrderAsync(Z)V
.end method

.method public abstract pullPluginOrderSync(Z)I
.end method

.method public abstract setUpgradeInfoFlag(II)V
.end method

.method public abstract startDownload(ILcom/kingroot/kinguser/plugin/upgrade/PluginDownloadCallback;)Z
.end method

.method public abstract stopDownload(I)V
.end method
