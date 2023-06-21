.class Lcom/kingroot/kinguser/atj$1;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/atj;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/atj;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/atj;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/kingroot/kinguser/atj$1;->this$0:Lcom/kingroot/kinguser/atj;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 117
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 119
    invoke-static {}, Lcom/kingroot/kinguser/atg;->OX()Lcom/kingroot/kinguser/atg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/atg;->Ky()Ljava/util/List;

    move-result-object v0

    .line 120
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

    .line 121
    invoke-virtual {v0}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->KJ()Lcom/kingroot/kinguser/boq;

    move-result-object v2

    sget-object v3, Lcom/kingroot/kinguser/boq;->bFD:Lcom/kingroot/kinguser/boq;

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->KJ()Lcom/kingroot/kinguser/boq;

    move-result-object v2

    sget-object v3, Lcom/kingroot/kinguser/boq;->bFE:Lcom/kingroot/kinguser/boq;

    if-eq v2, v3, :cond_0

    .line 122
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/atg;->OX()Lcom/kingroot/kinguser/atg;

    move-result-object v2

    iget-object v3, p0, Lcom/kingroot/kinguser/atj$1;->this$0:Lcom/kingroot/kinguser/atj;

    invoke-static {v3}, Lcom/kingroot/kinguser/atj;->a(Lcom/kingroot/kinguser/atj;)Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$AppDownloadListenerAdapter;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/kingroot/kinguser/atg;->a(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;Lcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;)V

    goto :goto_0

    .line 125
    :cond_2
    return-void
.end method
