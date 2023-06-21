.class Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity$1;
.super Landroid/os/Handler;
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
    .line 94
    iput-object p1, p0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity$1;->this$0:Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 98
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 99
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity$1;->this$0:Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->oB()Lcom/kingroot/kinguser/ym;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ahd;

    .line 100
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 129
    :goto_0
    return-void

    .line 102
    :pswitch_0
    iget-object v1, p0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity$1;->this$0:Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;

    invoke-static {v1}, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->a(Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;)Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;

    move-result-object v1

    const/4 v2, 0x1

    iput v2, v1, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->state:I

    .line 103
    invoke-virtual {v0}, Lcom/kingroot/kinguser/ahd;->wB()V

    goto :goto_0

    .line 106
    :pswitch_1
    iget-object v1, p0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity$1;->this$0:Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;

    invoke-static {v1}, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->a(Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;)Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;

    move-result-object v1

    const/4 v2, 0x2

    iput v2, v1, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->state:I

    .line 107
    invoke-virtual {v0}, Lcom/kingroot/kinguser/ahd;->wB()V

    goto :goto_0

    .line 110
    :pswitch_2
    iget-object v1, p0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity$1;->this$0:Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;

    invoke-static {v1}, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->a(Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;)Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;

    move-result-object v1

    const/4 v2, 0x3

    iput v2, v1, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->state:I

    .line 111
    iget-object v1, p0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity$1;->this$0:Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;

    invoke-static {v1}, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->a(Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;)Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    iput v2, v1, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->apF:I

    .line 112
    iget-object v1, p0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity$1;->this$0:Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;

    invoke-static {v1}, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->a(Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;)Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v1, :cond_0

    const-string v1, ""

    :goto_1
    iput-object v1, v2, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->apI:Ljava/lang/String;

    .line 114
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 115
    const-string v2, "quick_installer_info"

    iget-object v3, p0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity$1;->this$0:Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;

    invoke-static {v3}, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->a(Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;)Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 116
    const-class v2, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity$a;

    invoke-static {v2, v1}, Lcom/kingroot/kinguser/tj;->a(Ljava/lang/Class;Landroid/os/Bundle;)Ljava/lang/String;

    .line 117
    invoke-virtual {v0}, Lcom/kingroot/kinguser/ahd;->wB()V

    goto :goto_0

    .line 112
    :cond_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    goto :goto_1

    .line 120
    :pswitch_3
    iget-object v1, p0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity$1;->this$0:Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;

    invoke-static {v1}, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->c(Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity$1;->this$0:Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;

    invoke-static {v2}, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->b(Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 121
    iget-object v1, p0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity$1;->this$0:Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;

    invoke-static {v1}, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->a(Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;)Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;

    move-result-object v1

    const/4 v2, 0x4

    iput v2, v1, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->state:I

    .line 122
    iget-object v1, p0, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity$1;->this$0:Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;

    invoke-static {v1}, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;->a(Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;)Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v2, Lcom/kingroot/kinguser/advance/model/QuickInstallerInfo;->apG:I

    .line 125
    invoke-virtual {v0}, Lcom/kingroot/kinguser/ahd;->wB()V

    goto/16 :goto_0

    .line 100
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
