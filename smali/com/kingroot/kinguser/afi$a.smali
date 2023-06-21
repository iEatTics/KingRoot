.class final Lcom/kingroot/kinguser/afi$a;
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
    name = "a"
.end annotation


# instance fields
.field final synthetic ahG:Lcom/kingroot/kinguser/afi;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/afi;)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Lcom/kingroot/kinguser/afi$a;->ahG:Lcom/kingroot/kinguser/afi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 373
    iget-object v0, p0, Lcom/kingroot/kinguser/afi$a;->ahG:Lcom/kingroot/kinguser/afi;

    invoke-static {v0}, Lcom/kingroot/kinguser/afi;->c(Lcom/kingroot/kinguser/afi;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/afi$a;->ahG:Lcom/kingroot/kinguser/afi;

    iget-object v0, v0, Lcom/kingroot/kinguser/afi;->ahz:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/kingroot/kinguser/afi$a;->ahG:Lcom/kingroot/kinguser/afi;

    invoke-static {v0}, Lcom/kingroot/kinguser/afi;->c(Lcom/kingroot/kinguser/afi;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aex$a;

    .line 375
    iget-boolean v1, v0, Lcom/kingroot/kinguser/aex$a;->afR:Z

    if-nez v1, :cond_1

    .line 376
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/kingroot/kinguser/aex$a;->afR:Z

    .line 377
    iget-object v1, p0, Lcom/kingroot/kinguser/afi$a;->ahG:Lcom/kingroot/kinguser/afi;

    iget-object v1, v1, Lcom/kingroot/kinguser/afi;->ahz:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 382
    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/afi$a;->ahG:Lcom/kingroot/kinguser/afi;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/afi;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 385
    :cond_0
    return-void

    .line 379
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/kingroot/kinguser/aex$a;->afR:Z

    .line 380
    iget-object v1, p0, Lcom/kingroot/kinguser/afi$a;->ahG:Lcom/kingroot/kinguser/afi;

    iget-object v1, v1, Lcom/kingroot/kinguser/afi;->ahz:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
