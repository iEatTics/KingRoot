.class public Lcom/kingroot/kinguser/uq;
.super Lcom/kingroot/kinguser/tu;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kingroot/kinguser/tu",
        "<",
        "Lcom/kingroot/common/ipc/IKIpc;",
        ">;"
    }
.end annotation


# static fields
.field private static final sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/uq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/kingroot/kinguser/uq$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/uq$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/uq;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/kingroot/kinguser/tu;-><init>()V

    return-void
.end method

.method public static kH()Lcom/kingroot/kinguser/uq;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/kingroot/kinguser/uq;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/uq;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Class;ILcom/kingroot/common/ipc/ArgsPack;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/kingroot/kinguser/up;",
            ">;I",
            "Lcom/kingroot/common/ipc/ArgsPack;",
            ")V"
        }
    .end annotation

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/kingroot/kinguser/uq;->a(Ljava/lang/Class;ILcom/kingroot/common/ipc/ArgsPack;Lcom/kingroot/common/ipc/IIpcCallback;)V

    .line 37
    return-void
.end method

.method public a(Ljava/lang/Class;ILcom/kingroot/common/ipc/ArgsPack;Lcom/kingroot/common/ipc/IIpcCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/kingroot/kinguser/up;",
            ">;I",
            "Lcom/kingroot/common/ipc/ArgsPack;",
            "Lcom/kingroot/common/ipc/IIpcCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 41
    new-instance v0, Lcom/kingroot/kinguser/uq$2;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/kingroot/kinguser/uq$2;-><init>(Lcom/kingroot/kinguser/uq;Ljava/lang/Class;ILcom/kingroot/common/ipc/ArgsPack;Lcom/kingroot/common/ipc/IIpcCallback;)V

    .line 57
    invoke-virtual {v0}, Lcom/kingroot/kinguser/uq$2;->ny()Z

    .line 58
    return-void
.end method

.method public b(Ljava/lang/Class;ILcom/kingroot/common/ipc/ArgsPack;)Lcom/kingroot/common/ipc/IpcResult;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/kingroot/kinguser/up;",
            ">;I",
            "Lcom/kingroot/common/ipc/ArgsPack;",
            ")",
            "Lcom/kingroot/common/ipc/IpcResult;"
        }
    .end annotation

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/kingroot/kinguser/uq;->jX()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/ipc/IKIpc;

    .line 64
    if-nez v0, :cond_0

    .line 65
    sget-object v0, Lcom/kingroot/common/ipc/IpcResult;->IT:Lcom/kingroot/common/ipc/IpcResult;

    .line 72
    :goto_0
    return-object v0

    .line 68
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Lcom/kingroot/common/ipc/IKIpc;->syncCall(Ljava/lang/String;ILcom/kingroot/common/ipc/ArgsPack;)Lcom/kingroot/common/ipc/IpcResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 72
    sget-object v0, Lcom/kingroot/common/ipc/IpcResult;->IT:Lcom/kingroot/common/ipc/IpcResult;

    goto :goto_0
.end method

.method protected synthetic d(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/uq;->e(Landroid/os/IBinder;)Lcom/kingroot/common/ipc/IKIpc;

    move-result-object v0

    return-object v0
.end method

.method protected e(Landroid/os/IBinder;)Lcom/kingroot/common/ipc/IKIpc;
    .locals 1

    .prologue
    .line 89
    invoke-static {p1}, Lcom/kingroot/common/ipc/IKIpc$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kingroot/common/ipc/IKIpc;

    move-result-object v0

    return-object v0
.end method

.method protected jU()I
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x2

    return v0
.end method

.method protected synthetic jV()Landroid/os/IInterface;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/kingroot/kinguser/uq;->kI()Lcom/kingroot/common/ipc/IKIpc;

    move-result-object v0

    return-object v0
.end method

.method protected jW()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 94
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/kingroot/kinguser/bzt;->ge()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/kingroot/common/ipc/KIpcService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method protected kI()Lcom/kingroot/common/ipc/IKIpc;
    .locals 1

    .prologue
    .line 84
    invoke-static {}, Lcom/kingroot/common/ipc/KIpcService;->kK()Lcom/kingroot/common/ipc/IKIpc;

    move-result-object v0

    return-object v0
.end method
