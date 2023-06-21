.class Lcom/kingroot/kinguser/alp$7;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/alp;->a(Ljava/util/List;Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IRequestAvailUpdateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ayh:Lcom/kingroot/kinguser/alp;

.field final synthetic ayw:Ljava/util/List;

.field final synthetic ayx:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IRequestAvailUpdateListener;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/alp;Ljava/util/List;Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IRequestAvailUpdateListener;)V
    .locals 0

    .prologue
    .line 539
    iput-object p1, p0, Lcom/kingroot/kinguser/alp$7;->ayh:Lcom/kingroot/kinguser/alp;

    iput-object p2, p0, Lcom/kingroot/kinguser/alp$7;->ayw:Ljava/util/List;

    iput-object p3, p0, Lcom/kingroot/kinguser/alp$7;->ayx:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IRequestAvailUpdateListener;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 544
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/kingroot/kinguser/alp$7;->ayw:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 545
    iget-object v0, p0, Lcom/kingroot/kinguser/alp$7;->ayw:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/LocalAppInfo;

    .line 546
    invoke-virtual {v0}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/LocalAppInfo;->Ix()Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 548
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/btx;->aid()Lcom/kingroot/kinguser/btx;

    move-result-object v0

    new-instance v2, Lcom/kingroot/kinguser/alp$7$1;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/alp$7$1;-><init>(Lcom/kingroot/kinguser/alp$7;)V

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/btx;->a(Ljava/util/List;Lcom/kingroot/kinguser/btz;)V

    .line 583
    return-void
.end method
