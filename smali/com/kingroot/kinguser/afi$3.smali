.class Lcom/kingroot/kinguser/afi$3;
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
    .line 306
    iput-object p1, p0, Lcom/kingroot/kinguser/afi$3;->ahG:Lcom/kingroot/kinguser/afi;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 309
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 310
    iget-object v0, p0, Lcom/kingroot/kinguser/afi$3;->ahG:Lcom/kingroot/kinguser/afi;

    invoke-static {v0}, Lcom/kingroot/kinguser/afi;->b(Lcom/kingroot/kinguser/afi;)Lcom/kingroot/kinguser/bjs;

    move-result-object v0

    if-nez v0, :cond_0

    .line 311
    iget-object v2, p0, Lcom/kingroot/kinguser/afi$3;->ahG:Lcom/kingroot/kinguser/afi;

    invoke-static {}, Lcom/kingroot/kinguser/adt;->sY()Lcom/kingroot/kinguser/ado;

    move-result-object v0

    const-class v3, Lcom/kingroot/kinguser/bjs;

    invoke-interface {v0, v3}, Lcom/kingroot/kinguser/ado;->f(Ljava/lang/Class;)Lcom/kingroot/kinguser/adq;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bjs;

    invoke-static {v2, v0}, Lcom/kingroot/kinguser/afi;->a(Lcom/kingroot/kinguser/afi;Lcom/kingroot/kinguser/bjs;)Lcom/kingroot/kinguser/bjs;

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/afi$3;->ahG:Lcom/kingroot/kinguser/afi;

    invoke-static {v0}, Lcom/kingroot/kinguser/afi;->b(Lcom/kingroot/kinguser/afi;)Lcom/kingroot/kinguser/bjs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bjs;->ta()Ljava/lang/Object;

    move-result-object v0

    .line 315
    instance-of v2, v0, Ljava/util/List;

    if-eqz v2, :cond_3

    .line 316
    check-cast v0, Ljava/util/List;

    .line 318
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aex$a;

    .line 319
    iget-object v2, v0, Lcom/kingroot/kinguser/aex$a;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    iget v2, v2, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->enable:I

    if-nez v2, :cond_1

    .line 320
    new-instance v2, Lcom/kingroot/kinguser/aex$a;

    invoke-direct {v2}, Lcom/kingroot/kinguser/aex$a;-><init>()V

    .line 321
    iget-boolean v3, v0, Lcom/kingroot/kinguser/aex$a;->afR:Z

    iput-boolean v3, v2, Lcom/kingroot/kinguser/aex$a;->afR:Z

    .line 322
    iget-object v3, v0, Lcom/kingroot/kinguser/aex$a;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    iput-object v3, v2, Lcom/kingroot/kinguser/aex$a;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    .line 323
    iget-object v3, p0, Lcom/kingroot/kinguser/afi$3;->ahG:Lcom/kingroot/kinguser/afi;

    invoke-static {v3}, Lcom/kingroot/kinguser/afi;->c(Lcom/kingroot/kinguser/afi;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    iget-boolean v0, v0, Lcom/kingroot/kinguser/aex$a;->afR:Z

    if-eqz v0, :cond_1

    .line 325
    iget-object v0, p0, Lcom/kingroot/kinguser/afi$3;->ahG:Lcom/kingroot/kinguser/afi;

    iget-object v0, v0, Lcom/kingroot/kinguser/afi;->ahz:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 329
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/afi$3;->ahG:Lcom/kingroot/kinguser/afi;

    invoke-static {v0}, Lcom/kingroot/kinguser/afi;->c(Lcom/kingroot/kinguser/afi;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/afi$3$1;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/afi$3$1;-><init>(Lcom/kingroot/kinguser/afi$3;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 339
    iget-object v0, p0, Lcom/kingroot/kinguser/afi$3;->ahG:Lcom/kingroot/kinguser/afi;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/afi;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 340
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 341
    return-void

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method
