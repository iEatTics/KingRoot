.class public Lcom/kingroot/kinguser/distribution/appsmarket/core/AppMarketInstallerService$2;
.super Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/aln;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/aln;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/aln;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/core/AppMarketInstallerService$2;->this$0:Lcom/kingroot/kinguser/aln;

    invoke-direct {p0}, Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onState(Ljava/lang/String;ILjava/lang/String;)V
    .locals 6

    .prologue
    const/16 v5, 0x1e

    const/4 v4, 0x4

    .line 51
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/core/AppMarketInstallerService$2;->this$0:Lcom/kingroot/kinguser/aln;

    invoke-static {v0}, Lcom/kingroot/kinguser/aln;->a(Lcom/kingroot/kinguser/aln;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallbackList;

    .line 52
    if-eqz v0, :cond_1

    .line 53
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 54
    :goto_0
    if-lez v1, :cond_0

    .line 55
    add-int/lit8 v2, v1, -0x1

    .line 57
    :try_start_0
    invoke-virtual {v0, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;

    invoke-interface {v1, p1, p2, p3}, Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;->onState(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 60
    goto :goto_0

    .line 58
    :catch_0
    move-exception v1

    move v1, v2

    .line 60
    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/core/AppMarketInstallerService$2;->this$0:Lcom/kingroot/kinguser/aln;

    invoke-static {v0}, Lcom/kingroot/kinguser/aln;->b(Lcom/kingroot/kinguser/aln;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;

    .line 66
    const/4 v1, 0x0

    .line 67
    if-eqz v0, :cond_2

    .line 68
    iget-object v1, v0, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->reportInfo:Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;

    .line 69
    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/core/AppMarketInstallerService$2;->this$0:Lcom/kingroot/kinguser/aln;

    iget-object v3, v0, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->appName:Ljava/lang/String;

    invoke-static {v2, v3, p2}, Lcom/kingroot/kinguser/aln;->a(Lcom/kingroot/kinguser/aln;Ljava/lang/String;I)V

    .line 71
    :cond_2
    const/16 v2, 0xa

    if-ne p2, v2, :cond_8

    .line 72
    if-eqz v1, :cond_3

    .line 74
    invoke-static {}, Lcom/kingroot/kinguser/ana;->IO()Lcom/kingroot/kinguser/anc;

    move-result-object v2

    invoke-interface {v2, v1, v5}, Lcom/kingroot/kinguser/anc;->a(Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;I)V

    .line 76
    :cond_3
    if-eqz v0, :cond_4

    iget v1, v0, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->cid:I

    if-eqz v1, :cond_4

    .line 77
    invoke-static {}, Lcom/kingroot/kinguser/ana;->IO()Lcom/kingroot/kinguser/anc;

    move-result-object v1

    iget v2, v0, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->cid:I

    iget-object v3, v0, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->pkgName:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-interface {v1, v2, v3, v4, p3}, Lcom/kingroot/kinguser/anc;->a(ILjava/lang/String;ILjava/lang/String;)V

    .line 108
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/core/AppMarketInstallerService$2;->this$0:Lcom/kingroot/kinguser/aln;

    invoke-static {v1, p2}, Lcom/kingroot/kinguser/aln;->a(Lcom/kingroot/kinguser/aln;I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 109
    if-eqz v0, :cond_6

    .line 112
    iget-boolean v1, v0, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->aNf:Z

    if-eqz v1, :cond_5

    .line 113
    iget-object v0, v0, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->apkPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/kingroot/kinguser/rs;->deleteFile(Ljava/lang/String;)Z

    .line 116
    :cond_5
    invoke-static {}, Lcom/kingroot/kinguser/amz;->II()Lcom/kingroot/kinguser/amz;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/amz;->hx(Ljava/lang/String;)V

    .line 118
    invoke-static {}, Lcom/kingroot/kinguser/amz;->II()Lcom/kingroot/kinguser/amz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/amz;->IF()V

    .line 120
    invoke-static {}, Lcom/kingroot/kinguser/amz;->II()Lcom/kingroot/kinguser/amz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/amz;->IJ()V

    .line 125
    :cond_6
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/core/AppMarketInstallerService$2;->this$0:Lcom/kingroot/kinguser/aln;

    invoke-static {v0, p2}, Lcom/kingroot/kinguser/aln;->b(Lcom/kingroot/kinguser/aln;I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 128
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/core/AppMarketInstallerService$2;->this$0:Lcom/kingroot/kinguser/aln;

    invoke-static {v0}, Lcom/kingroot/kinguser/aln;->a(Lcom/kingroot/kinguser/aln;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/core/AppMarketInstallerService$2;->this$0:Lcom/kingroot/kinguser/aln;

    invoke-static {v0}, Lcom/kingroot/kinguser/aln;->b(Lcom/kingroot/kinguser/aln;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    :cond_7
    return-void

    .line 79
    :cond_8
    if-ne p2, v4, :cond_a

    .line 80
    if-eqz v1, :cond_9

    .line 82
    invoke-static {}, Lcom/kingroot/kinguser/ana;->IO()Lcom/kingroot/kinguser/anc;

    move-result-object v2

    const/16 v3, 0x14

    invoke-interface {v2, v1, v3}, Lcom/kingroot/kinguser/anc;->a(Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;I)V

    .line 84
    :cond_9
    if-eqz v0, :cond_4

    iget v1, v0, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->cid:I

    if-eqz v1, :cond_4

    .line 85
    invoke-static {}, Lcom/kingroot/kinguser/ana;->IO()Lcom/kingroot/kinguser/anc;

    move-result-object v1

    iget v2, v0, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->cid:I

    iget-object v3, v0, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->pkgName:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/kingroot/kinguser/anc;->J(ILjava/lang/String;)V

    goto :goto_1

    .line 87
    :cond_a
    const/4 v2, 0x6

    if-ne p2, v2, :cond_b

    .line 89
    if-eqz v0, :cond_4

    iget v1, v0, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->cid:I

    if-eqz v1, :cond_4

    .line 91
    invoke-static {}, Lcom/kingroot/kinguser/ana;->IO()Lcom/kingroot/kinguser/anc;

    move-result-object v1

    iget v2, v0, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->cid:I

    iget-object v3, v0, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->pkgName:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-interface {v1, v2, v3, v4, p3}, Lcom/kingroot/kinguser/anc;->a(ILjava/lang/String;ILjava/lang/String;)V

    .line 93
    invoke-static {}, Lcom/kingroot/kinguser/ana;->IO()Lcom/kingroot/kinguser/anc;

    move-result-object v1

    iget v2, v0, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->cid:I

    iget-object v3, v0, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->pkgName:Ljava/lang/String;

    const/4 v4, 0x3

    invoke-interface {v1, v2, v3, v4, p3}, Lcom/kingroot/kinguser/anc;->a(ILjava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_1

    .line 95
    :cond_b
    const/16 v2, 0x10

    if-eq p2, v2, :cond_4

    .line 97
    const/16 v2, 0xb

    if-ne p2, v2, :cond_4

    .line 98
    if-eqz v1, :cond_c

    .line 100
    invoke-static {}, Lcom/kingroot/kinguser/ana;->IO()Lcom/kingroot/kinguser/anc;

    move-result-object v2

    invoke-interface {v2, v1, v5}, Lcom/kingroot/kinguser/anc;->a(Lcom/kingroot/kinguser/distribution/appsmarket/report/ReportInfo;I)V

    .line 102
    :cond_c
    if-eqz v0, :cond_4

    iget v1, v0, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->cid:I

    if-eqz v1, :cond_4

    .line 104
    invoke-static {}, Lcom/kingroot/kinguser/ana;->IO()Lcom/kingroot/kinguser/anc;

    move-result-object v1

    iget v2, v0, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->cid:I

    iget-object v3, v0, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->pkgName:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4, p3}, Lcom/kingroot/kinguser/anc;->a(ILjava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_1
.end method
