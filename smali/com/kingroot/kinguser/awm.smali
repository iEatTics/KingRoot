.class public Lcom/kingroot/kinguser/awm;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static declared-synchronized SX()V
    .locals 19

    .prologue
    .line 52
    const-class v7, Lcom/kingroot/kinguser/awm;

    monitor-enter v7

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Lcom/kingroot/kinguser/awi;->cl(J)V

    .line 53
    invoke-static {}, Lcom/kingroot/kinguser/awm;->SZ()Ljava/util/Map;

    move-result-object v8

    .line 54
    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 125
    :cond_0
    :goto_0
    monitor-exit v7

    return-void

    .line 57
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/kingroot/kinguser/awm;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kingroot/kinguser/awj;->jL(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 60
    const/4 v3, 0x0

    .line 61
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 62
    new-instance v4, Lorg/json/JSONArray;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v4, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move v5, v3

    move-object v6, v4

    .line 68
    :goto_1
    const/4 v2, 0x0

    .line 69
    invoke-static {}, Lcom/kingroot/kinguser/awj;->SU()Z

    move-result v9

    .line 70
    invoke-static {}, Lcom/kingroot/kinguser/awi;->SP()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v3, v10, v12

    if-gtz v3, :cond_b

    .line 72
    const/4 v2, 0x1

    move v4, v2

    .line 75
    :goto_2
    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 77
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 78
    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 79
    const/4 v2, 0x0

    .line 80
    if-nez v5, :cond_3

    .line 81
    const/4 v3, 0x0

    :goto_4
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v3, v2, :cond_a

    .line 82
    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 83
    const-string v14, "uid"

    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 84
    if-ne v14, v11, :cond_7

    .line 85
    const-string v14, "total_traffic"

    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 86
    const-string v16, "curr_traffic"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v16

    .line 87
    const-string v18, "total_traffic"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 89
    if-eqz v9, :cond_6

    .line 92
    const-string v14, "curr_traffic"

    add-long v16, v16, v12

    move-wide/from16 v0, v16

    invoke-virtual {v2, v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move v2, v3

    .line 103
    :cond_3
    :goto_5
    if-nez v5, :cond_4

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v2, v3, :cond_2

    .line 104
    :cond_4
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 105
    const-string v3, "uid"

    invoke-virtual {v2, v3, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 106
    const-string v3, "total_traffic"

    invoke-virtual {v2, v3, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 107
    if-eqz v4, :cond_8

    .line 108
    const-string v3, "curr_traffic"

    const/4 v11, 0x0

    invoke-virtual {v2, v3, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 113
    :goto_6
    invoke-virtual {v6, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_3

    .line 122
    :catch_0
    move-exception v2

    goto/16 :goto_0

    .line 64
    :cond_5
    const/4 v2, 0x1

    .line 65
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    move v5, v2

    move-object v6, v3

    goto/16 :goto_1

    .line 97
    :cond_6
    const-string v18, "curr_traffic"

    add-long v16, v16, v12

    sub-long v14, v16, v14

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move v2, v3

    .line 99
    goto :goto_5

    .line 81
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 110
    :cond_8
    const-string v3, "curr_traffic"

    invoke-virtual {v2, v3, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    .line 52
    :catchall_0
    move-exception v2

    monitor-exit v7

    throw v2

    .line 117
    :cond_9
    :try_start_2
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 118
    invoke-virtual {v6}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/kingroot/kinguser/awm;->getPath()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xa3

    invoke-static {v2, v3, v4}, Lcom/kingroot/kinguser/awj;->f(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :cond_a
    move v2, v3

    goto :goto_5

    :cond_b
    move v4, v2

    goto/16 :goto_2
.end method

.method public static declared-synchronized SY()V
    .locals 16

    .prologue
    const/4 v2, 0x0

    .line 130
    const-class v5, Lcom/kingroot/kinguser/awm;

    monitor-enter v5

    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/awm;->SX()V

    .line 131
    invoke-static {}, Lcom/kingroot/kinguser/awm;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-static {v0}, Lcom/kingroot/kinguser/awj;->jL(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 133
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 135
    :cond_0
    const/16 v0, 0xa3

    const/16 v1, 0x3ea

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/awj;->f(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    :goto_0
    monitor-exit v5

    return-void

    .line 138
    :cond_1
    :try_start_1
    new-instance v6, Lorg/json/JSONArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v6, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 139
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 140
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-gtz v0, :cond_2

    .line 142
    const/16 v0, 0xa3

    const/16 v1, 0x3ea

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/awj;->f(IILjava/lang/String;)V

    goto :goto_0

    .line 211
    :catch_0
    move-exception v0

    goto :goto_0

    .line 146
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zh;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v8

    .line 147
    if-eqz v8, :cond_3

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_4

    .line 148
    :cond_3
    const/16 v0, 0xa3

    const/16 v1, 0x3e9

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/awj;->f(IILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit v5

    throw v0

    .line 152
    :cond_4
    :try_start_2
    new-instance v9, Lcom/kingroot/kinguser/k;

    invoke-direct {v9}, Lcom/kingroot/kinguser/k;-><init>()V

    .line 153
    const/16 v0, 0xa3

    iput v0, v9, Lcom/kingroot/kinguser/k;->ev:I

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v9, Lcom/kingroot/kinguser/k;->ew:Ljava/util/ArrayList;

    move v4, v2

    .line 155
    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-ge v4, v0, :cond_a

    .line 157
    :try_start_3
    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 158
    const-string v1, "uid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 160
    const-string v1, "curr_traffic"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 161
    const-string v3, ""

    .line 164
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 165
    iget v14, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v14, v10, :cond_5

    .line 166
    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 167
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    .line 172
    :goto_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 155
    :cond_6
    :goto_3
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_7
    move v1, v2

    .line 167
    goto :goto_2

    .line 178
    :cond_8
    const-string v10, "curr_traffic"

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 180
    const-wide/16 v10, 0x0

    cmp-long v10, v12, v10

    if-lez v10, :cond_6

    .line 182
    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 183
    new-instance v10, Lcom/kingroot/kinguser/l;

    invoke-direct {v10}, Lcom/kingroot/kinguser/l;-><init>()V

    .line 184
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v10, Lcom/kingroot/kinguser/l;->ey:Ljava/util/Map;

    .line 185
    iget-object v0, v10, Lcom/kingroot/kinguser/l;->ey:Ljava/util/Map;

    const/16 v11, 0x8

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v0, v11, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    iget-object v0, v10, Lcom/kingroot/kinguser/l;->ey:Ljava/util/Map;

    const/16 v11, 0x9

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    iget-object v0, v10, Lcom/kingroot/kinguser/l;->ey:Ljava/util/Map;

    const/16 v11, 0xa

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v0, v11, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    iget-object v3, v10, Lcom/kingroot/kinguser/l;->ey:Ljava/util/Map;

    const/16 v0, 0xb

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    if-eqz v1, :cond_9

    const-string v0, "1"

    :goto_4
    invoke-interface {v3, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    iget-object v0, v9, Lcom/kingroot/kinguser/k;->ew:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 192
    :catch_1
    move-exception v0

    goto :goto_3

    .line 188
    :cond_9
    const-string v0, "0"
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 198
    :cond_a
    :try_start_4
    invoke-static {}, Lcom/kingroot/kinguser/cav;->akt()Lcom/kingroot/kinguser/cav;

    move-result-object v0

    const/16 v1, 0xfdc

    const/4 v2, 0x0

    new-instance v3, Lcom/kingroot/kinguser/awm$1;

    invoke-direct {v3, v7}, Lcom/kingroot/kinguser/awm$1;-><init>(Lorg/json/JSONArray;)V

    invoke-virtual {v0, v1, v9, v2, v3}, Lcom/kingroot/kinguser/cav;->a(ILcom/qq/taf/jce/JceStruct;Lcom/qq/taf/jce/JceStruct;Lcom/kingroot/kinguser/cat;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :cond_b
    move v1, v2

    goto :goto_2
.end method

.method private static declared-synchronized SZ()Ljava/util/Map;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 218
    const-class v6, Lcom/kingroot/kinguser/awm;

    monitor-enter v6

    :try_start_0
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 221
    const/4 v1, 0x0

    .line 222
    const/4 v0, 0x0

    .line 225
    :try_start_1
    new-instance v2, Ljava/io/FileReader;

    const-string v3, "/proc/net/xt_qtaguid/stats"

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 226
    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_12
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    .line 227
    :cond_0
    :goto_0
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_13
    .catchall {:try_start_3 .. :try_end_3} :catchall_9

    move-result-object v0

    if-eqz v0, :cond_2

    .line 232
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v3, "[:\\s]+"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 233
    const/4 v3, 0x4

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 234
    const/4 v3, 0x3

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 235
    const v4, 0x186a0

    rem-int v4, v3, v4

    const/16 v5, 0x3e8

    if-eq v4, v5, :cond_0

    if-eqz v3, :cond_0

    .line 237
    const/4 v4, 0x5

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const/4 v8, 0x7

    aget-object v0, v0, v8

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    add-long/2addr v4, v8

    .line 238
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 239
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    add-long/2addr v4, v8

    .line 241
    :cond_1
    const-wide/16 v8, 0x0

    cmp-long v0, v4, v8

    if-lez v0, :cond_0

    .line 242
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v7, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_9

    goto :goto_0

    .line 245
    :catch_0
    move-exception v0

    goto :goto_0

    .line 253
    :cond_2
    if-eqz v2, :cond_3

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    .line 254
    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_4
    move-object v3, v2

    move-object v2, v1

    .line 260
    :goto_1
    :try_start_6
    invoke-static {}, Ltmsdk/common/TMSDKContext;->akS()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v8, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 261
    const/4 v1, 0x0

    .line 262
    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_12

    .line 263
    const/4 v1, 0x1

    .line 302
    :cond_5
    if-eqz v1, :cond_1c

    .line 303
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zh;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 305
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v1, v2

    :cond_6
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 306
    iget v10, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 307
    const v0, 0x186a0

    rem-int v0, v10, v0

    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_6

    if-eqz v10, :cond_6

    .line 309
    const-wide/16 v4, 0x0

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/proc/uid_stat/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/tcp_snd"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v0

    .line 315
    :try_start_7
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 316
    :try_start_8
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_f
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 317
    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 318
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_10
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    move-result-wide v4

    .line 323
    :cond_7
    if-eqz v2, :cond_8

    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    .line 324
    :cond_8
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :cond_9
    move-object v1, v0

    move-object v0, v2

    .line 328
    :goto_3
    :try_start_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/proc/uid_stat/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/tcp_rcv"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_7
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    move-result-object v3

    .line 331
    :try_start_c
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_9
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 332
    :try_start_d
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_c
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 333
    :try_start_e
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 334
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_d
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    move-result-wide v12

    add-long/2addr v4, v12

    .line 339
    :cond_a
    if-eqz v2, :cond_b

    :try_start_f
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    .line 340
    :cond_b
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_8
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :cond_c
    move-object v3, v2

    move-object v2, v0

    move-wide v0, v4

    .line 344
    :goto_4
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_d

    .line 346
    :try_start_10
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v7, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_7
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    :cond_d
    move-object v1, v2

    .line 348
    goto/16 :goto_2

    .line 255
    :catch_1
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    .line 256
    goto/16 :goto_1

    .line 250
    :catch_2
    move-exception v2

    .line 253
    :goto_5
    if-eqz v1, :cond_e

    :try_start_11
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V

    .line 254
    :cond_e
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_3
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    :cond_f
    move-object v2, v0

    move-object v3, v1

    .line 255
    goto/16 :goto_1

    :catch_3
    move-exception v2

    move-object v2, v0

    move-object v3, v1

    .line 256
    goto/16 :goto_1

    .line 252
    :catchall_0
    move-exception v2

    move-object v14, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v14

    .line 253
    :goto_6
    if-eqz v2, :cond_10

    :try_start_12
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    .line 254
    :cond_10
    if-eqz v1, :cond_11

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_11
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 255
    :cond_11
    :goto_7
    :try_start_13
    throw v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 218
    :catchall_1
    move-exception v0

    monitor-exit v6

    throw v0

    .line 264
    :cond_12
    :try_start_14
    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_5

    .line 265
    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 266
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_7
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    move-result v0

    if-ne v0, v8, :cond_1e

    .line 267
    const/4 v0, 0x1

    :goto_9
    move v1, v0

    .line 269
    goto :goto_8

    .line 325
    :catch_4
    move-exception v1

    move-object v1, v0

    move-object v0, v2

    .line 326
    goto/16 :goto_3

    .line 320
    :catch_5
    move-exception v0

    move-object v0, v1

    move-object v1, v3

    .line 323
    :goto_a
    if-eqz v1, :cond_13

    :try_start_15
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V

    .line 324
    :cond_13
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_6
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    :cond_14
    move-object v14, v0

    move-object v0, v1

    move-object v1, v14

    .line 325
    goto/16 :goto_3

    :catch_6
    move-exception v2

    move-object v14, v0

    move-object v0, v1

    move-object v1, v14

    .line 326
    goto/16 :goto_3

    .line 322
    :catchall_2
    move-exception v0

    move-object v2, v3

    .line 323
    :goto_b
    if-eqz v2, :cond_15

    :try_start_16
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    .line 324
    :cond_15
    if-eqz v1, :cond_16

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_e
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    .line 325
    :cond_16
    :goto_c
    :try_start_17
    throw v0
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_7
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    .line 360
    :catch_7
    move-exception v0

    .line 364
    :cond_17
    monitor-exit v6

    return-object v7

    .line 341
    :catch_8
    move-exception v1

    move-object v3, v2

    move-object v2, v0

    move-wide v0, v4

    .line 342
    goto/16 :goto_4

    .line 336
    :catch_9
    move-exception v2

    move-object v14, v1

    move-object v1, v0

    move-object v0, v14

    .line 339
    :goto_d
    if-eqz v1, :cond_18

    :try_start_18
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V

    .line 340
    :cond_18
    if-eqz v0, :cond_19

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_a
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    :cond_19
    move-object v2, v0

    move-object v3, v1

    move-wide v0, v4

    .line 341
    goto/16 :goto_4

    :catch_a
    move-exception v2

    move-object v2, v0

    move-object v3, v1

    move-wide v0, v4

    .line 342
    goto/16 :goto_4

    .line 338
    :catchall_3
    move-exception v2

    move-object v14, v2

    move-object v2, v0

    move-object v0, v14

    .line 339
    :goto_e
    if-eqz v2, :cond_1a

    :try_start_19
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    .line 340
    :cond_1a
    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_b
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    .line 341
    :cond_1b
    :goto_f
    :try_start_1a
    throw v0

    .line 351
    :cond_1c
    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    .line 352
    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1d
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 353
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v8, :cond_1d

    .line 356
    invoke-interface {v7}, Ljava/util/Map;->clear()V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_7
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    goto :goto_10

    .line 341
    :catch_b
    move-exception v1

    goto :goto_f

    .line 338
    :catchall_4
    move-exception v0

    goto :goto_e

    :catchall_5
    move-exception v1

    move-object v14, v1

    move-object v1, v0

    move-object v0, v14

    goto :goto_e

    .line 336
    :catch_c
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_d

    :catch_d
    move-exception v1

    move-object v1, v2

    goto :goto_d

    .line 325
    :catch_e
    move-exception v1

    goto :goto_c

    .line 322
    :catchall_6
    move-exception v0

    goto :goto_b

    :catchall_7
    move-exception v1

    move-object v14, v1

    move-object v1, v0

    move-object v0, v14

    goto :goto_b

    .line 320
    :catch_f
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    goto/16 :goto_a

    :catch_10
    move-exception v1

    move-object v1, v2

    goto/16 :goto_a

    .line 255
    :catch_11
    move-exception v1

    goto/16 :goto_7

    .line 252
    :catchall_8
    move-exception v1

    move-object v14, v1

    move-object v1, v0

    move-object v0, v14

    goto/16 :goto_6

    :catchall_9
    move-exception v0

    goto/16 :goto_6

    .line 250
    :catch_12
    move-exception v1

    move-object v1, v2

    goto/16 :goto_5

    :catch_13
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    goto/16 :goto_5

    :cond_1e
    move v0, v1

    goto/16 :goto_9
.end method

.method public static getPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ltmsdk/common/TMSDKContext;->akS()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "d_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
