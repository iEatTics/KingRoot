.class public final Lcloudsdk/CloudSdk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcloudsdk/ICloudSdk;


# static fields
.field private static a:Lcloudsdk/CloudSdk;


# instance fields
.field private b:Lcloudsdk/ICloudSdk;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/kingroot/kinguser/bmg;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bmg;-><init>()V

    iput-object v0, p0, Lcloudsdk/CloudSdk;->b:Lcloudsdk/ICloudSdk;

    .line 20
    return-void
.end method

.method public static getInstance()Lcloudsdk/CloudSdk;
    .locals 2

    .prologue
    .line 23
    sget-object v0, Lcloudsdk/CloudSdk;->a:Lcloudsdk/CloudSdk;

    if-nez v0, :cond_0

    .line 24
    const-class v1, Lcloudsdk/CloudSdk;

    monitor-enter v1

    .line 25
    :try_start_0
    new-instance v0, Lcloudsdk/CloudSdk;

    invoke-direct {v0}, Lcloudsdk/CloudSdk;-><init>()V

    sput-object v0, Lcloudsdk/CloudSdk;->a:Lcloudsdk/CloudSdk;

    .line 26
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :cond_0
    sget-object v0, Lcloudsdk/CloudSdk;->a:Lcloudsdk/CloudSdk;

    return-object v0

    .line 26
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final destoryAllModules()Z
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcloudsdk/CloudSdk;->b:Lcloudsdk/ICloudSdk;

    invoke-interface {v0}, Lcloudsdk/ICloudSdk;->destoryAllModules()Z

    move-result v0

    return v0
.end method

.method public final destoryModule(I)Z
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcloudsdk/CloudSdk;->b:Lcloudsdk/ICloudSdk;

    invoke-interface {v0, p1}, Lcloudsdk/ICloudSdk;->destoryModule(I)Z

    move-result v0

    return v0
.end method

.method public final getConfig()Lcloudsdk/SdkConfig;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcloudsdk/CloudSdk;->b:Lcloudsdk/ICloudSdk;

    invoke-interface {v0}, Lcloudsdk/ICloudSdk;->getConfig()Lcloudsdk/SdkConfig;

    move-result-object v0

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcloudsdk/CloudSdk;->b:Lcloudsdk/ICloudSdk;

    invoke-interface {v0}, Lcloudsdk/ICloudSdk;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final getWorkingDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcloudsdk/CloudSdk;->b:Lcloudsdk/ICloudSdk;

    invoke-interface {v0}, Lcloudsdk/ICloudSdk;->getWorkingDir()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final initialize(Landroid/content/Context;Lcloudsdk/SdkConfig;)Lcloudsdk/IActionResult;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcloudsdk/CloudSdk;->b:Lcloudsdk/ICloudSdk;

    invoke-interface {v0, p1, p2}, Lcloudsdk/ICloudSdk;->initialize(Landroid/content/Context;Lcloudsdk/SdkConfig;)Lcloudsdk/IActionResult;

    move-result-object v0

    return-object v0
.end method

.method public final loadModule(I)Lcloudsdk/ILoadResult;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcloudsdk/CloudSdk;->b:Lcloudsdk/ICloudSdk;

    invoke-interface {v0, p1}, Lcloudsdk/ICloudSdk;->loadModule(I)Lcloudsdk/ILoadResult;

    move-result-object v0

    return-object v0
.end method

.method public final loadModule(IZ)Lcloudsdk/ILoadResult;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcloudsdk/CloudSdk;->b:Lcloudsdk/ICloudSdk;

    invoke-interface {v0, p1, p2}, Lcloudsdk/ICloudSdk;->loadModule(IZ)Lcloudsdk/ILoadResult;

    move-result-object v0

    return-object v0
.end method
