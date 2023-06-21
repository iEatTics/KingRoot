.class public Lcom/kingroot/kinguser/mm;
.super Lcom/kingroot/kinguser/ml;
.source "SourceFile"


# instance fields
.field private vR:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field vT:Lcom/kingroot/kinguser/mq;

.field protected vU:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/kingroot/kinguser/ml;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/mm;->vU:Ljava/util/HashMap;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/mm;->vR:Ljava/util/HashMap;

    .line 22
    new-instance v0, Lcom/kingroot/kinguser/mq;

    invoke-direct {v0}, Lcom/kingroot/kinguser/mq;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/mm;->vT:Lcom/kingroot/kinguser/mq;

    return-void
.end method

.method private a([BLjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 257
    iget-object v0, p0, Lcom/kingroot/kinguser/mm;->vT:Lcom/kingroot/kinguser/mq;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/mq;->u([B)V

    .line 258
    iget-object v0, p0, Lcom/kingroot/kinguser/mm;->vT:Lcom/kingroot/kinguser/mq;

    iget-object v1, p0, Lcom/kingroot/kinguser/mm;->vS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/mq;->by(Ljava/lang/String;)I

    .line 259
    iget-object v0, p0, Lcom/kingroot/kinguser/mm;->vT:Lcom/kingroot/kinguser/mq;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p2, v1, v2}, Lcom/kingroot/kinguser/mq;->d(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    .line 260
    return-object v0
.end method

.method private d(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/kingroot/kinguser/mm;->vR:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 137
    iget-object v1, p0, Lcom/kingroot/kinguser/mm;->vU:Ljava/util/HashMap;

    if-eqz v1, :cond_3

    .line 138
    iget-object v1, p0, Lcom/kingroot/kinguser/mm;->vU:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-object v0

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/mm;->vR:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 141
    iget-object v0, p0, Lcom/kingroot/kinguser/mm;->vR:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 143
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/mm;->vU:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 145
    :try_start_0
    invoke-direct {p0, v0, p2}, Lcom/kingroot/kinguser/mm;->a([BLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 146
    if-eqz v0, :cond_0

    .line 147
    invoke-direct {p0, p1, v0}, Lcom/kingroot/kinguser/mm;->d(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    new-instance v1, Lcom/king/uranus/cH;

    invoke-direct {v1, v0}, Lcom/king/uranus/cH;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 155
    :cond_3
    iget-object v1, p0, Lcom/kingroot/kinguser/mm;->vP:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    iget-object v0, p0, Lcom/kingroot/kinguser/mm;->vR:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 158
    iget-object v0, p0, Lcom/kingroot/kinguser/mm;->vR:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 160
    :cond_4
    iget-object v0, p0, Lcom/kingroot/kinguser/mm;->vP:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 162
    new-array v1, v2, [B

    .line 163
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 164
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 165
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 169
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/kingroot/kinguser/mm;->vT:Lcom/kingroot/kinguser/mq;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/mq;->u([B)V

    .line 170
    iget-object v0, p0, Lcom/kingroot/kinguser/mm;->vT:Lcom/kingroot/kinguser/mq;

    iget-object v1, p0, Lcom/kingroot/kinguser/mm;->vS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/mq;->by(Ljava/lang/String;)I

    .line 171
    iget-object v0, p0, Lcom/kingroot/kinguser/mm;->vT:Lcom/kingroot/kinguser/mq;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p2, v1, v2}, Lcom/kingroot/kinguser/mq;->d(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    .line 172
    invoke-direct {p0, p1, v0}, Lcom/kingroot/kinguser/mm;->d(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 174
    :catch_1
    move-exception v0

    .line 175
    new-instance v1, Lcom/king/uranus/cH;

    invoke-direct {v1, v0}, Lcom/king/uranus/cH;-><init>(Ljava/lang/Exception;)V

    throw v1

    :cond_5
    move-object v0, v1

    goto :goto_1
.end method

.method public bridge synthetic bu(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 13
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/ml;->bu(Ljava/lang/String;)V

    return-void
.end method

.method public eD()[B
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 371
    iget-object v0, p0, Lcom/kingroot/kinguser/mm;->vU:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 372
    new-instance v0, Lcom/kingroot/kinguser/mr;

    invoke-direct {v0, v2}, Lcom/kingroot/kinguser/mr;-><init>(I)V

    .line 373
    iget-object v1, p0, Lcom/kingroot/kinguser/mm;->vS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/mr;->by(Ljava/lang/String;)I

    .line 374
    iget-object v1, p0, Lcom/kingroot/kinguser/mm;->vU:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/mr;->a(Ljava/util/Map;I)V

    .line 375
    invoke-virtual {v0}, Lcom/kingroot/kinguser/mr;->eJ()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/ms;->a(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    .line 377
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/kingroot/kinguser/ml;->eD()[B

    move-result-object v0

    goto :goto_0
.end method

.method public eE()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/mm;->vU:Ljava/util/HashMap;

    .line 30
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/kingroot/kinguser/mm;->vU:Ljava/util/HashMap;

    if-eqz v0, :cond_3

    .line 79
    if-nez p1, :cond_0

    .line 80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "put key can not is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    if-nez p2, :cond_1

    .line 83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "put value can not is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_1
    instance-of v0, p2, Ljava/util/Set;

    if-eqz v0, :cond_2

    .line 86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "can not support Set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_2
    new-instance v0, Lcom/kingroot/kinguser/mr;

    invoke-direct {v0}, Lcom/kingroot/kinguser/mr;-><init>()V

    .line 89
    iget-object v1, p0, Lcom/kingroot/kinguser/mm;->vS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/mr;->by(Ljava/lang/String;)I

    .line 90
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/kingroot/kinguser/mr;->a(Ljava/lang/Object;I)V

    .line 91
    invoke-virtual {v0}, Lcom/kingroot/kinguser/mr;->eJ()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/ms;->a(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    .line 92
    iget-object v1, p0, Lcom/kingroot/kinguser/mm;->vU:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    :goto_0
    return-void

    .line 94
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/kingroot/kinguser/ml;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public s([B)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 407
    :try_start_0
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/ml;->s([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    :goto_0
    return-void

    .line 409
    :catch_0
    move-exception v0

    .line 410
    iget-object v0, p0, Lcom/kingroot/kinguser/mm;->vT:Lcom/kingroot/kinguser/mq;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/mq;->u([B)V

    .line 411
    iget-object v0, p0, Lcom/kingroot/kinguser/mm;->vT:Lcom/kingroot/kinguser/mq;

    iget-object v1, p0, Lcom/kingroot/kinguser/mm;->vS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/mq;->by(Ljava/lang/String;)I

    .line 412
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 413
    const-string v1, ""

    new-array v2, v3, [B

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    iget-object v1, p0, Lcom/kingroot/kinguser/mm;->vT:Lcom/kingroot/kinguser/mq;

    invoke-virtual {v1, v0, v3, v3}, Lcom/kingroot/kinguser/mq;->a(Ljava/util/Map;IZ)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/mm;->vU:Ljava/util/HashMap;

    goto :goto_0
.end method
