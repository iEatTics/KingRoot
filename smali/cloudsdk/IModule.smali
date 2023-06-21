.class public interface abstract Lcloudsdk/IModule;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract asyncExecute(ILandroid/os/Bundle;Lcloudsdk/IActionCallback;)Z
.end method

.method public abstract asyncExecute(Landroid/content/Context;ILandroid/os/Bundle;Lcloudsdk/IActionCallback;)Z
.end method

.method public abstract destory()Z
.end method

.method public abstract execute(ILandroid/os/Bundle;)Lcloudsdk/IActionResult;
.end method

.method public abstract execute(ILandroid/os/Bundle;Landroid/os/Handler$Callback;)Lcloudsdk/IActionResult;
.end method

.method public abstract execute(Landroid/content/Context;ILandroid/os/Bundle;)Lcloudsdk/IActionResult;
.end method

.method public abstract execute(Landroid/content/Context;ILandroid/os/Bundle;Landroid/os/Handler$Callback;)Lcloudsdk/IActionResult;
.end method

.method public abstract getModuleInfo()Lcom/kingroot/kinguser/bme;
.end method

.method public abstract getVersion()I
.end method

.method public abstract isAlive()Z
.end method
