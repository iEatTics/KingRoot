.class Lcom/kingroot/loader/q$a;
.super Lcom/kingroot/loader/multi/IKlPackageManagerBridge$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/loader/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/kingroot/loader/sdk/service/IKlPackageManager;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/kingroot/loader/multi/IKlPackageManagerBridge$a;-><init>()V

    .line 34
    const-class v0, Lcom/kingroot/loader/sdk/service/IKlPackageManager;

    invoke-static {v0}, Lcom/kingroot/loader/common/KlServiceManager;->getKService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/loader/sdk/service/IKlPackageManager;

    iput-object v0, p0, Lcom/kingroot/loader/q$a;->a:Lcom/kingroot/loader/sdk/service/IKlPackageManager;

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/loader/q$1;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/kingroot/loader/q$a;-><init>()V

    return-void
.end method


# virtual methods
.method public getInstalledKlInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/loader/sdk/KlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/kingroot/loader/q$a;->a:Lcom/kingroot/loader/sdk/service/IKlPackageManager;

    invoke-interface {v0}, Lcom/kingroot/loader/sdk/service/IKlPackageManager;->getInstalledKlInfos()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInstalledKlPackage(I)Lcom/kingroot/loader/sdk/KlPackage;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/kingroot/loader/q$a;->a:Lcom/kingroot/loader/sdk/service/IKlPackageManager;

    invoke-interface {v0, p1}, Lcom/kingroot/loader/sdk/service/IKlPackageManager;->getInstalledKlPackage(I)Lcom/kingroot/loader/sdk/KlPackage;

    move-result-object v0

    return-object v0
.end method

.method public installPlugin(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/kingroot/loader/q$a;->a:Lcom/kingroot/loader/sdk/service/IKlPackageManager;

    invoke-interface {v0, p1}, Lcom/kingroot/loader/sdk/service/IKlPackageManager;->installPlugin(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public installPluginEx(Ljava/lang/String;Lcom/kingroot/loader/sdk/KlInfo;Z)I
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/kingroot/loader/q$a;->a:Lcom/kingroot/loader/sdk/service/IKlPackageManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/kingroot/loader/sdk/service/IKlPackageManager;->installPlugin(Ljava/lang/String;Lcom/kingroot/loader/sdk/KlInfo;Z)I

    move-result v0

    return v0
.end method

.method public markPluginRunning(II)V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/kingroot/loader/q$a;->a:Lcom/kingroot/loader/sdk/service/IKlPackageManager;

    invoke-interface {v0, p1, p2}, Lcom/kingroot/loader/sdk/service/IKlPackageManager;->markPluginRunning(II)V

    .line 40
    return-void
.end method

.method public postRestartUpdate(Ljava/lang/String;Lcom/kingroot/loader/multi/IKlPostRestartUpdateObserverBridge;)V
    .locals 2

    .prologue
    .line 77
    const/4 v0, 0x0

    .line 78
    if-eqz p2, :cond_0

    .line 79
    new-instance v0, Lcom/kingroot/loader/q$a$1;

    invoke-direct {v0, p0, p2}, Lcom/kingroot/loader/q$a$1;-><init>(Lcom/kingroot/loader/q$a;Lcom/kingroot/loader/multi/IKlPostRestartUpdateObserverBridge;)V

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/kingroot/loader/q$a;->a:Lcom/kingroot/loader/sdk/service/IKlPackageManager;

    invoke-interface {v1, p1, v0}, Lcom/kingroot/loader/sdk/service/IKlPackageManager;->postRestartUpdate(Ljava/lang/String;Lcom/kingroot/loader/sdk/service/IKlPostRestartUpdateObserver;)V

    .line 92
    return-void
.end method

.method public setEnabledSetting(IZ)Z
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/kingroot/loader/q$a;->a:Lcom/kingroot/loader/sdk/service/IKlPackageManager;

    invoke-interface {v0, p1, p2}, Lcom/kingroot/loader/sdk/service/IKlPackageManager;->setEnabledSetting(IZ)Z

    move-result v0

    return v0
.end method

.method public uninstallPlugin(I)V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/kingroot/loader/q$a;->a:Lcom/kingroot/loader/sdk/service/IKlPackageManager;

    invoke-interface {v0, p1}, Lcom/kingroot/loader/sdk/service/IKlPackageManager;->uninstallPlugin(I)V

    .line 55
    return-void
.end method
