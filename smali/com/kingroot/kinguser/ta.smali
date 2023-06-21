.class public Lcom/kingroot/kinguser/ta;
.super Lcom/kingroot/kinguser/tl;
.source "SourceFile"


# instance fields
.field private GQ:Lcom/kingroot/kinguser/su;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/kingroot/kinguser/tl;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/ta;->GQ:Lcom/kingroot/kinguser/su;

    return-void
.end method

.method public static jq()Ljava/lang/String;
    .locals 2

    .prologue
    .line 44
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ip()Ljava/lang/String;

    move-result-object v0

    const-string v1, "multi_string"

    .line 43
    invoke-static {v0, v1}, Lcom/kingroot/kinguser/tm;->C(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 130
    if-nez p2, :cond_1

    .line 145
    :cond_0
    :goto_0
    return v1

    .line 134
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 135
    array-length v4, p2

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_2

    aget-object v0, p2, v2

    .line 136
    invoke-static {v0}, Lcom/kingroot/kinguser/sx;->a(Landroid/content/ContentValues;)Lcom/kingroot/kinguser/sx;

    move-result-object v0

    .line 137
    if-eqz v0, :cond_3

    .line 138
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    add-int/lit8 v0, v1, 0x1

    .line 135
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_1

    .line 142
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    iget-object v2, p0, Lcom/kingroot/kinguser/ta;->GQ:Lcom/kingroot/kinguser/su;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/kingroot/kinguser/sx;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kingroot/kinguser/sx;

    invoke-interface {v2, v0}, Lcom/kingroot/kinguser/su;->a([Lcom/kingroot/kinguser/sx;)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 151
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    if-nez p3, :cond_0

    .line 153
    iget-object v0, p0, Lcom/kingroot/kinguser/ta;->GQ:Lcom/kingroot/kinguser/su;

    invoke-interface {v0}, Lcom/kingroot/kinguser/su;->clear()V

    .line 168
    :goto_0
    return v1

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ta;->GQ:Lcom/kingroot/kinguser/su;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/kingroot/kinguser/su;->clear(Z)V

    goto :goto_0

    .line 165
    :catch_0
    move-exception v0

    goto :goto_0

    .line 158
    :cond_1
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 159
    array-length v0, v2

    new-array v3, v0, [I

    move v0, v1

    .line 160
    :goto_1
    array-length v4, v2

    if-ge v0, v4, :cond_2

    .line 161
    aget-object v4, v2, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v3, v0

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 163
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/ta;->GQ:Lcom/kingroot/kinguser/su;

    invoke-interface {v0, v3}, Lcom/kingroot/kinguser/su;->c([I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 118
    .line 119
    invoke-static {p2}, Lcom/kingroot/kinguser/sx;->a(Landroid/content/ContentValues;)Lcom/kingroot/kinguser/sx;

    move-result-object v0

    .line 120
    if-nez v0, :cond_0

    .line 125
    :goto_0
    return-object v2

    .line 124
    :cond_0
    iget-object v1, p0, Lcom/kingroot/kinguser/ta;->GQ:Lcom/kingroot/kinguser/su;

    invoke-interface {v1, v0}, Lcom/kingroot/kinguser/su;->a(Lcom/kingroot/kinguser/sx;)V

    goto :goto_0
.end method

.method public jo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    const-string v0, "multi_string"

    return-object v0
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 54
    new-instance v0, Lcom/kingroot/kinguser/tb;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/ta;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/tb;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ta;->GQ:Lcom/kingroot/kinguser/su;

    .line 55
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    .prologue
    .line 63
    .line 65
    :try_start_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/kingroot/kinguser/ta;->GQ:Lcom/kingroot/kinguser/su;

    invoke-interface {v0}, Lcom/kingroot/kinguser/su;->ju()Ljava/util/List;

    move-result-object v0

    .line 82
    :goto_0
    if-nez v0, :cond_2

    .line 83
    const/4 v0, 0x0

    .line 108
    :goto_1
    return-object v0

    .line 68
    :cond_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 70
    if-nez p4, :cond_1

    .line 71
    iget-object v1, p0, Lcom/kingroot/kinguser/ta;->GQ:Lcom/kingroot/kinguser/su;

    .line 72
    invoke-interface {v1, v0}, Lcom/kingroot/kinguser/su;->aS(I)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 74
    :cond_1
    const/4 v1, 0x0

    aget-object v1, p4, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 75
    const/4 v2, 0x1

    aget-object v2, p4, v2

    .line 77
    iget-object v3, p0, Lcom/kingroot/kinguser/ta;->GQ:Lcom/kingroot/kinguser/su;

    invoke-interface {v3, v0, v1, v2}, Lcom/kingroot/kinguser/su;->b(IILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 86
    :cond_2
    new-instance v1, Landroid/database/MatrixCursor;

    sget-object v2, Lcom/kingroot/kinguser/sv;->GJ:[Ljava/lang/String;

    .line 87
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 89
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/sx;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 91
    const/16 v3, 0xf

    :try_start_1
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-wide v6, v0, Lcom/kingroot/kinguser/sx;->mId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, v0, Lcom/kingroot/kinguser/sx;->GM:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-wide v6, v0, Lcom/kingroot/kinguser/sx;->mTime:J

    .line 92
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, v0, Lcom/kingroot/kinguser/sx;->Bk:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget-boolean v5, v0, Lcom/kingroot/kinguser/sx;->GN:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    iget-object v5, v0, Lcom/kingroot/kinguser/sx;->GO:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    aput-object v5, v3, v4

    const/4 v4, 0x6

    iget-object v5, v0, Lcom/kingroot/kinguser/sx;->GO:[Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    aput-object v5, v3, v4

    const/4 v4, 0x7

    iget-object v5, v0, Lcom/kingroot/kinguser/sx;->GO:[Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    aput-object v5, v3, v4

    const/16 v4, 0x8

    iget-object v5, v0, Lcom/kingroot/kinguser/sx;->GO:[Ljava/lang/String;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    aput-object v5, v3, v4

    const/16 v4, 0x9

    iget-object v5, v0, Lcom/kingroot/kinguser/sx;->GO:[Ljava/lang/String;

    const/4 v6, 0x4

    aget-object v5, v5, v6

    aput-object v5, v3, v4

    const/16 v4, 0xa

    iget-object v5, v0, Lcom/kingroot/kinguser/sx;->GO:[Ljava/lang/String;

    const/4 v6, 0x5

    aget-object v5, v5, v6

    aput-object v5, v3, v4

    const/16 v4, 0xb

    iget-object v5, v0, Lcom/kingroot/kinguser/sx;->GO:[Ljava/lang/String;

    const/4 v6, 0x6

    aget-object v5, v5, v6

    aput-object v5, v3, v4

    const/16 v4, 0xc

    iget-object v5, v0, Lcom/kingroot/kinguser/sx;->GO:[Ljava/lang/String;

    const/4 v6, 0x7

    aget-object v5, v5, v6

    aput-object v5, v3, v4

    const/16 v4, 0xd

    iget-object v5, v0, Lcom/kingroot/kinguser/sx;->GO:[Ljava/lang/String;

    const/16 v6, 0x8

    aget-object v5, v5, v6

    aput-object v5, v3, v4

    const/16 v4, 0xe

    iget-object v0, v0, Lcom/kingroot/kinguser/sx;->GO:[Ljava/lang/String;

    const/16 v5, 0x9

    aget-object v0, v0, v5

    aput-object v0, v3, v4

    .line 91
    invoke-virtual {v1, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 98
    :catch_0
    move-exception v0

    goto/16 :goto_2

    :cond_3
    move-object v0, v1

    .line 103
    goto/16 :goto_1

    .line 104
    :catch_1
    move-exception v0

    .line 108
    const/4 v0, 0x0

    goto/16 :goto_1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v0, -0x1

    .line 175
    :try_start_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 202
    :cond_0
    :goto_0
    return v0

    .line 180
    :cond_1
    invoke-static {p2}, Lcom/kingroot/kinguser/sx;->a(Landroid/content/ContentValues;)Lcom/kingroot/kinguser/sx;

    move-result-object v5

    .line 181
    const-string v1, ";"

    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 182
    const-string v0, ";"

    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 184
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 185
    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 186
    const/4 v2, 0x2

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 188
    iget-object v0, p0, Lcom/kingroot/kinguser/ta;->GQ:Lcom/kingroot/kinguser/su;

    move-object v2, p4

    invoke-interface/range {v0 .. v5}, Lcom/kingroot/kinguser/su;->a(I[Ljava/lang/String;IILcom/kingroot/kinguser/sx;)V

    :goto_1
    move v0, v6

    .line 202
    goto :goto_0

    .line 191
    :cond_2
    if-eqz v5, :cond_0

    .line 195
    iget-object v0, p0, Lcom/kingroot/kinguser/ta;->GQ:Lcom/kingroot/kinguser/su;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1, p4, v5}, Lcom/kingroot/kinguser/su;->a(I[Ljava/lang/String;Lcom/kingroot/kinguser/sx;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 198
    :catch_0
    move-exception v0

    goto :goto_1
.end method
