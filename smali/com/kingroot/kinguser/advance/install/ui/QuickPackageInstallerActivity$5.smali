.class Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity$5;
.super Lcom/kingroot/kinguser/bek;
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
    .line 456
    iput-object p1, p0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity$5;->this$0:Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/bed$a;)V
    .locals 6
    .param p1    # Lcom/kingroot/kinguser/bed$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 459
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/bek;->a(Lcom/kingroot/kinguser/bed$a;)V

    .line 461
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/kingroot/kinguser/bed$a;->nF()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 484
    :cond_0
    :goto_0
    return-void

    .line 466
    :cond_1
    :try_start_0
    invoke-interface {p1}, Lcom/kingroot/kinguser/bed$a;->nF()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 469
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/kingroot/kinguser/ajh;->D(Ljava/io/File;)I

    move-result v1

    .line 471
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 472
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity$5;->this$0:Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;

    invoke-static {v0}, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->c(Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    const/high16 v2, -0x80000000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 473
    iget-object v1, p0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity$5;->this$0:Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;

    invoke-static {v1}, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->c(Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {}, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->wA()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 479
    :catch_0
    move-exception v0

    .line 481
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity$5;->this$0:Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;

    invoke-static {v0}, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->c(Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v5, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 482
    iget-object v1, p0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity$5;->this$0:Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;

    invoke-static {v1}, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->c(Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {}, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->wA()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 477
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/kingroot/kinguser/arv;->Nz()Lcom/kingroot/kinguser/arv;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity$5;->this$0:Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;

    invoke-static {v2}, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->f(Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;)Lcom/kingroot/kinguser/examination/service/ICloudCheckCallback;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/kingroot/kinguser/arv;->cloudCheckApks(Ljava/lang/String;Lcom/kingroot/kinguser/examination/service/ICloudCheckCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
