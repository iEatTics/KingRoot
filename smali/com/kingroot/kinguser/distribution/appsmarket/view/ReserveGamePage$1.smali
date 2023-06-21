.class public Lcom/kingroot/kinguser/distribution/appsmarket/view/ReserveGamePage$1;
.super Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/aog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/aog;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/aog;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/ReserveGamePage$1;->this$0:Lcom/kingroot/kinguser/aog;

    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 70
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/ReserveGamePage$1;->this$0:Lcom/kingroot/kinguser/aog;

    invoke-static {v0, p2}, Lcom/kingroot/kinguser/aog;->a(Lcom/kingroot/kinguser/aog;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 72
    new-instance v1, Lcom/kingroot/kinguser/distribution/appsmarket/view/ReserveGamePage$1$1;

    invoke-direct {v1, p0, v0}, Lcom/kingroot/kinguser/distribution/appsmarket/view/ReserveGamePage$1$1;-><init>(Lcom/kingroot/kinguser/distribution/appsmarket/view/ReserveGamePage$1;Ljava/util/List;)V

    invoke-static {v1}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/ReserveGamePage$1;->this$0:Lcom/kingroot/kinguser/aog;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aog;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
