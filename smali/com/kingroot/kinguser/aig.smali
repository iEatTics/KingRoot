.class public Lcom/kingroot/kinguser/aig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static arr:J

.field private static ars:Lcom/kingroot/kinguser/bed;

.field private static final art:Lcom/kingroot/kinguser/bed;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 26
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/kingroot/kinguser/aig;->arr:J

    .line 28
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/aig$1;

    invoke-direct {v3}, Lcom/kingroot/kinguser/aig$1;-><init>()V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    sput-object v0, Lcom/kingroot/kinguser/aig;->ars:Lcom/kingroot/kinguser/bed;

    .line 85
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/aig$2;

    invoke-direct {v3}, Lcom/kingroot/kinguser/aig$2;-><init>()V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    sput-object v0, Lcom/kingroot/kinguser/aig;->art:Lcom/kingroot/kinguser/bed;

    return-void
.end method

.method private static aj(J)V
    .locals 0

    .prologue
    .line 282
    sput-wide p0, Lcom/kingroot/kinguser/aig;->arr:J

    .line 283
    return-void
.end method

.method static synthetic jK()V
    .locals 0

    .prologue
    .line 20
    invoke-static {}, Lcom/kingroot/kinguser/aig;->xG()V

    return-void
.end method

.method public static xA()V
    .locals 2

    .prologue
    .line 63
    sget-object v0, Lcom/kingroot/kinguser/aig;->ars:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bed;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    sget-object v1, Lcom/kingroot/kinguser/aig;->ars:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 66
    :cond_0
    return-void
.end method

.method public static xB()Z
    .locals 2

    .prologue
    .line 74
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/kubuildin.data"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    const/4 v0, 0x1

    .line 81
    :goto_0
    return v0

    .line 80
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/aig;->xG()V

    .line 81
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static xC()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 202
    invoke-static {}, Lcom/kingroot/kinguser/air;->yd()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 204
    invoke-static {}, Lcom/kingroot/kinguser/aig;->xB()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/kingroot/kinguser/aig;->xD()Z

    move-result v2

    if-nez v2, :cond_1

    .line 216
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 208
    goto :goto_0

    .line 211
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/aig;->xD()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 212
    goto :goto_0
.end method

.method private static xD()Z
    .locals 10

    .prologue
    const-wide/16 v2, -0x1

    .line 227
    const/4 v4, 0x0

    .line 229
    invoke-static {}, Lcom/kingroot/kinguser/aig;->xB()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 230
    invoke-static {}, Lcom/kingroot/kinguser/aig;->xF()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    invoke-static {}, Lcom/kingroot/kinguser/aig;->xE()J

    move-result-wide v0

    move-wide v6, v0

    .line 254
    :goto_0
    cmp-long v0, v6, v2

    if-eqz v0, :cond_3

    .line 255
    invoke-static {}, Lcom/kingroot/kinguser/wb;->nb()J

    move-result-wide v2

    .line 256
    sub-long v0, v2, v6

    const-wide v8, 0x757b12c00L

    cmp-long v0, v0, v8

    if-gtz v0, :cond_2

    .line 257
    const/4 v0, 0x1

    .line 260
    :goto_1
    cmp-long v1, v2, v6

    if-gez v1, :cond_0

    .line 262
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v1

    sget-object v2, Lcom/kingroot/kinguser/aig;->art:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 266
    :cond_0
    :goto_2
    return v0

    .line 237
    :cond_1
    :try_start_0
    const-string v0, "/data/system/kubuildin.data"

    invoke-static {v0}, Lcom/kingroot/kinguser/rs;->cy(Ljava/lang/String;)[B

    move-result-object v0

    .line 238
    if-eqz v0, :cond_4

    array-length v1, v0

    if-lez v1, :cond_4

    .line 239
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 241
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v0

    .line 242
    :try_start_1
    invoke-static {v0, v1}, Lcom/kingroot/kinguser/aig;->aj(J)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_3
    move-wide v6, v0

    .line 249
    goto :goto_0

    .line 244
    :catch_0
    move-exception v0

    move-wide v0, v2

    .line 246
    :goto_4
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v5

    sget-object v6, Lcom/kingroot/kinguser/aig;->art:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v5, v6}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    move-wide v6, v0

    .line 249
    goto :goto_0

    .line 247
    :catch_1
    move-exception v0

    move-wide v0, v2

    :goto_5
    move-wide v6, v0

    goto :goto_0

    :catch_2
    move-exception v5

    goto :goto_5

    .line 244
    :catch_3
    move-exception v5

    goto :goto_4

    :cond_2
    move v0, v4

    goto :goto_1

    :cond_3
    move v0, v4

    goto :goto_2

    :cond_4
    move-wide v0, v2

    goto :goto_3

    :cond_5
    move-wide v6, v2

    goto :goto_0
.end method

.method private static xE()J
    .locals 2

    .prologue
    .line 270
    sget-wide v0, Lcom/kingroot/kinguser/aig;->arr:J

    return-wide v0
.end method

.method private static xF()Z
    .locals 4

    .prologue
    .line 274
    sget-wide v0, Lcom/kingroot/kinguser/aig;->arr:J

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
    .line 278
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/kingroot/kinguser/aig;->arr:J

    .line 279
    return-void
.end method

.method static synthetic xH()Lcom/kingroot/kinguser/bed;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/kingroot/kinguser/aig;->art:Lcom/kingroot/kinguser/bed;

    return-object v0
.end method
