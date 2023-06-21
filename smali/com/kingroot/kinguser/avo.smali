.class public Lcom/kingroot/kinguser/avo;
.super Lcom/kingroot/kinguser/avj;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/vv;


# instance fields
.field private aNa:Lcom/kingroot/kinguser/br;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    const v0, 0x9d6b

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/avj;-><init>(I)V

    .line 23
    return-void
.end method


# virtual methods
.method public mE()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/kingroot/kinguser/avo;->aNa:Lcom/kingroot/kinguser/br;

    if-nez v0, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/kingroot/kinguser/avo;->Rw()Lcom/kingroot/kinguser/br;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/avo;->aNa:Lcom/kingroot/kinguser/br;

    .line 36
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 38
    iget-object v0, p0, Lcom/kingroot/kinguser/avo;->aNa:Lcom/kingroot/kinguser/br;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kingroot/kinguser/avo;->aNa:Lcom/kingroot/kinguser/br;

    iget-object v0, v0, Lcom/kingroot/kinguser/br;->kU:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    :cond_1
    move-object v0, v1

    .line 53
    :goto_0
    return-object v0

    .line 42
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/avo;->aNa:Lcom/kingroot/kinguser/br;

    iget-object v0, v0, Lcom/kingroot/kinguser/br;->kU:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bq;

    .line 44
    :try_start_0
    iget-object v3, v0, Lcom/kingroot/kinguser/bq;->kM:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    .line 47
    iget-object v0, v0, Lcom/kingroot/kinguser/bq;->kN:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 48
    :catch_0
    move-exception v0

    goto :goto_1

    :cond_4
    move-object v0, v1

    .line 53
    goto :goto_0
.end method

.method public mF()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/kingroot/kinguser/avo;->aNa:Lcom/kingroot/kinguser/br;

    if-nez v0, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/kingroot/kinguser/avo;->Rw()Lcom/kingroot/kinguser/br;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/avo;->aNa:Lcom/kingroot/kinguser/br;

    .line 61
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 63
    iget-object v0, p0, Lcom/kingroot/kinguser/avo;->aNa:Lcom/kingroot/kinguser/br;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kingroot/kinguser/avo;->aNa:Lcom/kingroot/kinguser/br;

    iget-object v0, v0, Lcom/kingroot/kinguser/br;->kU:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    :cond_1
    move-object v0, v2

    .line 83
    :goto_0
    return-object v0

    .line 67
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/avo;->aNa:Lcom/kingroot/kinguser/br;

    iget-object v0, v0, Lcom/kingroot/kinguser/br;->kU:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bq;

    .line 69
    :try_start_0
    iget-object v1, v0, Lcom/kingroot/kinguser/bq;->kM:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_3

    .line 72
    iget-object v1, v0, Lcom/kingroot/kinguser/bq;->kN:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 73
    if-nez v1, :cond_4

    .line 74
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 76
    :cond_4
    iget-object v4, v0, Lcom/kingroot/kinguser/bq;->kO:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v0, v0, Lcom/kingroot/kinguser/bq;->kN:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 78
    :catch_0
    move-exception v0

    goto :goto_1

    :cond_5
    move-object v0, v2

    .line 83
    goto :goto_0
.end method

.method public mG()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/kingroot/kinguser/avo;->aNa:Lcom/kingroot/kinguser/br;

    if-nez v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/kingroot/kinguser/avo;->Rw()Lcom/kingroot/kinguser/br;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/avo;->aNa:Lcom/kingroot/kinguser/br;

    .line 91
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 93
    iget-object v0, p0, Lcom/kingroot/kinguser/avo;->aNa:Lcom/kingroot/kinguser/br;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kingroot/kinguser/avo;->aNa:Lcom/kingroot/kinguser/br;

    iget-object v0, v0, Lcom/kingroot/kinguser/br;->kU:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    :cond_1
    move-object v0, v1

    .line 108
    :goto_0
    return-object v0

    .line 97
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/avo;->aNa:Lcom/kingroot/kinguser/br;

    iget-object v0, v0, Lcom/kingroot/kinguser/br;->kU:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bq;

    .line 99
    :try_start_0
    iget-object v3, v0, Lcom/kingroot/kinguser/bq;->kM:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 102
    iget-object v0, v0, Lcom/kingroot/kinguser/bq;->kN:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 103
    :catch_0
    move-exception v0

    goto :goto_1

    :cond_4
    move-object v0, v1

    .line 108
    goto :goto_0
.end method

.method protected uy()V
    .locals 1

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/kingroot/kinguser/avo;->Rw()Lcom/kingroot/kinguser/br;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/avo;->aNa:Lcom/kingroot/kinguser/br;

    .line 114
    return-void
.end method
