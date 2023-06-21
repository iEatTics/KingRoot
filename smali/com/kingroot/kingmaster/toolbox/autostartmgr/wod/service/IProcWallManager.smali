.class public interface abstract Lcom/kingroot/kingmaster/toolbox/autostartmgr/wod/service/IProcWallManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kingmaster/toolbox/autostartmgr/wod/service/IProcWallManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract getPackageConfig(Ljava/lang/String;)I
.end method

.method public abstract getVersionCode()I
.end method

.method public abstract initPackageConfigMap(Landroid/os/Bundle;)V
.end method

.method public abstract setAutoForceStopEnable(Z)V
.end method

.method public abstract setEnable(Z)V
.end method

.method public abstract setPackageConfig(Ljava/lang/String;I)V
.end method

.method public abstract setPackageConfigMap(Landroid/os/Bundle;)V
.end method
