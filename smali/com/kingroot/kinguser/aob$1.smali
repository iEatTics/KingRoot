.class Lcom/kingroot/kinguser/aob$1;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/aob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/aob;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aob;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/kingroot/kinguser/aob$1;->this$0:Lcom/kingroot/kinguser/aob;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 104
    iget-object v0, p0, Lcom/kingroot/kinguser/aob$1;->this$0:Lcom/kingroot/kinguser/aob;

    invoke-static {}, Lcom/kingroot/kinguser/alv;->Hq()Lcom/kingroot/kinguser/amu;

    move-result-object v1

    invoke-interface {v1}, Lcom/kingroot/kinguser/amu;->Hy()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/aob;->a(Lcom/kingroot/kinguser/aob;Ljava/util/List;)Ljava/util/List;

    .line 105
    iget-object v0, p0, Lcom/kingroot/kinguser/aob$1;->this$0:Lcom/kingroot/kinguser/aob;

    invoke-static {v0}, Lcom/kingroot/kinguser/aob;->a(Lcom/kingroot/kinguser/aob;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 107
    if-lez v0, :cond_1

    .line 108
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 109
    iget-object v0, p0, Lcom/kingroot/kinguser/aob$1;->this$0:Lcom/kingroot/kinguser/aob;

    invoke-static {v0}, Lcom/kingroot/kinguser/aob;->a(Lcom/kingroot/kinguser/aob;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;

    .line 110
    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->b(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AvailUpdateInfo;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;

    move-result-object v0

    .line 111
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 113
    :cond_0
    new-instance v0, Lcom/kingroot/kinguser/aob$1$1;

    invoke-direct {v0, p0, v1}, Lcom/kingroot/kinguser/aob$1$1;-><init>(Lcom/kingroot/kinguser/aob$1;Ljava/util/ArrayList;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 127
    :goto_1
    return-void

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/aob$1;->this$0:Lcom/kingroot/kinguser/aob;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aob;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1
.end method
