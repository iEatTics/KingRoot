.class Lcom/kingroot/kinguser/distribution/appsmarket/view/ReserveGamePage$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/distribution/appsmarket/view/ReserveGamePage$1;->onReceive(ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aBN:Ljava/util/List;

.field final synthetic aFt:Lcom/kingroot/kinguser/distribution/appsmarket/view/ReserveGamePage$1;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/distribution/appsmarket/view/ReserveGamePage$1;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/ReserveGamePage$1$1;->aFt:Lcom/kingroot/kinguser/distribution/appsmarket/view/ReserveGamePage$1;

    iput-object p2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/ReserveGamePage$1$1;->aBN:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/ReserveGamePage$1$1;->aFt:Lcom/kingroot/kinguser/distribution/appsmarket/view/ReserveGamePage$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/ReserveGamePage$1;->this$0:Lcom/kingroot/kinguser/aog;

    iget-object v0, v0, Lcom/kingroot/kinguser/aog;->aBC:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/ReserveGamePage$1$1;->aBN:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 76
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/ReserveGamePage$1$1;->aFt:Lcom/kingroot/kinguser/distribution/appsmarket/view/ReserveGamePage$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/ReserveGamePage$1;->this$0:Lcom/kingroot/kinguser/aog;

    iget v1, v0, Lcom/kingroot/kinguser/aog;->aon:I

    add-int/lit8 v1, v1, 0x1e

    iput v1, v0, Lcom/kingroot/kinguser/aog;->aon:I

    .line 77
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/ReserveGamePage$1$1;->aFt:Lcom/kingroot/kinguser/distribution/appsmarket/view/ReserveGamePage$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/ReserveGamePage$1;->this$0:Lcom/kingroot/kinguser/aog;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aog;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 78
    return-void
.end method
