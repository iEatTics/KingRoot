.class Lcom/kingroot/kinguser/bak$a;
.super Lcom/kingroot/kinguser/vk;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bak;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kingroot/kinguser/vk",
        "<",
        "Lcom/kingroot/kinguser/vf;",
        ">;"
    }
.end annotation


# instance fields
.field private bei:Lcom/kingroot/kinguser/plugin/upgrade/PluginDownloadCallback;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/plugin/upgrade/PluginDownloadCallback;)V
    .locals 0

    .prologue
    .line 760
    invoke-direct {p0}, Lcom/kingroot/kinguser/vk;-><init>()V

    .line 761
    iput-object p1, p0, Lcom/kingroot/kinguser/bak$a;->bei:Lcom/kingroot/kinguser/plugin/upgrade/PluginDownloadCallback;

    .line 762
    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/vf;)V
    .locals 3

    .prologue
    .line 796
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/vk;->b(Lcom/kingroot/kinguser/vj;)V

    .line 798
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bak$a;->bei:Lcom/kingroot/kinguser/plugin/upgrade/PluginDownloadCallback;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/kingroot/kinguser/vf;->KT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/kingroot/kinguser/vf;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcom/kingroot/kinguser/vf;->mErrorCode:I

    invoke-interface {v0, v1, v2}, Lcom/kingroot/kinguser/plugin/upgrade/PluginDownloadCallback;->onFinished(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 802
    :goto_0
    return-void

    .line 799
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public synthetic a(Lcom/kingroot/kinguser/vj;)V
    .locals 0

    .prologue
    .line 756
    check-cast p1, Lcom/kingroot/kinguser/vf;

    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/bak$a;->b(Lcom/kingroot/kinguser/vf;)V

    return-void
.end method

.method public b(Lcom/kingroot/kinguser/vf;)V
    .locals 3

    .prologue
    .line 806
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/vk;->a(Lcom/kingroot/kinguser/vj;)V

    .line 808
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bak$a;->bei:Lcom/kingroot/kinguser/plugin/upgrade/PluginDownloadCallback;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/kingroot/kinguser/vf;->KT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/kingroot/kinguser/vf;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcom/kingroot/kinguser/vf;->mErrorCode:I

    invoke-interface {v0, v1, v2}, Lcom/kingroot/kinguser/plugin/upgrade/PluginDownloadCallback;->onFailed(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 812
    :goto_0
    return-void

    .line 809
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public synthetic b(Lcom/kingroot/kinguser/vj;)V
    .locals 0

    .prologue
    .line 756
    check-cast p1, Lcom/kingroot/kinguser/vf;

    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/bak$a;->a(Lcom/kingroot/kinguser/vf;)V

    return-void
.end method

.method public synthetic d(Lcom/kingroot/kinguser/vj;)V
    .locals 0

    .prologue
    .line 756
    check-cast p1, Lcom/kingroot/kinguser/vf;

    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/bak$a;->g(Lcom/kingroot/kinguser/vf;)V

    return-void
.end method

.method public synthetic e(Lcom/kingroot/kinguser/vj;)V
    .locals 0

    .prologue
    .line 756
    check-cast p1, Lcom/kingroot/kinguser/vf;

    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/bak$a;->f(Lcom/kingroot/kinguser/vf;)V

    return-void
.end method

.method public f(Lcom/kingroot/kinguser/vf;)V
    .locals 2

    .prologue
    .line 766
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/vk;->e(Lcom/kingroot/kinguser/vj;)V

    .line 768
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bak$a;->bei:Lcom/kingroot/kinguser/plugin/upgrade/PluginDownloadCallback;

    iget v1, p1, Lcom/kingroot/kinguser/vf;->BH:F

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/plugin/upgrade/PluginDownloadCallback;->onProgressChanged(F)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 772
    :goto_0
    return-void

    .line 769
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public g(Lcom/kingroot/kinguser/vf;)V
    .locals 1

    .prologue
    .line 776
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/vk;->d(Lcom/kingroot/kinguser/vj;)V

    .line 778
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bak$a;->bei:Lcom/kingroot/kinguser/plugin/upgrade/PluginDownloadCallback;

    invoke-interface {v0}, Lcom/kingroot/kinguser/plugin/upgrade/PluginDownloadCallback;->onRunning()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 782
    :goto_0
    return-void

    .line 779
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public synthetic g(Lcom/kingroot/kinguser/vj;)V
    .locals 0

    .prologue
    .line 756
    check-cast p1, Lcom/kingroot/kinguser/vf;

    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/bak$a;->h(Lcom/kingroot/kinguser/vf;)V

    return-void
.end method

.method public h(Lcom/kingroot/kinguser/vf;)V
    .locals 1

    .prologue
    .line 786
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/vk;->g(Lcom/kingroot/kinguser/vj;)V

    .line 788
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bak$a;->bei:Lcom/kingroot/kinguser/plugin/upgrade/PluginDownloadCallback;

    invoke-interface {v0}, Lcom/kingroot/kinguser/plugin/upgrade/PluginDownloadCallback;->onDeleted()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 792
    :goto_0
    return-void

    .line 789
    :catch_0
    move-exception v0

    goto :goto_0
.end method
