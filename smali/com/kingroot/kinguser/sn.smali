.class public Lcom/kingroot/kinguser/sn;
.super Lcom/kingroot/kinguser/tl;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/kingroot/kinguser/tl;-><init>()V

    return-void
.end method

.method private cJ(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    :try_start_0
    const-string v0, "content://multi_serial_file/"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 48
    :goto_0
    return-object v0

    .line 45
    :catch_0
    move-exception v0

    .line 48
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static jq()Ljava/lang/String;
    .locals 2

    .prologue
    .line 34
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ip()Ljava/lang/String;

    move-result-object v0

    const-string v1, "multi_serial_file"

    .line 33
    invoke-static {v0, v1}, Lcom/kingroot/kinguser/tm;->C(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 109
    invoke-virtual {p0}, Lcom/kingroot/kinguser/sn;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 110
    if-eqz v2, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v1, v0

    .line 126
    :cond_1
    :goto_0
    return v1

    .line 114
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 115
    invoke-direct {p0, v2}, Lcom/kingroot/kinguser/sn;->cJ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 117
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 121
    invoke-static {v2}, Lcom/kingroot/kinguser/sl;->cH(Ljava/lang/String;)Lcom/kingroot/kinguser/sk;

    move-result-object v2

    .line 122
    instance-of v3, v2, Lcom/kingroot/kinguser/so;

    if-eqz v3, :cond_1

    .line 126
    invoke-interface {v2}, Lcom/kingroot/kinguser/sk;->delete()Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    return-object v0
.end method

.method public jo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const-string v0, "multi_serial_file"

    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 59
    invoke-virtual {p0}, Lcom/kingroot/kinguser/sn;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 60
    if-nez v0, :cond_0

    move-object v0, v1

    .line 89
    :goto_0
    return-object v0

    .line 64
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/sn;->cJ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 68
    goto :goto_0

    .line 71
    :cond_1
    invoke-static {v0}, Lcom/kingroot/kinguser/sl;->cH(Ljava/lang/String;)Lcom/kingroot/kinguser/sk;

    move-result-object v0

    .line 72
    instance-of v2, v0, Lcom/kingroot/kinguser/so;

    if-nez v2, :cond_2

    move-object v0, v1

    .line 73
    goto :goto_0

    .line 76
    :cond_2
    invoke-interface {v0}, Lcom/kingroot/kinguser/sk;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    move-object v0, v1

    .line 77
    goto :goto_0

    .line 80
    :cond_3
    check-cast v0, Lcom/kingroot/kinguser/so;

    .line 81
    invoke-virtual {v0}, Lcom/kingroot/kinguser/so;->jr()[B

    move-result-object v2

    .line 82
    if-nez v2, :cond_4

    move-object v0, v1

    .line 83
    goto :goto_0

    .line 86
    :cond_4
    new-instance v0, Landroid/database/MatrixCursor;

    new-array v1, v4, [Ljava/lang/String;

    const-string v3, "value"

    aput-object v3, v1, v5

    invoke-direct {v0, v1, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 87
    new-array v1, v4, [Ljava/lang/Object;

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 132
    invoke-virtual {p0}, Lcom/kingroot/kinguser/sn;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 133
    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    .line 158
    :cond_0
    :goto_0
    return v1

    .line 137
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/sn;->cJ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 144
    const-string v2, "data"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v2

    .line 145
    if-eqz v2, :cond_0

    .line 149
    invoke-static {v0}, Lcom/kingroot/kinguser/sl;->cH(Ljava/lang/String;)Lcom/kingroot/kinguser/sk;

    move-result-object v0

    .line 150
    instance-of v3, v0, Lcom/kingroot/kinguser/so;

    if-eqz v3, :cond_0

    .line 154
    check-cast v0, Lcom/kingroot/kinguser/so;

    .line 156
    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/so;->x([B)Z

    move-result v0

    .line 158
    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method
