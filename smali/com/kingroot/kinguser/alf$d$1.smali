.class Lcom/kingroot/kinguser/alf$d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/alf$d;->a(Lcom/kingroot/kinguser/ame;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic awI:Lcom/kingroot/kinguser/advance/model/QuickInstallRecommendModel;

.field final synthetic awJ:Lcom/kingroot/kinguser/alf$d;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/alf$d;Lcom/kingroot/kinguser/advance/model/QuickInstallRecommendModel;)V
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Lcom/kingroot/kinguser/alf$d$1;->awJ:Lcom/kingroot/kinguser/alf$d;

    iput-object p2, p0, Lcom/kingroot/kinguser/alf$d$1;->awI:Lcom/kingroot/kinguser/advance/model/QuickInstallRecommendModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 286
    iget-object v0, p0, Lcom/kingroot/kinguser/alf$d$1;->awJ:Lcom/kingroot/kinguser/alf$d;

    iget-object v0, v0, Lcom/kingroot/kinguser/alf$d;->this$0:Lcom/kingroot/kinguser/alf;

    invoke-static {v0}, Lcom/kingroot/kinguser/alf;->b(Lcom/kingroot/kinguser/alf;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/alf$d$1;->awI:Lcom/kingroot/kinguser/advance/model/QuickInstallRecommendModel;

    iget-object v2, p0, Lcom/kingroot/kinguser/alf$d$1;->awJ:Lcom/kingroot/kinguser/alf$d;

    iget-object v2, v2, Lcom/kingroot/kinguser/alf$d;->this$0:Lcom/kingroot/kinguser/alf;

    .line 287
    invoke-static {v2}, Lcom/kingroot/kinguser/alf;->c(Lcom/kingroot/kinguser/alf;)Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/kingroot/kinguser/alf$d$1;->awJ:Lcom/kingroot/kinguser/alf$d;

    iget-object v3, v3, Lcom/kingroot/kinguser/alf$d;->this$0:Lcom/kingroot/kinguser/alf;

    invoke-static {v3}, Lcom/kingroot/kinguser/alf;->d(Lcom/kingroot/kinguser/alf;)Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;

    move-result-object v3

    iget-object v4, p0, Lcom/kingroot/kinguser/alf$d$1;->awJ:Lcom/kingroot/kinguser/alf$d;

    iget-object v4, v4, Lcom/kingroot/kinguser/alf$d;->this$0:Lcom/kingroot/kinguser/alf;

    invoke-static {v4}, Lcom/kingroot/kinguser/alf;->e(Lcom/kingroot/kinguser/alf;)Lcom/kingroot/kinguser/and$a;

    move-result-object v4

    .line 286
    invoke-static {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/and;->a(Landroid/content/Context;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener$Stub;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;Lcom/kingroot/kinguser/and$a;)V

    .line 288
    return-void
.end method
