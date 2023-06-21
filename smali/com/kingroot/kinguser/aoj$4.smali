.class Lcom/kingroot/kinguser/aoj$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bid$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/aoj;->JU()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/aoj;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aoj;)V
    .locals 0

    .prologue
    .line 335
    iput-object p1, p0, Lcom/kingroot/kinguser/aoj$4;->this$0:Lcom/kingroot/kinguser/aoj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public n(Landroid/view/View;)V
    .locals 8

    .prologue
    const/4 v2, 0x1

    .line 339
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 340
    iget-object v0, p0, Lcom/kingroot/kinguser/aoj$4;->this$0:Lcom/kingroot/kinguser/aoj;

    invoke-static {v0}, Lcom/kingroot/kinguser/aoj;->a(Lcom/kingroot/kinguser/aoj;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ame;

    .line 341
    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;

    .line 342
    invoke-virtual {v0}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->Ii()Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->appStatus:I

    if-eq v4, v2, :cond_0

    iget v4, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->appStatus:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    .line 344
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 347
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 348
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ame;

    move-object v6, v0

    .line 349
    check-cast v6, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;

    .line 350
    invoke-static {}, Lcom/kingroot/kinguser/amz;->II()Lcom/kingroot/kinguser/amz;

    move-result-object v0

    invoke-static {v6}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->j(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;

    move-result-object v1

    iget-object v3, p0, Lcom/kingroot/kinguser/aoj$4;->this$0:Lcom/kingroot/kinguser/aoj;

    .line 351
    invoke-static {v3}, Lcom/kingroot/kinguser/aoj;->b(Lcom/kingroot/kinguser/aoj;)Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/kingroot/kinguser/aoj$4;->this$0:Lcom/kingroot/kinguser/aoj;

    invoke-static {v4}, Lcom/kingroot/kinguser/aoj;->c(Lcom/kingroot/kinguser/aoj;)Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    move-result-object v5

    move v4, v2

    .line 350
    invoke-virtual/range {v0 .. v5}, Lcom/kingroot/kinguser/amz;->a(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;ILcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;ZLcom/kingroot/kinguser/gamebox/common/IAppInstallListener;)V

    .line 352
    iput v2, v6, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->appStatus:I

    goto :goto_1

    .line 355
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f0704d7

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/zj;->b(Ljava/lang/CharSequence;)V

    .line 357
    :cond_3
    return-void
.end method
