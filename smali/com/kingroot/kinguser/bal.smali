.class Lcom/kingroot/kinguser/bal;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static bej:Ljava/lang/String;

.field private static bek:Ljava/lang/String;

.field private static bel:Ljava/lang/String;

.field private static bem:Ljava/lang/String;

.field private static ben:Ljava/lang/String;

.field private static beo:Ljava/lang/String;

.field private static bep:Ljava/lang/String;

.field private static beq:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "_"

    sput-object v0, Lcom/kingroot/kinguser/bal;->bej:Ljava/lang/String;

    .line 36
    const-string v0, "id"

    sput-object v0, Lcom/kingroot/kinguser/bal;->bek:Ljava/lang/String;

    .line 37
    const-string v0, "count"

    sput-object v0, Lcom/kingroot/kinguser/bal;->bel:Ljava/lang/String;

    .line 38
    const-string v0, "time"

    sput-object v0, Lcom/kingroot/kinguser/bal;->bem:Ljava/lang/String;

    .line 39
    const-string v0, "result"

    sput-object v0, Lcom/kingroot/kinguser/bal;->ben:Ljava/lang/String;

    .line 40
    const-string v0, "extend"

    sput-object v0, Lcom/kingroot/kinguser/bal;->beo:Ljava/lang/String;

    .line 41
    const-string v0, "source"

    sput-object v0, Lcom/kingroot/kinguser/bal;->bep:Ljava/lang/String;

    .line 42
    const-string v0, "filterIdList"

    sput-object v0, Lcom/kingroot/kinguser/bal;->beq:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized Vz()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/el;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 158
    const-class v4, Lcom/kingroot/kinguser/bal;

    monitor-enter v4

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 161
    invoke-static {}, Lcom/kingroot/kinguser/bam;->VA()Lcom/kingroot/kinguser/bam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bam;->VC()Ljava/util/Map;

    move-result-object v0

    .line 163
    invoke-static {v0}, Lcom/kingroot/kinguser/zc;->g(Ljava/util/Map;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, v2

    .line 234
    :goto_0
    monitor-exit v4

    return-object v0

    .line 169
    :cond_0
    :try_start_1
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 171
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 174
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 181
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Ljava/lang/String;

    if-nez v6, :cond_2

    .line 183
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 187
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 193
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 198
    :try_start_2
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move v0, v3

    .line 199
    :goto_3
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v0, v8, :cond_3

    .line 200
    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 201
    new-instance v9, Lcom/kingroot/kinguser/ek;

    invoke-direct {v9}, Lcom/kingroot/kinguser/ek;-><init>()V

    .line 202
    sget-object v10, Lcom/kingroot/kinguser/bal;->bek:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v9, Lcom/kingroot/kinguser/ek;->id:I

    .line 203
    sget-object v10, Lcom/kingroot/kinguser/bal;->bel:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v9, Lcom/kingroot/kinguser/ek;->count:I

    .line 204
    sget-object v10, Lcom/kingroot/kinguser/bal;->bem:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v9, Lcom/kingroot/kinguser/ek;->time:J

    .line 205
    sget-object v10, Lcom/kingroot/kinguser/bal;->ben:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v9, Lcom/kingroot/kinguser/ek;->gv:I

    .line 206
    sget-object v10, Lcom/kingroot/kinguser/bal;->beo:Ljava/lang/String;

    const-string v11, ""

    invoke-virtual {v8, v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/kingroot/kinguser/ek;->pi:Ljava/lang/String;

    .line 207
    sget-object v10, Lcom/kingroot/kinguser/bal;->bep:Ljava/lang/String;

    const-string v11, ""

    invoke-virtual {v8, v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/kingroot/kinguser/ek;->pj:Ljava/lang/String;

    .line 208
    sget-object v10, Lcom/kingroot/kinguser/bal;->beq:Ljava/lang/String;

    const-string v11, ""

    invoke-virtual {v8, v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v10, ","

    invoke-static {v8, v10}, Lcom/kingroot/kinguser/bal;->aH(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    iput-object v8, v9, Lcom/kingroot/kinguser/ek;->pk:Ljava/util/ArrayList;

    .line 209
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 199
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 185
    :cond_2
    :try_start_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_2

    .line 211
    :catch_0
    move-exception v0

    move-object v0, v2

    .line 213
    goto/16 :goto_0

    .line 214
    :catch_1
    move-exception v0

    move-object v0, v2

    .line 217
    goto/16 :goto_0

    .line 221
    :cond_3
    invoke-static {v1}, Lcom/kingroot/kinguser/bal;->kk(Ljava/lang/String;)[Ljava/lang/Integer;

    move-result-object v0

    .line 222
    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v7, 0x2

    if-lt v1, v7, :cond_1

    .line 226
    new-instance v1, Lcom/kingroot/kinguser/el;

    invoke-direct {v1}, Lcom/kingroot/kinguser/el;-><init>()V

    .line 227
    const/4 v7, 0x0

    aget-object v7, v0, v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v1, Lcom/kingroot/kinguser/el;->id:I

    .line 228
    const/4 v7, 0x1

    aget-object v0, v0, v7

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/kingroot/kinguser/el;->version:I

    .line 229
    iput-object v6, v1, Lcom/kingroot/kinguser/el;->pm:Ljava/util/ArrayList;

    .line 232
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_4
    move-object v0, v2

    .line 234
    goto/16 :goto_0
.end method

.method private static declared-synchronized a(IIIILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 95
    const-class v1, Lcom/kingroot/kinguser/bal;

    monitor-enter v1

    :try_start_0
    invoke-static {p4}, Lcom/kingroot/kinguser/aab;->dH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-static {p5}, Lcom/kingroot/kinguser/aab;->dH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 97
    if-nez p6, :cond_0

    .line 98
    new-instance p6, Ljava/util/ArrayList;

    invoke-direct {p6}, Ljava/util/ArrayList;-><init>()V

    .line 100
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 108
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 109
    sget-object v6, Lcom/kingroot/kinguser/bal;->bek:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v6, Lcom/kingroot/kinguser/bal;->bem:Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v4, Lcom/kingroot/kinguser/bal;->bel:Ljava/lang/String;

    const-string v5, "1"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v4, Lcom/kingroot/kinguser/bal;->ben:Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v4, Lcom/kingroot/kinguser/bal;->beo:Ljava/lang/String;

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/kingroot/kinguser/bal;->bep:Ljava/lang/String;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    invoke-static {p6}, Lcom/kingroot/kinguser/zc;->f(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 116
    const-string v0, ","

    invoke-static {p6, v0}, Lcom/kingroot/kinguser/bal;->f(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 118
    sget-object v2, Lcom/kingroot/kinguser/bal;->beq:Ljava/lang/String;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 125
    invoke-static {p0, p1}, Lcom/kingroot/kinguser/bal;->aa(II)Ljava/lang/String;

    move-result-object v3

    .line 126
    invoke-static {}, Lcom/kingroot/kinguser/bam;->VA()Lcom/kingroot/kinguser/bam;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/bam;->kl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 127
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 130
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 131
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 144
    :goto_0
    invoke-static {}, Lcom/kingroot/kinguser/bam;->VA()Lcom/kingroot/kinguser/bam;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/kingroot/kinguser/bam;->aI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    :goto_1
    monitor-exit v1

    return-void

    .line 134
    :cond_2
    :try_start_1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    goto :goto_1

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(IILcom/kingroot/kinguser/ek;)V
    .locals 7

    .prologue
    .line 88
    iget v2, p2, Lcom/kingroot/kinguser/ek;->id:I

    iget v3, p2, Lcom/kingroot/kinguser/ek;->gv:I

    iget-object v4, p2, Lcom/kingroot/kinguser/ek;->pi:Ljava/lang/String;

    iget-object v5, p2, Lcom/kingroot/kinguser/ek;->pj:Ljava/lang/String;

    iget-object v6, p2, Lcom/kingroot/kinguser/ek;->pk:Ljava/util/ArrayList;

    move v0, p0

    move v1, p1

    invoke-static/range {v0 .. v6}, Lcom/kingroot/kinguser/bal;->a(IIIILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 89
    return-void
.end method

.method private static aH(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 291
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 305
    :cond_0
    return-object v0

    .line 293
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 294
    array-length v1, v2

    if-lez v1, :cond_0

    .line 296
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 297
    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 299
    :try_start_0
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 300
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 301
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private static aa(II)Ljava/lang/String;
    .locals 2

    .prologue
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/kingroot/kinguser/bal;->bej:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized bK(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/el;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 255
    const-class v1, Lcom/kingroot/kinguser/bal;

    monitor-enter v1

    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/el;

    .line 256
    invoke-static {}, Lcom/kingroot/kinguser/bam;->VA()Lcom/kingroot/kinguser/bam;

    move-result-object v3

    iget v4, v0, Lcom/kingroot/kinguser/el;->id:I

    iget v0, v0, Lcom/kingroot/kinguser/el;->version:I

    invoke-static {v4, v0}, Lcom/kingroot/kinguser/bal;->aa(II)Ljava/lang/String;

    move-result-object v0

    const-string v4, ""

    invoke-virtual {v3, v0, v4}, Lcom/kingroot/kinguser/bam;->aI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 255
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 258
    :cond_0
    monitor-exit v1

    return-void
.end method

.method private static f(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 266
    invoke-static {p0}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 281
    :cond_1
    :goto_0
    return-object v0

    .line 268
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 270
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 271
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 272
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 275
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 276
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 277
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static kk(Ljava/lang/String;)[Ljava/lang/Integer;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 83
    :goto_0
    return-object v0

    .line 73
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/bal;->bej:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 74
    array-length v0, v3

    new-array v2, v0, [Ljava/lang/Integer;

    .line 75
    const/4 v0, 0x0

    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 77
    :try_start_0
    aget-object v4, v3, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 78
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 80
    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 83
    goto :goto_0
.end method
