.class Lcom/kingroot/kinguser/bci$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bci;->gy()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bgs:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

.field final synthetic this$0:Lcom/kingroot/kinguser/bci;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bci;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/kingroot/kinguser/bci$1;->this$0:Lcom/kingroot/kinguser/bci;

    iput-object p2, p0, Lcom/kingroot/kinguser/bci$1;->bgs:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 80
    iget-object v0, p0, Lcom/kingroot/kinguser/bci$1;->bgs:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    iget v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->jumptype:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 81
    iget-object v0, p0, Lcom/kingroot/kinguser/bci$1;->this$0:Lcom/kingroot/kinguser/bci;

    invoke-static {v0}, Lcom/kingroot/kinguser/bci;->a(Lcom/kingroot/kinguser/bci;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bci$1;->bgs:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    iget-object v2, p0, Lcom/kingroot/kinguser/bci$1;->bgs:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    iget-boolean v2, v2, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->ifSelected:Z

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lcom/kingroot/kinguser/activitys/AppDetailActivity;->a(Landroid/content/Context;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;ZI)V

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bci$1;->bgs:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    iget v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->jumptype:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 83
    iget-object v0, p0, Lcom/kingroot/kinguser/bci$1;->this$0:Lcom/kingroot/kinguser/bci;

    invoke-static {v0}, Lcom/kingroot/kinguser/bci;->a(Lcom/kingroot/kinguser/bci;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bci$1;->bgs:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/activitys/ToolboxAppCardDistActivity;->b(Landroid/content/Context;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)V

    goto :goto_0
.end method
