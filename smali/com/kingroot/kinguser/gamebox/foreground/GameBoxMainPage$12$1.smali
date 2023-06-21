.class Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$12$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$12;->onResult(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aOQ:Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$12;

.field final synthetic ayI:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$12;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)V
    .locals 0

    .prologue
    .line 537
    iput-object p1, p0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$12$1;->aOQ:Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$12;

    iput-object p2, p0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$12$1;->ayI:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 540
    iget-object v0, p0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$12$1;->aOQ:Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$12;

    iget-object v0, v0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$12;->this$0:Lcom/kingroot/kinguser/atm;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/atm;->oP()Z

    move-result v0

    if-nez v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$12$1;->aOQ:Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$12;

    iget-object v0, v0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$12;->this$0:Lcom/kingroot/kinguser/atm;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/atm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$12$1;->ayI:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/activitys/PopRecommendAppSplashActivity;->a(Landroid/content/Context;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;I)V

    .line 543
    :cond_0
    return-void
.end method
