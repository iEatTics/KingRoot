.class Lcom/kingroot/kinguser/auo$3;
.super Lcom/kingroot/kinguser/auo$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/auo;->PN()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/auo;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/auo;)V
    .locals 1

    .prologue
    .line 161
    iput-object p1, p0, Lcom/kingroot/kinguser/auo$3;->this$0:Lcom/kingroot/kinguser/auo;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kingroot/kinguser/auo$a;-><init>(Lcom/kingroot/kinguser/auo;Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$1;)V

    return-void
.end method


# virtual methods
.method public onFinish(Ljava/util/List;)V
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
    .line 165
    iget-object v0, p0, Lcom/kingroot/kinguser/auo$3;->this$0:Lcom/kingroot/kinguser/auo;

    invoke-static {v0}, Lcom/kingroot/kinguser/auo;->a(Lcom/kingroot/kinguser/auo;)Lcom/kingroot/kinguser/auf$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/auf$b;->aO(Ljava/util/List;)V

    .line 166
    return-void
.end method
