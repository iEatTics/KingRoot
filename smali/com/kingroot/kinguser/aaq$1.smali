.class final Lcom/kingroot/kinguser/aaq$1;
.super Lcom/kingroot/kinguser/wo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/aaq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/kingroot/kinguser/wo;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/wo$a;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 18
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/wo;->a(Lcom/kingroot/kinguser/wo$a;)V

    .line 19
    invoke-interface {p1}, Lcom/kingroot/kinguser/wo$a;->nF()Ljava/util/List;

    move-result-object v3

    .line 20
    const/4 v2, 0x0

    .line 21
    const-string v1, ""

    .line 23
    invoke-static {v3}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v5, :cond_1

    .line 24
    const/4 v0, 0x0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 26
    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 27
    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 30
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    .line 31
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 32
    instance-of v3, v0, Lcom/kingroot/kinguser/aaq$a;

    if-eqz v3, :cond_2

    .line 33
    check-cast v0, Lcom/kingroot/kinguser/aaq$a;

    .line 37
    :goto_0
    invoke-static {v1}, Lcom/kingroot/kinguser/aaq;->dO(Ljava/lang/String;)Z

    move-result v1

    .line 38
    if-eqz v0, :cond_1

    .line 39
    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/aaq$a;->ab(Z)V

    .line 42
    :cond_1
    return-void

    :cond_2
    move-object v0, v2

    goto :goto_0
.end method
