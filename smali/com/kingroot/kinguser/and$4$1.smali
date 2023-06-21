.class Lcom/kingroot/kinguser/and$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/and$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aAu:I

.field final synthetic aAv:Lcom/kingroot/kinguser/and$4;

.field final synthetic awv:Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/and$4;Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;I)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/kingroot/kinguser/and$4$1;->aAv:Lcom/kingroot/kinguser/and$4;

    iput-object p2, p0, Lcom/kingroot/kinguser/and$4$1;->awv:Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

    iput p3, p0, Lcom/kingroot/kinguser/and$4$1;->aAu:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 249
    iget-object v0, p0, Lcom/kingroot/kinguser/and$4$1;->awv:Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

    iget-object v1, p0, Lcom/kingroot/kinguser/and$4$1;->aAv:Lcom/kingroot/kinguser/and$4;

    iget-object v1, v1, Lcom/kingroot/kinguser/and$4;->aAs:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    iget-object v2, p0, Lcom/kingroot/kinguser/and$4$1;->aAv:Lcom/kingroot/kinguser/and$4;

    iget-object v2, v2, Lcom/kingroot/kinguser/and$4;->aAt:Ljava/lang/String;

    iget-object v3, p0, Lcom/kingroot/kinguser/and$4$1;->aAv:Lcom/kingroot/kinguser/and$4;

    iget-object v3, v3, Lcom/kingroot/kinguser/and$4;->avT:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    iget v4, p0, Lcom/kingroot/kinguser/and$4$1;->aAu:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/and;->b(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;Lcom/kingcore/uilib/TextRoundCornerProgressBar;Ljava/lang/String;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;I)V

    .line 250
    return-void
.end method
