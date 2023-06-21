.class public Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$4;
.super Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/anq;->cC(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/anq;

.field final synthetic val$change:Z


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/anq;Z)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$4;->this$0:Lcom/kingroot/kinguser/anq;

    iput-boolean p2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$4;->val$change:Z

    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(ILjava/util/List;)V
    .locals 5
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
    .line 323
    if-eqz p1, :cond_1

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$4;->this$0:Lcom/kingroot/kinguser/anq;

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$4;->this$0:Lcom/kingroot/kinguser/anq;

    invoke-static {v1}, Lcom/kingroot/kinguser/anq;->k(Lcom/kingroot/kinguser/anq;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1e

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/anq;->b(Lcom/kingroot/kinguser/anq;I)I

    .line 329
    const/4 v1, 0x0

    .line 332
    invoke-static {p2}, Lcom/kingroot/kinguser/anf;->aA(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 335
    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$4;->this$0:Lcom/kingroot/kinguser/anq;

    invoke-static {v2}, Lcom/kingroot/kinguser/anq;->l(Lcom/kingroot/kinguser/anq;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$4;->val$change:Z

    if-eqz v2, :cond_3

    .line 336
    :cond_2
    const v1, 0x4c7a22

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/kingroot/kinguser/asw;->e(Ljava/lang/String;Ljava/util/List;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    move-result-object v0

    .line 347
    :goto_1
    if-eqz v0, :cond_0

    .line 351
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$4;->this$0:Lcom/kingroot/kinguser/anq;

    invoke-static {v1, v0}, Lcom/kingroot/kinguser/anq;->a(Lcom/kingroot/kinguser/anq;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    .line 352
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$4;->this$0:Lcom/kingroot/kinguser/anq;

    invoke-static {v1}, Lcom/kingroot/kinguser/anq;->l(Lcom/kingroot/kinguser/anq;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;-><init>(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)V

    .line 354
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$4;->this$0:Lcom/kingroot/kinguser/anq;

    invoke-static {v1, v0}, Lcom/kingroot/kinguser/anq;->b(Lcom/kingroot/kinguser/anq;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)V

    goto :goto_0

    .line 338
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    .line 340
    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$4;->this$0:Lcom/kingroot/kinguser/anq;

    invoke-static {v3}, Lcom/kingroot/kinguser/anq;->l(Lcom/kingroot/kinguser/anq;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    move-result-object v3

    iget-object v3, v3, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->pkgName:Ljava/lang/String;

    iget-object v4, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->pkgName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_5
    move-object v0, v1

    goto :goto_1
.end method
