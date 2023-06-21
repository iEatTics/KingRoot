.class Lcom/kingroot/kinguser/aob$2;
.super Lcom/kingroot/kinguser/and$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/aob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/aob;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aob;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/kingroot/kinguser/aob$2;->this$0:Lcom/kingroot/kinguser/aob;

    invoke-direct {p0}, Lcom/kingroot/kinguser/and$a;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;)V
    .locals 7

    .prologue
    .line 138
    invoke-super {p0, p1, p2}, Lcom/kingroot/kinguser/and$a;->b(Landroid/view/View;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;)V

    .line 139
    iget-object v0, p0, Lcom/kingroot/kinguser/aob$2;->this$0:Lcom/kingroot/kinguser/aob;

    invoke-static {v0}, Lcom/kingroot/kinguser/aob;->a(Lcom/kingroot/kinguser/aob;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;

    .line 140
    iget-object v2, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;->pkgName:Ljava/lang/String;

    iget-object v3, p2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->pkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v1

    new-instance v2, Lcom/kingroot/kinguser/bed;

    sget-object v3, Lcom/kingroot/kinguser/bem;->blm:Lcom/kingroot/kinguser/bem;

    sget-object v4, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v5, 0x1

    new-instance v6, Lcom/kingroot/kinguser/aob$2$1;

    invoke-direct {v6, p0, v0}, Lcom/kingroot/kinguser/aob$2$1;-><init>(Lcom/kingroot/kinguser/aob$2;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;)V

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 150
    :cond_1
    return-void
.end method

.method public fF(I)V
    .locals 7

    .prologue
    .line 155
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x1897c

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 156
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/aob$2;->this$0:Lcom/kingroot/kinguser/aob;

    iget-object v0, v0, Lcom/kingroot/kinguser/aob;->aBC:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/aob$2;->this$0:Lcom/kingroot/kinguser/aob;

    invoke-static {v0}, Lcom/kingroot/kinguser/aob;->a(Lcom/kingroot/kinguser/aob;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;

    .line 161
    iget-object v1, p0, Lcom/kingroot/kinguser/aob$2;->this$0:Lcom/kingroot/kinguser/aob;

    iget-object v1, v1, Lcom/kingroot/kinguser/aob;->aBC:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 162
    iget-object v1, p0, Lcom/kingroot/kinguser/aob$2;->this$0:Lcom/kingroot/kinguser/aob;

    invoke-static {v1}, Lcom/kingroot/kinguser/aob;->a(Lcom/kingroot/kinguser/aob;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 163
    iget-object v1, p0, Lcom/kingroot/kinguser/aob$2;->this$0:Lcom/kingroot/kinguser/aob;

    iget-object v1, v1, Lcom/kingroot/kinguser/aob;->aBB:Lcom/kingroot/kinguser/ald;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/ald;->notifyDataSetChanged()V

    .line 164
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v1

    new-instance v2, Lcom/kingroot/kinguser/bed;

    sget-object v3, Lcom/kingroot/kinguser/bem;->blm:Lcom/kingroot/kinguser/bem;

    sget-object v4, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v5, 0x1

    new-instance v6, Lcom/kingroot/kinguser/aob$2$2;

    invoke-direct {v6, p0, v0}, Lcom/kingroot/kinguser/aob$2$2;-><init>(Lcom/kingroot/kinguser/aob$2;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;)V

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 170
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f07048c

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/zj;->b(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
