.class public Lcom/qq/jce/wup/UniAttribute;
.super Lcom/kingroot/kinguser/bni;
.source "SourceFile"


# instance fields
.field private bDv:Ljava/util/HashMap;
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

.field bDx:Lcom/qq/taf/jce/JceInputStream;

.field protected bDy:Ljava/util/HashMap;
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
    invoke-direct {p0}, Lcom/kingroot/kinguser/bni;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->bDy:Ljava/util/HashMap;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->bDv:Ljava/util/HashMap;

    .line 22
    new-instance v0, Lcom/qq/taf/jce/JceInputStream;

    invoke-direct {v0}, Lcom/qq/taf/jce/JceInputStream;-><init>()V

    iput-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->bDx:Lcom/qq/taf/jce/JceInputStream;

    .line 13
    return-void
.end method

.method private b([BLjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 257
    iget-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->bDx:Lcom/qq/taf/jce/JceInputStream;

    invoke-virtual {v0, p1}, Lcom/qq/taf/jce/JceInputStream;->wrap([B)V

    .line 258
    iget-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->bDx:Lcom/qq/taf/jce/JceInputStream;

    iget-object v1, p0, Lcom/qq/jce/wup/UniAttribute;->bDw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qq/taf/jce/JceInputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 259
    iget-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->bDx:Lcom/qq/taf/jce/JceInputStream;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p2, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    .line 260
    return-object v0
.end method

.method private g(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->bDv:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    return-void
.end method


# virtual methods
.method public clearCacheData()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->bDv:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 37
    return-void
.end method

.method public containsKey(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->bDy:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->bDy:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 68
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->bDt:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public decode([B)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 407
    :try_start_0
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/bni;->decode([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    :goto_0
    return-void

    .line 409
    :catch_0
    move-exception v0

    .line 410
    iget-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->bDx:Lcom/qq/taf/jce/JceInputStream;

    invoke-virtual {v0, p1}, Lcom/qq/taf/jce/JceInputStream;->wrap([B)V

    .line 411
    iget-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->bDx:Lcom/qq/taf/jce/JceInputStream;

    iget-object v1, p0, Lcom/qq/jce/wup/UniAttribute;->bDw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qq/taf/jce/JceInputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 412
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 413
    const-string v1, ""

    new-array v2, v3, [B

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    iget-object v1, p0, Lcom/qq/jce/wup/UniAttribute;->bDx:Lcom/qq/taf/jce/JceInputStream;

    invoke-virtual {v1, v0, v3, v3}, Lcom/qq/taf/jce/JceInputStream;->readMap(Ljava/util/Map;IZ)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->bDy:Ljava/util/HashMap;

    goto :goto_0
.end method

.method public decodeVersion2([B)V
    .locals 0

    .prologue
    .line 397
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/bni;->decode([B)V

    .line 398
    return-void
.end method

.method public decodeVersion3([B)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 385
    iget-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->bDx:Lcom/qq/taf/jce/JceInputStream;

    invoke-virtual {v0, p1}, Lcom/qq/taf/jce/JceInputStream;->wrap([B)V

    .line 386
    iget-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->bDx:Lcom/qq/taf/jce/JceInputStream;

    iget-object v1, p0, Lcom/qq/jce/wup/UniAttribute;->bDw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qq/taf/jce/JceInputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 387
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 388
    const-string v1, ""

    new-array v2, v3, [B

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    iget-object v1, p0, Lcom/qq/jce/wup/UniAttribute;->bDx:Lcom/qq/taf/jce/JceInputStream;

    invoke-virtual {v1, v0, v3, v3}, Lcom/qq/taf/jce/JceInputStream;->readMap(Ljava/util/Map;IZ)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->bDy:Ljava/util/HashMap;

    .line 390
    return-void
.end method

.method public encode()[B
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 371
    iget-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->bDy:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 372
    new-instance v0, Lcom/qq/taf/jce/JceOutputStream;

    invoke-direct {v0, v2}, Lcom/qq/taf/jce/JceOutputStream;-><init>(I)V

    .line 373
    iget-object v1, p0, Lcom/qq/jce/wup/UniAttribute;->bDw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 374
    iget-object v1, p0, Lcom/qq/jce/wup/UniAttribute;->bDy:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Map;I)V

    .line 375
    invoke-virtual {v0}, Lcom/qq/taf/jce/JceOutputStream;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/taf/jce/JceUtil;->getJceBufArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    .line 377
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/kingroot/kinguser/bni;->encode()[B

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/bni;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lcom/kingroot/kinguser/bni;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 249
    iget-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->bDy:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 252
    :goto_0
    return-object p3

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/qq/jce/wup/UniAttribute;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_0
.end method

.method public getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
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
    iget-object v1, p0, Lcom/qq/jce/wup/UniAttribute;->bDy:Ljava/util/HashMap;

    if-eqz v1, :cond_3

    .line 138
    iget-object v1, p0, Lcom/qq/jce/wup/UniAttribute;->bDy:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-object v0

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->bDv:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 141
    iget-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->bDv:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 143
    :cond_2
    iget-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->bDy:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 145
    :try_start_0
    invoke-direct {p0, v0, p2}, Lcom/qq/jce/wup/UniAttribute;->b([BLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 146
    if-eqz v0, :cond_0

    .line 147
    invoke-direct {p0, p1, v0}, Lcom/qq/jce/wup/UniAttribute;->g(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    new-instance v1, Lcom/qq/jce/wup/ObjectCreateException;

    invoke-direct {v1, v0}, Lcom/qq/jce/wup/ObjectCreateException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 155
    :cond_3
    iget-object v1, p0, Lcom/qq/jce/wup/UniAttribute;->bDt:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    iget-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->bDv:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 158
    iget-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->bDv:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 160
    :cond_4
    iget-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->bDt:Ljava/util/HashMap;

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
    iget-object v1, p0, Lcom/qq/jce/wup/UniAttribute;->bDx:Lcom/qq/taf/jce/JceInputStream;

    invoke-virtual {v1, v0}, Lcom/qq/taf/jce/JceInputStream;->wrap([B)V

    .line 170
    iget-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->bDx:Lcom/qq/taf/jce/JceInputStream;

    iget-object v1, p0, Lcom/qq/jce/wup/UniAttribute;->bDw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qq/taf/jce/JceInputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 171
    iget-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->bDx:Lcom/qq/taf/jce/JceInputStream;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p2, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    .line 172
    invoke-direct {p0, p1, v0}, Lcom/qq/jce/wup/UniAttribute;->g(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 174
    :catch_1
    move-exception v0

    .line 175
    new-instance v1, Lcom/qq/jce/wup/ObjectCreateException;

    invoke-direct {v1, v0}, Lcom/qq/jce/wup/ObjectCreateException;-><init>(Ljava/lang/Exception;)V

    throw v1

    :cond_5
    move-object v0, v1

    goto :goto_1
.end method

.method public getByClass(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;TT;)TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 193
    iget-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->bDy:Ljava/util/HashMap;

    if-eqz v0, :cond_3

    .line 194
    iget-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->bDy:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 229
    :cond_0
    :goto_0
    return-object p3

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->bDv:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 197
    iget-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->bDv:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_0

    .line 199
    :cond_2
    iget-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->bDy:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 201
    :try_start_0
    invoke-direct {p0, v0, p2}, Lcom/qq/jce/wup/UniAttribute;->b([BLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 202
    if-eqz p3, :cond_0

    .line 203
    invoke-direct {p0, p1, p3}, Lcom/qq/jce/wup/UniAttribute;->g(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 206
    :catch_0
    move-exception v0

    .line 207
    new-instance v1, Lcom/qq/jce/wup/ObjectCreateException;

    invoke-direct {v1, v0}, Lcom/qq/jce/wup/ObjectCreateException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 211
    :cond_3
    iget-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->bDt:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->bDv:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 214
    iget-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->bDv:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_0

    .line 216
    :cond_4
    iget-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->bDt:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 218
    new-array v1, v1, [B

    .line 219
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

    .line 220
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 221
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 225
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/qq/jce/wup/UniAttribute;->bDx:Lcom/qq/taf/jce/JceInputStream;

    invoke-virtual {v1, v0}, Lcom/qq/taf/jce/JceInputStream;->wrap([B)V

    .line 226
    iget-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->bDx:Lcom/qq/taf/jce/JceInputStream;

    iget-object v1, p0, Lcom/qq/jce/wup/UniAttribute;->bDw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qq/taf/jce/JceInputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 227
    iget-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->bDx:Lcom/qq/taf/jce/JceInputStream;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p2, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object p3

    .line 228
    invoke-direct {p0, p1, p3}, Lcom/qq/jce/wup/UniAttribute;->g(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 230
    :catch_1
    move-exception v0

    .line 231
    new-instance v1, Lcom/qq/jce/wup/ObjectCreateException;

    invoke-direct {v1, v0}, Lcom/qq/jce/wup/ObjectCreateException;-><init>(Ljava/lang/Exception;)V

    throw v1

    :cond_5
    move-object v0, v1

    goto :goto_1
.end method

.method public bridge synthetic getEncodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/kingroot/kinguser/bni;->getEncodeName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getJceStruct(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/bni;->getJceStruct(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getJceStruct(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
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
    .line 108
    iget-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->bDy:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 109
    const/4 v0, 0x0

    .line 119
    :cond_0
    :goto_0
    return-object v0

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->bDv:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 111
    iget-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->bDv:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 113
    :cond_2
    iget-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->bDy:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 115
    :try_start_0
    invoke-direct {p0, v0, p2}, Lcom/qq/jce/wup/UniAttribute;->b([BLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 116
    if-eqz v0, :cond_0

    .line 117
    invoke-direct {p0, p1, v0}, Lcom/qq/jce/wup/UniAttribute;->g(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    new-instance v1, Lcom/qq/jce/wup/ObjectCreateException;

    invoke-direct {v1, v0}, Lcom/qq/jce/wup/ObjectCreateException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public getKeySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->bDy:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->bDy:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 47
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->bDt:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->bDy:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->bDy:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    .line 54
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->bDt:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    goto :goto_0
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
    iget-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->bDy:Ljava/util/HashMap;

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
    new-instance v0, Lcom/qq/taf/jce/JceOutputStream;

    invoke-direct {v0}, Lcom/qq/taf/jce/JceOutputStream;-><init>()V

    .line 89
    iget-object v1, p0, Lcom/qq/jce/wup/UniAttribute;->bDw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 90
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/Object;I)V

    .line 91
    invoke-virtual {v0}, Lcom/qq/taf/jce/JceOutputStream;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/taf/jce/JceUtil;->getJceBufArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    .line 92
    iget-object v1, p0, Lcom/qq/jce/wup/UniAttribute;->bDy:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    :goto_0
    return-void

    .line 94
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/kingroot/kinguser/bni;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public remove(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 331
    iget-object v1, p0, Lcom/qq/jce/wup/UniAttribute;->bDy:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    .line 333
    iget-object v1, p0, Lcom/qq/jce/wup/UniAttribute;->bDy:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 340
    :goto_0
    return-object v0

    .line 336
    :cond_0
    iget-object v1, p0, Lcom/qq/jce/wup/UniAttribute;->bDy:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 340
    :cond_1
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/bni;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public remove(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
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

    .line 356
    iget-object v1, p0, Lcom/qq/jce/wup/UniAttribute;->bDy:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 365
    :goto_0
    return-object v0

    .line 359
    :cond_0
    if-eqz p2, :cond_1

    .line 360
    iget-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->bDy:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 361
    invoke-direct {p0, v0, p2}, Lcom/qq/jce/wup/UniAttribute;->b([BLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 364
    :cond_1
    iget-object v1, p0, Lcom/qq/jce/wup/UniAttribute;->bDy:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public bridge synthetic setEncodeName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/bni;->setEncodeName(Ljava/lang/String;)V

    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->bDy:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->bDy:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 61
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->bDt:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    goto :goto_0
.end method

.method public useVersion3()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qq/jce/wup/UniAttribute;->bDy:Ljava/util/HashMap;

    .line 30
    return-void
.end method
