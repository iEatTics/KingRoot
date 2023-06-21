.class Lcom/kingroot/kinguser/kd;
.super Lcom/kingroot/kinguser/mg;
.source "SourceFile"


# instance fields
.field final synthetic tH:Lcom/kingroot/kinguser/kc;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/kc;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/kingroot/kinguser/kd;->tH:Lcom/kingroot/kinguser/kc;

    invoke-direct {p0}, Lcom/kingroot/kinguser/mg;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 39
    iget-object v0, p0, Lcom/kingroot/kinguser/kd;->tH:Lcom/kingroot/kinguser/kc;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/kc;->cE()Ljava/util/List;

    move-result-object v2

    .line 40
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 41
    iget-object v0, p0, Lcom/kingroot/kinguser/kd;->tH:Lcom/kingroot/kinguser/kc;

    invoke-static {v0}, Lcom/kingroot/kinguser/kc;->a(Lcom/kingroot/kinguser/kc;)Lcom/kingroot/kinguser/kg;

    move-result-object v0

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/kingroot/kinguser/ke;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/ke;-><init>(Lcom/kingroot/kinguser/kd;)V

    .line 55
    iget-object v1, p0, Lcom/kingroot/kinguser/kd;->tH:Lcom/kingroot/kinguser/kc;

    new-instance v3, Lcom/kingroot/kinguser/kg;

    iget-object v4, p0, Lcom/kingroot/kinguser/kd;->tH:Lcom/kingroot/kinguser/kc;

    invoke-static {v4}, Lcom/kingroot/kinguser/kc;->b(Lcom/kingroot/kinguser/kc;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/kingroot/kinguser/kd;->tH:Lcom/kingroot/kinguser/kc;

    invoke-static {v5}, Lcom/kingroot/kinguser/kc;->c(Lcom/kingroot/kinguser/kc;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v0}, Lcom/kingroot/kinguser/kg;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/kingroot/kinguser/kg$a;)V

    invoke-static {v1, v3}, Lcom/kingroot/kinguser/kc;->a(Lcom/kingroot/kinguser/kc;Lcom/kingroot/kinguser/kg;)Lcom/kingroot/kinguser/kg;

    .line 58
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 59
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 60
    new-instance v4, Lcom/kingroot/kinguser/kc$a;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/king/uranus/ac;

    iget-object v5, v0, Lcom/king/uranus/ac;->cS:Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/king/uranus/ac;

    iget-object v0, v0, Lcom/king/uranus/ac;->url:Ljava/lang/String;

    invoke-direct {v4, v5, v0}, Lcom/kingroot/kinguser/kc$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/kd;->tH:Lcom/kingroot/kinguser/kc;

    invoke-static {v0}, Lcom/kingroot/kinguser/kc;->a(Lcom/kingroot/kinguser/kc;)Lcom/kingroot/kinguser/kg;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/kg;->n(Ljava/util/List;)V

    .line 66
    :cond_2
    return-void
.end method
