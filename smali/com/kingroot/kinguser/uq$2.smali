.class Lcom/kingroot/kinguser/uq$2;
.super Lcom/kingroot/kinguser/wo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/uq;->a(Ljava/lang/Class;ILcom/kingroot/common/ipc/ArgsPack;Lcom/kingroot/common/ipc/IIpcCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic IW:Ljava/lang/Class;

.field final synthetic IX:I

.field final synthetic IY:Lcom/kingroot/common/ipc/ArgsPack;

.field final synthetic IZ:Lcom/kingroot/common/ipc/IIpcCallback;

.field final synthetic Ja:Lcom/kingroot/kinguser/uq;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/uq;Ljava/lang/Class;ILcom/kingroot/common/ipc/ArgsPack;Lcom/kingroot/common/ipc/IIpcCallback;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/kingroot/kinguser/uq$2;->Ja:Lcom/kingroot/kinguser/uq;

    iput-object p2, p0, Lcom/kingroot/kinguser/uq$2;->IW:Ljava/lang/Class;

    iput p3, p0, Lcom/kingroot/kinguser/uq$2;->IX:I

    iput-object p4, p0, Lcom/kingroot/kinguser/uq$2;->IY:Lcom/kingroot/common/ipc/ArgsPack;

    iput-object p5, p0, Lcom/kingroot/kinguser/uq$2;->IZ:Lcom/kingroot/common/ipc/IIpcCallback;

    invoke-direct {p0}, Lcom/kingroot/kinguser/wo;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 45
    invoke-super {p0}, Lcom/kingroot/kinguser/wo;->run()V

    .line 46
    iget-object v0, p0, Lcom/kingroot/kinguser/uq$2;->Ja:Lcom/kingroot/kinguser/uq;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/uq;->jX()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/ipc/IKIpc;

    .line 47
    if-nez v0, :cond_0

    .line 55
    :goto_0
    return-void

    .line 51
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/kingroot/kinguser/uq$2;->IW:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/kingroot/kinguser/uq$2;->IX:I

    iget-object v3, p0, Lcom/kingroot/kinguser/uq$2;->IY:Lcom/kingroot/common/ipc/ArgsPack;

    iget-object v4, p0, Lcom/kingroot/kinguser/uq$2;->IZ:Lcom/kingroot/common/ipc/IIpcCallback;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/kingroot/common/ipc/IKIpc;->asyncCall(Ljava/lang/String;ILcom/kingroot/common/ipc/ArgsPack;Lcom/kingroot/common/ipc/IIpcCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    goto :goto_0
.end method
