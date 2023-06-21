.class Lcom/kingroot/kinguser/gamebox/foreground/GameBoxAddPage$8$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/gamebox/foreground/GameBoxAddPage$8;->onRemove(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aOd:Lcom/kingroot/kinguser/gamebox/foreground/GameBoxAddPage$8;

.field final synthetic awv:Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/gamebox/foreground/GameBoxAddPage$8;Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
    .locals 0

    .prologue
    .line 530
    iput-object p1, p0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxAddPage$8$6;->aOd:Lcom/kingroot/kinguser/gamebox/foreground/GameBoxAddPage$8;

    iput-object p2, p0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxAddPage$8$6;->awv:Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 533
    iget-object v0, p0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxAddPage$8$6;->awv:Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

    if-eqz v0, :cond_0

    .line 534
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    const-wide/16 v2, 0x0

    iget-object v1, p0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxAddPage$8$6;->awv:Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->KM()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/kingroot/kinguser/aks;->c(JLjava/lang/String;)V

    .line 535
    iget-object v0, p0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxAddPage$8$6;->aOd:Lcom/kingroot/kinguser/gamebox/foreground/GameBoxAddPage$8;

    iget-object v0, v0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxAddPage$8;->this$0:Lcom/kingroot/kinguser/atj;

    invoke-static {v0}, Lcom/kingroot/kinguser/atj;->d(Lcom/kingroot/kinguser/atj;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxAddPage$8$6;->aOd:Lcom/kingroot/kinguser/gamebox/foreground/GameBoxAddPage$8;

    iget-object v1, v1, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxAddPage$8;->this$0:Lcom/kingroot/kinguser/atj;

    invoke-static {v1}, Lcom/kingroot/kinguser/atj;->d(Lcom/kingroot/kinguser/atj;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->Ih()Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    move-result-object v1

    .line 536
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f0703e8

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 535
    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/and;->a(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Lcom/kingcore/uilib/TextRoundCornerProgressBar;Ljava/lang/String;)V

    .line 538
    :cond_0
    return-void
.end method
