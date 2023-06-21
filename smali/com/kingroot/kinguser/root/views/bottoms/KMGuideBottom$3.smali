.class public Lcom/kingroot/kinguser/root/views/bottoms/KMGuideBottom$3;
.super Lcom/kingroot/common/network/download/NetworkLoadTaskAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bci;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/bci;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/bci;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/kingroot/kinguser/root/views/bottoms/KMGuideBottom$3;->this$0:Lcom/kingroot/kinguser/bci;

    invoke-direct {p0}, Lcom/kingroot/common/network/download/NetworkLoadTaskAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;)V
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/bottoms/KMGuideBottom$3;->this$0:Lcom/kingroot/kinguser/bci;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bci;->e(Lcom/kingroot/kinguser/bci;I)V

    .line 232
    return-void
.end method

.method public onFinished(Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;)V
    .locals 4

    .prologue
    .line 218
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/bottoms/KMGuideBottom$3;->this$0:Lcom/kingroot/kinguser/bci;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bci;->e(Lcom/kingroot/kinguser/bci;I)V

    .line 220
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/bottoms/KMGuideBottom$3;->this$0:Lcom/kingroot/kinguser/bci;

    invoke-static {v0}, Lcom/kingroot/kinguser/bci;->h(Lcom/kingroot/kinguser/bci;)Lcom/kingroot/kinguser/bci$a;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/root/views/bottoms/KMGuideBottom$3$1;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/root/views/bottoms/KMGuideBottom$3$1;-><init>(Lcom/kingroot/kinguser/root/views/bottoms/KMGuideBottom$3;)V

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Lcom/kingroot/kinguser/bci$a;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 227
    return-void
.end method

.method public onInstallFailed(Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;)V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/bottoms/KMGuideBottom$3;->this$0:Lcom/kingroot/kinguser/bci;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bci;->e(Lcom/kingroot/kinguser/bci;I)V

    .line 244
    return-void
.end method

.method public onInstallFinished(Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;)V
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/bottoms/KMGuideBottom$3;->this$0:Lcom/kingroot/kinguser/bci;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bci;->e(Lcom/kingroot/kinguser/bci;I)V

    .line 238
    return-void
.end method

.method public onProgressChanged(Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;)V
    .locals 2

    .prologue
    .line 205
    if-nez p1, :cond_0

    .line 213
    :goto_0
    return-void

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/root/views/bottoms/KMGuideBottom$3;->this$0:Lcom/kingroot/kinguser/bci;

    invoke-static {v0}, Lcom/kingroot/kinguser/bci;->h(Lcom/kingroot/kinguser/bci;)Lcom/kingroot/kinguser/bci$a;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bci$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 211
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 212
    iget-object v1, p0, Lcom/kingroot/kinguser/root/views/bottoms/KMGuideBottom$3;->this$0:Lcom/kingroot/kinguser/bci;

    invoke-static {v1}, Lcom/kingroot/kinguser/bci;->h(Lcom/kingroot/kinguser/bci;)Lcom/kingroot/kinguser/bci$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/bci$a;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
