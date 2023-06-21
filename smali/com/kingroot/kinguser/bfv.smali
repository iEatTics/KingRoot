.class public Lcom/kingroot/kinguser/bfv;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static anv:Lcom/kingroot/kinguser/akn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    invoke-static {}, Lcom/kingroot/kinguser/akn;->BI()Lcom/kingroot/kinguser/akn;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/bfv;->anv:Lcom/kingroot/kinguser/akn;

    return-void
.end method

.method public static a(Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckRule;)J
    .locals 8

    .prologue
    .line 67
    if-nez p0, :cond_0

    .line 68
    const-wide/16 v0, 0x0

    .line 75
    :goto_0
    return-wide v0

    .line 71
    :cond_0
    invoke-static {p0}, Lcom/kingroot/kinguser/bfv;->d(Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckRule;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 72
    sget-object v0, Lcom/kingroot/kinguser/bfv;->anv:Lcom/kingroot/kinguser/akn;

    const-string v1, "url_check_user_rule"

    invoke-static {p0}, Lcom/kingroot/kinguser/bfv;->c(Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckRule;)Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/akn;->b(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    goto :goto_0

    .line 75
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/bfv;->anv:Lcom/kingroot/kinguser/akn;

    const-string v1, "url_check_user_rule"

    invoke-static {p0}, Lcom/kingroot/kinguser/bfv;->c(Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckRule;)Landroid/content/ContentValues;

    move-result-object v2

    const-string v3, "attr_type=? and attr_data=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckRule;->type:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckRule;->nE:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/akn;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    goto :goto_0
.end method

.method public static aaJ()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckRule;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 43
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 44
    const-string v0, "select * from url_check_user_rule"

    .line 45
    sget-object v3, Lcom/kingroot/kinguser/bfv;->anv:Lcom/kingroot/kinguser/akn;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lcom/kingroot/kinguser/akn;->d(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 46
    if-nez v3, :cond_0

    move-object v0, v2

    .line 60
    :goto_0
    return-object v0

    .line 50
    :cond_0
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 51
    new-instance v4, Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckRule;

    .line 52
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v0, 0x2

    .line 53
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x3

    .line 54
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/4 v0, 0x4

    .line 55
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_2
    invoke-direct {v4, v5, v6, v7, v0}, Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckRule;-><init>(ILjava/lang/String;IZ)V

    .line 57
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 55
    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    .line 59
    :cond_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    move-object v0, v2

    .line 60
    goto :goto_0
.end method

.method public static aaR()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 92
    sget-object v0, Lcom/kingroot/kinguser/bfv;->anv:Lcom/kingroot/kinguser/akn;

    const-string v1, "url_check_user_rule"

    invoke-virtual {v0, v1, v2, v2}, Lcom/kingroot/kinguser/akn;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static b(Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckRule;)J
    .locals 7

    .prologue
    .line 81
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckRule;->nE:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    :cond_0
    const-wide/16 v0, 0x0

    .line 85
    :goto_0
    return-wide v0

    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/bfv;->anv:Lcom/kingroot/kinguser/akn;

    const-string v1, "url_check_user_rule"

    const-string v2, "attr_type=? and attr_data=?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckRule;->type:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckRule;->nE:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/kingroot/kinguser/akn;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    goto :goto_0
.end method

.method public static c(Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckRule;)Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 102
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 103
    const-string v0, "attr_type"

    iget v2, p0, Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckRule;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 104
    const-string v0, "attr_data"

    iget-object v2, p0, Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckRule;->nE:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v0, "attr_flag"

    iget v2, p0, Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckRule;->flag:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 106
    const-string v2, "attr_allow"

    iget-boolean v0, p0, Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckRule;->bnp:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 107
    return-object v1

    .line 106
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static d(Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckRule;)Z
    .locals 9

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 111
    const/4 v2, 0x0

    .line 113
    :try_start_0
    sget-object v3, Lcom/kingroot/kinguser/bfv;->anv:Lcom/kingroot/kinguser/akn;

    const-string v4, "select * from url_check_user_rule where attr_type =? and attr_data =?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckRule;->type:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckRule;->nE:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/kingroot/kinguser/akn;->d(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 118
    if-eqz v2, :cond_0

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-lez v3, :cond_0

    .line 122
    :goto_0
    invoke-static {v2}, Lcom/kingroot/kinguser/za;->d(Landroid/database/Cursor;)V

    .line 125
    :goto_1
    return v0

    :cond_0
    move v0, v1

    .line 118
    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    move-object v0, v2

    .line 122
    :goto_2
    invoke-static {v0}, Lcom/kingroot/kinguser/za;->d(Landroid/database/Cursor;)V

    move v0, v1

    .line 125
    goto :goto_1

    .line 122
    :catchall_0
    move-exception v0

    invoke-static {v2}, Lcom/kingroot/kinguser/za;->d(Landroid/database/Cursor;)V

    throw v0

    .line 119
    :catch_1
    move-exception v0

    move-object v0, v2

    goto :goto_2
.end method
