.class public Lcom/kingroot/kinguser/vq;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static C(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/da;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 37
    invoke-static {p0}, Lcom/kingroot/kinguser/yy;->e(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/da;

    .line 38
    invoke-static {v0}, Lcom/kingroot/kinguser/vq;->a(Lcom/kingroot/kinguser/da;)Lcom/kingroot/kinguser/b;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 40
    :cond_0
    return-object v1
.end method

.method public static a(Lcom/kingroot/kinguser/da;)Lcom/kingroot/kinguser/b;
    .locals 2
    .param p0    # Lcom/kingroot/kinguser/da;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 23
    new-instance v0, Lcom/kingroot/kinguser/b;

    invoke-direct {v0}, Lcom/kingroot/kinguser/b;-><init>()V

    .line 25
    if-nez p0, :cond_0

    .line 32
    :goto_0
    return-object v0

    .line 28
    :cond_0
    iget v1, p0, Lcom/kingroot/kinguser/da;->id:I

    iput v1, v0, Lcom/kingroot/kinguser/b;->featureId:I

    .line 29
    iget v1, p0, Lcom/kingroot/kinguser/da;->fY:I

    iput v1, v0, Lcom/kingroot/kinguser/b;->timestamp:I

    .line 30
    iget-object v1, p0, Lcom/kingroot/kinguser/da;->desc:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/kingroot/kinguser/b;->count:I

    .line 31
    iget-object v1, p0, Lcom/kingroot/kinguser/da;->mO:Ljava/lang/String;

    invoke-static {v1}, Lcom/kingroot/kinguser/vq;->de(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/kingroot/kinguser/b;->strValues:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method private static de(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 46
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    :goto_0
    return-object v0

    .line 52
    :cond_0
    const-string v1, ";"

    const-string v2, ","

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 53
    const-string v2, "\\|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method
