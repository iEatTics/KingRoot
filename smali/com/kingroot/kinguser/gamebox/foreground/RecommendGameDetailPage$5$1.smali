.class Lcom/kingroot/kinguser/gamebox/foreground/RecommendGameDetailPage$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/gamebox/foreground/RecommendGameDetailPage$5;->onState(Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aDr:I

.field final synthetic aPz:Lcom/kingroot/kinguser/gamebox/foreground/RecommendGameDetailPage$5;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/gamebox/foreground/RecommendGameDetailPage$5;I)V
    .locals 0

    .prologue
    .line 307
    iput-object p1, p0, Lcom/kingroot/kinguser/gamebox/foreground/RecommendGameDetailPage$5$1;->aPz:Lcom/kingroot/kinguser/gamebox/foreground/RecommendGameDetailPage$5;

    iput p2, p0, Lcom/kingroot/kinguser/gamebox/foreground/RecommendGameDetailPage$5$1;->aDr:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 311
    iget-object v0, p0, Lcom/kingroot/kinguser/gamebox/foreground/RecommendGameDetailPage$5$1;->aPz:Lcom/kingroot/kinguser/gamebox/foreground/RecommendGameDetailPage$5;

    iget-object v0, v0, Lcom/kingroot/kinguser/gamebox/foreground/RecommendGameDetailPage$5;->this$0:Lcom/kingroot/kinguser/atn;

    invoke-static {v0}, Lcom/kingroot/kinguser/atn;->b(Lcom/kingroot/kinguser/atn;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/gamebox/foreground/RecommendGameDetailPage$5$1;->aPz:Lcom/kingroot/kinguser/gamebox/foreground/RecommendGameDetailPage$5;

    iget-object v1, v1, Lcom/kingroot/kinguser/gamebox/foreground/RecommendGameDetailPage$5;->this$0:Lcom/kingroot/kinguser/atn;

    invoke-static {v1}, Lcom/kingroot/kinguser/atn;->p(Lcom/kingroot/kinguser/atn;)Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/gamebox/foreground/RecommendGameDetailPage$5$1;->aPz:Lcom/kingroot/kinguser/gamebox/foreground/RecommendGameDetailPage$5;

    iget-object v2, v2, Lcom/kingroot/kinguser/gamebox/foreground/RecommendGameDetailPage$5;->this$0:Lcom/kingroot/kinguser/atn;

    invoke-static {v2}, Lcom/kingroot/kinguser/atn;->q(Lcom/kingroot/kinguser/atn;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/and;->a(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Lcom/kingcore/uilib/TextRoundCornerProgressBar;Ljava/lang/String;)V

    .line 312
    iget v0, p0, Lcom/kingroot/kinguser/gamebox/foreground/RecommendGameDetailPage$5$1;->aDr:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 313
    iget-object v0, p0, Lcom/kingroot/kinguser/gamebox/foreground/RecommendGameDetailPage$5$1;->aPz:Lcom/kingroot/kinguser/gamebox/foreground/RecommendGameDetailPage$5;

    iget-object v0, v0, Lcom/kingroot/kinguser/gamebox/foreground/RecommendGameDetailPage$5;->this$0:Lcom/kingroot/kinguser/atn;

    invoke-static {v0}, Lcom/kingroot/kinguser/atn;->b(Lcom/kingroot/kinguser/atn;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    move-result-object v0

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->pkgName:Ljava/lang/String;

    invoke-static {v0}, Lcom/kingroot/kinguser/asw;->iR(Ljava/lang/String;)V

    .line 315
    :cond_0
    return-void
.end method
