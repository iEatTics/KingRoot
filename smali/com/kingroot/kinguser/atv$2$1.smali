.class Lcom/kingroot/kinguser/atv$2$1;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/atv$2;->e(Lcom/kingroot/kinguser/bom;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aQr:Lcom/kingroot/kinguser/atv$a;

.field final synthetic aQs:Lcom/kingroot/kinguser/bom;

.field final synthetic aQt:Lcom/kingroot/kinguser/atv$2;

.field final synthetic val$savePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/atv$2;Lcom/kingroot/kinguser/atv$a;Ljava/lang/String;Lcom/kingroot/kinguser/bom;)V
    .locals 0

    .prologue
    .line 315
    iput-object p1, p0, Lcom/kingroot/kinguser/atv$2$1;->aQt:Lcom/kingroot/kinguser/atv$2;

    iput-object p2, p0, Lcom/kingroot/kinguser/atv$2$1;->aQr:Lcom/kingroot/kinguser/atv$a;

    iput-object p3, p0, Lcom/kingroot/kinguser/atv$2$1;->val$savePath:Ljava/lang/String;

    iput-object p4, p0, Lcom/kingroot/kinguser/atv$2$1;->aQs:Lcom/kingroot/kinguser/bom;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 318
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 319
    iget-object v0, p0, Lcom/kingroot/kinguser/atv$2$1;->aQr:Lcom/kingroot/kinguser/atv$a;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/kingroot/kinguser/atv$2$1;->aQt:Lcom/kingroot/kinguser/atv$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/atv$2;->aQq:Lcom/kingroot/kinguser/atv;

    iget-object v1, p0, Lcom/kingroot/kinguser/atv$2$1;->aQr:Lcom/kingroot/kinguser/atv$a;

    iget-object v2, p0, Lcom/kingroot/kinguser/atv$2$1;->val$savePath:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/atv;->a(Lcom/kingroot/kinguser/atv;Lcom/kingroot/kinguser/atv$a;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 321
    iget-object v1, p0, Lcom/kingroot/kinguser/atv$2$1;->aQt:Lcom/kingroot/kinguser/atv$2;

    iget-object v1, v1, Lcom/kingroot/kinguser/atv$2;->aQq:Lcom/kingroot/kinguser/atv;

    invoke-static {v1}, Lcom/kingroot/kinguser/atv;->b(Lcom/kingroot/kinguser/atv;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 322
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 323
    const-string v2, "urlImage"

    iget-object v3, p0, Lcom/kingroot/kinguser/atv$2$1;->aQs:Lcom/kingroot/kinguser/bom;

    invoke-interface {v3}, Lcom/kingroot/kinguser/bom;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 325
    iget-object v1, p0, Lcom/kingroot/kinguser/atv$2$1;->aQt:Lcom/kingroot/kinguser/atv$2;

    iget-object v1, v1, Lcom/kingroot/kinguser/atv$2;->aQq:Lcom/kingroot/kinguser/atv;

    invoke-static {v1}, Lcom/kingroot/kinguser/atv;->b(Lcom/kingroot/kinguser/atv;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 327
    :cond_0
    return-void
.end method
