.class Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 386
    iput-object p1, p0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity$4;->this$0:Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 389
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 453
    :cond_0
    :goto_0
    return-void

    .line 392
    :sswitch_0
    check-cast p1, Landroid/widget/Button;

    .line 393
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f070403

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 395
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity$4;->this$0:Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;

    invoke-static {v1}, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->a(Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;)Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->pkgName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/anf;->t(Landroid/content/Context;Ljava/lang/String;)V

    .line 396
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity$4;->this$0:Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->finish()V

    goto :goto_0

    .line 397
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f070062

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 399
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity$4;->this$0:Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;

    invoke-static {v0}, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->e(Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;)V

    goto :goto_0

    .line 400
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f07039a

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 401
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity$4;->this$0:Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->finish()V

    goto :goto_0

    .line 402
    :cond_3
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f0704ac

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity$4;->this$0:Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;

    iget-object v1, p0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity$4;->this$0:Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->a(Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;Landroid/net/Uri;)V

    .line 404
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity$4;->this$0:Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->finish()V

    goto/16 :goto_0

    .line 408
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0703f1

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x4c7bbc

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/activitys/AppDownloadActivity;->c(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 412
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f070424

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x4c7bba

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/activitys/AppDownloadActivity;->c(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 416
    :sswitch_3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/activitys/AppsMarketMainActivity;->aL(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 419
    :sswitch_4
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    invoke-direct {v0}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;-><init>()V

    .line 420
    iget-object v1, p0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity$4;->this$0:Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;

    invoke-static {v1}, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->a(Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;)Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->pkgName:Ljava/lang/String;

    iput-object v1, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->pkgName:Ljava/lang/String;

    .line 421
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v2}, Lcom/kingroot/kinguser/activitys/AppDetailActivity;->a(Landroid/content/Context;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;Z)V

    .line 423
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity$4;->this$0:Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;

    invoke-static {v0}, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->a(Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;)Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;

    move-result-object v0

    iput v2, v0, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->apH:I

    .line 424
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 425
    const-string v1, "quick_installer_info"

    iget-object v2, p0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity$4;->this$0:Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;

    invoke-static {v2}, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->a(Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;)Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 426
    const-class v1, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity$a;

    invoke-static {v1, v0}, Lcom/kingroot/kinguser/tj;->a(Ljava/lang/Class;Landroid/os/Bundle;)Ljava/lang/String;

    .line 427
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity$4;->this$0:Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->finish()V

    goto/16 :goto_0

    .line 430
    :sswitch_5
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity$4;->this$0:Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;

    invoke-static {v0}, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->a(Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;)Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;

    move-result-object v0

    iput v3, v0, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->apH:I

    .line 431
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity$4;->this$0:Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;

    invoke-static {v0}, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->e(Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;)V

    goto/16 :goto_0

    .line 435
    :sswitch_6
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f070492

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast p1, Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 437
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x1897e

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 438
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity$4;->this$0:Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;

    invoke-static {v0}, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->d(Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;)V

    goto/16 :goto_0

    .line 440
    :cond_4
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity$4;->this$0:Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;

    invoke-static {v0}, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->a(Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;)Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;

    move-result-object v0

    iput v3, v0, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->apH:I

    .line 441
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity$4;->this$0:Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;

    invoke-static {v0}, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->e(Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;)V

    goto/16 :goto_0

    .line 446
    :sswitch_7
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity$4;->this$0:Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;

    invoke-static {v0}, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->a(Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;)Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;

    move-result-object v0

    iput v2, v0, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->apH:I

    .line 447
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 448
    const-string v1, "quick_installer_info"

    iget-object v2, p0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity$4;->this$0:Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;

    invoke-static {v2}, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->a(Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;)Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 449
    const-class v1, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity$a;

    invoke-static {v1, v0}, Lcom/kingroot/kinguser/tj;->a(Ljava/lang/Class;Landroid/os/Bundle;)Ljava/lang/String;

    .line 450
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity$4;->this$0:Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->finish()V

    goto/16 :goto_0

    .line 389
    :sswitch_data_0
    .sparse-switch
        0x7f0f00c1 -> :sswitch_1
        0x7f0f01ea -> :sswitch_0
        0x7f0f01eb -> :sswitch_0
        0x7f0f02e7 -> :sswitch_2
        0x7f0f02f3 -> :sswitch_4
        0x7f0f02f4 -> :sswitch_5
        0x7f0f02f6 -> :sswitch_7
        0x7f0f02f7 -> :sswitch_6
        0x7f0f02fa -> :sswitch_3
    .end sparse-switch
.end method
