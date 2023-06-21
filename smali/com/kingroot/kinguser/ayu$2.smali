.class final Lcom/kingroot/kinguser/ayu$2;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/ayu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/bed$a;)V
    .locals 5
    .param p1    # Lcom/kingroot/kinguser/bed$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x1

    .line 126
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/bek;->a(Lcom/kingroot/kinguser/bed$a;)V

    .line 128
    invoke-interface {p1}, Lcom/kingroot/kinguser/bed$a;->nF()Ljava/util/List;

    move-result-object v0

    .line 130
    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;

    .line 136
    if-eqz v0, :cond_0

    .line 140
    invoke-static {}, Lcom/kingroot/kinguser/aiv;->yw()Lcom/kingroot/kinguser/aiv;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    iget-object v3, v0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->savePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/kingroot/kinguser/aiv;->a(Ljava/io/File;Z)Lcom/kingroot/kinguser/aiv$a;

    move-result-object v1

    iget v1, v1, Lcom/kingroot/kinguser/aiv$a;->retCode:I

    .line 142
    if-nez v1, :cond_2

    .line 143
    invoke-static {}, Lcom/kingroot/kinguser/ayw;->Vn()Lcom/kingroot/kinguser/ayw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/ayw;->g(Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;)V

    .line 144
    invoke-static {}, Lcom/kingroot/kinguser/ays;->Vf()Lcom/kingroot/kinguser/ays;

    move-result-object v1

    iget-object v0, v0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/ays;->ke(Ljava/lang/String;)V

    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    goto :goto_0

    .line 145
    :cond_2
    if-ne v1, v4, :cond_3

    .line 146
    invoke-static {}, Lcom/kingroot/kinguser/ayw;->Vn()Lcom/kingroot/kinguser/ayw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/ayw;->g(Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;)V

    .line 147
    invoke-static {}, Lcom/kingroot/kinguser/ays;->Vf()Lcom/kingroot/kinguser/ays;

    move-result-object v1

    iget-object v2, v0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/ays;->kg(Ljava/lang/String;)V

    .line 148
    invoke-static {}, Lcom/kingroot/kinguser/ays;->Vf()Lcom/kingroot/kinguser/ays;

    move-result-object v1

    iget-object v0, v0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/ays;->kh(Ljava/lang/String;)V

    goto :goto_0

    .line 150
    :cond_3
    invoke-static {}, Lcom/kingroot/kinguser/ays;->Vf()Lcom/kingroot/kinguser/ays;

    move-result-object v1

    iget-object v0, v0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/ays;->kf(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method
