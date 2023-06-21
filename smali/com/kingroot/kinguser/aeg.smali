.class public Lcom/kingroot/kinguser/aeg;
.super Lcom/kingroot/kinguser/uo;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/aee;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/aeg$a;
    }
.end annotation


# static fields
.field private static volatile aeN:Lcom/kingroot/kinguser/aeg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    sput-object v0, Lcom/kingroot/kinguser/aeg;->aeN:Lcom/kingroot/kinguser/aeg;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/kingroot/kinguser/uo;-><init>()V

    return-void
.end method

.method public static um()Lcom/kingroot/kinguser/aeg;
    .locals 2

    .prologue
    .line 68
    sget-object v0, Lcom/kingroot/kinguser/aeg;->aeN:Lcom/kingroot/kinguser/aeg;

    if-nez v0, :cond_1

    .line 69
    const-class v1, Lcom/kingroot/kinguser/aeg;

    monitor-enter v1

    .line 70
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/aeg;->aeN:Lcom/kingroot/kinguser/aeg;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lcom/kingroot/kinguser/aeg;

    invoke-direct {v0}, Lcom/kingroot/kinguser/aeg;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/aeg;->aeN:Lcom/kingroot/kinguser/aeg;

    .line 73
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/aeg;->aeN:Lcom/kingroot/kinguser/aeg;

    return-object v0

    .line 73
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Lcom/kingroot/kingmaster/network/updata/CheckResult;I)I
    .locals 5

    .prologue
    .line 125
    const/16 v0, 0x9

    new-instance v1, Lcom/kingroot/common/ipc/ArgsPack;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/aeg;->b(ILcom/kingroot/common/ipc/ArgsPack;)Lcom/kingroot/common/ipc/IpcResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/common/ipc/IpcResult;->readInt()I

    move-result v0

    return v0
.end method

.method public a(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 167
    new-instance v0, Lcom/kingroot/kinguser/wj;

    const-string v1, "askUpdateWhenOpenSoftware"

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/wj;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 168
    new-instance v1, Lcom/kingroot/kinguser/aeg$1;

    invoke-direct {v1, p0, p1}, Lcom/kingroot/kinguser/aeg$1;-><init>(Lcom/kingroot/kinguser/aeg;Landroid/app/Activity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 252
    return-void
.end method

.method public a(Lcom/kingroot/kingmaster/network/updata/ICheckIPCListener;)Z
    .locals 5

    .prologue
    .line 130
    const/16 v0, 0xa

    new-instance v1, Lcom/kingroot/common/ipc/ArgsPack;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p1}, Lcom/kingroot/kingmaster/network/updata/ICheckIPCListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/aeg;->b(ILcom/kingroot/common/ipc/ArgsPack;)Lcom/kingroot/common/ipc/IpcResult;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Lcom/kingroot/common/ipc/IpcResult;->readBoolean()Z

    move-result v0

    .line 130
    return v0
.end method

.method public a(Lcom/kingroot/kinguser/u;J)Z
    .locals 6

    .prologue
    .line 96
    const/16 v0, 0x19

    new-instance v1, Lcom/kingroot/common/ipc/ArgsPack;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/aeg;->b(ILcom/kingroot/common/ipc/ArgsPack;)Lcom/kingroot/common/ipc/IpcResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/common/ipc/IpcResult;->readBoolean()Z

    move-result v0

    return v0
.end method

.method public a(ZLcom/kingroot/kingmaster/network/updata/ICheckIPCListener;)Z
    .locals 5

    .prologue
    .line 136
    const/16 v0, 0xb

    new-instance v1, Lcom/kingroot/common/ipc/ArgsPack;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-interface {p2}, Lcom/kingroot/kingmaster/network/updata/ICheckIPCListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/aeg;->b(ILcom/kingroot/common/ipc/ArgsPack;)Lcom/kingroot/common/ipc/IpcResult;

    move-result-object v0

    .line 137
    invoke-virtual {v0}, Lcom/kingroot/common/ipc/IpcResult;->readBoolean()Z

    move-result v0

    .line 136
    return v0
.end method

.method public ab(J)V
    .locals 5

    .prologue
    .line 90
    const/16 v0, 0x20

    new-instance v1, Lcom/kingroot/common/ipc/ArgsPack;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/aeg;->a(ILcom/kingroot/common/ipc/ArgsPack;)V

    .line 91
    return-void
.end method

.method public aw(Z)Z
    .locals 5

    .prologue
    .line 142
    const/16 v0, 0xc

    new-instance v1, Lcom/kingroot/common/ipc/ArgsPack;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/aeg;->b(ILcom/kingroot/common/ipc/ArgsPack;)Lcom/kingroot/common/ipc/IpcResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/common/ipc/IpcResult;->readBoolean()Z

    move-result v0

    return v0
.end method

.method public b(Lcom/kingroot/common/network/download/INetworkLoadTaskCallback;)V
    .locals 5

    .prologue
    .line 152
    const/16 v0, 0xf

    new-instance v1, Lcom/kingroot/common/ipc/ArgsPack;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p1}, Lcom/kingroot/common/network/download/INetworkLoadTaskCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/aeg;->a(ILcom/kingroot/common/ipc/ArgsPack;)V

    .line 153
    return-void
