.class public interface abstract Lcloudsdk/ICloudSdk;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract destoryAllModules()Z
.end method

.method public abstract destoryModule(I)Z
.end method

.method public abstract getConfig()Lcloudsdk/SdkConfig;
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getWorkingDir()Ljava/lang/String;
.end method

.method public abstract initialize(Landroid/content/Context;Lcloudsdk/SdkConfig;)Lcloudsdk/IActionResult;
.end method

.method public abstract loadModule(I)Lcloudsdk/ILoadResult;
.end method

.method public abstract loadModule(IZ)Lcloudsdk/ILoadResult;
.end method
