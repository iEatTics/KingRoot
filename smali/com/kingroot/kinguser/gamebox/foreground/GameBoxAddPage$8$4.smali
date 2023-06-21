.class Lcom/kingroot/kinguser/gamebox/foreground/GameBoxAddPage$8$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/gamebox/foreground/GameBoxAddPage$8;->onFailed(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
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
    .line 496
    iput-object p1, p0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxAddPage$8$4;->aOd:Lcom/kingroot/kinguser/gamebox/foreground/GameBoxAddPage$8;

    iput-object p2, p0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxAddPage$8$4;->awv:Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 499
    iget-object v0, p0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxAddPage$8$4;->awv:Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

    if-eqz v0, :cond_0

    .line 500
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxAddPage$8$4;->awv:Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->KM()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/kingroot/kinguser/aks;->c(JLjava/lang/String;)V

    .line 502
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    .line 503
    iget-object v1, p0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxAddPage$8$4;->aOd:Lcom/kingroot/kinguser/gamebox/foreground/GameBoxAddPage$8;

    iget-object v1, v1, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxAddPage$8;->this$0:Lcom/kingroot/kinguser/atj;

    invoke-static {v1}, Lcom/kingroot/kinguser/atj;->d(Lcom/kingroot/kinguser/atj;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxAddPage$8$4;->aOd:Lcom/kingroot/kinguser/gamebox/foreground/GameBoxAddPage$8;

    iget-object v2, v2, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxAddPage$8;->this$0:Lcom/kingroot/kinguser/atj;

    invoke-static {v2}, Lcom/kingroot/kinguser/atj;->d(Lcom/kingroot/kinguser/atj;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->Ih()Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    move-result-object v2

    .line 504
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v3

    const v4, 0x7f0703e8

    invoke-virtual {v3, v4}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 503
    invoke-static {v1, v2, v3}, Lcom/kingroot/kinguser/and;->a(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Lcom/kingcore/uilib/TextRoundCornerProgressBar;Ljava/lang/String;)V

    .line 505
    const v1, 0x7f070151

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/zj;->b(Ljava/lang/CharSequence;)V

    .line 506
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/vb;->O(Landroid/content/Context;)B

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 507
    const v1, 0x7f070152

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/zj;->b(Ljava/lang/CharSequence;)V

    .line 509
    :cond_1
    return-void
.end method
