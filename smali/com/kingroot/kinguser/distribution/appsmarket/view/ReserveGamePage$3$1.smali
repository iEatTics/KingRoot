.class Lcom/kingroot/kinguser/distribution/appsmarket/view/ReserveGamePage$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/distribution/appsmarket/view/ReserveGamePage$3;->onResult(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aFu:Lcom/kingroot/kinguser/distribution/appsmarket/view/ReserveGamePage$3;

.field final synthetic aem:Z

.field final synthetic ayj:Ljava/lang/String;

.field final synthetic ayk:Ljava/lang/String;

.field final synthetic ayl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/distribution/appsmarket/view/ReserveGamePage$3;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/ReserveGamePage$3$1;->aFu:Lcom/kingroot/kinguser/distribution/appsmarket/view/ReserveGamePage$3;

    iput-boolean p2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/ReserveGamePage$3$1;->aem:Z

    iput-object p3, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/ReserveGamePage$3$1;->ayk:Ljava/lang/String;

    iput-object p4, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/ReserveGamePage$3$1;->ayl:Ljava/lang/String;

    iput-object p5, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/ReserveGamePage$3$1;->ayj:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 175
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/ReserveGamePage$3$1;->aFu:Lcom/kingroot/kinguser/distribution/appsmarket/view/ReserveGamePage$3;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/ReserveGamePage$3;->this$0:Lcom/kingroot/kinguser/aog;

    invoke-static {v0}, Lcom/kingroot/kinguser/aog;->b(Lcom/kingroot/kinguser/aog;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/ReserveGamePage$3$1;->ayj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;

    .line 176
    iget-boolean v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/ReserveGamePage$3$1;->aem:Z

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/ReserveGamePage$3$1;->ayk:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/ReserveGamePage$3$1;->ayl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 182
    const/16 v1, 0xb

    iput v1, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;->appStatus:I

    .line 189
    :goto_1
    invoke-virtual {v0}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;->Ih()Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/kingroot/kinguser/and;->c(Lcom/kingcore/uilib/TextRoundCornerProgressBar;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;)V

    goto :goto_0

    .line 185
    :cond_2
    const/16 v1, 0xc

    iput v1, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppReserveModel;->appStatus:I

    .line 186
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/ReserveGamePage$3$1;->aFu:Lcom/kingroot/kinguser/distribution/appsmarket/view/ReserveGamePage$3;

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/appsmarket/view/ReserveGamePage$3;->this$0:Lcom/kingroot/kinguser/aog;

    const-wide/32 v2, 0x7f0704c1

    invoke-virtual {v1, v2, v3}, Lcom/kingroot/kinguser/aog;->V(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/zj;->c(Ljava/lang/CharSequence;I)V

    goto :goto_1
.end method
