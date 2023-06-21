.class public Lcom/kingroot/kinguser/aha;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static anv:Lcom/kingroot/kinguser/akn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    invoke-static {}, Lcom/kingroot/kinguser/akn;->BI()Lcom/kingroot/kinguser/akn;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/aha;->anv:Lcom/kingroot/kinguser/akn;

    return-void
.end method

.method public static b(Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;)J
    .locals 3

    .prologue
    .line 73
    sget-object v0, Lcom/kingroot/kinguser/aha;->anv:Lcom/kingroot/kinguser/akn;

    const-string v1, "silent_install_log"

    invoke-static {p0}, Lcom/kingroot/kinguser/aha;->c(Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;)Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/akn;->b(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static c(Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;)Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 124
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 125
    const-string v1, "time"

    iget-wide v2, p0, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->mTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 126
    const-string v1, "calling_pkg_name"

    iget-object v2, p0, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->anE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v1, "calling_app_name"

    iget-object v2, p0, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->apJ:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v1, "install_pkg_name"

    iget-object v2, p0, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->anH:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v1, "install_app_name"

    iget-object v2, p0, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->apK:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v1, "permstatus"

    iget v2, p0, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->mState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 131
    return-object v0
.end method

.method public static getAllLogs()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    const-string v1, "select * from silent_install_log order by time asc"

    .line 87
    sget-object v1, Lcom/kingroot/kinguser/aha;->anv:Lcom/kingroot/kinguser/akn;

    const-string v2, "select * from silent_install_log order by time asc"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/kingroot/kinguser/akn;->d(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 88
    if-nez v12, :cond_0

    .line 108
    :goto_0
    return-object v0

    .line 92
    :cond_0
    :goto_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 93
    const-string v1, "_id"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 94
    const-string v1, "calling_uid"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 95
    const-string v1, "calling_app_name"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 96
    const-string v1, "calling_app_name"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 97
    const-string v1, "install_pkg_name"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 98
    const-string v1, "install_app_name"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 99
    const-string v1, "permstatus"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 100
    const-string v1, "time"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 102
    new-instance v1, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;

    int-to-long v2, v2

    int-to-long v10, v10

    invoke-direct/range {v1 .. v11}, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;-><init>(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 104
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 107
    :cond_1
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public static ws()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    const-string v1, "select * from silent_install_log order by time desc"

    .line 48
    sget-object v2, Lcom/kingroot/kinguser/aha;->anv:Lcom/kingroot/kinguser/akn;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/kingroot/kinguser/akn;->d(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 49
    if-nez v12, :cond_0

    .line 66
    :goto_0
    return-object v0

    .line 53
    :cond_0
    :goto_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 54
    new-instance v1, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;

    const/4 v2, 0x0

    .line 55
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v4, 0x1

    .line 56
    invoke-interface {v12, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x2

    .line 57
    invoke-interface {v12, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    .line 58
    invoke-interface {v12, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    .line 59
    invoke-interface {v12, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x5

    .line 60
    invoke-interface {v12, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x6

    .line 61
    invoke-interface {v12, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/4 v10, 0x7

    .line 62
    invoke-interface {v12, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-direct/range {v1 .. v11}, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;-><init>(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 63
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 65
    :cond_1
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public static wt()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 114
    sget-object v0, Lcom/kingroot/kinguser/aha;->anv:Lcom/kingroot/kinguser/akn;

    const-string v1, "silent_install_log"

    invoke-virtual {v0, v1, v2, v2}, Lcom/kingroot/kinguser/akn;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method
