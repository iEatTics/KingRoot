.class final Lcom/kingroot/kinguser/and$3;
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

.field final synthetic aAp:Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;

.field final synthetic aAq:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

.field final synthetic avT:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/and$a;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/kingroot/kinguser/and$3;->aAo:Lcom/kingroot/kinguser/and$a;

    iput-object p2, p0, Lcom/kingroot/kinguser/and$3;->avT:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    iput-object p3, p0, Lcom/kingroot/kinguser/and$3;->aAp:Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;

    iput-object p4, p0, Lcom/kingroot/kinguser/and$3;->aAq:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public n(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 115
    iget-object v0, p0, Lcom/kingroot/kinguser/and$3;->aAo:Lcom/kingroot/kinguser/and$a;

    iget-object v1, p0, Lcom/kingroot/kinguser/and$3;->avT:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->Ih()Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/and$3;->avT:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/and$a;->b(Landroid/view/View;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;)V

    .line 116
    iget-object v0, p0, Lcom/kingroot/kinguser/and$3;->avT:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    iget-object v1, p0, Lcom/kingroot/kinguser/and$3;->aAp:Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;

    iget-object v2, p0, Lcom/kingroot/kinguser/and$3;->aAq:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    iget-object v3, p0, Lcom/kingroot/kinguser/and$3;->aAo:Lcom/kingroot/kinguser/and$a;

    invoke-static {v0, v1, v2, v3}, Lcom/kingroot/kinguser/and;->b(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;Lcom/kingroot/kinguser/and$a;)V

    .line 117
    return-void
.end method
