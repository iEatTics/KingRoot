.class Lcom/kingroot/kinguser/bfd$3;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bfd;->Ub()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/bfd;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bfd;)V
    .locals 0

    .prologue
    .line 504
    iput-object p1, p0, Lcom/kingroot/kinguser/bfd$3;->this$0:Lcom/kingroot/kinguser/bfd;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 507
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 509
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd$3;->this$0:Lcom/kingroot/kinguser/bfd;

    invoke-static {v0}, Lcom/kingroot/kinguser/bfd;->a(Lcom/kingroot/kinguser/bfd;)Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/apu;->b(Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;)Z

    move-result v0

    .line 511
    if-nez v0, :cond_0

    .line 541
    :goto_0
    return-void

    .line 516
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd$3;->this$0:Lcom/kingroot/kinguser/bfd;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bfd;->d(Lcom/kingroot/kinguser/bfd;I)V

    .line 517
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd$3;->this$0:Lcom/kingroot/kinguser/bfd;

    invoke-static {v0}, Lcom/kingroot/kinguser/bfd;->a(Lcom/kingroot/kinguser/bfd;)Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->a(Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;)Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/apu;->h(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;)Ljava/io/File;

    move-result-object v0

    .line 519
    invoke-static {}, Lcom/kingroot/kinguser/aiv;->yw()Lcom/kingroot/kinguser/aiv;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Lcom/kingroot/kinguser/aiv;->a(Ljava/io/File;Z)Lcom/kingroot/kinguser/aiv$a;

    move-result-object v0

    iget v0, v0, Lcom/kingroot/kinguser/aiv$a;->retCode:I

    .line 521
    if-nez v0, :cond_1

    .line 523
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd$3;->this$0:Lcom/kingroot/kinguser/bfd;

    const/16 v1, 0x64

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bfd;->d(Lcom/kingroot/kinguser/bfd;I)V

    .line 524
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd$3;->this$0:Lcom/kingroot/kinguser/bfd;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bfd;->b(Lcom/kingroot/kinguser/bfd;I)V

    .line 525
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd$3;->this$0:Lcom/kingroot/kinguser/bfd;

    invoke-static {v0}, Lcom/kingroot/kinguser/bfd;->a(Lcom/kingroot/kinguser/bfd;)Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->pkgName:Ljava/lang/String;

    iget-object v1, p0, Lcom/kingroot/kinguser/bfd$3;->this$0:Lcom/kingroot/kinguser/bfd;

    invoke-static {v1}, Lcom/kingroot/kinguser/bfd;->p(Lcom/kingroot/kinguser/bfd;)I

    move-result v1

    const-string v2, "Roottool"

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/apd;->d(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 526
    :cond_1
    if-ne v0, v4, :cond_3

    .line 527
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd$3;->this$0:Lcom/kingroot/kinguser/bfd;

    invoke-static {v0}, Lcom/kingroot/kinguser/bfd;->a(Lcom/kingroot/kinguser/bfd;)Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->pkgName:Ljava/lang/String;

    iget-object v1, p0, Lcom/kingroot/kinguser/bfd$3;->this$0:Lcom/kingroot/kinguser/bfd;

    invoke-static {v1}, Lcom/kingroot/kinguser/bfd;->p(Lcom/kingroot/kinguser/bfd;)I

    move-result v1

    const-string v2, "Roottool"

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/apd;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 528
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd$3;->this$0:Lcom/kingroot/kinguser/bfd;

    invoke-static {v0}, Lcom/kingroot/kinguser/bfd;->a(Lcom/kingroot/kinguser/bfd;)Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->pkgName:Ljava/lang/String;

    const-string v1, "Roottool"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/apd;->ap(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd$3;->this$0:Lcom/kingroot/kinguser/bfd;

    const-string v1, "ku_page_ToolBoxAppViewHolder"

    invoke-static {v1}, Lcom/kingroot/kinguser/tk;->cS(Ljava/lang/String;)Lcom/kingroot/kinguser/tk;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bfd;->a(Lcom/kingroot/kinguser/bfd;Lcom/kingroot/kinguser/tk;)Lcom/kingroot/kinguser/tk;

    .line 530
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd$3;->this$0:Lcom/kingroot/kinguser/bfd;

    invoke-static {v0}, Lcom/kingroot/kinguser/bfd;->c(Lcom/kingroot/kinguser/bfd;)Lcom/kingroot/kinguser/tk;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 531
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd$3;->this$0:Lcom/kingroot/kinguser/bfd;

    invoke-static {v0}, Lcom/kingroot/kinguser/bfd;->c(Lcom/kingroot/kinguser/bfd;)Lcom/kingroot/kinguser/tk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/tk;->lock()V

    .line 533
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd$3;->this$0:Lcom/kingroot/kinguser/bfd;

    invoke-static {v0}, Lcom/kingroot/kinguser/bfd;->q(Lcom/kingroot/kinguser/bfd;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/32 v2, 0x927c0

    invoke-static {v0, v2, v3}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;J)V

    .line 535
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd$3;->this$0:Lcom/kingroot/kinguser/bfd;

    invoke-static {v0}, Lcom/kingroot/kinguser/bfd;->b(Lcom/kingroot/kinguser/bfd;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 536
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd$3;->this$0:Lcom/kingroot/kinguser/bfd;

    invoke-static {v0}, Lcom/kingroot/kinguser/bfd;->r(Lcom/kingroot/kinguser/bfd;)Lcom/kingroot/kinguser/baz$a;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/baz;->a(Lcom/kingroot/kinguser/baz$a;)V

    goto/16 :goto_0

    .line 539
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd$3;->this$0:Lcom/kingroot/kinguser/bfd;

    const/16 v1, 0x9

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bfd;->b(Lcom/kingroot/kinguser/bfd;I)V

    goto/16 :goto_0
.end method
