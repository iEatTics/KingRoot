.class Lcom/kingroot/kinguser/ald$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/ald;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic avT:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

.field final synthetic avU:Lcom/kingroot/kinguser/ald;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/ald;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/kingroot/kinguser/ald$1;->avU:Lcom/kingroot/kinguser/ald;

    iput-object p2, p0, Lcom/kingroot/kinguser/ald$1;->avT:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 130
    iget-object v0, p0, Lcom/kingroot/kinguser/ald$1;->avU:Lcom/kingroot/kinguser/ald;

    invoke-static {v0}, Lcom/kingroot/kinguser/ald;->a(Lcom/kingroot/kinguser/ald;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/ald$1;->avT:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    iget-object v2, p0, Lcom/kingroot/kinguser/ald$1;->avU:Lcom/kingroot/kinguser/ald;

    iget-object v2, v2, Lcom/kingroot/kinguser/ald;->akA:Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;

    iget-object v3, p0, Lcom/kingroot/kinguser/ald$1;->avU:Lcom/kingroot/kinguser/ald;

    iget-object v3, v3, Lcom/kingroot/kinguser/ald;->akB:Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    iget-object v4, p0, Lcom/kingroot/kinguser/ald$1;->avU:Lcom/kingroot/kinguser/ald;

    .line 131
    invoke-static {v4}, Lcom/kingroot/kinguser/ald;->b(Lcom/kingroot/kinguser/ald;)Lcom/kingroot/kinguser/and$a;

    move-result-object v4

    .line 130
    invoke-static {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/and;->a(Landroid/content/Context;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;Lcom/kingroot/kinguser/and$a;)V

    .line 132
    return-void
.end method
