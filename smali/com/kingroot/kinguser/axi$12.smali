.class Lcom/kingroot/kinguser/axi$12;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/axi;
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
    .line 408
    iput-object p1, p0, Lcom/kingroot/kinguser/axi$12;->this$0:Lcom/kingroot/kinguser/axi;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 411
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 413
    iget-object v0, p0, Lcom/kingroot/kinguser/axi$12;->this$0:Lcom/kingroot/kinguser/axi;

    invoke-static {v0}, Lcom/kingroot/kinguser/axi;->a(Lcom/kingroot/kinguser/axi;)Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/apu;->b(Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 414
    iget-object v0, p0, Lcom/kingroot/kinguser/axi$12;->this$0:Lcom/kingroot/kinguser/axi;

    invoke-static {v0, v3}, Lcom/kingroot/kinguser/axi;->b(Lcom/kingroot/kinguser/axi;I)I

    .line 416
    iget-object v0, p0, Lcom/kingroot/kinguser/axi$12;->this$0:Lcom/kingroot/kinguser/axi;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/axi;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/vb;->O(Landroid/content/Context;)B

    move-result v0

    .line 417
    if-nez v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/kingroot/kinguser/axi$12;->this$0:Lcom/kingroot/kinguser/axi;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/axi;->Uf()V

    .line 442
    :goto_0
    return-void

    .line 420
    :cond_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 423
    iget-object v0, p0, Lcom/kingroot/kinguser/axi$12;->this$0:Lcom/kingroot/kinguser/axi;

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/axi;->a(Lcom/kingroot/kinguser/axi;I)V

    goto :goto_0

    .line 426
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/axi$12;->this$0:Lcom/kingroot/kinguser/axi;

    invoke-static {v0}, Lcom/kingroot/kinguser/axi;->l(Lcom/kingroot/kinguser/axi;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 427
    iget-object v0, p0, Lcom/kingroot/kinguser/axi$12;->this$0:Lcom/kingroot/kinguser/axi;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/axi;->Uf()V

    goto :goto_0

    .line 431
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/axi$12;->this$0:Lcom/kingroot/kinguser/axi;

    invoke-static {v0, v3}, Lcom/kingroot/kinguser/axi;->a(Lcom/kingroot/kinguser/axi;I)V

    goto :goto_0

    .line 435
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/axi$12;->this$0:Lcom/kingroot/kinguser/axi;

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/axi;->b(Lcom/kingroot/kinguser/axi;I)I

    .line 438
    iget-object v0, p0, Lcom/kingroot/kinguser/axi$12;->this$0:Lcom/kingroot/kinguser/axi;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/axi;->a(Lcom/kingroot/kinguser/axi;I)V

    .line 440
    iget-object v0, p0, Lcom/kingroot/kinguser/axi$12;->this$0:Lcom/kingroot/kinguser/axi;

    invoke-static {v0}, Lcom/kingroot/kinguser/axi;->a(Lcom/kingroot/kinguser/axi;)Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->pkgName:Ljava/lang/String;

    iget-object v1, p0, Lcom/kingroot/kinguser/axi$12;->this$0:Lcom/kingroot/kinguser/axi;

    invoke-static {v1}, Lcom/kingroot/kinguser/axi;->i(Lcom/kingroot/kinguser/axi;)I

    move-result v1

    iget-object v2, p0, Lcom/kingroot/kinguser/axi$12;->this$0:Lcom/kingroot/kinguser/axi;

    invoke-static {v2}, Lcom/kingroot/kinguser/axi;->b(Lcom/kingroot/kinguser/axi;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/apd;->c(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method
