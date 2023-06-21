.class public Lcom/kingroot/kinguser/gamebox/dao/GameRecommendedDao$1;
.super Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/atb;->a(IILjava/lang/String;Lcom/kingroot/kinguser/gamebox/foreground/model/IGameFreshListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/atb;

.field final synthetic val$begin:I

.field final synthetic val$categoryId:Ljava/lang/String;

.field final synthetic val$items:I

.field final synthetic val$listener:Lcom/kingroot/kinguser/gamebox/foreground/model/IGameFreshListener;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/atb;IILjava/lang/String;Lcom/kingroot/kinguser/gamebox/foreground/model/IGameFreshListener;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/kingroot/kinguser/gamebox/dao/GameRecommendedDao$1;->this$0:Lcom/kingroot/kinguser/atb;

    iput p2, p0, Lcom/kingroot/kinguser/gamebox/dao/GameRecommendedDao$1;->val$begin:I

    iput p3, p0, Lcom/kingroot/kinguser/gamebox/dao/GameRecommendedDao$1;->val$items:I

    iput-object p4, p0, Lcom/kingroot/kinguser/gamebox/dao/GameRecommendedDao$1;->val$categoryId:Ljava/lang/String;

    iput-object p5, p0, Lcom/kingroot/kinguser/gamebox/dao/GameRecommendedDao$1;->val$listener:Lcom/kingroot/kinguser/gamebox/foreground/model/IGameFreshListener;

    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 126
    if-eqz p2, :cond_0

    .line 127
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/kingroot/kinguser/gamebox/dao/GameRecommendedDao$1;->this$0:Lcom/kingroot/kinguser/atb;

    iget v1, p0, Lcom/kingroot/kinguser/gamebox/dao/GameRecommendedDao$1;->val$begin:I

    iget v2, p0, Lcom/kingroot/kinguser/gamebox/dao/GameRecommendedDao$1;->val$items:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/kingroot/kinguser/gamebox/dao/GameRecommendedDao$1;->val$categoryId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/atb;->a(Lcom/kingroot/kinguser/atb;ILjava/lang/String;)V

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/gamebox/dao/GameRecommendedDao$1;->val$listener:Lcom/kingroot/kinguser/gamebox/foreground/model/IGameFreshListener;

    if-eqz v0, :cond_2

    .line 133
    iget-object v0, p0, Lcom/kingroot/kinguser/gamebox/dao/GameRecommendedDao$1;->val$listener:Lcom/kingroot/kinguser/gamebox/foreground/model/IGameFreshListener;

    if-nez p2, :cond_1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    invoke-interface {v0, p2}, Lcom/kingroot/kinguser/gamebox/foreground/model/IGameFreshListener;->onUpdateGameFinish(Ljava/util/List;)V

    .line 135
    :cond_2
    return-void
.end method
