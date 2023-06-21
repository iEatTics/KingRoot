.class final Lcom/kingroot/kinguser/afi$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/afi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field final synthetic ahG:Lcom/kingroot/kinguser/afi;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/afi;)V
    .locals 0

    .prologue
    .line 355
    iput-object p1, p0, Lcom/kingroot/kinguser/afi$b;->ahG:Lcom/kingroot/kinguser/afi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .prologue
    .line 359
    iget-object v0, p0, Lcom/kingroot/kinguser/afi$b;->ahG:Lcom/kingroot/kinguser/afi;

    invoke-static {v0}, Lcom/kingroot/kinguser/afi;->b(Lcom/kingroot/kinguser/afi;)Lcom/kingroot/kinguser/bjs;

    move-result-object v0

    iget-object v0, v0, Lcom/kingroot/kinguser/bjs;->byz:Lcom/kingroot/kinguser/adv$b;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/kingroot/kinguser/bjs;->byC:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/kingroot/kinguser/afi$b;->ahG:Lcom/kingroot/kinguser/afi;

    invoke-static {v0}, Lcom/kingroot/kinguser/afi;->b(Lcom/kingroot/kinguser/afi;)Lcom/kingroot/kinguser/bjs;

    move-result-object v0

    iget-object v0, v0, Lcom/kingroot/kinguser/bjs;->byz:Lcom/kingroot/kinguser/adv$b;

    sget-object v1, Lcom/kingroot/kinguser/bjs;->byC:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/kingroot/kinguser/afi$b;->ahG:Lcom/kingroot/kinguser/afi;

    iget-object v2, v2, Lcom/kingroot/kinguser/afi;->ahz:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    iget-object v3, p0, Lcom/kingroot/kinguser/afi$b;->ahG:Lcom/kingroot/kinguser/afi;

    iget-object v3, v3, Lcom/kingroot/kinguser/afi;->ahz:Ljava/util/HashSet;

    iget-object v4, p0, Lcom/kingroot/kinguser/afi$b;->ahG:Lcom/kingroot/kinguser/afi;

    const-wide/32 v6, 0x7f07037d

    .line 362
    invoke-virtual {v4, v6, v7}, Lcom/kingroot/kinguser/afi;->V(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/kingroot/kinguser/afi$b;->ahG:Lcom/kingroot/kinguser/afi;

    iget-object v7, v7, Lcom/kingroot/kinguser/afi;->ahz:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    .line 361
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/adv$b;->a(IILjava/lang/Object;Ljava/lang/CharSequence;)V

    .line 363
    iget-object v0, p0, Lcom/kingroot/kinguser/afi$b;->ahG:Lcom/kingroot/kinguser/afi;

    invoke-static {v0}, Lcom/kingroot/kinguser/afi;->b(Lcom/kingroot/kinguser/afi;)Lcom/kingroot/kinguser/bjs;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/afi$b;->ahG:Lcom/kingroot/kinguser/afi;

    invoke-static {v1}, Lcom/kingroot/kinguser/afi;->c(Lcom/kingroot/kinguser/afi;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bjs;->n(Ljava/lang/Object;)V

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/afi$b;->ahG:Lcom/kingroot/kinguser/afi;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/afi;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 366
    return-void
.end method
