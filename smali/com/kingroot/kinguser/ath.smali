.class public Lcom/kingroot/kinguser/ath;
.super Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/ath$a;
    }
.end annotation


# static fields
.field private static final sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/ath;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private aNO:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;",
            ">;"
        }
    .end annotation
.end field

.field private aNP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingroot/kinguser/ath$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/kingroot/kinguser/ath$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/ath$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/ath;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ath;->aNO:Ljava/util/Map;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ath;->aNP:Ljava/util/Map;

    .line 50
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/ath$1;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/kingroot/kinguser/ath;-><init>()V

    return-void
.end method

.method public static OZ()Lcom/kingroot/kinguser/ath;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/kingroot/kinguser/ath;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ath;

    return-object v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/ath;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/kingroot/kinguser/ath;->aNO:Ljava/util/Map;

    return-object v0
.end method

.method private a(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;ZLcom/kingroot/kinguser/gamebox/common/IAppInstallListener;)V
    .locals 3
    .param p1    # Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 164
    new-instance v0, Lcom/kingroot/kinguser/ath$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/ath$a;-><init>(Lcom/kingroot/kinguser/ath$1;)V

    .line 165
    iput-boolean p2, v0, Lcom/kingroot/kinguser/ath$a;->azX:Z

    .line 166
    iput-object p3, v0, Lcom/kingroot/kinguser/ath$a;->aNQ:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;

    .line 167
    iget-object v1, p0, Lcom/kingroot/kinguser/ath;->aNP:Ljava/util/Map;

    iget-object v2, p1, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->apkUrl:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    return-void
.end method

.method private d(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 6

    .prologue
    .line 57
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    const/4 v4, 0x0

    new-instance v5, Lcom/kingroot/kinguser/ath$2;

    invoke-direct {v5, p0, p1}, Lcom/kingroot/kinguser/ath$2;-><init>(Lcom/kingroot/kinguser/ath;Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 68
    return-void
.end method

.method private e(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)Lcom/kingroot/kinguser/ath$a;
    .locals 2
    .param p1    # Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 171
    iget-object v0, p0, Lcom/kingroot/kinguser/ath;->aNP:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->getOriginalUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ath$a;

    return-object v0
.end method

.method private hA(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/kingroot/kinguser/ath;->aNP:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    return-void
.end method

.method private m(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;)V
    .locals 3

    .prologue
    .line 143
    if-nez p1, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    iget-object v0, p1, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->apkUrl:Ljava/lang/String;

    .line 148
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/kingroot/kinguser/ath;->aNO:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 149
    iget-object v1, p0, Lcom/kingroot/kinguser/ath;->aNO:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    :cond_2
    iget-object v0, p1, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->reportInfo:Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;

    if-eqz v0, :cond_0

    .line 152
    invoke-static {}, Lcom/kingroot/kinguser/ana;->IO()Lcom/kingroot/kinguser/anc;

    move-result-object v0

    iget-object v1, p1, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->reportInfo:Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;

    const/16 v2, 0xa

    invoke-interface {v0, v1, v2}, Lcom/kingroot/kinguser/anc;->a(Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;I)V

    goto :goto_0
.end method


# virtual methods
.method public IE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    const-class v0, Lcom/kingroot/kinguser/ath;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;ILcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;)V
    .locals 0
    .param p1    # Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ath;->m(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;)V

    .line 84
    invoke-super {p0, p1, p2, p3}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->a(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;ILcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;)V

    .line 85
    return-void
.end method

.method public a(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;ILcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;ZLcom/kingroot/kinguser/gamebox/common/IAppInstallListener;)V
    .locals 0
    .param p1    # Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 76
    invoke-direct {p0, p1, p4, p5}, Lcom/kingroot/kinguser/ath;->a(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;ZLcom/kingroot/kinguser/gamebox/common/IAppInstallListener;)V

    .line 78
    invoke-virtual {p0, p1, p2, p3}, Lcom/kingroot/kinguser/ath;->a(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;ILcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;)V

    .line 79
    return-void
.end method

.method public a(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 2

    .prologue
    .line 101
    if-eqz p1, :cond_0

    .line 102
    iget-object v0, p0, Lcom/kingroot/kinguser/ath;->aNO:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->getOriginalUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    :cond_0
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->a(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    .line 105
    return-void
.end method

.method protected hz(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 159
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->hz(Ljava/lang/String;)V

    .line 160
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ath;->hA(Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method public onComplete(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 6

    .prologue
    .line 109
    if-eqz p1, :cond_1

    .line 111
    iget-object v0, p0, Lcom/kingroot/kinguser/ath;->aNO:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->getOriginalUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;

    .line 112
    if-eqz v0, :cond_0

    .line 114
    invoke-static {}, Lcom/kingroot/kinguser/ana;->IO()Lcom/kingroot/kinguser/anc;

    move-result-object v1

    iget-object v2, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->reportInfo:Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/kingroot/kinguser/anc;->a(Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;I)V

    .line 116
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ath;->e(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)Lcom/kingroot/kinguser/ath$a;

    move-result-object v1

    .line 117
    if-eqz v1, :cond_0

    iget-boolean v2, v1, Lcom/kingroot/kinguser/ath$a;->azX:Z

    if-eqz v2, :cond_0

    .line 119
    invoke-static {}, Lcom/kingroot/kinguser/aso;->Ol()Lcom/kingroot/kinguser/aso;

    move-result-object v2

    iget-object v3, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->pkgName:Ljava/lang/String;

    new-instance v4, Lcom/kingroot/kinguser/gamebox/download/GameBoxDownloadMgrClient$3;

    invoke-direct {v4, p0, v0}, Lcom/kingroot/kinguser/gamebox/download/GameBoxDownloadMgrClient$3;-><init>(Lcom/kingroot/kinguser/ath;Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;)V

    invoke-virtual {v2, v3, v4}, Lcom/kingroot/kinguser/aso;->a(Ljava/lang/String;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;)V

    .line 130
    invoke-static {}, Lcom/kingroot/kinguser/aso;->Ol()Lcom/kingroot/kinguser/aso;

    move-result-object v2

    new-instance v3, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;

    invoke-virtual {p1}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->KI()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->pkgName:Ljava/lang/String;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->apkMd5:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v0}, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/kingroot/kinguser/ath$a;->aNQ:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;

    invoke-virtual {v2, v3, v0}, Lcom/kingroot/kinguser/aso;->a(Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;)V

    .line 136
    :cond_0
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ath;->d(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    .line 139
    :cond_1
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->onComplete(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    .line 140
    return-void
.end method

.method public onFailed(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 3

    .prologue
    .line 89
    if-eqz p1, :cond_1

    .line 90
    iget-object v0, p0, Lcom/kingroot/kinguser/ath;->aNO:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->getOriginalUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;

    .line 91
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->reportInfo:Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;

    if-eqz v1, :cond_0

    .line 92
    invoke-static {}, Lcom/kingroot/kinguser/ana;->IO()Lcom/kingroot/kinguser/anc;

    move-result-object v1

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->reportInfo:Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/kingroot/kinguser/anc;->a(Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;I)V

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ath;->aNO:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->getOriginalUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    :cond_1
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->onFailed(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    .line 97
    return-void
.end method
