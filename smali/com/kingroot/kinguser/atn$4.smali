.class Lcom/kingroot/kinguser/atn$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/atn;->oG()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/atn;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/atn;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/kingroot/kinguser/atn$4;->this$0:Lcom/kingroot/kinguser/atn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 226
    iget-object v0, p0, Lcom/kingroot/kinguser/atn$4;->this$0:Lcom/kingroot/kinguser/atn;

    invoke-static {v0}, Lcom/kingroot/kinguser/atn;->d(Lcom/kingroot/kinguser/atn;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/atn$4;->this$0:Lcom/kingroot/kinguser/atn;

    invoke-static {v1}, Lcom/kingroot/kinguser/atn;->b(Lcom/kingroot/kinguser/atn;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/atn$4;->this$0:Lcom/kingroot/kinguser/atn;

    invoke-static {v2}, Lcom/kingroot/kinguser/atn;->e(Lcom/kingroot/kinguser/atn;)Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/kingroot/kinguser/atn$4;->this$0:Lcom/kingroot/kinguser/atn;

    invoke-static {v3}, Lcom/kingroot/kinguser/atn;->f(Lcom/kingroot/kinguser/atn;)Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    move-result-object v3

    iget-object v4, p0, Lcom/kingroot/kinguser/atn$4;->this$0:Lcom/kingroot/kinguser/atn;

    invoke-static {v4}, Lcom/kingroot/kinguser/atn;->g(Lcom/kingroot/kinguser/atn;)Lcom/kingroot/kinguser/and$a;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/and;->a(Landroid/content/Context;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;Lcom/kingroot/kinguser/and$a;)V

    .line 227
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/atn$4;->this$0:Lcom/kingroot/kinguser/atn;

    invoke-static {v1}, Lcom/kingroot/kinguser/atn;->b(Lcom/kingroot/kinguser/atn;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    move-result-object v1

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->eP(Ljava/lang/String;)V

    .line 228
    return-void
.end method
