.class public Lcom/kingroot/kinguser/aky;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private anv:Lcom/kingroot/kinguser/akn;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {}, Lcom/kingroot/kinguser/akn;->BI()Lcom/kingroot/kinguser/akn;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/aky;->anv:Lcom/kingroot/kinguser/akn;

    .line 46
    return-void
.end method

.method public static c(Lcom/kingroot/kinguser/model/RootMgrLogInfo;)Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 94
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 95
    const-string v1, "time"

    iget-wide v2, p0, Lcom/kingroot/kinguser/model/RootMgrLogInfo;->mTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 96
    const-string v1, "pkgname"

    iget-object v2, p0, Lcom/kingroot/kinguser/model/RootMgrLogInfo;->adZ:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v1, "appname"

    iget-object v2, p0, Lcom/kingroot/kinguser/model/RootMgrLogInfo;->mAppName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v1, "permtype"

    iget v2, p0, Lcom/kingroot/kinguser/model/RootMgrLogInfo;->mType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 99
    const-string v1, "permstate"

    iget v2, p0, Lcom/kingroot/kinguser/model/RootMgrLogInfo;->mState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 100
    return-object v0
.end method


# virtual methods
.method public GI()I
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/kingroot/kinguser/aky;->anv:Lcom/kingroot/kinguser/akn;

    const-string v1, "permission_log"

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/akn;->gW(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a(Lcom/kingroot/kinguser/model/RootMgrLogInfo;)J
    .locals 3

    .prologue
    .line 71
    iget-object v0, p0, Lcom/kingroot/kinguser/aky;->anv:Lcom/kingroot/kinguser/akn;

    const-string v1, "permission_log"

    invoke-static {p1}, Lcom/kingroot/kinguser/aky;->c(Lcom/kingroot/kinguser/model/RootMgrLogInfo;)Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/akn;->b(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public b(Lcom/kingroot/kinguser/model/RootMgrLogInfo;)I
    .locals 6

    .prologue
    .line 78
    iget-object v0, p0, Lcom/kingroot/kinguser/aky;->anv:Lcom/kingroot/kinguser/akn;

    const-string v1, "permission_log"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/kingroot/kinguser/model/RootMgrLogInfo;->PG()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/kingroot/kinguser/akn;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getLogs()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/model/RootMgrLogInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    const-string v1, "select * from permission_log"

    .line 54
    iget-object v2, p0, Lcom/kingroot/kinguser/aky;->anv:Lcom/kingroot/kinguser/akn;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/kingroot/kinguser/akn;->d(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 55
    if-nez v10, :cond_0

    .line 64
    :goto_0
    return-object v0

    .line 59
    :cond_0
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    new-instance v1, Lcom/kingroot/kinguser/model/RootMgrLogInfo;

    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v6, 0x2

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    invoke-interface {v10, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x4

    invoke-interface {v10, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v9, 0x5

    invoke-interface {v10, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-direct/range {v1 .. v9}, Lcom/kingroot/kinguser/model/RootMgrLogInfo;-><init>(JJLjava/lang/String;Ljava/lang/String;II)V

    .line 61
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 63
    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method
