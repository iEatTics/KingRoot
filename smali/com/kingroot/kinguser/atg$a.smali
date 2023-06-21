.class public Lcom/kingroot/kinguser/atg$a;
.super Lcom/kingroot/kinguser/aov;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/atg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/kingroot/kinguser/aov;-><init>()V

    return-void
.end method


# virtual methods
.method protected IN()Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;
    .locals 1

    .prologue
    .line 62
    invoke-static {}, Lcom/kingroot/kinguser/ath;->OZ()Lcom/kingroot/kinguser/ath;

    move-result-object v0

    return-object v0
.end method

.method public a(ILcom/kingroot/common/ipc/ArgsPack;Lcom/kingroot/common/ipc/IpcResult;)V
    .locals 6

    .prologue
    .line 67
    invoke-super {p0, p1, p2, p3}, Lcom/kingroot/kinguser/aov;->a(ILcom/kingroot/common/ipc/ArgsPack;Lcom/kingroot/common/ipc/IpcResult;)V

    .line 68
    packed-switch p1, :pswitch_data_0

    .line 78
    :goto_0
    return-void

    .line 71
    :pswitch_0
    invoke-static {}, Lcom/kingroot/kinguser/ath;->OZ()Lcom/kingroot/kinguser/ath;

    move-result-object v0

    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;

    .line 72
    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 73
    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    invoke-static {v3}, Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;

    move-result-object v3

    .line 74
    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 75
    invoke-virtual {p2}, Lcom/kingroot/common/ipc/ArgsPack;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/IBinder;

    invoke-static {v5}, Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;

    move-result-object v5

    .line 71
    invoke-virtual/range {v0 .. v5}, Lcom/kingroot/kinguser/ath;->a(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;ILcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;ZLcom/kingroot/kinguser/gamebox/common/IAppInstallListener;)V

    goto :goto_0

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method
