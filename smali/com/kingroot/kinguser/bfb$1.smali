.class Lcom/kingroot/kinguser/bfb$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bfb;->ZE()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blX:Lcom/kingroot/kinguser/bfb;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bfb;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/kingroot/kinguser/bfb$1;->blX:Lcom/kingroot/kinguser/bfb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 63
    iget-object v0, p0, Lcom/kingroot/kinguser/bfb$1;->blX:Lcom/kingroot/kinguser/bfb;

    iget-object v0, v0, Lcom/kingroot/kinguser/bfb;->blN:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;

    iget v0, v0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->aQX:I

    packed-switch v0, :pswitch_data_0

    .line 114
    iget-object v0, p0, Lcom/kingroot/kinguser/bfb$1;->blX:Lcom/kingroot/kinguser/bfb;

    iget-object v0, v0, Lcom/kingroot/kinguser/bfb;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/kingroot/kinguser/bfb$1;->blX:Lcom/kingroot/kinguser/bfb;

    iget-object v1, v1, Lcom/kingroot/kinguser/bfb;->blN:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;

    iget-object v1, v1, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->pkgName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/atu;->t(Landroid/content/Context;Ljava/lang/String;)V

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 65
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 67
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v1

    const v2, 0x186d5

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 68
    iget-object v1, p0, Lcom/kingroot/kinguser/bfb$1;->blX:Lcom/kingroot/kinguser/bfb;

    iget-object v1, v1, Lcom/kingroot/kinguser/bfb;->mContext:Landroid/content/Context;

    const-class v2, Lcom/kingroot/kinguser/ztool/uninstall/SoftwareUninstallActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 69
    iget-object v1, p0, Lcom/kingroot/kinguser/bfb$1;->blX:Lcom/kingroot/kinguser/bfb;

    iget-object v1, v1, Lcom/kingroot/kinguser/bfb;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 72
    :pswitch_1
    invoke-static {}, Lcom/kingroot/kinguser/aft;->vt()Landroid/app/Activity;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_0

    .line 76
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/aks;->DZ()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 77
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v1

    const v2, 0x187b4

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 79
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v1

    const v2, 0x187b9

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 80
    invoke-static {v0}, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainActivity;->c(Landroid/app/Activity;)V

    goto :goto_0

    .line 83
    :pswitch_2
    iget-object v0, p0, Lcom/kingroot/kinguser/bfb$1;->blX:Lcom/kingroot/kinguser/bfb;

    invoke-static {v0}, Lcom/kingroot/kinguser/bfb;->a(Lcom/kingroot/kinguser/bfb;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 84
    iget-object v0, p0, Lcom/kingroot/kinguser/bfb$1;->blX:Lcom/kingroot/kinguser/bfb;

    iget-object v0, v0, Lcom/kingroot/kinguser/bfb;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/kingroot/kinguser/activitys/AppsMarketMainActivity;->aN(Landroid/content/Context;)V

    .line 89
    :goto_1
    invoke-static {}, Lcom/kingroot/kinguser/akl;->AS()Lcom/kingroot/kinguser/akl;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Lcom/kingroot/kinguser/akl;->AX()Z

    move-result v1

    if-nez v1, :cond_2

    .line 91
    invoke-virtual {v0}, Lcom/kingroot/kinguser/akl;->AW()V

    .line 95
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x188ea

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    goto :goto_0

    .line 86
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/bfb$1;->blX:Lcom/kingroot/kinguser/bfb;

    iget-object v0, v0, Lcom/kingroot/kinguser/bfb;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/kingroot/kinguser/activitys/AppsMarketMainActivity;->aL(Landroid/content/Context;)V

    goto :goto_1

    .line 99
    :pswitch_3
    invoke-static {}, Lcom/kingroot/kinguser/akl;->AS()Lcom/kingroot/kinguser/akl;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bfb$1;->blX:Lcom/kingroot/kinguser/bfb;

    iget-object v1, v1, Lcom/kingroot/kinguser/bfb;->blN:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;

    iget-object v1, v1, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/akl;->gV(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/kingroot/kinguser/bfb$1;->blX:Lcom/kingroot/kinguser/bfb;

    iget-object v0, v0, Lcom/kingroot/kinguser/bfb;->blN:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;

    iget v0, v0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->aQX:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    .line 101
    iget-object v0, p0, Lcom/kingroot/kinguser/bfb$1;->blX:Lcom/kingroot/kinguser/bfb;

    iget-object v0, v0, Lcom/kingroot/kinguser/bfb;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/kingroot/kinguser/bfb$1;->blX:Lcom/kingroot/kinguser/bfb;

    iget-object v1, v1, Lcom/kingroot/kinguser/bfb;->blN:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;

    iget-object v1, v1, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->pkgName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/atu;->t(Landroid/content/Context;Ljava/lang/String;)V

    .line 109
    :cond_4
    :goto_2
    invoke-static {}, Lcom/kingroot/kinguser/als;->Hi()Lcom/kingroot/kinguser/amt;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bfb$1;->blX:Lcom/kingroot/kinguser/bfb;

    iget-object v1, v1, Lcom/kingroot/kinguser/bfb;->blN:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;

    iget-object v1, v1, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->pkgName:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Lcom/kingroot/kinguser/amt;->C(Ljava/lang/String;I)V

    .line 110
    invoke-static {}, Lcom/kingroot/kinguser/ana;->IO()Lcom/kingroot/kinguser/anc;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bfb$1;->blX:Lcom/kingroot/kinguser/bfb;

    iget-object v1, v1, Lcom/kingroot/kinguser/bfb;->blN:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;

    iget-object v1, v1, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->bmK:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->reportInfo:Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;

    const/16 v2, 0x50

    invoke-interface {v0, v1, v2}, Lcom/kingroot/kinguser/anc;->a(Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;I)V

    .line 111
    invoke-static {}, Lcom/kingroot/kinguser/ana;->IO()Lcom/kingroot/kinguser/anc;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bfb$1;->blX:Lcom/kingroot/kinguser/bfb;

    iget-object v1, v1, Lcom/kingroot/kinguser/bfb;->blN:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;

    iget-object v1, v1, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->bmK:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    iget v1, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->categoryId:I

    iget-object v2, p0, Lcom/kingroot/kinguser/bfb$1;->blX:Lcom/kingroot/kinguser/bfb;

    iget-object v2, v2, Lcom/kingroot/kinguser/bfb;->blN:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;

    iget-object v2, v2, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->bmK:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    iget-object v2, v2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->pkgName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/kingroot/kinguser/anc;->H(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 102
    :cond_5
    iget-object v0, p0, Lcom/kingroot/kinguser/bfb$1;->blX:Lcom/kingroot/kinguser/bfb;

    iget-object v0, v0, Lcom/kingroot/kinguser/bfb;->blN:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;

    iget v0, v0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->aQX:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 103
    iget-object v0, p0, Lcom/kingroot/kinguser/bfb$1;->blX:Lcom/kingroot/kinguser/bfb;

    iget-object v0, v0, Lcom/kingroot/kinguser/bfb;->blN:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;

    iget v0, v0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->jumpType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 104
    iget-object v0, p0, Lcom/kingroot/kinguser/bfb$1;->blX:Lcom/kingroot/kinguser/bfb;

    iget-object v0, v0, Lcom/kingroot/kinguser/bfb;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/kingroot/kinguser/bfb$1;->blX:Lcom/kingroot/kinguser/bfb;

    iget-object v1, v1, Lcom/kingroot/kinguser/bfb;->blN:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;

    iget-object v1, v1, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->bmK:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    iget-object v2, p0, Lcom/kingroot/kinguser/bfb$1;->blX:Lcom/kingroot/kinguser/bfb;

    iget-object v2, v2, Lcom/kingroot/kinguser/bfb;->blN:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;

    iget-object v2, v2, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->bmK:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    iget-boolean v2, v2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->ifSelected:Z

    invoke-static {v0, v1, v2, v3}, Lcom/kingroot/kinguser/activitys/AppDetailActivity;->a(Landroid/content/Context;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;ZI)V

    goto :goto_2

    .line 105
    :cond_6
    iget-object v0, p0, Lcom/kingroot/kinguser/bfb$1;->blX:Lcom/kingroot/kinguser/bfb;

    iget-object v0, v0, Lcom/kingroot/kinguser/bfb;->blN:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;

    iget v0, v0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->jumpType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 106
    iget-object v0, p0, Lcom/kingroot/kinguser/bfb$1;->blX:Lcom/kingroot/kinguser/bfb;

    iget-object v0, v0, Lcom/kingroot/kinguser/bfb;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/kingroot/kinguser/bfb$1;->blX:Lcom/kingroot/kinguser/bfb;

    iget-object v1, v1, Lcom/kingroot/kinguser/bfb;->blN:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;

    iget-object v1, v1, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->bmK:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/activitys/ToolboxAppCardDistActivity;->b(Landroid/content/Context;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)V

    goto :goto_2

    .line 63
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method
