.class public Lcom/kingroot/kinguser/adw;
.super Lcom/kingroot/kinguser/uo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/adw$a;
    }
.end annotation


# static fields
.field private static volatile adE:Lcom/kingroot/kinguser/adw;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    sput-object v0, Lcom/kingroot/kinguser/adw;->adE:Lcom/kingroot/kinguser/adw;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/kingroot/kinguser/uo;-><init>()V

    return-void
.end method

.method public static tb()Lcom/kingroot/kinguser/adw;
    .locals 2

    .prologue
    .line 68
    sget-object v0, Lcom/kingroot/kinguser/adw;->adE:Lcom/kingroot/kinguser/adw;

    if-nez v0, :cond_1

    .line 69
    const-class v1, Lcom/kingroot/kinguser/adw;

    monitor-enter v1

    .line 70
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/adw;->adE:Lcom/kingroot/kinguser/adw;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lcom/kingroot/kinguser/adw;

    invoke-direct {v0}, Lcom/kingroot/kinguser/adw;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/adw;->adE:Lcom/kingroot/kinguser/adw;

    .line 73
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/adw;->adE:Lcom/kingroot/kinguser/adw;

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
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 80
    new-instance v0, Lcom/kingroot/common/ipc/ArgsPack;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    aput-object p3, v1, v4

    const/4 v2, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p0, v4, v0}, Lcom/kingroot/kinguser/adw;->b(ILcom/kingroot/common/ipc/ArgsPack;)Lcom/kingroot/common/ipc/IpcResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/common/ipc/IpcResult;->readInt()I

    move-result v0

    return v0
.end method

.method public b(Lcom/kingroot/common/network/download/INetworkLoadTaskCallback;)V
    .locals 5

    .prologue
    .line 85
    const/4 v0, 0x3

    new-instance v1, Lcom/kingroot/common/ipc/ArgsPack;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p1}, Lcom/kingroot/common/network/download/INetworkLoadTaskCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/adw;->a(ILcom/kingroot/common/ipc/ArgsPack;)V

    .line 86
    return-void
.end method

.method public cC(I)V
    .locals 5

    .prologue
    .line 135
    const/16 v0, 0xb

    new-instance v1, Lcom/kingroot/common/ipc/ArgsPack;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/adw;->a(ILcom/kingroot/common/ipc/ArgsPack;)V

    .line 136
    return-void
.end method

.method public cD(I)V
    .locals 5

    .prologue
    .line 155
    const/16 v0, 0x14

    new-instance v1, Lcom/kingroot/common/ipc/ArgsPack;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/adw;->a(ILcom/kingroot/common/ipc/ArgsPack;)V

    .line 156
    return-void
.end method

.method public cE(I)V
    .locals 5

    .prologue
    .line 165
    const/16 v0, 0x16

    new-instance v1, Lcom/kingroot/common/ipc/ArgsPack;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/adw;->a(ILcom/kingroot/common/ipc/ArgsPack;)V

    .line 166
    return-void
.end method

.method public eF(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 145
    const/16 v0, 0xd

    new-instance v1, Lcom/kingroot/common/ipc/ArgsPack;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, v2}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/adw;->b(ILcom/kingroot/common/ipc/ArgsPack;)Lcom/kingroot/common/ipc/IpcResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/common/ipc/IpcResult;->readBoolean()Z

    move-result v0

    return v0
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
    .line 125
    const-class v0, Lcom/kingroot/kinguser/adw$a;

    return-object v0
.end method

.method public tc()Z
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/adw;->aY(I)Lcom/kingroot/common/ipc/IpcResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/common/ipc/IpcResult;->readBoolean()Z

    move-result v0

    return v0
.end method

.method public td()I
    .locals 1

    .prologue
    .line 130
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/adw;->aY(I)Lcom/kingroot/common/ipc/IpcResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/common/ipc/IpcResult;->readInt()I

    move-result v0

    return v0
.end method

.method public te()I
    .locals 1

    .prologue
    .line 140
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/adw;->aY(I)Lcom/kingroot/common/ipc/IpcResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/common/ipc/IpcResult;->readInt()I

    move-result v0

    return v0
.end method

.method public tf()Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;
    .locals 1

    .prologue
    .line 150
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/adw;->aY(I)Lcom/kingroot/common/ipc/IpcResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/common/ipc/IpcResult;->kG()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kingmaster/network/download/KuDownloadInfo;

    return-object v0
.end method

.method public tg()I
    .locals 1

    .prologue
    .line 160
    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/adw;->aY(I)Lcom/kingroot/common/ipc/IpcResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/common/ipc/IpcResult;->readInt()I

    move-result v0

    return v0
.end method

.method public th()I
    .locals 1

    .prologue
    .line 170
    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/adw;->aY(I)Lcom/kingroot/common/ipc/IpcResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/common/ipc/IpcResult;->readInt()I

    move-result v0

    return v0
.end method

.method public ti()I
    .locals 1

    .prologue
    .line 179
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/adw;->aY(I)Lcom/kingroot/common/ipc/IpcResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/common/ipc/IpcResult;->readInt()I

    move-result v0

    return v0
.end method

.method public tj()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/adw;->aY(I)Lcom/kingroot/common/ipc/IpcResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/common/ipc/IpcResult;->readString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tk()Z
    .locals 1

    .prologue
    .line 187
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/adw;->aY(I)Lcom/kingroot/common/ipc/IpcResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/common/ipc/IpcResult;->readBoolean()Z

    move-result v0

    return v0
.end method

.method public tl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/adw;->aY(I)Lcom/kingroot/common/ipc/IpcResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/common/ipc/IpcResult;->readString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tm()I
    .locals 1

    .prologue
    .line 200
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/adw;->aY(I)Lcom/kingroot/common/ipc/IpcResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/common/ipc/IpcResult;->readInt()I

    move-result v0

    return v0
.end method

.method public tn()Ljava/lang/String;
    .locals 2

    .prologue
    .line 211
    invoke-static {}, Lcom/kingroot/kinguser/bgr;->iZ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    invoke-static {}, Lcom/kingroot/kinguser/ru;->ja()Ljava/lang/String;

    move-result-object v0

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Download"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 217
    :goto_0
    return-object v0

    .line 215
    :cond_0
    const-string v0, "download"

    invoke-static {v0}, Lcom/kingroot/kinguser/zl;->dx(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
