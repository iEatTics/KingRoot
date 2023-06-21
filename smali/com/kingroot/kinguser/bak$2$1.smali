.class Lcom/kingroot/kinguser/bak$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/zk$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bak$2;->a(Lcom/kingroot/kinguser/bed$a;)V
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

.field final synthetic beh:Lcom/kingroot/kinguser/bak$2;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bak$2;Lcom/kingroot/kinguser/bed$a;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/kingroot/kinguser/bak$2$1;->beh:Lcom/kingroot/kinguser/bak$2;

    iput-object p2, p0, Lcom/kingroot/kinguser/bak$2$1;->bef:Lcom/kingroot/kinguser/bed$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/List;)Ljava/lang/Object;
    .locals 4
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
    const/4 v3, 0x0

    .line 114
    const/4 v0, 0x1

    .line 115
    iget-object v1, p0, Lcom/kingroot/kinguser/bak$2$1;->bef:Lcom/kingroot/kinguser/bed$a;

    invoke-interface {v1}, Lcom/kingroot/kinguser/bed$a;->nF()Ljava/util/List;

    move-result-object v1

    .line 116
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 117
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 120
    :cond_0
    iget-object v1, p0, Lcom/kingroot/kinguser/bak$2$1;->beh:Lcom/kingroot/kinguser/bak$2;

    iget-object v1, v1, Lcom/kingroot/kinguser/bak$2;->bee:Lcom/kingroot/kinguser/bak;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/bak;->processLocalOrderSync(I)I

    .line 121
    const/4 v0, 0x0

    return-object v0
.end method
