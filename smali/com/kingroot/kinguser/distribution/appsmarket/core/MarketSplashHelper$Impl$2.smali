.class public Lcom/kingroot/kinguser/distribution/appsmarket/core/MarketSplashHelper$Impl$2;
.super Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/amb$a;->a(ILcom/kingroot/kinguser/distribution/appsmarket/interfaces/IGetSplashResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/amb$a;

.field final synthetic val$result:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IGetSplashResult;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/amb$a;Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IGetSplashResult;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/core/MarketSplashHelper$Impl$2;->this$0:Lcom/kingroot/kinguser/amb$a;

    iput-object p2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/core/MarketSplashHelper$Impl$2;->val$result:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IGetSplashResult;

    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(ILjava/util/List;)V
    .locals 4
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
    .line 134
    invoke-static {p2}, Lcom/kingroot/kinguser/yy;->e(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    .line 135
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 136
    iget-object v3, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->bgPicUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 137
    iget-object v3, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->bgPicUrl:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    :cond_0
    iget-object v3, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->btnPicUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 141
    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->btnPicUrl:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/apv;->LO()Lcom/kingroot/kinguser/apv;

    move-result-object v0

    iget-object v3, p0, Lcom/kingroot/kinguser/distribution/appsmarket/core/MarketSplashHelper$Impl$2;->this$0:Lcom/kingroot/kinguser/amb$a;

    invoke-static {v3}, Lcom/kingroot/kinguser/amb$a;->a(Lcom/kingroot/kinguser/amb$a;)Lcom/kingroot/kinguser/apv$a;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/apv;->a(Ljava/util/List;Lcom/kingroot/kinguser/apv$a;)V

    goto :goto_0

    .line 148
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/core/MarketSplashHelper$Impl$2;->val$result:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IGetSplashResult;

    if-eqz v0, :cond_3

    .line 149
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/core/MarketSplashHelper$Impl$2;->val$result:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IGetSplashResult;

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/core/MarketSplashHelper$Impl$2;->this$0:Lcom/kingroot/kinguser/amb$a;

    invoke-static {v1, p2}, Lcom/kingroot/kinguser/amb$a;->a(Lcom/kingroot/kinguser/amb$a;Ljava/util/List;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IGetSplashResult;->onResult(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)V

    .line 152
    :cond_3
    return-void
.end method
