.class Lcom/kingroot/kinguser/axi$10;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axi;->Ub()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/axi;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axi;)V
    .locals 0

    .prologue
    .line 325
    iput-object p1, p0, Lcom/kingroot/kinguser/axi$10;->this$0:Lcom/kingroot/kinguser/axi;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 328
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 330
    iget-object v0, p0, Lcom/kingroot/kinguser/axi$10;->this$0:Lcom/kingroot/kinguser/axi;

    invoke-static {v0}, Lcom/kingroot/kinguser/axi;->a(Lcom/kingroot/kinguser/axi;)Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/apu;->b(Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;)Z

    move-result v0

    .line 332
    if-nez v0, :cond_0

    .line 362
    :goto_0
    return-void

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/axi$10;->this$0:Lcom/kingroot/kinguser/axi;

    invoke-static {v0}, Lcom/kingroot/kinguser/axi;->a(Lcom/kingroot/kinguser/axi;)Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->a(Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;)Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/apu;->h(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;)Ljava/io/File;

    move-result-object v0

    .line 339
    invoke-static {}, Lcom/kingroot/kinguser/aiv;->yw()Lcom/kingroot/kinguser/aiv;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lcom/kingroot/kinguser/aiv;->a(Ljava/io/File;Z)Lcom/kingroot/kinguser/aiv$a;

    move-result-object v0

    iget v0, v0, Lcom/kingroot/kinguser/aiv$a;->retCode:I

    .line 341
    if-nez v0, :cond_1

    .line 343
    iget-object v0, p0, Lcom/kingroot/kinguser/axi$10;->this$0:Lcom/kingroot/kinguser/axi;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/axi;->a(Lcom/kingroot/kinguser/axi;I)V

    .line 344
    iget-object v0, p0, Lcom/kingroot/kinguser/axi$10;->this$0:Lcom/kingroot/kinguser/axi;

    invoke-static {v0}, Lcom/kingroot/kinguser/axi;->a(Lcom/kingroot/kinguser/axi;)Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->pkgName:Ljava/lang/String;

    iget-object v1, p0, Lcom/kingroot/kinguser/axi$10;->this$0:Lcom/kingroot/kinguser/axi;

    invoke-static {v1}, Lcom/kingroot/kinguser/axi;->i(Lcom/kingroot/kinguser/axi;)I

    move-result v1

    iget-object v2, p0, Lcom/kingroot/kinguser/axi$10;->this$0:Lcom/kingroot/kinguser/axi;

    invoke-static {v2}, Lcom/kingroot/kinguser/axi;->b(Lcom/kingroot/kinguser/axi;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/apd;->d(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 345
    :cond_1
    if-ne v0, v2, :cond_3

    .line 347
    iget-object v0, p0, Lcom/kingroot/kinguser/axi$10;->this$0:Lcom/kingroot/kinguser/axi;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/axi;->a(Lcom/kingroot/kinguser/axi;I)V

    .line 348
    iget-object v0, p0, Lcom/kingroot/kinguser/axi$10;->this$0:Lcom/kingroot/kinguser/axi;

    invoke-static {v0}, Lcom/kingroot/kinguser/axi;->a(Lcom/kingroot/kinguser/axi;)Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->pkgName:Ljava/lang/String;

    iget-object v1, p0, Lcom/kingroot/kinguser/axi$10;->this$0:Lcom/kingroot/kinguser/axi;

    invoke-static {v1}, Lcom/kingroot/kinguser/axi;->i(Lcom/kingroot/kinguser/axi;)I

    move-result v1

    iget-object v2, p0, Lcom/kingroot/kinguser/axi$10;->this$0:Lcom/kingroot/kinguser/axi;

    invoke-static {v2}, Lcom/kingroot/kinguser/axi;->b(Lcom/kingroot/kinguser/axi;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/apd;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 349
    iget-object v0, p0, Lcom/kingroot/kinguser/axi$10;->this$0:Lcom/kingroot/kinguser/axi;

    invoke-static {v0}, Lcom/kingroot/kinguser/axi;->a(Lcom/kingroot/kinguser/axi;)Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->pkgName:Ljava/lang/String;

    iget-object v1, p0, Lcom/kingroot/kinguser/axi$10;->this$0:Lcom/kingroot/kinguser/axi;

    invoke-static {v1}, Lcom/kingroot/kinguser/axi;->b(Lcom/kingroot/kinguser/axi;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/apd;->ap(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lcom/kingroot/kinguser/axi$10;->this$0:Lcom/kingroot/kinguser/axi;

    const-string v1, "ku_pageExaminationRecommedAppPage"

    invoke-static {v1}, Lcom/kingroot/kinguser/tk;->cS(Ljava/lang/String;)Lcom/kingroot/kinguser/tk;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/axi;->a(Lcom/kingroot/kinguser/axi;Lcom/kingroot/kinguser/tk;)Lcom/kingroot/kinguser/tk;

    .line 351
    iget-object v0, p0, Lcom/kingroot/kinguser/axi$10;->this$0:Lcom/kingroot/kinguser/axi;

    invoke-static {v0}, Lcom/kingroot/kinguser/axi;->c(Lcom/kingroot/kinguser/axi;)Lcom/kingroot/kinguser/tk;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 352
    iget-object v0, p0, Lcom/kingroot/kinguser/axi$10;->this$0:Lcom/kingroot/kinguser/axi;

    invoke-static {v0}, Lcom/kingroot/kinguser/axi;->c(Lcom/kingroot/kinguser/axi;)Lcom/kingroot/kinguser/tk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/tk;->lock()V

    .line 355
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/axi$10;->this$0:Lcom/kingroot/kinguser/axi;

    invoke-static {v0}, Lcom/kingroot/kinguser/axi;->j(Lcom/kingroot/kinguser/axi;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/32 v2, 0x927c0

    invoke-static {v0, v2, v3}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;J)V

    .line 357
    iget-object v0, p0, Lcom/kingroot/kinguser/axi$10;->this$0:Lcom/kingroot/kinguser/axi;

    invoke-static {v0}, Lcom/kingroot/kinguser/axi;->k(Lcom/kingroot/kinguser/axi;)Lcom/kingroot/kinguser/baz$a;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/baz;->a(Lcom/kingroot/kinguser/baz$a;)V

    goto/16 :goto_0

    .line 360
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/axi$10;->this$0:Lcom/kingroot/kinguser/axi;

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/axi;->a(Lcom/kingroot/kinguser/axi;I)V

    goto/16 :goto_0
.end method
