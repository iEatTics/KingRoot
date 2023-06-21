.class Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity$6;
.super Lcom/kingroot/kinguser/examination/service/ICloudCheckCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;)V
    .locals 0

    .prologue
    .line 487
    iput-object p1, p0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity$6;->this$0:Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;

    invoke-direct {p0}, Lcom/kingroot/kinguser/examination/service/ICloudCheckCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(I)V
    .locals 3

    .prologue
    .line 520
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity$6;->this$0:Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;

    invoke-static {v0}, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->c(Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 521
    iget-object v1, p0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity$6;->this$0:Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;

    invoke-static {v1}, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->c(Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 522
    return-void
.end method

.method public onRiskFound(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x4

    .line 491
    .line 494
    :try_start_0
    const-string v0, "risk"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/tencent/securemodule/api/AppInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 495
    :try_start_1
    const-string v1, "unknown"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/tencent/securemodule/api/AppInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 500
    :goto_0
    if-eqz v0, :cond_0

    .line 502
    iget-object v1, p0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity$6;->this$0:Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;

    invoke-static {v1}, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->c(Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/securemodule/api/AppInfo;->aiE()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 503
    iget-object v1, p0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity$6;->this$0:Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;

    invoke-static {v1}, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->c(Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 515
    :goto_1
    return-void

    .line 496
    :catch_0
    move-exception v0

    move-object v0, v2

    :goto_2
    move-object v1, v2

    goto :goto_0

    .line 507
    :cond_0
    if-eqz v1, :cond_1

    .line 509
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity$6;->this$0:Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;

    invoke-static {v0}, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->c(Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v1}, Lcom/tencent/securemodule/api/AppInfo;->aiE()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v3, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 510
    iget-object v1, p0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity$6;->this$0:Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;

    invoke-static {v1}, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->c(Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 513
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity$6;->this$0:Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;

    invoke-static {v0}, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->c(Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v3, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 514
    iget-object v1, p0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity$6;->this$0:Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;

    invoke-static {v1}, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->c(Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 496
    :catch_1
    move-exception v1

    goto :goto_2
.end method
