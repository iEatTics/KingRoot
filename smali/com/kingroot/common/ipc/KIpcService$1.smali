.class final Lcom/kingroot/common/ipc/KIpcService$1;
.super Lcom/kingroot/kinguser/cce;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/common/ipc/KIpcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kingroot/kinguser/cce",
        "<",
        "Lcom/kingroot/common/ipc/KIpcService$KIpcStub;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/kingroot/kinguser/cce;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic create()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/kingroot/common/ipc/KIpcService$1;->kL()Lcom/kingroot/common/ipc/KIpcService$KIpcStub;

    move-result-object v0

    return-object v0
.end method

.method protected kL()Lcom/kingroot/common/ipc/KIpcService$KIpcStub;
    .locals 1

    .prologue
    .line 73
    new-instance v0, Lcom/kingroot/common/ipc/KIpcService$KIpcStub;

    invoke-direct {v0}, Lcom/kingroot/common/ipc/KIpcService$KIpcStub;-><init>()V

    return-object v0
.end method
