.class Lcom/kingroot/kinguser/ayb$7;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/ayb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/ayb;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/ayb;)V
    .locals 0

    .prologue
    .line 403
    iput-object p1, p0, Lcom/kingroot/kinguser/ayb$7;->this$0:Lcom/kingroot/kinguser/ayb;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/bed$a;)V
    .locals 4
    .param p1    # Lcom/kingroot/kinguser/bed$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 407
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/bek;->a(Lcom/kingroot/kinguser/bed$a;)V

    .line 408
    invoke-static {}, Lcom/kingroot/kinguser/ana;->IO()Lcom/kingroot/kinguser/anc;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/ayb$7;->this$0:Lcom/kingroot/kinguser/ayb;

    invoke-static {v1}, Lcom/kingroot/kinguser/ayb;->d(Lcom/kingroot/kinguser/ayb;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    move-result-object v1

    iget v1, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->categoryId:I

    iget-object v2, p0, Lcom/kingroot/kinguser/ayb$7;->this$0:Lcom/kingroot/kinguser/ayb;

    invoke-static {v2}, Lcom/kingroot/kinguser/ayb;->d(Lcom/kingroot/kinguser/ayb;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    move-result-object v2

    iget-object v2, v2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->pkgName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/kingroot/kinguser/anc;->H(ILjava/lang/String;)V

    .line 410
    iget-object v0, p0, Lcom/kingroot/kinguser/ayb$7;->this$0:Lcom/kingroot/kinguser/ayb;

    invoke-static {v0}, Lcom/kingroot/kinguser/ayb;->d(Lcom/kingroot/kinguser/ayb;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/apu;->k(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 412
    iget-object v0, p0, Lcom/kingroot/kinguser/ayb$7;->this$0:Lcom/kingroot/kinguser/ayb;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ayb;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/vb;->O(Landroid/content/Context;)B

    move-result v0

    .line 413
    if-nez v0, :cond_1

    .line 415
    iget-object v0, p0, Lcom/kingroot/kinguser/ayb$7;->this$0:Lcom/kingroot/kinguser/ayb;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ayb;->Uf()V

    .line 434
    :cond_0
    :goto_0
    return-void

    .line 416
    :cond_1
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 419
    iget-object v0, p0, Lcom/kingroot/kinguser/ayb$7;->this$0:Lcom/kingroot/kinguser/ayb;

    invoke-static {v0, v3}, Lcom/kingroot/kinguser/ayb;->a(Lcom/kingroot/kinguser/ayb;I)V

    goto :goto_0

    .line 423
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/ayb$7;->this$0:Lcom/kingroot/kinguser/ayb;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/ayb;->a(Lcom/kingroot/kinguser/ayb;I)V

    goto :goto_0

    .line 426
    :cond_3
    invoke-interface {p1}, Lcom/kingroot/kinguser/bed$a;->nF()Ljava/util/List;

    move-result-object v0

    .line 427
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    invoke-interface {p1}, Lcom/kingroot/kinguser/bed$a;->nF()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lcom/kingroot/kinguser/bed$a;->nF()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 432
    :cond_4
    iget-object v0, p0, Lcom/kingroot/kinguser/ayb$7;->this$0:Lcom/kingroot/kinguser/ayb;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/ayb;->a(Lcom/kingroot/kinguser/ayb;I)V

    goto :goto_0
.end method
