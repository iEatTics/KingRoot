.class public Lcom/kingroot/common/ipc/KIpcService$KIpcStub;
.super Lcom/kingroot/common/ipc/IKIpc$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/common/ipc/KIpcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KIpcStub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/kingroot/common/ipc/IKIpc$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public asyncCall(Ljava/lang/String;ILcom/kingroot/common/ipc/ArgsPack;Lcom/kingroot/common/ipc/IIpcCallback;)V
    .locals 2

    .prologue
    .line 93
    new-instance v0, Lcom/kingroot/common/ipc/IpcResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kingroot/common/ipc/IpcResult;-><init>(Ljava/lang/Object;)V

    .line 94
    invoke-static {p1}, Lcom/kingroot/common/ipc/KIpcService;->cY(Ljava/lang/String;)Lcom/kingroot/kinguser/up;

    move-result-object v1

    invoke-interface {v1, p2, p3, v0}, Lcom/kingroot/kinguser/up;->a(ILcom/kingroot/common/ipc/ArgsPack;Lcom/kingroot/common/ipc/IpcResult;)V

    .line 95
    if-eqz p4, :cond_0

    .line 96
    invoke-interface {p4, v0}, Lcom/kingroot/common/ipc/IIpcCallback;->onFinish(Lcom/kingroot/common/ipc/IpcResult;)V

    .line 98
    :cond_0
    return-void
.end method

.method public syncCall(Ljava/lang/String;ILcom/kingroot/common/ipc/ArgsPack;)Lcom/kingroot/common/ipc/IpcResult;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 104
    invoke-static {p1}, Lcom/kingroot/common/ipc/KIpcService;->cY(Ljava/lang/String;)Lcom/kingroot/kinguser/up;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lcom/kingroot/kinguser/up;->c(ILcom/kingroot/common/ipc/ArgsPack;)Ljava/lang/Object;

    move-result-object v1

    .line 105
    if-nez v1, :cond_0

    sget-object v0, Lcom/kingroot/common/ipc/IpcResult;->IT:Lcom/kingroot/common/ipc/IpcResult;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/kingroot/common/ipc/IpcResult;

    invoke-direct {v0, v1}, Lcom/kingroot/common/ipc/IpcResult;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method
