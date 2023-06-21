.class public Lcom/kingroot/kinguser/gamebox/dao/GameRecommendedDao$4;
.super Lcom/kingroot/kinguser/gamebox/dao/ILoadRecommendedSoftDetailListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/atb;->m(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/atb;

.field final synthetic val$appDetailModel:[Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;

.field final synthetic val$countDownLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/atb;[Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/kingroot/kinguser/gamebox/dao/GameRecommendedDao$4;->this$0:Lcom/kingroot/kinguser/atb;

    iput-object p2, p0, Lcom/kingroot/kinguser/gamebox/dao/GameRecommendedDao$4;->val$appDetailModel:[Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;

    iput-object p3, p0, Lcom/kingroot/kinguser/gamebox/dao/GameRecommendedDao$4;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Lcom/kingroot/kinguser/gamebox/dao/ILoadRecommendedSoftDetailListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadSoftDetailEnd(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;)V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/kingroot/kinguser/gamebox/dao/GameRecommendedDao$4;->val$appDetailModel:[Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 205
    iget-object v0, p0, Lcom/kingroot/kinguser/gamebox/dao/GameRecommendedDao$4;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 206
    return-void
.end method
