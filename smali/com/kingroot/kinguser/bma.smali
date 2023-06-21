.class public final Lcom/kingroot/kinguser/bma;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static bBa:Ljava/lang/String;

.field private static bBb:Ljava/lang/String;

.field private static fr:Ljava/lang/String;

.field private static ks:Ljava/lang/String;

.field private static uT:Ljava/lang/String;

.field private static uU:Ljava/lang/String;

.field private static uV:Ljava/lang/String;

.field private static uX:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "_"

    sput-object v0, Lcom/kingroot/kinguser/bma;->uT:Ljava/lang/String;

    .line 31
    const-string v0, "id"

    sput-object v0, Lcom/kingroot/kinguser/bma;->uU:Ljava/lang/String;

    .line 32
    const-string v0, "count"

    sput-object v0, Lcom/kingroot/kinguser/bma;->uV:Ljava/lang/String;

    .line 33
    const-string v0, "time"

    sput-object v0, Lcom/kingroot/kinguser/bma;->bBa:Ljava/lang/String;

    .line 34
    const-string v0, "result"

    sput-object v0, Lcom/kingroot/kinguser/bma;->ks:Ljava/lang/String;

    .line 35
    const-string v0, "extend"

    sput-object v0, Lcom/kingroot/kinguser/bma;->uX:Ljava/lang/String;

    .line 36
    const-string v0, "source"

    sput-object v0, Lcom/kingroot/kinguser/bma;->fr:Ljava/lang/String;

    .line 37
    const-string v0, "filterIdList"

    sput-object v0, Lcom/kingroot/kinguser/bma;->bBb:Ljava/lang/String;

    return-void
.end method

