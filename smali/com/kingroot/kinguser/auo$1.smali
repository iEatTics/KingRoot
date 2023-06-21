.class Lcom/kingroot/kinguser/auo$1;
.super Lcom/kingroot/kinguser/auo$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/auo;->a(Ljava/util/concurrent/atomic/AtomicInteger;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aEe:Z

.field final synthetic aRH:Z

.field final synthetic this$0:Lcom/kingroot/kinguser/auo;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/auo;ZZ)V
    .locals 1

    .prologue
    .line 139
    iput-object p1, p0, Lcom/kingroot/kinguser/auo$1;->this$0:Lcom/kingroot/kinguser/auo;

    iput-boolean p2, p0, Lcom/kingroot/kinguser/auo$1;->aRH:Z

    iput-boolean p3, p0, Lcom/kingroot/kinguser/auo$1;->aEe:Z

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/kingroot/kinguser/auo$a;-><init>(Lcom/kingroot/kinguser/auo;Lcom/kingroot/kinguser/mvp/presenter/AppsMarketMaiPresenter$1;)V

    return-void
.end method


# virtual methods
.method public onFinish(Ljava/util/List;)V
    .locals 3
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
    .line 143
    iget-object v0, p0, Lcom/kingroot/kinguser/auo$1;->this$0:Lcom/kingroot/kinguser/auo;

    invoke-static {v0}, Lcom/kingroot/kinguser/auo;->a(Lcom/kingroot/kinguser/auo;)Lcom/kingroot/kinguser/auf$b;

    move-result-object v0

    iget-boolean v1, p0, Lcom/kingroot/kinguser/auo$1;->aRH:Z

    iget-boolean v2, p0, Lcom/kingroot/kinguser/auo$1;->aEe:Z

    invoke-interface {v0, p1, v1, v2}, Lcom/kingroot/kinguser/auf$b;->a(Ljava/util/List;ZZ)V

    .line 144
    return-void
.end method
