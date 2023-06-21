.class Lcom/kingroot/kinguser/anu$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/anu;->i(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aEi:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

.field final synthetic this$0:Lcom/kingroot/kinguser/anu;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/anu;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)V
    .locals 0

    .prologue
    .line 767
    iput-object p1, p0, Lcom/kingroot/kinguser/anu$11;->this$0:Lcom/kingroot/kinguser/anu;

    iput-object p2, p0, Lcom/kingroot/kinguser/anu$11;->aEi:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 770
    iget-object v0, p0, Lcom/kingroot/kinguser/anu$11;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/anu;->oP()Z

    move-result v0

    if-nez v0, :cond_0

    .line 771
    iget-object v0, p0, Lcom/kingroot/kinguser/anu$11;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/anu;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/anu$11;->aEi:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/activitys/PopRecommendAppSplashActivity;->a(Landroid/content/Context;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;I)V

    .line 775
    :cond_0
    return-void
.end method
