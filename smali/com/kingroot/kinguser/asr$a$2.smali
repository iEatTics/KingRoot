.class Lcom/kingroot/kinguser/asr$a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/asr$a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aNu:Lcom/kingroot/kinguser/asr$a;

.field final synthetic avT:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/asr$a;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lcom/kingroot/kinguser/asr$a$2;->aNu:Lcom/kingroot/kinguser/asr$a;

    iput-object p2, p0, Lcom/kingroot/kinguser/asr$a$2;->avT:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 247
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/asr$a$2;->aNu:Lcom/kingroot/kinguser/asr$a;

    invoke-static {v1}, Lcom/kingroot/kinguser/asr$a;->b(Lcom/kingroot/kinguser/asr$a;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/asr$a$2;->avT:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    iget-object v2, v2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/aks;->al(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/kingroot/kinguser/asr$a$2;->aNu:Lcom/kingroot/kinguser/asr$a;

    iget-object v0, v0, Lcom/kingroot/kinguser/asr$a;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/kingroot/kinguser/asr$a$2;->avT:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    iget-object v2, p0, Lcom/kingroot/kinguser/asr$a$2;->aNu:Lcom/kingroot/kinguser/asr$a;

    .line 249
    invoke-static {v2}, Lcom/kingroot/kinguser/asr$a;->c(Lcom/kingroot/kinguser/asr$a;)Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;

    move-result-object v2

    iget-object v3, p0, Lcom/kingroot/kinguser/asr$a$2;->aNu:Lcom/kingroot/kinguser/asr$a;

    invoke-static {v3}, Lcom/kingroot/kinguser/asr$a;->d(Lcom/kingroot/kinguser/asr$a;)Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    move-result-object v3

    iget-object v4, p0, Lcom/kingroot/kinguser/asr$a$2;->aNu:Lcom/kingroot/kinguser/asr$a;

    invoke-static {v4}, Lcom/kingroot/kinguser/asr$a;->e(Lcom/kingroot/kinguser/asr$a;)Lcom/kingroot/kinguser/and$a;

    move-result-object v4

    .line 248
    invoke-static {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/and;->a(Landroid/content/Context;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;Lcom/kingroot/kinguser/and$a;)V

    .line 251
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/asr$a$2;->avT:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->eM(Ljava/lang/String;)V

    .line 253
    return-void
.end method
