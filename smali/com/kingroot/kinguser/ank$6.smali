.class Lcom/kingroot/kinguser/ank$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/ank;->oG()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/ank;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/ank;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/kingroot/kinguser/ank$6;->this$0:Lcom/kingroot/kinguser/ank;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 270
    iget-object v0, p0, Lcom/kingroot/kinguser/ank$6;->this$0:Lcom/kingroot/kinguser/ank;

    invoke-static {v0}, Lcom/kingroot/kinguser/ank;->g(Lcom/kingroot/kinguser/ank;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 271
    invoke-static {}, Lcom/kingroot/kinguser/als;->Hi()Lcom/kingroot/kinguser/amt;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/ank$6;->this$0:Lcom/kingroot/kinguser/ank;

    invoke-static {v1}, Lcom/kingroot/kinguser/ank;->h(Lcom/kingroot/kinguser/ank;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    move-result-object v1

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->pkgName:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Lcom/kingroot/kinguser/amt;->C(Ljava/lang/String;I)V

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ank$6;->this$0:Lcom/kingroot/kinguser/ank;

    invoke-static {v0}, Lcom/kingroot/kinguser/ank;->i(Lcom/kingroot/kinguser/ank;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/ank$6;->this$0:Lcom/kingroot/kinguser/ank;

    .line 274
    invoke-static {v1}, Lcom/kingroot/kinguser/ank;->h(Lcom/kingroot/kinguser/ank;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/ank$6;->this$0:Lcom/kingroot/kinguser/ank;

    invoke-static {v2}, Lcom/kingroot/kinguser/ank;->j(Lcom/kingroot/kinguser/ank;)Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/kingroot/kinguser/ank$6;->this$0:Lcom/kingroot/kinguser/ank;

    invoke-static {v3}, Lcom/kingroot/kinguser/ank;->k(Lcom/kingroot/kinguser/ank;)Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    move-result-object v3

    iget-object v4, p0, Lcom/kingroot/kinguser/ank$6;->this$0:Lcom/kingroot/kinguser/ank;

    invoke-static {v4}, Lcom/kingroot/kinguser/ank;->l(Lcom/kingroot/kinguser/ank;)Lcom/kingroot/kinguser/and$a;

    move-result-object v4

    .line 273
    invoke-static {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/and;->a(Landroid/content/Context;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;Lcom/kingroot/kinguser/and$a;)V

    .line 275
    return-void
.end method
