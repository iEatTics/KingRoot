.class Lcom/kingroot/kinguser/root/mgr/SuNotifyService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/root/mgr/SuNotifyService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bfQ:Lcom/kingroot/kinguser/model/SuRequestCmdModel;

.field final synthetic bfR:Lcom/kingroot/kinguser/root/mgr/SuNotifyService;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/root/mgr/SuNotifyService;Lcom/kingroot/kinguser/model/SuRequestCmdModel;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/kingroot/kinguser/root/mgr/SuNotifyService$1;->bfR:Lcom/kingroot/kinguser/root/mgr/SuNotifyService;

    iput-object p2, p0, Lcom/kingroot/kinguser/root/mgr/SuNotifyService$1;->bfQ:Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/kingroot/kinguser/root/mgr/SuNotifyService$1;->bfQ:Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    iget v0, v0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRr:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 54
    invoke-static {}, Lcom/kingroot/kinguser/ajs;->zx()Lcom/kingroot/kinguser/ajs;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/root/mgr/SuNotifyService$1;->bfQ:Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    iget-object v1, v1, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ajs;->gy(Ljava/lang/String;)V

    .line 62
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/root/mgr/SuNotifyService$1;->bfQ:Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    iget v0, v0, Lcom/kingroot/kinguser/model/SuRequestCmdModel;->aRr:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 57
    invoke-static {}, Lcom/kingroot/kinguser/ajs;->zx()Lcom/kingroot/kinguser/ajs;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/root/mgr/SuNotifyService$1;->bfQ:Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ajs;->b(Lcom/kingroot/kinguser/model/SuRequestCmdModel;)V

    goto :goto_0

    .line 60
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/bbf;->Wl()Lcom/kingroot/kinguser/bbf;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/root/mgr/SuNotifyService$1;->bfQ:Lcom/kingroot/kinguser/model/SuRequestCmdModel;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bbf;->d(Lcom/kingroot/kinguser/model/SuRequestCmdModel;)V

    goto :goto_0
.end method
