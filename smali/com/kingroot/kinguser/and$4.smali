.class final Lcom/kingroot/kinguser/and$4;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/and;->a(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Lcom/kingcore/uilib/TextRoundCornerProgressBar;Ljava/lang/String;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic aAp:Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;

.field final synthetic aAr:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

.field final synthetic aAs:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

.field final synthetic aAt:Ljava/lang/String;

.field final synthetic avT:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;Lcom/kingcore/uilib/TextRoundCornerProgressBar;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/kingroot/kinguser/and$4;->avT:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    iput-object p2, p0, Lcom/kingroot/kinguser/and$4;->aAp:Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;

    iput-object p3, p0, Lcom/kingroot/kinguser/and$4;->aAr:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    iput-object p4, p0, Lcom/kingroot/kinguser/and$4;->aAs:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    iput-object p5, p0, Lcom/kingroot/kinguser/and$4;->aAt:Ljava/lang/String;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 222
    invoke-static {}, Lcom/kingroot/kinguser/amz;->II()Lcom/kingroot/kinguser/amz;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/and$4;->avT:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/amz;->hM(Ljava/lang/String;)Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

    move-result-object v0

    .line 223
    if-nez v0, :cond_0

    .line 224
    iget-object v1, p0, Lcom/kingroot/kinguser/and$4;->avT:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    iget-object v2, p0, Lcom/kingroot/kinguser/and$4;->aAp:Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;

    iget-object v3, p0, Lcom/kingroot/kinguser/and$4;->aAr:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    invoke-static {v1, v2, v3}, Lcom/kingroot/kinguser/and;->b(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;)V

    .line 226
    :cond_0
    iget-object v1, p0, Lcom/kingroot/kinguser/and$4;->avT:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    invoke-static {v1}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->j(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/apu;->h(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;)Ljava/io/File;

    move-result-object v1

    .line 228
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/kingroot/kinguser/and$4;->avT:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->Ii()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 229
    iget-object v2, p0, Lcom/kingroot/kinguser/and$4;->avT:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    const/4 v3, 0x5

    iput v3, v2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->appStatus:I

    .line 232
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/kingroot/kinguser/and$4;->avT:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->Ij()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 233
    iget-object v1, p0, Lcom/kingroot/kinguser/and$4;->avT:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    const/4 v2, 0x0

    iput v2, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->appStatus:I

    .line 235
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/aso;->Ol()Lcom/kingroot/kinguser/aso;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/and$4;->avT:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    iget-object v2, v2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/aso;->ix(Ljava/lang/String;)I

    move-result v1

    .line 242
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v2

    iget-object v3, p0, Lcom/kingroot/kinguser/and$4;->avT:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    iget-object v3, v3, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->pkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zh;->du(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/kingroot/kinguser/and$4;->avT:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    iget-boolean v2, v2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->isUpdate:Z

    if-nez v2, :cond_3

    .line 243
    iget-object v2, p0, Lcom/kingroot/kinguser/and$4;->avT:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    const/16 v3, 0x8

    iput v3, v2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->appStatus:I

    .line 246
    :cond_3
    new-instance v2, Lcom/kingroot/kinguser/and$4$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/kingroot/kinguser/and$4$1;-><init>(Lcom/kingroot/kinguser/and$4;Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;I)V

    invoke-static {v2}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 252
    return-void
.end method
