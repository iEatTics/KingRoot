.class public interface abstract Lcom/kingroot/loader/multi/IKlPackageManagerBridge;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/loader/multi/IKlPackageManagerBridge$a;
    }
.end annotation


# virtual methods
.method public abstract getInstalledKlInfos()Ljava/util/List;
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

.method public abstract installPluginEx(Ljava/lang/String;Lcom/kingroot/loader/sdk/KlInfo;Z)I
.end method

.method public abstract markPluginRunning(II)V
.end method

.method public abstract postRestartUpdate(Ljava/lang/String;Lcom/kingroot/loader/multi/IKlPostRestartUpdateObserverBridge;)V
.end method

.method public abstract setEnabledSetting(IZ)Z
.end method

.method public abstract uninstallPlugin(I)V
.end method
