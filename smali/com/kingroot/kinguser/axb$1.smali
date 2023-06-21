.class Lcom/kingroot/kinguser/axb$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axb;->oI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aXk:Lcom/kingroot/kinguser/axb;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axb;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/kingroot/kinguser/axb$1;->aXk:Lcom/kingroot/kinguser/axb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 153
    iget-object v0, p0, Lcom/kingroot/kinguser/axb$1;->aXk:Lcom/kingroot/kinguser/axb;

    invoke-static {v0}, Lcom/kingroot/kinguser/axb;->a(Lcom/kingroot/kinguser/axb;)Lcom/kingroot/kinguser/axb$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/kingroot/kinguser/axb$1;->aXk:Lcom/kingroot/kinguser/axb;

    invoke-static {v0}, Lcom/kingroot/kinguser/axb;->a(Lcom/kingroot/kinguser/axb;)Lcom/kingroot/kinguser/axb$b;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/axb$1;->aXk:Lcom/kingroot/kinguser/axb;

    invoke-static {v1}, Lcom/kingroot/kinguser/axb;->b(Lcom/kingroot/kinguser/axb;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/axb$b;->a(Ljava/util/HashSet;)V

    .line 158
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 159
    iget-object v0, p0, Lcom/kingroot/kinguser/axb$1;->aXk:Lcom/kingroot/kinguser/axb;

    invoke-static {v0}, Lcom/kingroot/kinguser/axb;->b(Lcom/kingroot/kinguser/axb;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/afk;

    .line 160
    iget-object v0, v0, Lcom/kingroot/kinguser/afk;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 164
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 165
    iget-object v2, p0, Lcom/kingroot/kinguser/axb$1;->aXk:Lcom/kingroot/kinguser/axb;

    invoke-static {v2}, Lcom/kingroot/kinguser/axb;->c(Lcom/kingroot/kinguser/axb;)Lcom/kingroot/kinguser/akd;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/akd;->fg(Ljava/lang/String;)V

    goto :goto_1

    .line 167
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/axb$1;->aXk:Lcom/kingroot/kinguser/axb;

    invoke-static {v0}, Lcom/kingroot/kinguser/axb;->c(Lcom/kingroot/kinguser/axb;)Lcom/kingroot/kinguser/akd;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/axb$1;->aXk:Lcom/kingroot/kinguser/axb;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/axb;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/akd;->aI(Landroid/content/Context;)V

    .line 170
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x1877c

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 171
    iget-object v0, p0, Lcom/kingroot/kinguser/axb$1;->aXk:Lcom/kingroot/kinguser/axb;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/axb;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 172
    iget-object v0, p0, Lcom/kingroot/kinguser/axb$1;->aXk:Lcom/kingroot/kinguser/axb;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/axb;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 173
    return-void
.end method
