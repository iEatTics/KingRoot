.class Lcom/kingroot/kinguser/vu$3$1$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/vu$3$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic LE:Lcom/kingroot/kinguser/vu$3$1;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/vu$3$1;)V
    .locals 0

    .prologue
    .line 386
    iput-object p1, p0, Lcom/kingroot/kinguser/vu$3$1$1;->LE:Lcom/kingroot/kinguser/vu$3$1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 389
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 391
    iget-object v0, p0, Lcom/kingroot/kinguser/vu$3$1$1;->LE:Lcom/kingroot/kinguser/vu$3$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/vu$3$1;->LD:Lcom/kingroot/kinguser/vu$3;

    iget-object v0, v0, Lcom/kingroot/kinguser/vu$3;->LC:Lcom/kingroot/kinguser/vu;

    invoke-static {v0}, Lcom/kingroot/kinguser/vu;->i(Lcom/kingroot/kinguser/vu;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 393
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/zh;->du(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 396
    iget-object v2, p0, Lcom/kingroot/kinguser/vu$3$1$1;->LE:Lcom/kingroot/kinguser/vu$3$1;

    iget-object v2, v2, Lcom/kingroot/kinguser/vu$3$1;->LD:Lcom/kingroot/kinguser/vu$3;

    iget-object v2, v2, Lcom/kingroot/kinguser/vu$3;->LC:Lcom/kingroot/kinguser/vu;

    invoke-static {v2, v0}, Lcom/kingroot/kinguser/vu;->a(Lcom/kingroot/kinguser/vu;Ljava/lang/String;)Lcom/kingroot/common/report/autostart/BootRecord$AutoStartRecord;

    move-result-object v0

    .line 397
    iget-object v2, p0, Lcom/kingroot/kinguser/vu$3$1$1;->LE:Lcom/kingroot/kinguser/vu$3$1;

    iget-object v2, v2, Lcom/kingroot/kinguser/vu$3$1;->LD:Lcom/kingroot/kinguser/vu$3;

    iget-object v2, v2, Lcom/kingroot/kinguser/vu$3;->LC:Lcom/kingroot/kinguser/vu;

    invoke-static {v2}, Lcom/kingroot/kinguser/vu;->f(Lcom/kingroot/kinguser/vu;)Lcom/kingroot/common/report/autostart/BootRecord;

    move-result-object v2

    .line 398
    if-eqz v2, :cond_0

    .line 399
    invoke-virtual {v2, v0}, Lcom/kingroot/common/report/autostart/BootRecord;->a(Lcom/kingroot/common/report/autostart/BootRecord$BaseRecord;)V

    .line 400
    iget-object v0, p0, Lcom/kingroot/kinguser/vu$3$1$1;->LE:Lcom/kingroot/kinguser/vu$3$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/vu$3$1;->LD:Lcom/kingroot/kinguser/vu$3;

    iget-object v0, v0, Lcom/kingroot/kinguser/vu$3;->LC:Lcom/kingroot/kinguser/vu;

    invoke-static {v0}, Lcom/kingroot/kinguser/vu;->h(Lcom/kingroot/kinguser/vu;)V

    goto :goto_0

    .line 404
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/vu$3$1$1;->LE:Lcom/kingroot/kinguser/vu$3$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/vu$3$1;->LD:Lcom/kingroot/kinguser/vu$3;

    iget-object v0, v0, Lcom/kingroot/kinguser/vu$3;->LC:Lcom/kingroot/kinguser/vu;

    invoke-static {v0}, Lcom/kingroot/kinguser/vu;->j(Lcom/kingroot/kinguser/vu;)V

    .line 405
    return-void
.end method
