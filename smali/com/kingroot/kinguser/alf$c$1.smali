.class Lcom/kingroot/kinguser/alf$c$1;
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
    .line 185
    iput-object p1, p0, Lcom/kingroot/kinguser/alf$c$1;->awH:Lcom/kingroot/kinguser/alf$c;

    iput-object p2, p0, Lcom/kingroot/kinguser/alf$c$1;->awG:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownloadRecommendModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/kingroot/kinguser/alf$c$1;->awH:Lcom/kingroot/kinguser/alf$c;

    iget-object v0, v0, Lcom/kingroot/kinguser/alf$c;->this$0:Lcom/kingroot/kinguser/alf;

    invoke-static {v0}, Lcom/kingroot/kinguser/alf;->b(Lcom/kingroot/kinguser/alf;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/alf$c$1;->awG:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownloadRecommendModel;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/activitys/AppDetailActivity;->a(Landroid/content/Context;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)V

    .line 189
    return-void
.end method
