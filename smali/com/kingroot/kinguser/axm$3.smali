.class Lcom/kingroot/kinguser/axm$3;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axm;->Ur()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/axm;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axm;)V
    .locals 0

    .prologue
    .line 609
    iput-object p1, p0, Lcom/kingroot/kinguser/axm$3;->this$0:Lcom/kingroot/kinguser/axm;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 612
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 615
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/axm$3;->this$0:Lcom/kingroot/kinguser/axm;

    invoke-static {v0}, Lcom/kingroot/kinguser/axm;->k(Lcom/kingroot/kinguser/axm;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 620
    :goto_0
    invoke-static {}, Lcom/kingroot/kinguser/activitys/AppsMarketWellChosenAppsActivity;->vs()Z

    move-result v0

    .line 621
    invoke-static {}, Lcom/kingroot/kinguser/alx;->HB()Lcom/kingroot/kinguser/alx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/alx;->HD()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 622
    invoke-static {}, Lcom/kingroot/kinguser/alx;->HB()Lcom/kingroot/kinguser/alx;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/kingroot/kinguser/alx;->fk(I)I

    move-result v1

    .line 623
    new-instance v2, Lcom/kingroot/kinguser/axm$3$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/kingroot/kinguser/axm$3$1;-><init>(Lcom/kingroot/kinguser/axm$3;ZI)V

    invoke-static {v2}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 657
    if-nez v0, :cond_0

    .line 658
    invoke-static {}, Lcom/kingroot/kinguser/amz;->II()Lcom/kingroot/kinguser/amz;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/axm$3;->this$0:Lcom/kingroot/kinguser/axm;

    invoke-static {v1}, Lcom/kingroot/kinguser/axm;->p(Lcom/kingroot/kinguser/axm;)Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppStatusListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/amz;->b(Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppStatusListener;)V

    .line 660
    :cond_0
    return-void

    .line 616
    :catch_0
    move-exception v0

    goto :goto_0
.end method
