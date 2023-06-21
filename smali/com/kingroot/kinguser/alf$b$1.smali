.class Lcom/kingroot/kinguser/alf$b$1;
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
    .line 233
    iput-object p1, p0, Lcom/kingroot/kinguser/alf$b$1;->awF:Lcom/kingroot/kinguser/alf$b;

    iput-object p2, p0, Lcom/kingroot/kinguser/alf$b$1;->awE:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailRecommendModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/kingroot/kinguser/alf$b$1;->awF:Lcom/kingroot/kinguser/alf$b;

    iget-object v0, v0, Lcom/kingroot/kinguser/alf$b;->this$0:Lcom/kingroot/kinguser/alf;

    invoke-static {v0}, Lcom/kingroot/kinguser/alf;->b(Lcom/kingroot/kinguser/alf;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/alf$b$1;->awE:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailRecommendModel;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/activitys/AppDetailActivity;->a(Landroid/content/Context;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)V

    .line 237
    return-void
.end method
