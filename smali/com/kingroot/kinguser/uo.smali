.class public abstract Lcom/kingroot/kinguser/uo;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(ILcom/kingroot/common/ipc/ArgsPack;)V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/kingroot/kinguser/uo;->a(ILcom/kingroot/common/ipc/ArgsPack;Lcom/kingroot/common/ipc/IIpcCallback;)V

    .line 37
    return-void
.end method

.method protected final a(ILcom/kingroot/common/ipc/ArgsPack;Lcom/kingroot/common/ipc/IIpcCallback;)V
    .locals 2

    .prologue
    .line 54
    invoke-static {}, Lcom/kingroot/kinguser/uq;->kH()Lcom/kingroot/kinguser/uq;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kingroot/kinguser/uo;->kD()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/kingroot/kinguser/uq;->a(Ljava/lang/Class;ILcom/kingroot/common/ipc/ArgsPack;Lcom/kingroot/common/ipc/IIpcCallback;)V

    .line 55
    return-void
.end method

.method protected final aX(I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-virtual {p0, p1, v0, v0}, Lcom/kingroot/kinguser/uo;->a(ILcom/kingroot/common/ipc/ArgsPack;Lcom/kingroot/common/ipc/IIpcCallback;)V

    .line 45
    return-void
.end method

.method protected final aY(I)Lcom/kingroot/common/ipc/IpcResult;
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/kingroot/kinguser/uo;->b(ILcom/kingroot/common/ipc/ArgsPack;)Lcom/kingroot/common/ipc/IpcResult;

    move-result-object v0

    return-object v0
.end method

.method protected final b(ILcom/kingroot/common/ipc/ArgsPack;)Lcom/kingroot/common/ipc/IpcResult;
    .locals 2

    .prologue
    .line 73
    invoke-static {}, Lcom/kingroot/kinguser/uq;->kH()Lcom/kingroot/kinguser/uq;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kingroot/kinguser/uo;->kD()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/kingroot/kinguser/uq;->b(Ljava/lang/Class;ILcom/kingroot/common/ipc/ArgsPack;)Lcom/kingroot/common/ipc/IpcResult;

    move-result-object v0

    return-object v0
.end method

.method public abstract kD()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/kingroot/kinguser/up;",
            ">;"
        }
    .end annotation
.end method
