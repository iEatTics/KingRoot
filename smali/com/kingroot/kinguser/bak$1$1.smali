.class Lcom/kingroot/kinguser/bak$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/zk$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bak$1;->a(Lcom/kingroot/kinguser/bed$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/kingroot/kinguser/zk$a",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic bef:Lcom/kingroot/kinguser/bed$a;

.field final synthetic beg:Lcom/kingroot/kinguser/bak$1;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bak$1;Lcom/kingroot/kinguser/bed$a;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/kingroot/kinguser/bak$1$1;->beg:Lcom/kingroot/kinguser/bak$1;

    iput-object p2, p0, Lcom/kingroot/kinguser/bak$1$1;->bef:Lcom/kingroot/kinguser/bed$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/List;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 82
    .line 83
    iget-object v0, p0, Lcom/kingroot/kinguser/bak$1$1;->bef:Lcom/kingroot/kinguser/bed$a;

    invoke-interface {v0}, Lcom/kingroot/kinguser/bed$a;->nF()Ljava/util/List;

    move-result-object v0

    .line 84
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    .line 85
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 89
    :goto_0
    iget-object v2, p0, Lcom/kingroot/kinguser/bak$1$1;->beg:Lcom/kingroot/kinguser/bak$1;

    iget-object v2, v2, Lcom/kingroot/kinguser/bak$1;->bee:Lcom/kingroot/kinguser/bak;

    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/bak;->pullPluginOrderSync(Z)I

    .line 92
    iget-object v0, p0, Lcom/kingroot/kinguser/bak$1$1;->beg:Lcom/kingroot/kinguser/bak$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/bak$1;->bee:Lcom/kingroot/kinguser/bak;

    invoke-static {v0}, Lcom/kingroot/kinguser/bak;->a(Lcom/kingroot/kinguser/bak;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/kingroot/kinguser/bak$1$1;->beg:Lcom/kingroot/kinguser/bak$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/bak$1;->bee:Lcom/kingroot/kinguser/bak;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/bak;->processLocalOrderSync(I)I

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bak$1$1;->beg:Lcom/kingroot/kinguser/bak$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/bak$1;->bee:Lcom/kingroot/kinguser/bak;

    invoke-static {v0}, Lcom/kingroot/kinguser/bak;->a(Lcom/kingroot/kinguser/bak;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 98
    const/4 v0, 0x0

    return-object v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
