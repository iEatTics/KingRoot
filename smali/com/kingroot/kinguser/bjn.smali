.class public Lcom/kingroot/kinguser/bjn;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static arr:J

.field private static bxn:Z

.field private static bxo:Lcom/kingroot/kinguser/bed;

.field private static final sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/bjn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 41
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/kingroot/kinguser/bjn;->arr:J

    .line 42
    const/4 v0, 0x0

    sput-boolean v0, Lcom/kingroot/kinguser/bjn;->bxn:Z

    .line 44
    new-instance v0, Lcom/kingroot/kinguser/bjn$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bjn$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bjn;->sInstance:Lcom/kingroot/kinguser/cce;

    .line 167
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->bll:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v3, 0x1

    new-instance v4, Lcom/kingroot/kinguser/bjn$2;

    invoke-direct {v4}, Lcom/kingroot/kinguser/bjn$2;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    sput-object v0, Lcom/kingroot/kinguser/bjn;->bxo:Lcom/kingroot/kinguser/bed;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/bjn$1;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/kingroot/kinguser/bjn;-><init>()V

    return-void
.end method

.method public static aeb()Lcom/kingroot/kinguser/bjn;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/kingroot/kinguser/bjn;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bjn;

    return-object v0
.end method

.method private aee()Z
    .locals 9

    .prologue
    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 205
    .line 208
    invoke-static {}, Lcom/kingroot/kinguser/bjn;->xB()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 209
    invoke-static {}, Lcom/kingroot/kinguser/bjn;->xF()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    invoke-static {}, Lcom/kingroot/kinguser/bjn;->xE()J

    move-result-wide v2

    .line 212
    invoke-static {}, Lcom/kingroot/kinguser/bjn;->aef()Z

    move-result v0

    move v8, v0

    move-wide v0, v2

    move v2, v8

    .line 249
    :goto_0
    cmp-long v3, v0, v4

    if-eqz v3, :cond_0

    .line 252
    if-eqz v2, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 254
    :goto_1
    cmp-long v4, v2, v4

    if-nez v4, :cond_6

    move v6, v7

    .line 274
    :cond_0
    :goto_2
    return v6

    .line 217
    :cond_1
    :try_start_0
    const-string v0, "/data/system/kushuamebuildin.data"

    invoke-static {v0}, Lcom/kingroot/kinguser/rs;->cy(Ljava/lang/String;)[B

    move-result-object v0

    .line 218
    if-eqz v0, :cond_4

    array-length v1, v0

    if-lez v1, :cond_4

    .line 219
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 220
    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 221
    array-length v1, v0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    .line 224
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/bjn;->ej(Z)V

    move v0, v6

    move-wide v2, v4

    :goto_3
    move v8, v0

    move-wide v0, v2

    move v2, v8

    .line 243
    goto :goto_0

    .line 227
    :cond_2
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v2

    .line 228
    const/4 v1, 0x1

    :try_start_1
    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v0

    if-ne v0, v7, :cond_3

    move v0, v7

    .line 230
    :goto_4
    :try_start_2
    invoke-static {v2, v3}, Lcom/kingroot/kinguser/bjn;->aj(J)V

    .line 231
    invoke-static {v0}, Lcom/kingroot/kinguser/bjn;->ek(Z)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_3

    .line 238
    :catch_0
    move-exception v1

    .line 240
    :goto_5
    invoke-direct {p0, v7}, Lcom/kingroot/kinguser/bjn;->ej(Z)V

    move v8, v0

    move-wide v0, v2

    move v2, v8

    .line 243
    goto :goto_0

    :cond_3
    move v0, v6

    .line 228
    goto :goto_4

    .line 236
    :cond_4
    const/4 v0, 0x1

    :try_start_3
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/bjn;->ej(Z)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move v0, v6

    move-wide v2, v4

    goto :goto_3

    .line 241
    :catch_1
    move-exception v0

    move v0, v6

    move-wide v2, v4

    :goto_6
    move v8, v0

    move-wide v0, v2

    move v2, v8

    goto :goto_0

    .line 252
    :cond_5
    invoke-static {}, Lcom/kingroot/kinguser/wb;->nb()J

    move-result-wide v2

    goto :goto_1

    .line 259
    :cond_6
    const-wide v4, 0x9a7ec800L

    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/adk;->b(JJJ)Z

    move-result v4

    if-nez v4, :cond_7

    move v6, v7

    .line 267
    :cond_7
    cmp-long v0, v2, v0

    if-gez v0, :cond_0

    .line 269
    invoke-direct {p0, v7}, Lcom/kingroot/kinguser/bjn;->ej(Z)V

    goto :goto_2

    .line 241
    :catch_2
    move-exception v0

    move v0, v6

    goto :goto_6

    :catch_3
    move-exception v1

    goto :goto_6

    .line 238
    :catch_4
    move-exception v0

    move v0, v6

    move-wide v2, v4

    goto :goto_5

    :catch_5
    move-exception v0

    move v0, v6

    goto :goto_5

    :cond_8
    move v2, v6

    move-wide v0, v4

    goto/16 :goto_0
.end method

.method private static aef()Z
    .locals 1

    .prologue
    .line 290
    sget-boolean v0, Lcom/kingroot/kinguser/bjn;->bxn:Z

    return v0
.end method

.method private static aj(J)V
    .locals 0

    .prologue
    .line 282
    sput-wide p0, Lcom/kingroot/kinguser/bjn;->arr:J

    .line 283
    return-void
.end method

.method private declared-synchronized ej(Z)V
    .locals 10

    .prologue
    .line 100
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->EE()J

    move-result-wide v0

    .line 102
    invoke-static {}, Lcom/kingroot/kinguser/air;->yc()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 145
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 107
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/kingroot/kinguser/bjn;->xB()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p1, :cond_0

    .line 111
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 113
    invoke-static {}, Lcom/kingroot/kinguser/wb;->nb()J

    move-result-wide v2

    .line 115
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v4

    .line 117
    const-wide/16 v8, -0x1

    cmp-long v5, v2, v8

    if-nez v5, :cond_4

    .line 120
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_3

    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Lcom/kingroot/kinguser/aks;->bt(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 126
    :cond_3
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x240c8400

    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/adk;->b(JJJ)Z

    move-result v0

    .line 127
    if-eqz v0, :cond_0

    .line 130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    sget-object v1, Lcom/kingroot/kinguser/bjn;->bxo:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1, v6}, Lcom/kingroot/kinguser/beg;->a(Lcom/kingroot/kinguser/bed;Ljava/util/List;)Z

    goto :goto_0

    .line 140
    :cond_4
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    sget-object v1, Lcom/kingroot/kinguser/bjn;->bxo:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1, v6}, Lcom/kingroot/kinguser/beg;->a(Lcom/kingroot/kinguser/bed;Ljava/util/List;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private static ek(Z)V
    .locals 0

    .prologue
    .line 286
    sput-boolean p0, Lcom/kingroot/kinguser/bjn;->bxn:Z

    .line 287
    return-void
.end method

.method public static xB()Z
    .locals 2

    .prologue
    .line 153
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/kushuamebuildin.data"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    const/4 v0, 0x1

    .line 161
    :goto_0
    return v0

    .line 159
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/bjn;->xG()V

    .line 161
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static xE()J
    .locals 2

    .prologue
    .line 278
    sget-wide v0, Lcom/kingroot/kinguser/bjn;->arr:J

    return-wide v0
.end method

.method private static xF()Z
    .locals 4

    .prologue
    .line 294
    sget-wide v0, Lcom/kingroot/kinguser/bjn;->arr:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static xG()V
    .locals 2

    .prologue
    .line 298
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/kingroot/kinguser/bjn;->arr:J

    .line 299
    return-void
.end method


# virtual methods
.method public EG()V
    .locals 1

    .prologue
    .line 88
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->EG()V

    .line 89
    return-void
.end method

.method public aec()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 62
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/aks;->EF()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 83
    :cond_0
    :goto_0
    return v0

    .line 66
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/air;->yc()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 69
    invoke-static {}, Lcom/kingroot/kinguser/bjn;->xB()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/kingroot/kinguser/bjn;->aee()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    .line 73
    goto :goto_0

    .line 77
    :cond_3
    invoke-static {}, Lcom/kingroot/kinguser/bjn;->xB()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/kingroot/kinguser/bjn;->aee()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 79
    goto :goto_0
.end method

.method public aed()V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/bjn;->ej(Z)V

    .line 97
    return-void
.end method
