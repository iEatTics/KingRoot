.class public Lcom/kingroot/kinguser/auo$5;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/auo;->PP()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic ade:Lcom/kingroot/kinguser/akl;

.field public final synthetic adf:J

.field public final synthetic adg:I

.field public final synthetic this$0:Lcom/kingroot/kinguser/auo;

.field public final synthetic val$countDownLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/auo;Ljava/util/concurrent/CountDownLatch;Lcom/kingroot/kinguser/akl;JI)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/kingroot/kinguser/auo$5;->this$0:Lcom/kingroot/kinguser/auo;

    iput-object p2, p0, Lcom/kingroot/kinguser/auo$5;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Lcom/kingroot/kinguser/auo$5;->ade:Lcom/kingroot/kinguser/akl;

    iput-wide p4, p0, Lcom/kingroot/kinguser/auo$5;->adf:J

    iput p6, p0, Lcom/kingroot/kinguser/auo$5;->adg:I

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 201
    invoke-static {}, Lcom/kingroot/kinguser/alm;->GQ()Lcom/kingroot/kinguser/asy;

    move-result-object v0

    invoke-interface {v0}, Lcom/kingroot/kinguser/asy;->GT()Ljava/util/ArrayList;

    move-result-object v0

    .line 202
    invoke-static {}, Lcom/kingroot/kinguser/amz;->II()Lcom/kingroot/kinguser/amz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/amz;->IL()Ljava/util/List;

    move-result-object v1

    .line 205
    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/auo$5;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 232
    :goto_0
    return-void

    .line 209
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 210
    invoke-static {}, Lcom/kingroot/kinguser/amz;->II()Lcom/kingroot/kinguser/amz;

    move-result-object v1

    new-instance v2, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$6$1;

    invoke-direct {v2, p0, v0}, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$6$1;-><init>(Lcom/kingroot/kinguser/auo$5;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/amz;->a(Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppHistoryListener;)V

    goto :goto_0
.end method
