.class Lcom/kingroot/kinguser/gd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/fp;


# instance fields
.field final synthetic qm:Ljava/util/List;

.field final synthetic qn:Lcom/kingroot/kinguser/gc;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/gc;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/kingroot/kinguser/gd;->qn:Lcom/kingroot/kinguser/gc;

    iput-object p2, p0, Lcom/kingroot/kinguser/gd;->qm:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 99
    invoke-static {p1}, Lcom/kingroot/kinguser/gb;->ah(Ljava/lang/String;)Lcom/kingroot/kinguser/ew;

    move-result-object v3

    .line 100
    if-eqz v3, :cond_1

    .line 101
    const/4 v2, 0x0

    .line 102
    iget-object v0, p0, Lcom/kingroot/kinguser/gd;->qm:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ew;

    .line 103
    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/ew;->a(Lcom/kingroot/kinguser/ew;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 108
    :goto_0
    if-nez v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/kingroot/kinguser/gd;->qm:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_1
    return v1

    :cond_2
    move v0, v2

    goto :goto_0
.end method
