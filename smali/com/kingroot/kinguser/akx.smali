.class public Lcom/kingroot/kinguser/akx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private anw:Lcom/kingroot/kinguser/akn;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {}, Lcom/kingroot/kinguser/akn;->BI()Lcom/kingroot/kinguser/akn;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/akx;->anw:Lcom/kingroot/kinguser/akn;

    .line 33
    return-void
.end method

.method private eU(I)Ljava/util/HashMap;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingroot/kinguser/model/AppRuleEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 173
    iget-object v1, p0, Lcom/kingroot/kinguser/akx;->anw:Lcom/kingroot/kinguser/akn;

    const-string v2, "select * from apps where rule=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/kingroot/kinguser/akn;->d(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 174
    if-nez v1, :cond_0

    .line 195
    :goto_0
    return-object v0

    .line 178
    :cond_0
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 179
    const-string v2, "appName"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 180
    const-string v3, "pkgName"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 181
    const-string v4, "rtime"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 182
    const-string v5, "vtime"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    int-to-long v6, v5

    .line 183
    const-string v5, "rule"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 185
    new-instance v8, Lcom/kingroot/kinguser/model/AppRuleEntity;

    invoke-direct {v8}, Lcom/kingroot/kinguser/model/AppRuleEntity;-><init>()V

    .line 186
    iput-object v2, v8, Lcom/kingroot/kinguser/model/AppRuleEntity;->mAppName:Ljava/lang/String;

    .line 187
    iput-object v3, v8, Lcom/kingroot/kinguser/model/AppRuleEntity;->mPackageName:Ljava/lang/String;

    .line 188
    int-to-long v10, v4

    iput-wide v10, v8, Lcom/kingroot/kinguser/model/AppRuleEntity;->mTime:J

    .line 189
    iput v5, v8, Lcom/kingroot/kinguser/model/AppRuleEntity;->mRule:I

    .line 190
    iput-wide v6, v8, Lcom/kingroot/kinguser/model/AppRuleEntity;->aQN:J

    .line 191
    invoke-virtual {v0, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 194
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method


# virtual methods
.method public GF()Ljava/util/HashMap;
    .locals 12
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingroot/kinguser/model/AppRuleEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 116
    const-string v1, "select * from apps order by rule asc, rtime desc"

    .line 117
    iget-object v1, p0, Lcom/kingroot/kinguser/akx;->anw:Lcom/kingroot/kinguser/akn;

    const-string v2, "select * from apps order by rule asc, rtime desc"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/kingroot/kinguser/akn;->d(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 118
    if-nez v1, :cond_0

    .line 139
    :goto_0
    return-object v0

    .line 122
    :cond_0
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 123
    const-string v2, "appName"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 124
    const-string v3, "pkgName"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 125
    const-string v4, "rtime"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 126
    const-string v5, "vtime"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    int-to-long v6, v5

    .line 127
    const-string v5, "rule"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 129
    new-instance v8, Lcom/kingroot/kinguser/model/AppRuleEntity;

    invoke-direct {v8}, Lcom/kingroot/kinguser/model/AppRuleEntity;-><init>()V

    .line 130
    iput-object v2, v8, Lcom/kingroot/kinguser/model/AppRuleEntity;->mAppName:Ljava/lang/String;

    .line 131
    iput-object v3, v8, Lcom/kingroot/kinguser/model/AppRuleEntity;->mPackageName:Ljava/lang/String;

    .line 132
    int-to-long v10, v4

    iput-wide v10, v8, Lcom/kingroot/kinguser/model/AppRuleEntity;->mTime:J

    .line 133
    iput v5, v8, Lcom/kingroot/kinguser/model/AppRuleEntity;->mRule:I

    .line 134
    iput-wide v6, v8, Lcom/kingroot/kinguser/model/AppRuleEntity;->aQN:J

    .line 135
    invoke-virtual {v0, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 138
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public GG()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingroot/kinguser/model/AppRuleEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/akx;->eU(I)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public GH()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingroot/kinguser/model/AppRuleEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/akx;->eU(I)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public a(JLjava/lang/String;Ljava/lang/String;IJ)V
    .locals 10

    .prologue
    .line 53
    iget-object v9, p0, Lcom/kingroot/kinguser/akx;->anw:Lcom/kingroot/kinguser/akn;

    new-instance v0, Lcom/kingroot/kinguser/akx$1;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p3

    move-wide v4, p1

    move v6, p5

    move-wide/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/kingroot/kinguser/akx$1;-><init>(Lcom/kingroot/kinguser/akx;Ljava/lang/String;Ljava/lang/String;JIJ)V

    invoke-virtual {v9, v0}, Lcom/kingroot/kinguser/akn;->a(Lcom/kingroot/kinguser/aik;)Z

    .line 74
    return-void
.end method

.method public c(Ljava/lang/String;IJJ)V
    .locals 5

    .prologue
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pkgName= \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 101
    const-string v2, "rule"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 102
    const-string v2, "rtime"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 103
    const-string v2, "vtime"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 105
    iget-object v2, p0, Lcom/kingroot/kinguser/akx;->anw:Lcom/kingroot/kinguser/akn;

    const-string v3, "apps"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v0, v4}, Lcom/kingroot/kinguser/akn;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 106
    return-void
.end method

.method public hs(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 81
    iget-object v0, p0, Lcom/kingroot/kinguser/akx;->anw:Lcom/kingroot/kinguser/akn;

    const-string v1, "delete from apps where pkgName=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/akn;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    return-void
.end method