.method public static a(IILcom/kingx/cloudsdk/s;)V
    .locals 7

    .prologue
    .line 139
    iget v2, p2, Lcom/kingx/cloudsdk/s;->id:I

    iget v3, p2, Lcom/kingx/cloudsdk/s;->cd:I

    iget-object v4, p2, Lcom/kingx/cloudsdk/s;->ce:Ljava/lang/String;

    iget-object v5, p2, Lcom/kingx/cloudsdk/s;->cf:Ljava/lang/String;

    iget-object v6, p2, Lcom/kingx/cloudsdk/s;->cg:Ljava/util/ArrayList;

    move v0, p0

    move v1, p1

    invoke-static/range {v0 .. v6}, Lcom/kingroot/kinguser/bma;->b(IIIILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 140
    return-void
.end method

.method public static declared-synchronized a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingx/cloudsdk/t;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 132
    const-class v1, Lcom/kingroot/kinguser/bma;

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

    check-cast v0, Lcom/kingx/cloudsdk/t;

    .line 133
    invoke-static {}, Lcom/kingroot/kinguser/bmb;->afF()Lcom/kingroot/kinguser/bmb;

    move-result-object v3

    iget v4, v0, Lcom/kingx/cloudsdk/t;->id:I

    iget v0, v0, Lcom/kingx/cloudsdk/t;->version:I

    invoke-static {v4, v0}, Lcom/kingroot/kinguser/bma;->ao(II)Ljava/lang/String;

    move-result-object v0

    const-string v4, ""

    invoke-virtual {v3, v0, v4}, Lcom/kingroot/kinguser/bmb;->aP(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 135
    :cond_0
    monitor-exit v1

    return-void
.end method

.method private static aO(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
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

    .line 204
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 223
    :cond_0
    :goto_0
    return-object v0

    .line 207
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 210
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 211
    if-eqz v3, :cond_0

    array-length v1, v3

    if-lez v1, :cond_0

    .line 214
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 215
    const/4 v0, 0x0

    :goto_1
    array-length v2, v3

    if-ge v0, v2, :cond_2

    .line 217
    :try_start_0
    aget-object v2, v3, v0

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 218
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 219
    :catch_0
    move-exception v2

    .line 220
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_2

    :cond_2
    move-object v0, v1

    .line 223
    goto :goto_0
.end method

.method public static declared-synchronized afE()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingx/cloudsdk/t;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 50
    const-class v4, Lcom/kingroot/kinguser/bma;

    monitor-enter v4

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 53
    invoke-static {}, Lcom/kingroot/kinguser/bmb;->afF()Lcom/kingroot/kinguser/bmb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bmb;->afH()Ljava/util/Map;

    move-result-object v1

    .line 55
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    move-object v0, v2

    .line 122
    :goto_1
    monitor-exit v4

    return-object v0

    :cond_1
    move v0, v3

    .line 55
    goto :goto_0

    .line 61
    :cond_2
    :try_start_1
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 63
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 66
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 68
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Ljava/lang/String;

    if-nez v6, :cond_4

    .line 75
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 79
    :goto_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 81
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    :try_start_2
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move v0, v3

    .line 91
    :goto_4
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v0, v8, :cond_5

    .line 92
    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 93
    new-instance v9, Lcom/kingx/cloudsdk/s;

    invoke-direct {v9}, Lcom/kingx/cloudsdk/s;-><init>()V

    .line 94
    sget-object v10, Lcom/kingroot/kinguser/bma;->uU:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v9, Lcom/kingx/cloudsdk/s;->id:I

    .line 95
    sget-object v10, Lcom/kingroot/kinguser/bma;->uV:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v9, Lcom/kingx/cloudsdk/s;->count:I

    .line 96
    sget-object v10, Lcom/kingroot/kinguser/bma;->bBa:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v9, Lcom/kingx/cloudsdk/s;->time:J

    .line 97
    sget-object v10, Lcom/kingroot/kinguser/bma;->ks:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v9, Lcom/kingx/cloudsdk/s;->cd:I

    .line 98
    sget-object v10, Lcom/kingroot/kinguser/bma;->uX:Ljava/lang/String;

    const-string v11, ""

    invoke-virtual {v8, v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/kingx/cloudsdk/s;->ce:Ljava/lang/String;

    .line 99
    sget-object v10, Lcom/kingroot/kinguser/bma;->fr:Ljava/lang/String;

    const-string v11, ""

    invoke-virtual {v8, v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/kingx/cloudsdk/s;->cf:Ljava/lang/String;

    .line 100
    sget-object v10, Lcom/kingroot/kinguser/bma;->bBb:Ljava/lang/String;

    const-string v11, ""

    invoke-virtual {v8, v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v10, ","

    invoke-static {v8, v10}, Lcom/kingroot/kinguser/bma;->aO(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    iput-object v8, v9, Lcom/kingx/cloudsdk/s;->cg:Ljava/util/ArrayList;

    .line 101
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 77
    :cond_4
    :try_start_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_3

    .line 105
    :catch_0
    move-exception v0

    move-object v0, v2

    goto/16 :goto_1

    .line 109
    :catch_1
    move-exception v0

    move-object v0, v2

    goto/16 :goto_1

    .line 113
    :cond_5
    new-instance v0, Lcom/kingx/cloudsdk/t;

    invoke-direct {v0}, Lcom/kingx/cloudsdk/t;-><init>()V

    .line 114
    invoke-static {v1}, Lcom/kingroot/kinguser/bma;->mj(Ljava/lang/String;)[Ljava/lang/Integer;

    move-result-object v1

    .line 115
    const/4 v7, 0x0

    aget-object v7, v1, v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v0, Lcom/kingx/cloudsdk/t;->id:I

    .line 116
    const/4 v7, 0x1

    aget-object v1, v1, v7

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/kingx/cloudsdk/t;->version:I

    .line 117
    iput-object v6, v0, Lcom/kingx/cloudsdk/t;->ci:Ljava/util/ArrayList;

    .line 120
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_6
    move-object v0, v2

    .line 122
    goto/16 :goto_1
.end method

.method private static ao(II)Ljava/lang/String;
    .locals 3

    .prologue
    .line 284
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 285
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lcom/kingroot/kinguser/bma;->uT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 286
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 287
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized b(IIIILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
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
    .line 145
    const-class v1, Lcom/kingroot/kinguser/bma;

    monitor-enter v1

    :try_start_0
    invoke-static {p4}, Lcom/kingroot/kinguser/bmu;->mn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    invoke-static {p5}, Lcom/kingroot/kinguser/bmu;->mn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 147
    if-nez p6, :cond_0

    .line 148
    new-instance p6, Ljava/util/ArrayList;

    invoke-direct {p6}, Ljava/util/ArrayList;-><init>()V

    .line 150
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 158
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 159
    sget-object v6, Lcom/kingroot/kinguser/bma;->uU:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v6, Lcom/kingroot/kinguser/bma;->bBa:Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v4, Lcom/kingroot/kinguser/bma;->uV:Ljava/lang/String;

    const-string v5, "1"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v4, Lcom/kingroot/kinguser/bma;->ks:Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v4, Lcom/kingroot/kinguser/bma;->uX:Ljava/lang/String;

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v0, Lcom/kingroot/kinguser/bma;->fr:Ljava/lang/String;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    invoke-static {p6}, Lcom/kingroot/kinguser/bmu;->a(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 166
    const-string v0, ","

    invoke-static {p6, v0}, Lcom/kingroot/kinguser/bma;->i(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 168
    sget-object v2, Lcom/kingroot/kinguser/bma;->bBb:Ljava/lang/String;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 175
    invoke-static {p0, p1}, Lcom/kingroot/kinguser/bma;->ao(II)Ljava/lang/String;

    move-result-object v3

    .line 176
    invoke-static {}, Lcom/kingroot/kinguser/bmb;->afF()Lcom/kingroot/kinguser/bmb;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/bmb;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 177
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 180
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 181
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 194
    :goto_0
    invoke-static {}, Lcom/kingroot/kinguser/bmb;->afF()Lcom/kingroot/kinguser/bmb;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/kingroot/kinguser/bmb;->aP(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    :goto_1
    monitor-exit v1

    return-void

    .line 184
    :cond_2
    :try_start_1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 191
    :catch_0
    move-exception v0

    goto :goto_1

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static i(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
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
    const/4 v0, 0x0

    .line 232
    invoke-static {p0}, Lcom/kingroot/kinguser/bmu;->a(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-object v0

    .line 235
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 239
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 240
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 241
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 243
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 244
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 245
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static mj(Ljava/lang/String;)[Ljava/lang/Integer;
    .locals 4

    .prologue
    .line 258
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    const/4 v0, 0x0

    .line 269
    :goto_0
    return-object v0

    .line 264
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/bma;->uT:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 265
    array-length v0, v2

    new-array v1, v0, [Ljava/lang/Integer;

    .line 266
    const/4 v0, 0x0

    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 267
    aget-object v3, v2, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    .line 266
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 269
    goto :goto_0
.end method
