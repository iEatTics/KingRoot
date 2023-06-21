.class Lcom/kingroot/kinguser/bjo$2;
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
    .line 181
    iput-object p1, p0, Lcom/kingroot/kinguser/bjo$2;->bxv:Lcom/kingroot/kinguser/bjo;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 184
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 185
    sget-object v0, Lcom/kingroot/kinguser/bjs;->byC:Ljava/util/List;

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/kingroot/kinguser/bjo$2;->bxv:Lcom/kingroot/kinguser/bjo;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bjo;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/afd;->e(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/bjs;->byC:Ljava/util/List;

    .line 188
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/bjs;->byC:Ljava/util/List;

    if-nez v0, :cond_1

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bjs;->byC:Ljava/util/List;

    .line 191
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/bjs;->byC:Ljava/util/List;

    .line 193
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    .line 195
    iget v2, v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->classify:I

    if-ne v2, v3, :cond_2

    iget v2, v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->enable:I

    if-nez v2, :cond_2

    .line 196
    iget-object v2, p0, Lcom/kingroot/kinguser/bjo$2;->bxv:Lcom/kingroot/kinguser/bjo;

    invoke-static {v2}, Lcom/kingroot/kinguser/bjo;->b(Lcom/kingroot/kinguser/bjo;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 200
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/bjo$2;->bxv:Lcom/kingroot/kinguser/bjo;

    invoke-static {v0}, Lcom/kingroot/kinguser/bjo;->b(Lcom/kingroot/kinguser/bjo;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bjo$2$1;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/bjo$2$1;-><init>(Lcom/kingroot/kinguser/bjo$2;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 212
    iget-object v0, p0, Lcom/kingroot/kinguser/bjo$2;->bxv:Lcom/kingroot/kinguser/bjo;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bjo;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 213
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 214
    return-void
.end method
