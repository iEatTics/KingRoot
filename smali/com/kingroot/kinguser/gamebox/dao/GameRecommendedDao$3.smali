.class public Lcom/kingroot/kinguser/gamebox/dao/GameRecommendedDao$3;
.super Lcom/kingroot/kinguser/gamebox/foreground/model/IGameFreshListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/atb;->iV(Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/atb;

.field final synthetic val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$result:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/atb;Ljava/util/List;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/kingroot/kinguser/gamebox/dao/GameRecommendedDao$3;->this$0:Lcom/kingroot/kinguser/atb;

    iput-object p2, p0, Lcom/kingroot/kinguser/gamebox/dao/GameRecommendedDao$3;->val$result:Ljava/util/List;

    iput-object p3, p0, Lcom/kingroot/kinguser/gamebox/dao/GameRecommendedDao$3;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Lcom/kingroot/kinguser/gamebox/foreground/model/IGameFreshListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdateGameFinish(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 179
    iget-object v0, p0, Lcom/kingroot/kinguser/gamebox/dao/GameRecommendedDao$3;->val$result:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 180
    iget-object v0, p0, Lcom/kingroot/kinguser/gamebox/dao/GameRecommendedDao$3;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 181
    return-void
.end method
