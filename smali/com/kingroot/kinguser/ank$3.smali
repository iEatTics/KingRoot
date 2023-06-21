.class Lcom/kingroot/kinguser/ank$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/alc$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/ank;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/ank;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/ank;)V
    .locals 0

    .prologue
    .line 776
    iput-object p1, p0, Lcom/kingroot/kinguser/ank$3;->this$0:Lcom/kingroot/kinguser/ank;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 783
    iget-object v0, p0, Lcom/kingroot/kinguser/ank$3;->this$0:Lcom/kingroot/kinguser/ank;

    invoke-static {v0}, Lcom/kingroot/kinguser/ank;->h(Lcom/kingroot/kinguser/ank;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    move-result-object v0

    instance-of v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;

    if-nez v0, :cond_1

    .line 799
    :cond_0
    :goto_0
    return-void

    .line 786
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/ank$3;->this$0:Lcom/kingroot/kinguser/ank;

    invoke-static {v0}, Lcom/kingroot/kinguser/ank;->h(Lcom/kingroot/kinguser/ank;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;

    .line 787
    iget-object v1, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;->picurls:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;->srcpicurls:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 790
    new-instance v0, Lcom/kingroot/kinguser/apf$a;

    iget-object v1, p0, Lcom/kingroot/kinguser/ank$3;->this$0:Lcom/kingroot/kinguser/ank;

    invoke-static {v1}, Lcom/kingroot/kinguser/ank;->u(Lcom/kingroot/kinguser/ank;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/apf$a;-><init>(Landroid/content/Context;)V

    const/high16 v1, -0x1000000

    .line 791
    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/apf$a;->ga(I)Lcom/kingroot/kinguser/apf$a;

    move-result-object v0

    const v1, 0x7f02011c

    .line 792
    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/apf$a;->gb(I)Lcom/kingroot/kinguser/apf$a;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/ank$3;->this$0:Lcom/kingroot/kinguser/ank;

    .line 793
    invoke-static {v1}, Lcom/kingroot/kinguser/ank;->t(Lcom/kingroot/kinguser/ank;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/apf$a;->aW(Ljava/util/List;)Lcom/kingroot/kinguser/apf$a;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/ank$3;->this$0:Lcom/kingroot/kinguser/ank;

    .line 794
    invoke-static {v1}, Lcom/kingroot/kinguser/ank;->s(Lcom/kingroot/kinguser/ank;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/apf$a;->aX(Ljava/util/List;)Lcom/kingroot/kinguser/apf$a;

    move-result-object v0

    .line 795
    invoke-virtual {v0, p2}, Lcom/kingroot/kinguser/apf$a;->fY(I)Lcom/kingroot/kinguser/apf$a;

    move-result-object v0

    const/4 v1, 0x1

    .line 796
    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/apf$a;->fZ(I)Lcom/kingroot/kinguser/apf$a;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/ank$3;->this$0:Lcom/kingroot/kinguser/ank;

    iget-object v1, v1, Lcom/kingroot/kinguser/ank;->aBh:Lcom/kingroot/kinguser/apf;

    check-cast p1, Landroid/widget/ImageView;

    .line 797
    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/apf$a;->a(Lcom/kingroot/kinguser/apf;Landroid/widget/ImageView;)Lcom/kingroot/kinguser/apf;

    move-result-object v0

    .line 798
    invoke-virtual {v0}, Lcom/kingroot/kinguser/apf;->show()V

    goto :goto_0
.end method
