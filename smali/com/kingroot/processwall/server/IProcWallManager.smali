.class public interface abstract Lcom/kingroot/processwall/server/IProcWallManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/processwall/server/IProcWallManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract addPackageConfig(Ljava/lang/String;I)V
.end method

.method public abstract getInjectTime()J
.end method

.method public abstract getPackageConfig(Ljava/lang/String;)I
.end method

.method public abstract getPackageConfigMap()Ljava/util/Map;
.end method

.method public abstract getRunningAppProcesses()Ljava/util/List;
.end method

.method public abstract getTopActivityPackageName()Ljava/lang/String;
.end method

.method public abstract getVersionCode()I
.end method

.method public abstract initCloudMap(Landroid/os/Bundle;Z)V
.end method

.method public abstract initForceConfigMag(Landroid/os/Bundle;Landroid/os/Bundle;)V
.end method

.method public abstract initPackageConfigMap(Landroid/os/Bundle;)V
.end method

.method public abstract isEnable()Z
.end method

.method public abstract setAutoForceStopEnable(Z)V
.end method

.method public abstract setEnable(Z)V
.end method

.method public abstract setPackageConfig(Ljava/lang/String;I)V
.end method

.method public abstract setPackageConfigMap(Landroid/os/Bundle;)V
.end method
