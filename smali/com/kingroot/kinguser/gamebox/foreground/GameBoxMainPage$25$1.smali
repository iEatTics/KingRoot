.class Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$25$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$25;->onProgress(ILcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aOT:Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$25;

.field final synthetic awv:Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

.field final synthetic aww:I


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$25;Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;I)V
    .locals 0

    .prologue
    .line 1222
    iput-object p1, p0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$25$1;->aOT:Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$25;

    iput-object p2, p0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$25$1;->awv:Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

    iput p3, p0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$25$1;->aww:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1225
    iget-object v0, p0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$25$1;->awv:Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

    if-eqz v0, :cond_0

    .line 1226
    iget-object v0, p0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$25$1;->awv:Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

    iget v1, p0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$25$1;->aww:I

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->setPercentage(I)V

    .line 1227
    iget-object v0, p0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$25$1;->aOT:Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$25;

    iget-object v0, v0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$25;->this$0:Lcom/kingroot/kinguser/atm;

    invoke-static {v0}, Lcom/kingroot/kinguser/atm;->w(Lcom/kingroot/kinguser/atm;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$25$1;->awv:Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/and;->a(Ljava/util/List;Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    .line 1229
    :cond_0
    return-void
.end method
