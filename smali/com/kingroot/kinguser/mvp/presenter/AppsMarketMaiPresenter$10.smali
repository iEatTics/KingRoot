.class public Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$10;
.super Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IGetSplashResult$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/auo;->PT()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/auo;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/auo;)V
    .locals 0

    .prologue
    .line 347
    iput-object p1, p0, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$10;->this$0:Lcom/kingroot/kinguser/auo;

    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IGetSplashResult$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)V
    .locals 1

    .prologue
    .line 350
    if-nez p1, :cond_0

    .line 356
    :goto_0
    return-void

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$10;->this$0:Lcom/kingroot/kinguser/auo;

    invoke-static {v0}, Lcom/kingroot/kinguser/auo;->a(Lcom/kingroot/kinguser/auo;)Lcom/kingroot/kinguser/auf$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/auf$b;->i(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)V

    goto :goto_0
.end method
