.class public Lcom/kingroot/kinguser/amz;
.super Lcom/kingroot/kinguser/aou;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/amz$a;
    }
.end annotation


# static fields
.field private static final sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/amz;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/kingroot/kinguser/amz$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/amz$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/amz;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/kingroot/kinguser/aou;-><init>()V

    .line 58
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/amz$1;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/kingroot/kinguser/amz;-><init>()V

    return-void
.end method

.method public static II()Lcom/kingroot/kinguser/amz;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/kingroot/kinguser/amz;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/amz;

    return-object v0
.end method


# virtual methods
.method public IF()V
    .locals 1

    .prologue
    .line 128
    const/16 v0, 0x6b

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/amz;->aX(I)V

    .line 129
    return-void
.end method

.method public IG()V
    .locals 1

    .prologue
    .line 143
    const/16 v0, 0x6d

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/amz;->aX(I)V

    .line 144
    return-void
.end method

.method public IJ()V
    .locals 1

    .prologue
    .line 122
    const/16 v0, 0x6f

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/amz;->aX(I)V

    .line 123
    return-void
.end method

.method public IK()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/kingroot/kinguser/aov;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    const-class v0, Lcom/kingroot/kinguser/amz$a;

    return-object v0
.end method

.method public IL()Ljava/util/List;
    .locals 5
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
    .line 157
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 158
    invoke-virtual {p0}, Lcom/kingroot/kinguser/amz;->Ky()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

    .line 159
    invoke-virtual {v0}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->KJ()Lcom/kingroot/kinguser/boq;

    move-result-object v3

    sget-object v4, Lcom/kingroot/kinguser/boq;->bFC:Lcom/kingroot/kinguser/boq;

    if-ne v3, v4, :cond_0

    .line 160
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 163
    :cond_1
    return-object v1
.end method

.method public a(Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppHistoryListener;)V
    .locals 5
    .param p1    # Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppHistoryListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 108
    const/16 v1, 0x67

    new-instance v2, Lcom/kingroot/common/ipc/ArgsPack;

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 109
    :goto_0
    aput-object v0, v3, v4

    invoke-direct {v2, v3}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    .line 108
    invoke-virtual {p0, v1, v2}, Lcom/kingroot/kinguser/amz;->a(ILcom/kingroot/common/ipc/ArgsPack;)V

    .line 110
    return-void

    .line 109
    :cond_0
    invoke-interface {p1}, Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppHistoryListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppStatusListener;)V
    .locals 5

    .prologue
    .line 152
    const/16 v1, 0x71

    new-instance v2, Lcom/kingroot/common/ipc/ArgsPack;

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 153
    :goto_0
    aput-object v0, v3, v4

    invoke-direct {v2, v3}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    .line 152
    invoke-virtual {p0, v1, v2}, Lcom/kingroot/kinguser/amz;->a(ILcom/kingroot/common/ipc/ArgsPack;)V

    .line 154
    return-void

    .line 153
    :cond_0
    invoke-interface {p1}, Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IOnWifiAutoDownloadListener;)V
    .locals 5

    .prologue
    .line 137
    const/16 v1, 0x70

    new-instance v2, Lcom/kingroot/common/ipc/ArgsPack;

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 138
    :goto_0
    aput-object v0, v3, v4

    invoke-direct {v2, v3}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    .line 137
    invoke-virtual {p0, v1, v2}, Lcom/kingroot/kinguser/amz;->a(ILcom/kingroot/common/ipc/ArgsPack;)V

    .line 139
    return-void

    .line 138
    :cond_0
    invoke-interface {p1}, Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IOnWifiAutoDownloadListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;ILcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;ZLcom/kingroot/kinguser/gamebox/common/IAppInstallListener;)V
    .locals 6
    .param p1    # Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 75
    const/16 v2, 0x65

    new-instance v3, Lcom/kingroot/common/ipc/ArgsPack;

    const/4 v0, 0x5

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v0, 0x1

    .line 77
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x2

    if-nez p3, :cond_0

    move-object v0, v1

    .line 78
    :goto_0
    aput-object v0, v4, v5

    const/4 v0, 0x3

    .line 79
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x4

    if-nez p5, :cond_1

    .line 80
    :goto_1
    aput-object v1, v4, v0

    invoke-direct {v3, v4}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    .line 75
    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/amz;->a(ILcom/kingroot/common/ipc/ArgsPack;)V

    .line 81
    return-void

    .line 78
    :cond_0
    invoke-interface {p3}, Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0

    .line 80
    :cond_1
    invoke-interface {p5}, Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    goto :goto_1
.end method

.method public b(Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppStatusListener;)V
    .locals 5
    .param p1    # Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppStatusListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 117
    const/16 v1, 0x6e

    new-instance v2, Lcom/kingroot/common/ipc/ArgsPack;

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 118
    :goto_0
    aput-object v0, v3, v4

    invoke-direct {v2, v3}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    .line 117
    invoke-virtual {p0, v1, v2}, Lcom/kingroot/kinguser/amz;->a(ILcom/kingroot/common/ipc/ArgsPack;)V

    .line 119
    return-void

    .line 118
    :cond_0
    invoke-interface {p1}, Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method public b(Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IOnWifiAutoDownloadListener;)V
    .locals 5

    .prologue
    .line 132
    const/16 v1, 0x6c

    new-instance v2, Lcom/kingroot/common/ipc/ArgsPack;

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 133
    :goto_0
    aput-object v0, v3, v4

    invoke-direct {v2, v3}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    .line 132
    invoke-virtual {p0, v1, v2}, Lcom/kingroot/kinguser/amz;->a(ILcom/kingroot/common/ipc/ArgsPack;)V

    .line 134
    return-void

    .line 133
    :cond_0
    invoke-interface {p1}, Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IOnWifiAutoDownloadListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method public c(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;)V
    .locals 4
    .param p1    # Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 62
    const/16 v0, 0x69

    new-instance v1, Lcom/kingroot/common/ipc/ArgsPack;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, v2}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/amz;->a(ILcom/kingroot/common/ipc/ArgsPack;)V

    .line 63
    return-void
.end method

.method public g(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;)V
    .locals 4

    .prologue
    .line 89
    const/16 v0, 0x66

    new-instance v1, Lcom/kingroot/common/ipc/ArgsPack;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, v2}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/amz;->a(ILcom/kingroot/common/ipc/ArgsPack;)V

    .line 90
    return-void
.end method

.method public hy(Ljava/lang/String;)Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;
    .locals 4

    .prologue
    .line 99
    const/16 v0, 0x68

    new-instance v1, Lcom/kingroot/common/ipc/ArgsPack;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, v2}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/amz;->b(ILcom/kingroot/common/ipc/ArgsPack;)Lcom/kingroot/common/ipc/IpcResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/common/ipc/IpcResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;

    return-object v0
.end method
