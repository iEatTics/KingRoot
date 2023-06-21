.class public Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerPage$7;
.super Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/ahd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/ahd;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/ahd;)V
    .locals 0

    .prologue
    .line 631
    iput-object p1, p0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerPage$7;->this$0:Lcom/kingroot/kinguser/ahd;

    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(ILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 635
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 636
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/kingroot/kinguser/anf;->c(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 637
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    .line 638
    iget-object v2, p0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerPage$7;->this$0:Lcom/kingroot/kinguser/ahd;

    invoke-static {v2}, Lcom/kingroot/kinguser/ahd;->f(Lcom/kingroot/kinguser/ahd;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/kingroot/kinguser/advance/model/QuickInstallRecommendModel;

    invoke-direct {v3, v0}, Lcom/kingroot/kinguser/advance/model/QuickInstallRecommendModel;-><init>(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 640
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerPage$7;->this$0:Lcom/kingroot/kinguser/ahd;

    iget-object v1, p0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerPage$7;->this$0:Lcom/kingroot/kinguser/ahd;

    invoke-static {v1}, Lcom/kingroot/kinguser/ahd;->g(Lcom/kingroot/kinguser/ahd;)I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/ahd;->b(Lcom/kingroot/kinguser/ahd;I)I

    .line 641
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerPage$7;->this$0:Lcom/kingroot/kinguser/ahd;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ahd;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 645
    :goto_1
    return-void

    .line 643
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerPage$7;->this$0:Lcom/kingroot/kinguser/ahd;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ahd;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1
.end method
