.class Lcom/kingroot/kinguser/anu$14;
.super Lcom/kingroot/kinguser/and$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/anu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/anu;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/anu;)V
    .locals 0

    .prologue
    .line 940
    iput-object p1, p0, Lcom/kingroot/kinguser/anu$14;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-direct {p0}, Lcom/kingroot/kinguser/and$a;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Landroid/view/View;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;)V
    .locals 3

    .prologue
    .line 943
    iget-object v0, p0, Lcom/kingroot/kinguser/anu$14;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/anu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p2}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->Ik()Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/anu$14;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v2}, Lcom/kingroot/kinguser/anu;->a(Lcom/kingroot/kinguser/anu;)Lcom/kingroot/kinguser/anx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/anx;->Jm()Landroid/widget/ImageView;

    move-result-object v2

    invoke-static {v0, v1, v2, p2}, Lcom/kingroot/kinguser/ang;->a(Landroid/app/Activity;Landroid/widget/ImageView;Landroid/view/View;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;)Z

    .line 944
    return-void
.end method

.method public d(Landroid/view/View;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;)V
    .locals 9

    .prologue
    .line 947
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/anu$14;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v0}, Lcom/kingroot/kinguser/anu;->y(Lcom/kingroot/kinguser/anu;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    move-result-object v0

    if-eq v0, p2, :cond_0

    .line 949
    iget-object v0, p0, Lcom/kingroot/kinguser/anu$14;->this$0:Lcom/kingroot/kinguser/anu;

    iget-object v1, p0, Lcom/kingroot/kinguser/anu$14;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v1}, Lcom/kingroot/kinguser/anu;->y(Lcom/kingroot/kinguser/anu;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/anu;->a(Lcom/kingroot/kinguser/anu;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    .line 950
    iget-object v0, p0, Lcom/kingroot/kinguser/anu$14;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v0, p2}, Lcom/kingroot/kinguser/anu;->b(Lcom/kingroot/kinguser/anu;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    .line 951
    invoke-static {}, Lcom/kingroot/kinguser/alq;->GY()Lcom/kingroot/kinguser/ams;

    move-result-object v1

    const v2, 0x4c7bbd

    iget-object v0, p0, Lcom/kingroot/kinguser/anu$14;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v0}, Lcom/kingroot/kinguser/anu;->y(Lcom/kingroot/kinguser/anu;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    move-result-object v0

    iget-object v3, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->pkgName:Ljava/lang/String;

    const/16 v4, 0x1e

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/kingroot/kinguser/anu$14;->this$0:Lcom/kingroot/kinguser/anu;

    .line 952
    invoke-static {v0}, Lcom/kingroot/kinguser/anu;->y(Lcom/kingroot/kinguser/anu;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    move-result-object v0

    iget-wide v6, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->groupId:J

    iget-object v0, p0, Lcom/kingroot/kinguser/anu$14;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v0}, Lcom/kingroot/kinguser/anu;->z(Lcom/kingroot/kinguser/anu;)Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadRecommendAppsListener;

    move-result-object v8

    .line 951
    invoke-interface/range {v1 .. v8}, Lcom/kingroot/kinguser/ams;->a(ILjava/lang/String;IIJLcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadRecommendAppsListener;)V

    .line 954
    :cond_0
    return-void
.end method
