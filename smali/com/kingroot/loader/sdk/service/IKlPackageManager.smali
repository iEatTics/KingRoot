.class public interface abstract Lcom/kingroot/loader/sdk/service/IKlPackageManager;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getInstalledKlInfos()Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/loader/sdk/KlInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInstalledKlPackage(I)Lcom/kingroot/loader/sdk/KlPackage;
.end method

.method public abstract installPlugin(Ljava/lang/String;)I
.end method

.method public abstract installPlugin(Ljava/lang/String;Lcom/kingroot/loader/sdk/KlInfo;Z)I
.end method

.method public abstract markPluginRunning(II)V
.end method

.method public abstract postRestartUpdate(Ljava/lang/String;Lcom/kingroot/loader/sdk/service/IKlPostRestartUpdateObserver;)V
.end method

.method public abstract setEnabledSetting(IZ)Z
.end method

.method public abstract uninstallPlugin(I)V
.end method
