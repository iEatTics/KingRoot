.class Lcom/kingroot/kinguser/atp$2;
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

.field final synthetic avV:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/atp;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/kingroot/kinguser/atp$2;->aPL:Lcom/kingroot/kinguser/atp;

    iput-object p2, p0, Lcom/kingroot/kinguser/atp$2;->avV:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 165
    iget-object v0, p0, Lcom/kingroot/kinguser/atp$2;->aPL:Lcom/kingroot/kinguser/atp;

    invoke-static {v0}, Lcom/kingroot/kinguser/atp;->a(Lcom/kingroot/kinguser/atp;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/atp$2;->avV:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;

    iget-object v2, p0, Lcom/kingroot/kinguser/atp$2;->aPL:Lcom/kingroot/kinguser/atp;

    iget-object v2, v2, Lcom/kingroot/kinguser/atp;->akA:Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;

    iget-object v3, p0, Lcom/kingroot/kinguser/atp$2;->aPL:Lcom/kingroot/kinguser/atp;

    iget-object v3, v3, Lcom/kingroot/kinguser/atp;->akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    iget-object v4, p0, Lcom/kingroot/kinguser/atp$2;->aPL:Lcom/kingroot/kinguser/atp;

    .line 166
    invoke-static {v4}, Lcom/kingroot/kinguser/atp;->b(Lcom/kingroot/kinguser/atp;)Lcom/kingroot/kinguser/and$a;

    move-result-object v4

    .line 165
    invoke-static {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/and;->b(Landroid/content/Context;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;Lcom/kingroot/kinguser/and$a;)V

    .line 168
    return-void
.end method
