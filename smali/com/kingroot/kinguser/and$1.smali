.class final Lcom/kingroot/kinguser/and$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bid$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/and;->a(Landroid/content/Context;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;Lcom/kingroot/kinguser/and$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic aAo:Lcom/kingroot/kinguser/and$a;

.field final synthetic avT:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Lcom/kingroot/kinguser/and$a;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/kingroot/kinguser/and$1;->avT:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    iput-object p2, p0, Lcom/kingroot/kinguser/and$1;->aAo:Lcom/kingroot/kinguser/and$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public n(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 99
    invoke-static {}, Lcom/kingroot/kinguser/amz;->II()Lcom/kingroot/kinguser/amz;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/and$1;->avT:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    invoke-static {v1}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->j(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/amz;->c(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;)V

    .line 100
    iget-object v0, p0, Lcom/kingroot/kinguser/and$1;->aAo:Lcom/kingroot/kinguser/and$a;

    iget-object v1, p0, Lcom/kingroot/kinguser/and$1;->avT:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->Ih()Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/and$1;->avT:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/and$a;->b(Landroid/view/View;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;)V

    .line 101
    iget-object v0, p0, Lcom/kingroot/kinguser/and$1;->avT:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    const/16 v1, 0x9

    iput v1, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->appStatus:I

    .line 102
    iget-object v0, p0, Lcom/kingroot/kinguser/and$1;->aAo:Lcom/kingroot/kinguser/and$a;

    iget-object v1, p0, Lcom/kingroot/kinguser/and$1;->avT:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->Ih()Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/and$1;->avT:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/and$a;->a(Landroid/view/View;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;)V

    .line 103
    return-void
.end method
