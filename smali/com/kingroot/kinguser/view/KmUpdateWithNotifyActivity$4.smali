.class Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity$4;
.super Lcom/kingroot/common/network/download/NetworkLoadTaskAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity$4;->this$0:Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;

    invoke-direct {p0}, Lcom/kingroot/common/network/download/NetworkLoadTaskAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;)V
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity$4;->this$0:Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->a(Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;Z)Z

    .line 287
    iget-object v0, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity$4;->this$0:Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->b(Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;I)V

    .line 288
    return-void
.end method

.method public onFinished(Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;)V
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity$4;->this$0:Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->a(Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;Z)Z

    .line 281
    iget-object v0, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity$4;->this$0:Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->b(Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;I)V

    .line 282
    return-void
.end method

.method public onInstallFailed(Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;)V
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity$4;->this$0:Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->a(Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;Z)Z

    .line 301
    iget-object v0, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity$4;->this$0:Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->b(Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;I)V

    .line 302
    return-void
.end method

.method public onInstallFinished(Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;)V
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity$4;->this$0:Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->a(Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;Z)Z

    .line 294
    iget-object v0, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity$4;->this$0:Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->b(Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;I)V

    .line 295
    return-void
.end method

.method public onProgressChanged(Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;)V
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity$4;->this$0:Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->a(Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;Z)Z

    .line 272
    iget-object v0, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity$4;->this$0:Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;

    iget-object v0, v0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 273
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 274
    iget-object v1, p0, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity$4;->this$0:Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;

    iget-object v1, v1, Lcom/kingroot/kinguser/view/KmUpdateWithNotifyActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 275
    return-void
.end method
