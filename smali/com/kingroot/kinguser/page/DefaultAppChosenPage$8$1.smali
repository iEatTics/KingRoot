.class Lcom/kingroot/kinguser/page/DefaultAppChosenPage$8$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/page/DefaultAppChosenPage$8;->onProgress(ILcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aXM:Ljava/util/List;

.field final synthetic aXN:Lcom/kingroot/kinguser/page/DefaultAppChosenPage$8;

.field final synthetic awv:Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

.field final synthetic aww:I


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/page/DefaultAppChosenPage$8;Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;ILjava/util/List;)V
    .locals 0

    .prologue
    .line 535
    iput-object p1, p0, Lcom/kingroot/kinguser/page/DefaultAppChosenPage$8$1;->aXN:Lcom/kingroot/kinguser/page/DefaultAppChosenPage$8;

    iput-object p2, p0, Lcom/kingroot/kinguser/page/DefaultAppChosenPage$8$1;->awv:Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

    iput p3, p0, Lcom/kingroot/kinguser/page/DefaultAppChosenPage$8$1;->aww:I

    iput-object p4, p0, Lcom/kingroot/kinguser/page/DefaultAppChosenPage$8$1;->aXM:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 538
    iget-object v0, p0, Lcom/kingroot/kinguser/page/DefaultAppChosenPage$8$1;->awv:Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/kingroot/kinguser/page/DefaultAppChosenPage$8$1;->awv:Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

    iget v1, p0, Lcom/kingroot/kinguser/page/DefaultAppChosenPage$8$1;->aww:I

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->setPercentage(I)V

    .line 540
    iget-object v0, p0, Lcom/kingroot/kinguser/page/DefaultAppChosenPage$8$1;->aXM:Ljava/util/List;

    iget-object v1, p0, Lcom/kingroot/kinguser/page/DefaultAppChosenPage$8$1;->awv:Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/and;->a(Ljava/util/List;Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    .line 542
    :cond_0
    return-void
.end method
