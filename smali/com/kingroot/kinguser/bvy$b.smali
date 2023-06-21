.class Lcom/kingroot/kinguser/bvy$b;
.super Lcom/tencent/securemodule/impl/BaseReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bvy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic bQO:Lcom/kingroot/kinguser/bvy;

.field private bQP:Lcom/kingroot/kinguser/bvu;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/bvy;Lcom/kingroot/kinguser/bvu;)V
    .locals 0

    iput-object p1, p0, Lcom/kingroot/kinguser/bvy$b;->bQO:Lcom/kingroot/kinguser/bvy;

    invoke-direct {p0}, Lcom/tencent/securemodule/impl/BaseReceiver;-><init>()V

    iput-object p2, p0, Lcom/kingroot/kinguser/bvy$b;->bQP:Lcom/kingroot/kinguser/bvu;

    return-void
.end method


# virtual methods
.method public f(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const-string v0, "2000024"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kingroot/kinguser/bvy$b;->bQP:Lcom/kingroot/kinguser/bvu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/bvy$b;->bQP:Lcom/kingroot/kinguser/bvu;

    invoke-interface {v0}, Lcom/kingroot/kinguser/bvu;->NF()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "2000025"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/kingroot/kinguser/bvy$b;->bQP:Lcom/kingroot/kinguser/bvu;

    if-eqz v0, :cond_0

    const-string v0, "data"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "key_total"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string v1, "key_completed"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v1, "key_progress"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iget-object v0, p0, Lcom/kingroot/kinguser/bvy$b;->bQP:Lcom/kingroot/kinguser/bvu;

    invoke-interface/range {v0 .. v5}, Lcom/kingroot/kinguser/bvu;->a(IJJ)V

    goto :goto_0

    :cond_2
    const-string v0, "2000027"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/kingroot/kinguser/bvy$b;->bQP:Lcom/kingroot/kinguser/bvu;

    if-eqz v0, :cond_4

    const-string v0, "data"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_3

    const-string v0, "key_path"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    iget-object v1, p0, Lcom/kingroot/kinguser/bvy$b;->bQP:Lcom/kingroot/kinguser/bvu;

    invoke-interface {v1, v0}, Lcom/kingroot/kinguser/bvu;->io(Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/kingroot/kinguser/bvy$b;->bQO:Lcom/kingroot/kinguser/bvy;

    invoke-static {v0}, Lcom/kingroot/kinguser/bvy;->c(Lcom/kingroot/kinguser/bvy;)V

    goto :goto_0

    :cond_5
    const-string v0, "2000026"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/bvy$b;->bQP:Lcom/kingroot/kinguser/bvu;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/kingroot/kinguser/bvy$b;->bQP:Lcom/kingroot/kinguser/bvu;

    invoke-interface {v0}, Lcom/kingroot/kinguser/bvu;->NG()V

    :cond_6
    iget-object v0, p0, Lcom/kingroot/kinguser/bvy$b;->bQO:Lcom/kingroot/kinguser/bvy;

    invoke-static {v0}, Lcom/kingroot/kinguser/bvy;->c(Lcom/kingroot/kinguser/bvy;)V

    goto :goto_0
.end method
