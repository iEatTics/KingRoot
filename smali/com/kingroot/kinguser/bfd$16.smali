.class Lcom/kingroot/kinguser/bfd$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bfd;
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
    .line 222
    iput-object p1, p0, Lcom/kingroot/kinguser/bfd$16;->this$0:Lcom/kingroot/kinguser/bfd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd$16;->this$0:Lcom/kingroot/kinguser/bfd;

    invoke-static {v0}, Lcom/kingroot/kinguser/bfd;->j(Lcom/kingroot/kinguser/bfd;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd$16;->this$0:Lcom/kingroot/kinguser/bfd;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bfd;->b(Lcom/kingroot/kinguser/bfd;I)V

    .line 229
    invoke-static {}, Lcom/kingroot/kinguser/aoq;->Ks()Lcom/kingroot/kinguser/aoq;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bfd$16;->this$0:Lcom/kingroot/kinguser/bfd;

    invoke-static {v1}, Lcom/kingroot/kinguser/bfd;->a(Lcom/kingroot/kinguser/bfd;)Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aoq;->hM(Ljava/lang/String;)Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

    move-result-object v0

    .line 230
    if-eqz v0, :cond_0

    .line 231
    invoke-static {}, Lcom/kingroot/kinguser/aoq;->Ks()Lcom/kingroot/kinguser/aoq;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/aoq;->a(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V

    .line 234
    :cond_0
    return-void
.end method
