.class Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity$3;
.super Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;
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
    .line 307
    iput-object p1, p0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity$3;->this$0:Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;

    invoke-direct {p0}, Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onState(Ljava/lang/String;ILjava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 310
    const/16 v0, 0xa

    if-ne p2, v0, :cond_1

    .line 312
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity$3;->this$0:Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;

    invoke-static {v0}, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->c(Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, ""

    invoke-virtual {v0, v4, v1, v3, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 313
    :cond_1
    const/16 v0, 0xc

    if-lt p2, v0, :cond_0

    const/16 v0, 0x10

    if-gt p2, v0, :cond_0

    .line 317
    const/16 v0, 0xf

    if-ne p2, v0, :cond_2

    if-eqz p3, :cond_2

    const-string v0, "Failure"

    .line 318
    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 319
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Gf()V

    .line 321
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity$3;->this$0:Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;

    invoke-static {v0}, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->c(Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v4, v1, v3, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
