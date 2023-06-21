.class Lcom/kingroot/kinguser/bjo$4;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bjo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bxv:Lcom/kingroot/kinguser/bjo;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bjo;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lcom/kingroot/kinguser/bjo$4;->bxv:Lcom/kingroot/kinguser/bjo;

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
    const/4 v3, 0x1

    .line 317
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/bek;->a(Lcom/kingroot/kinguser/bed$a;)V

    .line 320
    invoke-interface {p1}, Lcom/kingroot/kinguser/bed$a;->nF()Ljava/util/List;

    move-result-object v1

    .line 321
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/abc;->isRootPermition(Z)Z

    move-result v0

    .line 323
    if-eqz v0, :cond_1

    .line 325
    iget-object v0, p0, Lcom/kingroot/kinguser/bjo$4;->bxv:Lcom/kingroot/kinguser/bjo;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bjo;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 326
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_0

    .line 328
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v2, Landroid/os/Message;->arg1:I

    .line 329
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 333
    :goto_0
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 339
    :goto_1
    return-void

    .line 331
    :cond_0
    const/4 v0, 0x0

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0

    .line 336
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bjo$4;->bxv:Lcom/kingroot/kinguser/bjo;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bjo;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 337
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1
.end method
