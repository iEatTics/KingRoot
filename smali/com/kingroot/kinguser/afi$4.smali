.class Lcom/kingroot/kinguser/afi$4;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/afi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ahG:Lcom/kingroot/kinguser/afi;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/afi;)V
    .locals 0

    .prologue
    .line 404
    iput-object p1, p0, Lcom/kingroot/kinguser/afi$4;->ahG:Lcom/kingroot/kinguser/afi;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/bed$a;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 407
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/bek;->a(Lcom/kingroot/kinguser/bed$a;)V

    .line 410
    invoke-interface {p1}, Lcom/kingroot/kinguser/bed$a;->nF()Ljava/util/List;

    move-result-object v1

    .line 411
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/abc;->isRootPermition(Z)Z

    move-result v0

    .line 413
    if-eqz v0, :cond_1

    .line 414
    iget-object v0, p0, Lcom/kingroot/kinguser/afi$4;->ahG:Lcom/kingroot/kinguser/afi;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/afi;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 415
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_0

    .line 416
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v2, Landroid/os/Message;->arg1:I

    .line 417
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 421
    :goto_0
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 426
    :goto_1
    return-void

    .line 419
    :cond_0
    const/4 v0, 0x0

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0

    .line 423
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/afi$4;->ahG:Lcom/kingroot/kinguser/afi;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/afi;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 424
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1
.end method
