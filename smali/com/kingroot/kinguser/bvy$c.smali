.class Lcom/kingroot/kinguser/bvy$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bvy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic bQO:Lcom/kingroot/kinguser/bvy;

.field private bQQ:Lcom/kingroot/kinguser/bvw;

.field private bQR:Lcom/kingroot/kinguser/bvv;


# direct methods
.method private constructor <init>(Lcom/kingroot/kinguser/bvy;Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/kingroot/kinguser/bvy$c;->bQO:Lcom/kingroot/kinguser/bvy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bvy$c;->bQQ:Lcom/kingroot/kinguser/bvw;

    iput-object v0, p0, Lcom/kingroot/kinguser/bvy$c;->bQR:Lcom/kingroot/kinguser/bvv;

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    instance-of v0, p2, Lcom/kingroot/kinguser/bvw;

    if-eqz v0, :cond_1

    check-cast p2, Lcom/kingroot/kinguser/bvw;

    iput-object p2, p0, Lcom/kingroot/kinguser/bvy$c;->bQQ:Lcom/kingroot/kinguser/bvw;

    goto :goto_0

    :cond_1
    instance-of v0, p2, Lcom/kingroot/kinguser/bvv;

    if-eqz v0, :cond_2

    check-cast p2, Lcom/kingroot/kinguser/bvv;

    iput-object p2, p0, Lcom/kingroot/kinguser/bvy$c;->bQR:Lcom/kingroot/kinguser/bvv;

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ListenerAdapter(), invalid listener type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/bvy;Ljava/lang/Object;Lcom/kingroot/kinguser/bvy$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/bvy$c;-><init>(Lcom/kingroot/kinguser/bvy;Ljava/lang/Object;)V

    return-void
.end method

.method private a(I)V
    .locals 1

    iget-object v0, p0, Lcom/kingroot/kinguser/bvy$c;->bQQ:Lcom/kingroot/kinguser/bvw;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kingroot/kinguser/bvy$c;->bQQ:Lcom/kingroot/kinguser/bvw;

    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/bvw;->onFinish(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bvy$c;->bQR:Lcom/kingroot/kinguser/bvv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/bvy$c;->bQR:Lcom/kingroot/kinguser/bvv;

    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/bvv;->onFinish(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bvy$c;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bvy$c;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bvy$c;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/bvy$c;->l(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private l(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/securemodule/api/AppInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/securemodule/api/AppInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/kingroot/kinguser/bvy$c;->bQQ:Lcom/kingroot/kinguser/bvw;

    if-eqz v0, :cond_1

    const-string v0, "SecureModuleService"

    const-string v1, "V2, found risk or unknow"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/cdo;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kingroot/kinguser/bvy$c;->bQQ:Lcom/kingroot/kinguser/bvw;

    invoke-interface {v0, p1, p2}, Lcom/kingroot/kinguser/bvw;->f(Ljava/util/List;Ljava/util/List;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bvy$c;->bQR:Lcom/kingroot/kinguser/bvv;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_3

    :cond_2
    const-string v0, "SecureModuleService"

    const-string v1, "V1, no risk, callback onFinish"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/cdo;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kingroot/kinguser/bvy$c;->bQR:Lcom/kingroot/kinguser/bvv;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/bvv;->onFinish(I)V

    goto :goto_0

    :cond_3
    const-string v0, "SecureModuleService"

    const-string v1, "V1, with risk, callback onRiskFoud"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/cdo;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kingroot/kinguser/bvy$c;->bQR:Lcom/kingroot/kinguser/bvv;

    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/bvv;->ct(Ljava/util/List;)V

    goto :goto_0
.end method