.end method

.method public c(Lcom/kingroot/common/network/download/INetworkLoadTaskCallback;)V
    .locals 5

    .prologue
    .line 157
    const/16 v0, 0x10

    new-instance v1, Lcom/kingroot/common/ipc/ArgsPack;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p1}, Lcom/kingroot/common/network/download/INetworkLoadTaskCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/aeg;->a(ILcom/kingroot/common/ipc/ArgsPack;)V

    .line 158
    return-void
.end method

.method public cK(I)V
    .locals 5

    .prologue
    .line 120
    const/16 v0, 0x8

    new-instance v1, Lcom/kingroot/common/ipc/ArgsPack;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/aeg;->a(ILcom/kingroot/common/ipc/ArgsPack;)V

    .line 121
    return-void
.end method

.method public kD()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/kingroot/kinguser/up;",
            ">;"
        }
    .end annotation

    .prologue
    .line 276
    const-class v0, Lcom/kingroot/kinguser/aeg$a;

    return-object v0
.end method

.method public tc()Z
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/aeg;->aY(I)Lcom/kingroot/common/ipc/IpcResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/common/ipc/IpcResult;->readBoolean()Z

    move-result v0

    return v0
.end method

.method public tq()Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;
    .locals 1

    .prologue
    .line 256
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/aeg;->aY(I)Lcom/kingroot/common/ipc/IpcResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/common/ipc/IpcResult;->kG()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/network/download/NetworkLoadTaskInfo;

    return-object v0
.end method

.method public tr()Z
    .locals 1

    .prologue
    .line 261
    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/aeg;->aY(I)Lcom/kingroot/common/ipc/IpcResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/common/ipc/IpcResult;->readBoolean()Z

    move-result v0

    return v0
.end method

.method public ts()V
    .locals 1

    .prologue
    .line 266
    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/aeg;->aX(I)V

    .line 267
    return-void
.end method

.method public tt()V
    .locals 1

    .prologue
    .line 271
    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/aeg;->aX(I)V

    .line 272
    return-void
.end method

.method public tu()V
    .locals 1

    .prologue
    .line 111
    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/aeg;->aX(I)V

    .line 112
    return-void
.end method

.method public ue()Lcom/kingroot/kingmaster/network/updata/CheckResult;
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/aeg;->aY(I)Lcom/kingroot/common/ipc/IpcResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/common/ipc/IpcResult;->kG()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kingmaster/network/updata/CheckResult;

    return-object v0
.end method

.method public uf()Z
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/aeg;->aY(I)Lcom/kingroot/common/ipc/IpcResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/common/ipc/IpcResult;->readBoolean()Z

    move-result v0

    return v0
.end method

.method public ug()Z
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/aeg;->aY(I)Lcom/kingroot/common/ipc/IpcResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/common/ipc/IpcResult;->readBoolean()Z

    move-result v0

    return v0
.end method

.method public uh()V
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/aeg;->aX(I)V

    .line 116
    return-void
.end method

.method public ui()Z
    .locals 1

    .prologue
    .line 147
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/aeg;->aY(I)Lcom/kingroot/common/ipc/IpcResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/common/ipc/IpcResult;->readBoolean()Z

    move-result v0

    return v0
.end method

.method public uj()V
    .locals 1

    .prologue
    .line 162
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/aeg;->aX(I)V

    .line 163
    return-void
.end method
