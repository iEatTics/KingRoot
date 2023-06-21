.class public Lcom/kingroot/kinguser/page/KmUpdatePage$3;
.super Lcom/kingroot/common/network/download/NetworkLoadTaskAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/axk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/axk;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/axk;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/kingroot/kinguser/page/KmUpdatePage$3;->this$0:Lcom/kingroot/kinguser/axk;

    invoke-direct {p0}, Lcom/kingroot/common/network/download/NetworkLoadTaskAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;)V
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/kingroot/kinguser/page/KmUpdatePage$3;->this$0:Lcom/kingroot/kinguser/axk;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/axk;->a(Lcom/kingroot/kinguser/axk;Z)Z

    .line 266
    iget-object v0, p0, Lcom/kingroot/kinguser/page/KmUpdatePage$3;->this$0:Lcom/kingroot/kinguser/axk;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/axk;->a(Lcom/kingroot/kinguser/axk;I)V

    .line 267
    return-void
.end method

.method public onFinished(Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;)V
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/kingroot/kinguser/page/KmUpdatePage$3;->this$0:Lcom/kingroot/kinguser/axk;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/axk;->a(Lcom/kingroot/kinguser/axk;Z)Z

    .line 260
    iget-object v0, p0, Lcom/kingroot/kinguser/page/KmUpdatePage$3;->this$0:Lcom/kingroot/kinguser/axk;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/axk;->a(Lcom/kingroot/kinguser/axk;I)V

    .line 261
    return-void
.end method

.method public onInstallFailed(Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;)V
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/kingroot/kinguser/page/KmUpdatePage$3;->this$0:Lcom/kingroot/kinguser/axk;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/axk;->a(Lcom/kingroot/kinguser/axk;Z)Z

    .line 280
    iget-object v0, p0, Lcom/kingroot/kinguser/page/KmUpdatePage$3;->this$0:Lcom/kingroot/kinguser/axk;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/axk;->a(Lcom/kingroot/kinguser/axk;I)V

    .line 281
    return-void
.end method

.method public onInstallFinished(Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;)V
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/kingroot/kinguser/page/KmUpdatePage$3;->this$0:Lcom/kingroot/kinguser/axk;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/axk;->a(Lcom/kingroot/kinguser/axk;Z)Z

    .line 273
    iget-object v0, p0, Lcom/kingroot/kinguser/page/KmUpdatePage$3;->this$0:Lcom/kingroot/kinguser/axk;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/axk;->a(Lcom/kingroot/kinguser/axk;I)V

    .line 274
    return-void
.end method

.method public onProgressChanged(Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;)V
    .locals 2

    .prologue
    .line 245
    if-nez p1, :cond_0

    .line 254
    :goto_0
    return-void

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/page/KmUpdatePage$3;->this$0:Lcom/kingroot/kinguser/axk;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/axk;->a(Lcom/kingroot/kinguser/axk;Z)Z

    .line 251
    iget-object v0, p0, Lcom/kingroot/kinguser/page/KmUpdatePage$3;->this$0:Lcom/kingroot/kinguser/axk;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/axk;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 252
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 253
    iget-object v1, p0, Lcom/kingroot/kinguser/page/KmUpdatePage$3;->this$0:Lcom/kingroot/kinguser/axk;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/axk;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
