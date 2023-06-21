.class Lcom/kingroot/kinguser/anp$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/anp;->aH(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aCZ:Lcom/kingroot/kinguser/anp;

.field final synthetic val$appModels:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/anp;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lcom/kingroot/kinguser/anp$5;->aCZ:Lcom/kingroot/kinguser/anp;

    iput-object p2, p0, Lcom/kingroot/kinguser/anp$5;->val$appModels:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 298
    iget-object v0, p0, Lcom/kingroot/kinguser/anp$5;->val$appModels:Ljava/util/List;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->az(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 299
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 300
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    .line 301
    new-instance v4, Lcom/kingroot/kinguser/all$c;

    invoke-direct {v4, v0, v5}, Lcom/kingroot/kinguser/all$c;-><init>(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Z)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/anp$5;->aCZ:Lcom/kingroot/kinguser/anp;

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/anp;->a(Lcom/kingroot/kinguser/anp;Ljava/util/List;)V

    .line 307
    iget-object v0, p0, Lcom/kingroot/kinguser/anp$5;->aCZ:Lcom/kingroot/kinguser/anp;

    invoke-static {v0, v5}, Lcom/kingroot/kinguser/anp;->b(Lcom/kingroot/kinguser/anp;I)V

    .line 309
    iget-object v0, p0, Lcom/kingroot/kinguser/anp$5;->aCZ:Lcom/kingroot/kinguser/anp;

    invoke-static {v0}, Lcom/kingroot/kinguser/anp;->e(Lcom/kingroot/kinguser/anp;)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 310
    iget-object v0, p0, Lcom/kingroot/kinguser/anp$5;->aCZ:Lcom/kingroot/kinguser/anp;

    invoke-static {v0}, Lcom/kingroot/kinguser/anp;->f(Lcom/kingroot/kinguser/anp;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f070439

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    :cond_1
    :goto_1
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x188f8

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 316
    iget-object v0, p0, Lcom/kingroot/kinguser/anp$5;->aCZ:Lcom/kingroot/kinguser/anp;

    invoke-static {v0}, Lcom/kingroot/kinguser/anp;->g(Lcom/kingroot/kinguser/anp;)V

    .line 317
    return-void

    .line 311
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/anp$5;->aCZ:Lcom/kingroot/kinguser/anp;

    invoke-static {v0}, Lcom/kingroot/kinguser/anp;->e(Lcom/kingroot/kinguser/anp;)I

    move-result v0

    if-ne v0, v6, :cond_1

    .line 312
    iget-object v0, p0, Lcom/kingroot/kinguser/anp$5;->aCZ:Lcom/kingroot/kinguser/anp;

    invoke-static {v0}, Lcom/kingroot/kinguser/anp;->f(Lcom/kingroot/kinguser/anp;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f070443

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
