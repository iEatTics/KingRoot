.class public Lcom/kingroot/kinguser/bfu;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static anv:Lcom/kingroot/kinguser/akn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Lcom/kingroot/kinguser/akn;->BI()Lcom/kingroot/kinguser/akn;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/bfu;->anv:Lcom/kingroot/kinguser/akn;

    return-void
.end method

.method public static dR(Z)I
    .locals 5

    .prologue
    .line 136
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 137
    :goto_0
    sget-object v1, Lcom/kingroot/kinguser/bfu;->anv:Lcom/kingroot/kinguser/akn;

    const-string v2, "url_check_log"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "attr_has_handle="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/kingroot/kinguser/akn;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0

    .line 136
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static f(Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;)J
    .locals 3

    .prologue
    const-wide/16 v0, 0x0

    .line 93
    if-nez p0, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-wide v0

    .line 97
    :cond_1
    iget-object v2, p0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->url:Ljava/lang/String;

    invoke-static {v2}, Lcom/kingroot/kinguser/bfu;->li(Ljava/lang/String;)Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;

    move-result-object v2

    if-nez v2, :cond_0

    .line 98
    sget-object v0, Lcom/kingroot/kinguser/bfu;->anv:Lcom/kingroot/kinguser/akn;

    const-string v1, "url_check_log"

    invoke-static {p0}, Lcom/kingroot/kinguser/bfu;->i(Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;)Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/akn;->b(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public static g(Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;)J
    .locals 8

    .prologue
    const-wide/16 v0, 0x0

    .line 105
    if-eqz p0, :cond_0

    .line 106
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attr_url_str= \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 107
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 108
    const-string v4, "attr_has_handle"

    iget-boolean v5, p0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->bnx:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 109
    const-string v4, "attr_intercept_count"

    iget v5, p0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->bnu:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 110
    const-string v4, "attr_intercept_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 112
    invoke-virtual {v3}, Landroid/content/ContentValues;->size()I

    move-result v4

    if-gtz v4, :cond_1

    .line 118
    :cond_0
    :goto_0
    return-wide v0

    .line 115
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/bfu;->anv:Lcom/kingroot/kinguser/akn;

    const-string v1, "url_check_log"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/kingroot/kinguser/akn;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    goto :goto_0
.end method

.method public static h(Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;)I
    .locals 6

    .prologue
    .line 125
    sget-object v0, Lcom/kingroot/kinguser/bfu;->anv:Lcom/kingroot/kinguser/akn;

    const-string v1, "url_check_log"

    const-string v2, "attr_url_str=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->url:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/kingroot/kinguser/akn;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static i(Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;)Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 147
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 148
    const-string v0, "attr_evil_type"

    iget v2, p0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->bno:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 149
    const-string v0, "attr_url_str"

    iget-object v2, p0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->url:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v0, "attr_intercept_count"

    iget v2, p0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->bnu:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 151
    const-string v0, "attr_intercept_time"

    iget-wide v2, p0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->bnv:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 152
    const-string v2, "attr_has_handle"

    iget-boolean v0, p0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->bnx:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 153
    const-string v0, "attr_host"

    iget-object v2, p0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->GY:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    return-object v1

    .line 152
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static li(Ljava/lang/String;)Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;
    .locals 13

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 42
    .line 44
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/bfu;->anv:Lcom/kingroot/kinguser/akn;

    const-string v1, "select * from url_check_log where attr_url_str=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/akn;->d(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v11

    .line 46
    if-eqz v11, :cond_1

    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    new-instance v0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;

    const/4 v1, 0x0

    .line 48
    invoke-interface {v11, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const/4 v3, 0x1

    .line 49
    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x2

    .line 50
    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    .line 51
    invoke-interface {v11, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v6, 0x4

    .line 52
    invoke-interface {v11, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v12, 0x5

    .line 53
    invoke-interface {v11, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    if-ne v12, v8, :cond_0

    :goto_0
    const/4 v9, 0x6

    .line 54
    invoke-interface {v11, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v0 .. v9}, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;-><init>(JILjava/lang/String;IJZLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 59
    invoke-static {v11}, Lcom/kingroot/kinguser/za;->d(Landroid/database/Cursor;)V

    .line 62
    :goto_1
    return-object v0

    :cond_0
    move v8, v9

    .line 53
    goto :goto_0

    .line 59
    :cond_1
    invoke-static {v11}, Lcom/kingroot/kinguser/za;->d(Landroid/database/Cursor;)V

    :goto_2
    move-object v0, v10

    .line 62
    goto :goto_1

    .line 56
    :catch_0
    move-exception v0

    move-object v0, v10

    .line 59
    :goto_3
    invoke-static {v0}, Lcom/kingroot/kinguser/za;->d(Landroid/database/Cursor;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    :goto_4
    invoke-static {v10}, Lcom/kingroot/kinguser/za;->d(Landroid/database/Cursor;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v10, v11

    goto :goto_4

    .line 56
    :catch_1
    move-exception v0

    move-object v0, v11

    goto :goto_3
.end method

.method public static lj(Ljava/lang/String;)I
    .locals 5

    .prologue
    .line 129
    sget-object v0, Lcom/kingroot/kinguser/bfu;->anv:Lcom/kingroot/kinguser/akn;

    const-string v1, "url_check_log"

    const-string v2, "attr_host=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/kingroot/kinguser/akn;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static ws()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 66
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 67
    const-string v0, "select * from url_check_log order by attr_intercept_time desc"

    .line 68
    sget-object v1, Lcom/kingroot/kinguser/bfu;->anv:Lcom/kingroot/kinguser/akn;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/kingroot/kinguser/akn;->d(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 69
    if-nez v13, :cond_0

    move-object v0, v12

    .line 86
    :goto_0
    return-object v0

    .line 73
    :cond_0
    :goto_1
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 74
    new-instance v0, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;

    .line 75
    invoke-interface {v13, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 76
    invoke-interface {v13, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x2

    .line 77
    invoke-interface {v13, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    .line 78
    invoke-interface {v13, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v6, 0x4

    .line 79
    invoke-interface {v13, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v8, 0x5

    .line 80
    invoke-interface {v13, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-ne v8, v10, :cond_1

    move v8, v10

    :goto_2
    const/4 v9, 0x6

    .line 81
    invoke-interface {v13, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v0 .. v9}, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;-><init>(JILjava/lang/String;IJZLjava/lang/String;)V

    .line 83
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move v8, v11

    .line 80
    goto :goto_2

    .line 85
    :cond_2
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    move-object v0, v12

    .line 86
    goto :goto_0
.end method
