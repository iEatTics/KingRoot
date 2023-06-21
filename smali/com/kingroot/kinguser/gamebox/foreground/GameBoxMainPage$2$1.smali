.class Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$2;->onResult(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aOS:Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$2;

.field final synthetic aem:Z

.field final synthetic ayk:Ljava/lang/String;

.field final synthetic ayl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$2;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$2$1;->aOS:Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$2;

    iput-boolean p2, p0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$2$1;->aem:Z

    iput-object p3, p0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$2$1;->ayk:Ljava/lang/String;

    iput-object p4, p0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$2$1;->ayl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 241
    iget-boolean v0, p0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$2$1;->aem:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$2$1;->aOS:Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$2;->this$0:Lcom/kingroot/kinguser/atm;

    invoke-static {v0}, Lcom/kingroot/kinguser/atm;->b(Lcom/kingroot/kinguser/atm;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;

    move-result-object v0

    if-nez v0, :cond_1

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$2$1;->ayk:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$2$1;->ayl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 247
    iget-object v0, p0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$2$1;->aOS:Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$2;->this$0:Lcom/kingroot/kinguser/atm;

    invoke-static {v0}, Lcom/kingroot/kinguser/atm;->b(Lcom/kingroot/kinguser/atm;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;

    move-result-object v0

    const/16 v1, 0xb

    iput v1, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;->appStatus:I

    .line 254
    :goto_1
    iget-object v0, p0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$2$1;->aOS:Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$2;->this$0:Lcom/kingroot/kinguser/atm;

    invoke-static {v0}, Lcom/kingroot/kinguser/atm;->b(Lcom/kingroot/kinguser/atm;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;->Ih()Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$2$1;->aOS:Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$2;

    iget-object v1, v1, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$2;->this$0:Lcom/kingroot/kinguser/atm;

    invoke-static {v1}, Lcom/kingroot/kinguser/atm;->b(Lcom/kingroot/kinguser/atm;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/and;->c(Lcom/kingcore/uilib/TextRoundCornerProgressBar;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;)V

    goto :goto_0

    .line 250
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$2$1;->aOS:Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$2;->this$0:Lcom/kingroot/kinguser/atm;

    invoke-static {v0}, Lcom/kingroot/kinguser/atm;->b(Lcom/kingroot/kinguser/atm;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;

    move-result-object v0

    const/16 v1, 0xc

    iput v1, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;->appStatus:I

    .line 251
    iget-object v0, p0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$2$1;->aOS:Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$2;->this$0:Lcom/kingroot/kinguser/atm;

    const-wide/32 v2, 0x7f0704c1

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/atm;->V(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/zj;->c(Ljava/lang/CharSequence;I)V

    goto :goto_1
.end method
