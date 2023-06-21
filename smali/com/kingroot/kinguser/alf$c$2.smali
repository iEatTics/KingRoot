.class Lcom/kingroot/kinguser/alf$c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/alf$c;->a(Lcom/kingroot/kinguser/ame;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic awG:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownloadRecommendModel;

.field final synthetic awH:Lcom/kingroot/kinguser/alf$c;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/alf$c;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownloadRecommendModel;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/kingroot/kinguser/alf$c$2;->awH:Lcom/kingroot/kinguser/alf$c;

    iput-object p2, p0, Lcom/kingroot/kinguser/alf$c$2;->awG:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownloadRecommendModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 194
    iget-object v0, p0, Lcom/kingroot/kinguser/alf$c$2;->awH:Lcom/kingroot/kinguser/alf$c;

    iget-object v0, v0, Lcom/kingroot/kinguser/alf$c;->this$0:Lcom/kingroot/kinguser/alf;

    invoke-static {v0}, Lcom/kingroot/kinguser/alf;->b(Lcom/kingroot/kinguser/alf;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/alf$c$2;->awG:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownloadRecommendModel;

    iget-object v2, p0, Lcom/kingroot/kinguser/alf$c$2;->awH:Lcom/kingroot/kinguser/alf$c;

    iget-object v2, v2, Lcom/kingroot/kinguser/alf$c;->this$0:Lcom/kingroot/kinguser/alf;

    .line 195
    invoke-static {v2}, Lcom/kingroot/kinguser/alf;->c(Lcom/kingroot/kinguser/alf;)Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/kingroot/kinguser/alf$c$2;->awH:Lcom/kingroot/kinguser/alf$c;

    iget-object v3, v3, Lcom/kingroot/kinguser/alf$c;->this$0:Lcom/kingroot/kinguser/alf;

    invoke-static {v3}, Lcom/kingroot/kinguser/alf;->d(Lcom/kingroot/kinguser/alf;)Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    move-result-object v3

    iget-object v4, p0, Lcom/kingroot/kinguser/alf$c$2;->awH:Lcom/kingroot/kinguser/alf$c;

    iget-object v4, v4, Lcom/kingroot/kinguser/alf$c;->this$0:Lcom/kingroot/kinguser/alf;

    invoke-static {v4}, Lcom/kingroot/kinguser/alf;->e(Lcom/kingroot/kinguser/alf;)Lcom/kingroot/kinguser/and$a;

    move-result-object v4

    .line 194
    invoke-static {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/and;->a(Landroid/content/Context;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;Lcom/kingroot/kinguser/and$a;)V

    .line 196
    return-void
.end method
