.class public abstract Lcom/kingroot/kinguser/aov;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/up;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract IN()Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;
.end method

.method public a(ILcom/kingroot/common/ipc/ArgsPack;Lcom/kingroot/common/ipc/IpcResult;)V
    .locals 4

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/kingroot/kinguser/aov;->IN()Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;

    move-result-object v2

    .line 20
    packed-switch p1, :pswitch_data_0

    .line 62
    :goto_0
    :pswitch_0
    return-void

    .line 23
    :pswitch_1
    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    invoke-static {v1}, Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;

    move-result-object v1

    invoke-virtual {v2, v0, v3, v1}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->a(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;ILcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;)V

    goto :goto_0

    .line 26
    :pswitch_2
    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/net/download/NetworkChangedRemoteListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kingroot/kinguser/distribution/net/download/NetworkChangedRemoteListener;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->a(Lcom/kingroot/kinguser/distribution/net/download/NetworkChangedRemoteListener;)V

    goto :goto_0

    .line 29
    :pswitch_3
    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->hK(Ljava/lang/String;)V

    goto :goto_0

    .line 32
    :pswitch_4
    invoke-virtual {v2}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->KA()V

    goto :goto_0

    .line 35
    :pswitch_5
    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    invoke-static {v1}, Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->a(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;)V

    goto :goto_0

    .line 38
    :pswitch_6
    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->a(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    goto :goto_0

    .line 41
    :pswitch_7
    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->hx(Ljava/lang/String;)V

    goto :goto_0

    .line 44
    :pswitch_8
    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->hL(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :pswitch_9
    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v2, v0, v1}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->z(Ljava/lang/String;Z)V

    goto :goto_0

    .line 50
    :pswitch_a
    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v2, v0, v1}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->a(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;Z)V

    .line 53
    :pswitch_b
    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    invoke-static {v1}, Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->a(Ljava/lang/String;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;)V

    goto/16 :goto_0

    .line 56
    :pswitch_c
    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->a(Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;)V

    goto/16 :goto_0

    .line 59
    :pswitch_d
    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/net/download/NetworkChangedRemoteListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kingroot/kinguser/distribution/net/download/NetworkChangedRemoteListener;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->b(Lcom/kingroot/kinguser/distribution/net/download/NetworkChangedRemoteListener;)V

    goto/16 :goto_0

    .line 20
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_a
        :pswitch_9
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public c(ILcom/kingroot/common/ipc/ArgsPack;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/kingroot/kinguser/aov;->IN()Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;

    move-result-object v1

    .line 67
    packed-switch p1, :pswitch_data_0

    .line 77
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 69
    :pswitch_1
    invoke-interface {v1}, Lcom/kingroot/kinguser/aoy;->Ky()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 71
    :pswitch_2
    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/kingroot/kinguser/aoy;->hM(Ljava/lang/String;)Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

    move-result-object v0

    goto :goto_0

    .line 73
    :pswitch_3
    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/kingroot/kinguser/aoy;->hN(Ljava/lang/String;)Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

    move-result-object v0

    goto :goto_0

    .line 75
    :pswitch_4
    invoke-interface {v1}, Lcom/kingroot/kinguser/aoy;->Kz()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
