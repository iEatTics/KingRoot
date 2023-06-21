.class Lcom/kingroot/kinguser/atp$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/atp;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aPL:Lcom/kingroot/kinguser/atp;

.field final synthetic avT:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/atp;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lcom/kingroot/kinguser/atp$3;->aPL:Lcom/kingroot/kinguser/atp;

    iput-object p2, p0, Lcom/kingroot/kinguser/atp$3;->avT:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 251
    iget-object v0, p0, Lcom/kingroot/kinguser/atp$3;->aPL:Lcom/kingroot/kinguser/atp;

    invoke-static {v0}, Lcom/kingroot/kinguser/atp;->a(Lcom/kingroot/kinguser/atp;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/atp$3;->avT:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    iget-object v2, p0, Lcom/kingroot/kinguser/atp$3;->aPL:Lcom/kingroot/kinguser/atp;

    iget-object v2, v2, Lcom/kingroot/kinguser/atp;->akA:Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;

    iget-object v3, p0, Lcom/kingroot/kinguser/atp$3;->aPL:Lcom/kingroot/kinguser/atp;

    iget-object v3, v3, Lcom/kingroot/kinguser/atp;->akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    iget-object v4, p0, Lcom/kingroot/kinguser/atp$3;->aPL:Lcom/kingroot/kinguser/atp;

    .line 252
    invoke-static {v4}, Lcom/kingroot/kinguser/atp;->b(Lcom/kingroot/kinguser/atp;)Lcom/kingroot/kinguser/and$a;

    move-result-object v4

    .line 251
    invoke-static {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/and;->a(Landroid/content/Context;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;Lcom/kingroot/kinguser/and$a;)V

    .line 254
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/atp$3;->avT:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->eM(Ljava/lang/String;)V

    .line 256
    return-void
.end method
