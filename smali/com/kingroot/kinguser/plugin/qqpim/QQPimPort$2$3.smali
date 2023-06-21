.class Lcom/kingroot/kinguser/plugin/qqpim/QQPimPort$2$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/plugin/qqpim/QQPimPort$2;->onComplete(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bdj:Lcom/kingroot/kinguser/plugin/qqpim/QQPimPort$2;

.field final synthetic bdl:Lcom/kingroot/kinguser/azo;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/plugin/qqpim/QQPimPort$2;Lcom/kingroot/kinguser/azo;)V
    .locals 0

    .prologue
    .line 409
    iput-object p1, p0, Lcom/kingroot/kinguser/plugin/qqpim/QQPimPort$2$3;->bdj:Lcom/kingroot/kinguser/plugin/qqpim/QQPimPort$2;

    iput-object p2, p0, Lcom/kingroot/kinguser/plugin/qqpim/QQPimPort$2$3;->bdl:Lcom/kingroot/kinguser/azo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 412
    const-class v0, Lcom/kingroot/loader/sdk/service/IKlConnectionManager;

    invoke-static {v0}, Lcom/kingroot/loader/common/KlServiceManager;->getKService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/loader/sdk/service/IKlConnectionManager;

    iget-object v1, p0, Lcom/kingroot/kinguser/plugin/qqpim/QQPimPort$2$3;->bdj:Lcom/kingroot/kinguser/plugin/qqpim/QQPimPort$2;

    iget-object v1, v1, Lcom/kingroot/kinguser/plugin/qqpim/QQPimPort$2;->this$0:Lcom/kingroot/kinguser/ayv;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/ayv;->getPluginId()I

    move-result v1

    iget-object v2, p0, Lcom/kingroot/kinguser/plugin/qqpim/QQPimPort$2$3;->bdl:Lcom/kingroot/kinguser/azo;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/azo;->transferToBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/kingroot/loader/sdk/service/IKlConnectionManager;->talkWithPlugin(ILandroid/os/Bundle;)Landroid/os/Bundle;

    .line 413
    return-void
.end method
