.class public interface abstract Lcom/kingroot/kingmaster/toolbox/autostartmgr/wod/service/IWodService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kingmaster/toolbox/autostartmgr/wod/service/IWodService$Stub;
    }
.end annotation


# virtual methods
.method public abstract initConfigMap(Landroid/os/Bundle;)V
.end method

.method public abstract isServiceExist()Z
.end method

.method public abstract isWodAvailible()Z
.end method

.method public abstract setConfigMap(Landroid/os/Bundle;)V
.end method

.method public abstract setWodEnable(Z)V
.end method
