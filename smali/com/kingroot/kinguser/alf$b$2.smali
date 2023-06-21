.class Lcom/kingroot/kinguser/alf$b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/alf$b;->a(Lcom/kingroot/kinguser/ame;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic awE:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailRecommendModel;

.field final synthetic awF:Lcom/kingroot/kinguser/alf$b;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/alf$b;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailRecommendModel;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/kingroot/kinguser/alf$b$2;->awF:Lcom/kingroot/kinguser/alf$b;

    iput-object p2, p0, Lcom/kingroot/kinguser/alf$b$2;->awE:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailRecommendModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 243
    iget-object v0, p0, Lcom/kingroot/kinguser/alf$b$2;->awF:Lcom/kingroot/kinguser/alf$b;

    iget-object v0, v0, Lcom/kingroot/kinguser/alf$b;->this$0:Lcom/kingroot/kinguser/alf;

    invoke-static {v0}, Lcom/kingroot/kinguser/alf;->b(Lcom/kingroot/kinguser/alf;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/alf$b$2;->awE:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailRecommendModel;

    iget-object v2, p0, Lcom/kingroot/kinguser/alf$b$2;->awF:Lcom/kingroot/kinguser/alf$b;

    iget-object v2, v2, Lcom/kingroot/kinguser/alf$b;->this$0:Lcom/kingroot/kinguser/alf;

    .line 244
    invoke-static {v2}, Lcom/kingroot/kinguser/alf;->c(Lcom/kingroot/kinguser/alf;)Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/kingroot/kinguser/alf$b$2;->awF:Lcom/kingroot/kinguser/alf$b;

    iget-object v3, v3, Lcom/kingroot/kinguser/alf$b;->this$0:Lcom/kingroot/kinguser/alf;

    invoke-static {v3}, Lcom/kingroot/kinguser/alf;->d(Lcom/kingroot/kinguser/alf;)Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    move-result-object v3

    iget-object v4, p0, Lcom/kingroot/kinguser/alf$b$2;->awF:Lcom/kingroot/kinguser/alf$b;

    iget-object v4, v4, Lcom/kingroot/kinguser/alf$b;->this$0:Lcom/kingroot/kinguser/alf;

    invoke-static {v4}, Lcom/kingroot/kinguser/alf;->e(Lcom/kingroot/kinguser/alf;)Lcom/kingroot/kinguser/and$a;

    move-result-object v4

    .line 243
    invoke-static {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/and;->a(Landroid/content/Context;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;Lcom/kingroot/kinguser/and$a;)V

    .line 245
    return-void
.end method
