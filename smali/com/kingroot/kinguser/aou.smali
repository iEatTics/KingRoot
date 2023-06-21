.class public abstract Lcom/kingroot/kinguser/aou;
.super Lcom/kingroot/kinguser/uo;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/aoz;


# instance fields
.field private aGy:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/kingroot/kinguser/aov;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/kingroot/kinguser/uo;-><init>()V

    .line 41
    invoke-virtual {p0}, Lcom/kingroot/kinguser/aou;->IK()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/aou;->aGy:Ljava/lang/Class;

    .line 42
    return-void
.end method


# virtual methods
.method public abstract IK()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/kingroot/kinguser/aov;",
            ">;"
        }
    .end annotation
.end method

.method public Ky()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/aou;->aY(I)Lcom/kingroot/common/ipc/IpcResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/common/ipc/IpcResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public Kz()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/aou;->aY(I)Lcom/kingroot/common/ipc/IpcResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/common/ipc/IpcResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public a(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;ILcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;)V
    .locals 6
    .param p1    # Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 48
    if-nez p3, :cond_0

    .line 49
    new-instance v0, Lcom/kingroot/common/ipc/ArgsPack;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x0

    aput-object v2, v1, v5

    invoke-direct {v0, v1}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p0, v3, v0}, Lcom/kingroot/kinguser/aou;->a(ILcom/kingroot/common/ipc/ArgsPack;)V

    .line 53
    :goto_0
    return-void

    .line 51
    :cond_0
    new-instance v0, Lcom/kingroot/common/ipc/ArgsPack;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-interface {p3}, Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-direct {v0, v1}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p0, v3, v0}, Lcom/kingroot/kinguser/aou;->a(ILcom/kingroot/common/ipc/ArgsPack;)V

    goto :goto_0
.end method

.method public a(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 4

    .prologue
    .line 102
    const/4 v0, 0x6

    new-instance v1, Lcom/kingroot/common/ipc/ArgsPack;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, v2}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/aou;->a(ILcom/kingroot/common/ipc/ArgsPack;)V

    .line 103
    return-void
.end method

.method public a(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;)V
    .locals 5
    .param p1    # Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 92
    const/4 v1, 0x5

    new-instance v2, Lcom/kingroot/common/ipc/ArgsPack;

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, v3, v0

    const/4 v4, 0x1

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    aput-object v0, v3, v4

    invoke-direct {v2, v3}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p0, v1, v2}, Lcom/kingroot/kinguser/aou;->a(ILcom/kingroot/common/ipc/ArgsPack;)V

    .line 93
    return-void

    .line 92
    :cond_0
    invoke-interface {p2}, Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;)V
    .locals 5
    .param p1    # Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 97
    const/16 v1, 0x10

    new-instance v2, Lcom/kingroot/common/ipc/ArgsPack;

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    aput-object v0, v3, v4

    invoke-direct {v2, v3}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p0, v1, v2}, Lcom/kingroot/kinguser/aou;->a(ILcom/kingroot/common/ipc/ArgsPack;)V

    .line 98
    return-void

    .line 97
    :cond_0
    invoke-interface {p1}, Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/kingroot/kinguser/distribution/net/download/NetworkChangedRemoteListener;)V
    .locals 5
    .param p1    # Lcom/kingroot/kinguser/distribution/net/download/NetworkChangedRemoteListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x1

    .line 57
    new-instance v0, Lcom/kingroot/common/ipc/ArgsPack;

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p1}, Lcom/kingroot/kinguser/distribution/net/download/NetworkChangedRemoteListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p0, v4, v0}, Lcom/kingroot/kinguser/aou;->a(ILcom/kingroot/common/ipc/ArgsPack;)V

    .line 58
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;)V
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 127
    const/16 v1, 0xe

    new-instance v2, Lcom/kingroot/common/ipc/ArgsPack;

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, v3, v0

    const/4 v4, 0x1

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    aput-object v0, v3, v4

    invoke-direct {v2, v3}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p0, v1, v2}, Lcom/kingroot/kinguser/aou;->a(ILcom/kingroot/common/ipc/ArgsPack;)V

    .line 128
    return-void

    .line 127
    :cond_0
    invoke-interface {p2}, Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method public b(Lcom/kingroot/kinguser/distribution/net/download/NetworkChangedRemoteListener;)V
    .locals 5
    .param p1    # Lcom/kingroot/kinguser/distribution/net/download/NetworkChangedRemoteListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 62
    const/16 v0, 0x11

    new-instance v1, Lcom/kingroot/common/ipc/ArgsPack;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p1}, Lcom/kingroot/kinguser/distribution/net/download/NetworkChangedRemoteListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/aou;->a(ILcom/kingroot/common/ipc/ArgsPack;)V

    .line 63
    return-void
.end method

.method public hK(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 67
    const/4 v0, 0x2

    new-instance v1, Lcom/kingroot/common/ipc/ArgsPack;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, v2}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/aou;->a(ILcom/kingroot/common/ipc/ArgsPack;)V

    .line 68
    return-void
.end method

.method public hL(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 77
    const/16 v0, 0xa

    new-instance v1, Lcom/kingroot/common/ipc/ArgsPack;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, v2}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/aou;->a(ILcom/kingroot/common/ipc/ArgsPack;)V

    .line 78
    return-void
.end method

.method public hM(Ljava/lang/String;)Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;
    .locals 4

    .prologue
    .line 82
    const/16 v0, 0x8

    new-instance v1, Lcom/kingroot/common/ipc/ArgsPack;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, v2}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/aou;->b(ILcom/kingroot/common/ipc/ArgsPack;)Lcom/kingroot/common/ipc/IpcResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/common/ipc/IpcResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

    return-object v0
.end method

.method public hN(Ljava/lang/String;)Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;
    .locals 4

    .prologue
    .line 87
    const/16 v0, 0x9

    new-instance v1, Lcom/kingroot/common/ipc/ArgsPack;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, v2}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/aou;->b(ILcom/kingroot/common/ipc/ArgsPack;)Lcom/kingroot/common/ipc/IpcResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/common/ipc/IpcResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

    return-object v0
.end method

.method public hx(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 112
    const/16 v0, 0xb

    new-instance v1, Lcom/kingroot/common/ipc/ArgsPack;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, v2}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/aou;->a(ILcom/kingroot/common/ipc/ArgsPack;)V

    .line 113
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
    .line 137
    iget-object v0, p0, Lcom/kingroot/kinguser/aou;->aGy:Ljava/lang/Class;

    return-object v0
.end method

.method public z(Ljava/lang/String;Z)V
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 117
    const/16 v0, 0xd

    new-instance v1, Lcom/kingroot/common/ipc/ArgsPack;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/aou;->a(ILcom/kingroot/common/ipc/ArgsPack;)V

    .line 118
    return-void
.end method
