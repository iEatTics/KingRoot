.class Lcom/kingroot/kinguser/anp$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/anp;->oG()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aCZ:Lcom/kingroot/kinguser/anp;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/anp;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/kingroot/kinguser/anp$3;->aCZ:Lcom/kingroot/kinguser/anp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 156
    invoke-static {}, Lcom/kingroot/kinguser/akl;->AS()Lcom/kingroot/kinguser/akl;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/anp$3;->aCZ:Lcom/kingroot/kinguser/anp;

    invoke-static {v1}, Lcom/kingroot/kinguser/anp;->e(Lcom/kingroot/kinguser/anp;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/akl;->dZ(I)V

    .line 159
    iget-object v0, p0, Lcom/kingroot/kinguser/anp$3;->aCZ:Lcom/kingroot/kinguser/anp;

    invoke-static {v0}, Lcom/kingroot/kinguser/anp;->a(Lcom/kingroot/kinguser/anp;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    .line 160
    invoke-static {}, Lcom/kingroot/kinguser/ana;->IO()Lcom/kingroot/kinguser/anc;

    move-result-object v2

    iget v3, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->categoryId:I

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->pkgName:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Lcom/kingroot/kinguser/anc;->H(ILjava/lang/String;)V

    goto :goto_0

    .line 163
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x188f9

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 164
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/vb;->O(Landroid/content/Context;)B

    move-result v0

    .line 165
    if-eq v0, v5, :cond_1

    if-eq v0, v6, :cond_1

    if-ne v0, v4, :cond_5

    .line 167
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    .line 168
    if-ne v0, v5, :cond_3

    .line 169
    iget-object v0, p0, Lcom/kingroot/kinguser/anp$3;->aCZ:Lcom/kingroot/kinguser/anp;

    invoke-static {v0, v4}, Lcom/kingroot/kinguser/anp;->a(Lcom/kingroot/kinguser/anp;Z)Z

    .line 170
    iget-object v0, p0, Lcom/kingroot/kinguser/anp$3;->aCZ:Lcom/kingroot/kinguser/anp;

    invoke-static {v0}, Lcom/kingroot/kinguser/anp;->b(Lcom/kingroot/kinguser/anp;)Lcom/kingroot/kinguser/aug$a;

    move-result-object v0

    iget-object v2, p0, Lcom/kingroot/kinguser/anp$3;->aCZ:Lcom/kingroot/kinguser/anp;

    invoke-static {v2}, Lcom/kingroot/kinguser/anp;->a(Lcom/kingroot/kinguser/anp;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/kingroot/kinguser/aug$a;->bk(Ljava/util/List;)V

    .line 171
    new-instance v0, Lcom/kingroot/kinguser/bid;

    iget-object v2, p0, Lcom/kingroot/kinguser/anp$3;->aCZ:Lcom/kingroot/kinguser/anp;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/anp;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/kingroot/kinguser/bid;-><init>(Landroid/content/Context;)V

    .line 172
    invoke-virtual {v0}, Lcom/kingroot/kinguser/bid;->show()V

    .line 173
    const v2, 0x7f07043b

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/bid;->setTitleText(Ljava/lang/String;)V

    .line 174
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f07043a

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/bid;->d(Ljava/lang/CharSequence;)V

    .line 175
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/bid;->iX(I)V

    .line 176
    const v2, 0x7f0700c9

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->lL(Ljava/lang/String;)V

    .line 177
    new-instance v1, Lcom/kingroot/kinguser/anp$3$1;

    invoke-direct {v1, p0, v0}, Lcom/kingroot/kinguser/anp$3$1;-><init>(Lcom/kingroot/kinguser/anp$3;Lcom/kingroot/kinguser/bid;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->b(Lcom/kingroot/kinguser/bid$b;)V

    .line 189
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x188fb

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 227
    :cond_2
    :goto_1
    return-void

    .line 190
    :cond_3
    if-eq v0, v6, :cond_4

    if-ne v0, v4, :cond_2

    .line 191
    :cond_4
    new-instance v0, Lcom/kingroot/kinguser/bid;

    iget-object v2, p0, Lcom/kingroot/kinguser/anp$3;->aCZ:Lcom/kingroot/kinguser/anp;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/anp;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/kingroot/kinguser/bid;-><init>(Landroid/content/Context;)V

    .line 192
    invoke-virtual {v0}, Lcom/kingroot/kinguser/bid;->show()V

    .line 193
    const v2, 0x7f07043d

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/bid;->setTitleText(Ljava/lang/String;)V

    .line 194
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f07043c

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/bid;->d(Ljava/lang/CharSequence;)V

    .line 195
    const v2, 0x7f070437

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/bid;->lK(Ljava/lang/String;)V

    .line 196
    const v2, 0x7f070436

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->lL(Ljava/lang/String;)V

    .line 197
    new-instance v1, Lcom/kingroot/kinguser/anp$3$2;

    invoke-direct {v1, p0, v0}, Lcom/kingroot/kinguser/anp$3$2;-><init>(Lcom/kingroot/kinguser/anp$3;Lcom/kingroot/kinguser/bid;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->a(Lcom/kingroot/kinguser/bid$b;)V

    .line 207
    new-instance v1, Lcom/kingroot/kinguser/anp$3$3;

    invoke-direct {v1, p0, v0}, Lcom/kingroot/kinguser/anp$3$3;-><init>(Lcom/kingroot/kinguser/anp$3;Lcom/kingroot/kinguser/bid;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bid;->b(Lcom/kingroot/kinguser/bid$b;)V

    .line 221
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x188fd

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    goto :goto_1

    .line 223
    :cond_5
    if-nez v0, :cond_2

    .line 224
    iget-object v0, p0, Lcom/kingroot/kinguser/anp$3;->aCZ:Lcom/kingroot/kinguser/anp;

    invoke-static {v0}, Lcom/kingroot/kinguser/anp;->b(Lcom/kingroot/kinguser/anp;)Lcom/kingroot/kinguser/aug$a;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/anp$3;->aCZ:Lcom/kingroot/kinguser/anp;

    invoke-static {v1}, Lcom/kingroot/kinguser/anp;->a(Lcom/kingroot/kinguser/anp;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/aug$a;->bl(Ljava/util/List;)V

    .line 225
    iget-object v0, p0, Lcom/kingroot/kinguser/anp$3;->aCZ:Lcom/kingroot/kinguser/anp;

    invoke-static {v0}, Lcom/kingroot/kinguser/anp;->c(Lcom/kingroot/kinguser/anp;)V

    goto :goto_1
.end method
