.class Lcom/kingroot/kinguser/bff$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bff;->ZE()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/bff;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bff;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/kingroot/kinguser/bff$1;->this$0:Lcom/kingroot/kinguser/bff;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 60
    iget-object v0, p0, Lcom/kingroot/kinguser/bff$1;->this$0:Lcom/kingroot/kinguser/bff;

    iget-object v0, v0, Lcom/kingroot/kinguser/bff;->blN:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;

    iget-object v0, v0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;->bmL:Ljava/lang/Object;

    instance-of v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/kingroot/kinguser/bff$1;->this$0:Lcom/kingroot/kinguser/bff;

    iget-object v0, v0, Lcom/kingroot/kinguser/bff;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/kingroot/kinguser/bff$1;->this$0:Lcom/kingroot/kinguser/bff;

    invoke-static {v1}, Lcom/kingroot/kinguser/bff;->a(Lcom/kingroot/kinguser/bff;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/bff$1;->this$0:Lcom/kingroot/kinguser/bff;

    invoke-static {v2}, Lcom/kingroot/kinguser/bff;->b(Lcom/kingroot/kinguser/bff;)Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/kingroot/kinguser/bff$1;->this$0:Lcom/kingroot/kinguser/bff;

    invoke-static {v3}, Lcom/kingroot/kinguser/bff;->c(Lcom/kingroot/kinguser/bff;)Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    move-result-object v3

    iget-object v4, p0, Lcom/kingroot/kinguser/bff$1;->this$0:Lcom/kingroot/kinguser/bff;

    invoke-static {v4}, Lcom/kingroot/kinguser/bff;->d(Lcom/kingroot/kinguser/bff;)Lcom/kingroot/kinguser/and$a;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/and;->a(Landroid/content/Context;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;Lcom/kingroot/kinguser/and$a;)V

    .line 64
    :cond_0
    return-void
.end method
