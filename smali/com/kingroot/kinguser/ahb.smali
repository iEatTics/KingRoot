.class public Lcom/kingroot/kinguser/ahb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static anw:Lcom/kingroot/kinguser/akn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Lcom/kingroot/kinguser/akn;->BI()Lcom/kingroot/kinguser/akn;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/ahb;->anw:Lcom/kingroot/kinguser/akn;

    return-void
.end method

.method public static a(Ljava/lang/String;IJJ)V
    .locals 8

    .prologue
    .line 42
    sget-object v0, Lcom/kingroot/kinguser/ahb;->anw:Lcom/kingroot/kinguser/akn;

    new-instance v1, Lcom/kingroot/kinguser/ahb$1;

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/kingroot/kinguser/ahb$1;-><init>(Ljava/lang/String;IJJ)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/akn;->a(Lcom/kingroot/kinguser/aik;)Z

    .line 62
    return-void
.end method

.method public static b(Ljava/lang/String;IJJ)V
    .locals 6

    .prologue
    .line 93
    invoke-static {p0}, Lcom/kingroot/kinguser/ahb;->fJ(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    invoke-static/range {p0 .. p5}, Lcom/kingroot/kinguser/ahb;->a(Ljava/lang/String;IJJ)V

    .line 104
    :goto_0
    return-void

    .line 96
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pkgName= \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 98
    const-string v2, "rule"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 99
    const-string v2, "rtime"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 100
    const-string v2, "vtime"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 102
    sget-object v2, Lcom/kingroot/kinguser/ahb;->anw:Lcom/kingroot/kinguser/akn;

    const-string v3, "silent_install_perm"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v0, v4}, Lcom/kingroot/kinguser/akn;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static dk(I)Ljava/util/HashMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingroot/kinguser/advance/model/SilentInstallPermInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 148
    sget-object v1, Lcom/kingroot/kinguser/ahb;->anw:Lcom/kingroot/kinguser/akn;

    const-string v2, "select * from silent_install_perm where rule=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/kingroot/kinguser/akn;->d(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 149
    if-nez v1, :cond_0

    .line 168
    :goto_0
    return-object v0

    .line 153
    :cond_0
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 154
    const-string v2, "pkgName"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 155
    const-string v3, "rule"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 156
    const-string v4, "rtime"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 157
    const-string v6, "vtime"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-long v6, v6

    .line 159
    new-instance v8, Lcom/kingroot/kinguser/advance/model/SilentInstallPermInfo;

    invoke-direct {v8}, Lcom/kingroot/kinguser/advance/model/SilentInstallPermInfo;-><init>()V

    .line 160
    iput-object v2, v8, Lcom/kingroot/kinguser/advance/model/SilentInstallPermInfo;->mPackageName:Ljava/lang/String;

    .line 161
    iput v3, v8, Lcom/kingroot/kinguser/advance/model/SilentInstallPermInfo;->mRule:I

    .line 162
    iput-wide v4, v8, Lcom/kingroot/kinguser/advance/model/SilentInstallPermInfo;->apN:J

    .line 163
    iput-wide v6, v8, Lcom/kingroot/kinguser/advance/model/SilentInstallPermInfo;->mDuration:J

    .line 164
    invoke-virtual {v0, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 167
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public static fI(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 70
    sget-object v0, Lcom/kingroot/kinguser/ahb;->anw:Lcom/kingroot/kinguser/akn;

    const-string v1, "delete from silent_install_perm where pkgName=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/akn;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    return-void
.end method

.method private static fJ(Ljava/lang/String;)Z
    .locals 9

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 172
    const/4 v2, 0x0

    .line 174
    :try_start_0
    sget-object v3, Lcom/kingroot/kinguser/ahb;->anw:Lcom/kingroot/kinguser/akn;

    const-string v4, "select * from silent_install_perm where pkgName=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/kingroot/kinguser/akn;->d(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 175
    if-eqz v2, :cond_0

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-lez v3, :cond_0

    .line 178
    :goto_0
    invoke-static {v2}, Lcom/kingroot/kinguser/za;->d(Landroid/database/Cursor;)V

    .line 181
    :goto_1
    return v0

    :cond_0
    move v0, v1

    .line 175
    goto :goto_0

    .line 176
    :catch_0
    move-exception v0

    move-object v0, v2

    .line 178
    :goto_2
    invoke-static {v0}, Lcom/kingroot/kinguser/za;->d(Landroid/database/Cursor;)V

    move v0, v1

    .line 181
    goto :goto_1

    .line 178
    :catchall_0
    move-exception v0

    invoke-static {v2}, Lcom/kingroot/kinguser/za;->d(Landroid/database/Cursor;)V

    throw v0

    .line 176
    :catch_1
    move-exception v0

    move-object v0, v2

    goto :goto_2
.end method

.method public static wu()Ljava/util/HashMap;
    .locals 9
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingroot/kinguser/advance/model/SilentInstallPermInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 116
    const-string v1, "select * from silent_install_perm"

    .line 117
    sget-object v1, Lcom/kingroot/kinguser/ahb;->anw:Lcom/kingroot/kinguser/akn;

    const-string v2, "select * from silent_install_perm"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/kingroot/kinguser/akn;->d(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 118
    if-nez v1, :cond_0

    .line 137
    :goto_0
    return-object v0

    .line 122
    :cond_0
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 123
    const-string v2, "pkgName"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 124
    const-string v3, "rule"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 125
    const-string v4, "rtime"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 126
    const-string v6, "vtime"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-long v6, v6

    .line 128
    new-instance v8, Lcom/kingroot/kinguser/advance/model/SilentInstallPermInfo;

    invoke-direct {v8}, Lcom/kingroot/kinguser/advance/model/SilentInstallPermInfo;-><init>()V

    .line 129
    iput-object v2, v8, Lcom/kingroot/kinguser/advance/model/SilentInstallPermInfo;->mPackageName:Ljava/lang/String;

    .line 130
    iput v3, v8, Lcom/kingroot/kinguser/advance/model/SilentInstallPermInfo;->mRule:I

    .line 131
    iput-wide v4, v8, Lcom/kingroot/kinguser/advance/model/SilentInstallPermInfo;->apN:J

    .line 132
    iput-wide v6, v8, Lcom/kingroot/kinguser/advance/model/SilentInstallPermInfo;->mDuration:J

    .line 133
    invoke-virtual {v0, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 136
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method
