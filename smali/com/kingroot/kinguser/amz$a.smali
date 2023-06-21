.class public Lcom/kingroot/kinguser/amz$a;
.super Lcom/kingroot/kinguser/aov;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/amz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/kingroot/kinguser/aov;-><init>()V

    return-void
.end method


# virtual methods
.method protected IN()Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;
    .locals 1

    .prologue
    .line 170
    invoke-static {}, Lcom/kingroot/kinguser/amy;->IB()Lcom/kingroot/kinguser/amy;

    move-result-object v0

    return-object v0
.end method

.method public a(ILcom/kingroot/common/ipc/ArgsPack;Lcom/kingroot/common/ipc/IpcResult;)V
    .locals 6

    .prologue
    .line 175
    invoke-super {p0, p1, p2, p3}, Lcom/kingroot/kinguser/aov;->a(ILcom/kingroot/common/ipc/ArgsPack;Lcom/kingroot/common/ipc/IpcResult;)V

    .line 176
    packed-switch p1, :pswitch_data_0

    .line 216
    :goto_0
    :pswitch_0
    return-void

    .line 179
    :pswitch_1
    invoke-static {}, Lcom/kingroot/kinguser/amy;->IB()Lcom/kingroot/kinguser/amy;

    move-result-object v0

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;

    .line 180
    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 181
    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    invoke-static {v3}, Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;

    move-result-object v3

    .line 182
    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 183
    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/IBinder;

    invoke-static {v5}, Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;

    move-result-object v5

    .line 179
    invoke-virtual/range {v0 .. v5}, Lcom/kingroot/kinguser/amy;->a(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;ILcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;ZLcom/kingroot/kinguser/gamebox/common/IAppInstallListener;)V

    goto :goto_0

    .line 186
    :pswitch_2
    invoke-static {}, Lcom/kingroot/kinguser/amy;->IB()Lcom/kingroot/kinguser/amy;

    move-result-object v1

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/amy;->g(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;)V

    goto :goto_0

    .line 189
    :pswitch_3
    invoke-static {}, Lcom/kingroot/kinguser/amy;->IB()Lcom/kingroot/kinguser/amy;

    move-result-object v1

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppHistoryListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppHistoryListener;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/amy;->a(Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppHistoryListener;)V

    goto :goto_0

    .line 192
    :pswitch_4
    invoke-static {}, Lcom/kingroot/kinguser/amy;->IB()Lcom/kingroot/kinguser/amy;

    move-result-object v1

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/amy;->c(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;)V

    goto :goto_0

    .line 195
    :pswitch_5
    invoke-static {}, Lcom/kingroot/kinguser/amy;->IB()Lcom/kingroot/kinguser/amy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/amy;->IF()V

    goto :goto_0

    .line 198
    :pswitch_6
    invoke-static {}, Lcom/kingroot/kinguser/amy;->IB()Lcom/kingroot/kinguser/amy;

    move-result-object v1

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IOnWifiAutoDownloadListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IOnWifiAutoDownloadListener;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/amy;->b(Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IOnWifiAutoDownloadListener;)V

    goto :goto_0

    .line 201
    :pswitch_7
    invoke-static {}, Lcom/kingroot/kinguser/amy;->IB()Lcom/kingroot/kinguser/amy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/amy;->IG()V

    goto/16 :goto_0

    .line 204
    :pswitch_8
    invoke-static {}, Lcom/kingroot/kinguser/amy;->IB()Lcom/kingroot/kinguser/amy;

    move-result-object v1

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppStatusListener;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/amy;->b(Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppStatusListener;)V

    goto/16 :goto_0

    .line 207
    :pswitch_9
    invoke-static {}, Lcom/kingroot/kinguser/amy;->IB()Lcom/kingroot/kinguser/amy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/amy;->ID()V

    goto/16 :goto_0

    .line 210
    :pswitch_a
    invoke-static {}, Lcom/kingroot/kinguser/amy;->IB()Lcom/kingroot/kinguser/amy;

    move-result-object v1

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IOnWifiAutoDownloadListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IOnWifiAutoDownloadListener;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/amy;->a(Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IOnWifiAutoDownloadListener;)V

    goto/16 :goto_0

    .line 213
    :pswitch_b
    invoke-static {}, Lcom/kingroot/kinguser/amy;->IB()Lcom/kingroot/kinguser/amy;

    move-result-object v1

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppStatusListener;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/amy;->a(Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppStatusListener;)V

    goto/16 :goto_0

    .line 176
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public c(ILcom/kingroot/common/ipc/ArgsPack;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 220
    packed-switch p1, :pswitch_data_0

    .line 226
    :pswitch_0
    invoke-super {p0, p1, p2}, Lcom/kingroot/kinguser/aov;->c(ILcom/kingroot/common/ipc/ArgsPack;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    .line 222
    :pswitch_1
    invoke-static {}, Lcom/kingroot/kinguser/amy;->IB()Lcom/kingroot/kinguser/amy;

    move-result-object v1

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/amy;->hy(Ljava/lang/String;)Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;

    move-result-object v0

    goto :goto_0

    .line 224
    :pswitch_2
    invoke-static {}, Lcom/kingroot/kinguser/amy;->IB()Lcom/kingroot/kinguser/amy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/amy;->IC()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 220
    :pswitch_data_0
    .packed-switch 0x68
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
