.class public Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$14;
.super Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/ank;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/ank;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/ank;)V
    .locals 0

    .prologue
    .line 847
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$14;->this$0:Lcom/kingroot/kinguser/ank;

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
    .line 851
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 852
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$14;->this$0:Lcom/kingroot/kinguser/ank;

    new-instance v2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    invoke-direct {v2, v0}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;-><init>(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)V

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/ank;->a(Lcom/kingroot/kinguser/ank;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    .line 855
    invoke-static {}, Lcom/kingroot/kinguser/ana;->IO()Lcom/kingroot/kinguser/anc;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$14;->this$0:Lcom/kingroot/kinguser/ank;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/ank;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$14;->this$0:Lcom/kingroot/kinguser/ank;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/ank;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    iget-object v3, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$14;->this$0:Lcom/kingroot/kinguser/ank;

    invoke-static {v3}, Lcom/kingroot/kinguser/ank;->h(Lcom/kingroot/kinguser/ank;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    move-result-object v3

    iget-object v3, v3, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->reportInfo:Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;

    invoke-interface {v0, v1, v2, v3}, Lcom/kingroot/kinguser/anc;->a(Ljava/lang/String;ILcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;)V

    .line 857
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$14;->this$0:Lcom/kingroot/kinguser/ank;

    invoke-static {v0}, Lcom/kingroot/kinguser/ank;->x(Lcom/kingroot/kinguser/ank;)V

    .line 858
    invoke-static {}, Lcom/kingroot/kinguser/ana;->IO()Lcom/kingroot/kinguser/anc;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$14;->this$0:Lcom/kingroot/kinguser/ank;

    invoke-static {v1}, Lcom/kingroot/kinguser/ank;->h(Lcom/kingroot/kinguser/ank;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    move-result-object v1

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->reportInfo:Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;

    const/16 v2, 0x50

    invoke-interface {v0, v1, v2}, Lcom/kingroot/kinguser/anc;->a(Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;I)V

    .line 860
    :cond_0
    return-void
.end method
