.class Lcom/kingroot/kinguser/page/DefaultAppChosenPage$8$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/page/DefaultAppChosenPage$8;->onComplete(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aXM:Ljava/util/List;

.field final synthetic aXN:Lcom/kingroot/kinguser/page/DefaultAppChosenPage$8;

.field final synthetic awv:Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/page/DefaultAppChosenPage$8;Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 569
    iput-object p1, p0, Lcom/kingroot/kinguser/page/DefaultAppChosenPage$8$3;->aXN:Lcom/kingroot/kinguser/page/DefaultAppChosenPage$8;

    iput-object p2, p0, Lcom/kingroot/kinguser/page/DefaultAppChosenPage$8$3;->awv:Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

    iput-object p3, p0, Lcom/kingroot/kinguser/page/DefaultAppChosenPage$8$3;->aXM:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 573
    iget-object v0, p0, Lcom/kingroot/kinguser/page/DefaultAppChosenPage$8$3;->awv:Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->KM()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "DefaultSetting"

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/apd;->c(Ljava/lang/String;ILjava/lang/String;)V

    .line 576
    iget-object v0, p0, Lcom/kingroot/kinguser/page/DefaultAppChosenPage$8$3;->aXM:Ljava/util/List;

    iget-object v1, p0, Lcom/kingroot/kinguser/page/DefaultAppChosenPage$8$3;->awv:Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/and;->a(Ljava/util/List;Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    .line 577
    return-void
.end method
