.class Lcom/kingroot/kinguser/bfd$2;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bfd;->Ua()V
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
    .line 462
    iput-object p1, p0, Lcom/kingroot/kinguser/bfd$2;->this$0:Lcom/kingroot/kinguser/bfd;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 465
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 467
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v0

    .line 468
    iget-object v1, p0, Lcom/kingroot/kinguser/bfd$2;->this$0:Lcom/kingroot/kinguser/bfd;

    invoke-static {v1}, Lcom/kingroot/kinguser/bfd;->a(Lcom/kingroot/kinguser/bfd;)Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zh;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 469
    if-eqz v0, :cond_0

    .line 471
    iget-object v1, p0, Lcom/kingroot/kinguser/bfd$2;->this$0:Lcom/kingroot/kinguser/bfd;

    iget-object v1, v1, Lcom/kingroot/kinguser/bfd;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 472
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd$2;->this$0:Lcom/kingroot/kinguser/bfd;

    invoke-static {v0}, Lcom/kingroot/kinguser/bfd;->a(Lcom/kingroot/kinguser/bfd;)Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;

    move-result-object v0

    iget-object v1, v0, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->pkgName:Ljava/lang/String;

    iget-object v0, p0, Lcom/kingroot/kinguser/bfd$2;->this$0:Lcom/kingroot/kinguser/bfd;

    .line 473
    invoke-static {v0}, Lcom/kingroot/kinguser/bfd;->p(Lcom/kingroot/kinguser/bfd;)I

    move-result v2

    iget-object v0, p0, Lcom/kingroot/kinguser/bfd$2;->this$0:Lcom/kingroot/kinguser/bfd;

    iget-object v0, v0, Lcom/kingroot/kinguser/bfd;->mContext:Landroid/content/Context;

    .line 474
    invoke-static {v0}, Lcom/kingroot/kinguser/vb;->O(Landroid/content/Context;)B

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v3, "Roottool"

    .line 472
    invoke-static {v1, v2, v0, v3}, Lcom/kingroot/kinguser/apd;->a(Ljava/lang/String;IILjava/lang/String;)V

    .line 478
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd$2;->this$0:Lcom/kingroot/kinguser/bfd;

    invoke-static {v0}, Lcom/kingroot/kinguser/bfd;->a(Lcom/kingroot/kinguser/bfd;)Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->a(Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;)Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/apu;->h(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;)Ljava/io/File;

    move-result-object v0

    .line 480
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 482
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 491
    :cond_0
    :goto_1
    return-void

    .line 474
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 488
    :catch_0
    move-exception v0

    goto :goto_1
.end method
