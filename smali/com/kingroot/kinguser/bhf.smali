.class public Lcom/kingroot/kinguser/bhf;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/bhf$a;
    }
.end annotation


# instance fields
.field private bpN:Ljava/lang/String;

.field private bpO:Ljava/lang/String;

.field private bpP:J

.field private bpQ:Ljava/lang/String;

.field private bpR:Ljava/lang/String;

.field private bpS:Ljava/lang/String;

.field private bpT:J

.field private bpU:Ljava/lang/String;

.field private bpV:Ljava/lang/String;

.field private bpW:I

.field private bpX:Ljava/lang/String;

.field private bpY:Ljava/lang/String;

.field private bpZ:I

.field private bqa:Ljava/lang/String;

.field private bqb:I

.field private bqc:I

.field private final bqd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private bqe:I

.field private final bqf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, -0x1

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/bhf;->bpN:Ljava/lang/String;

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/bhf;->bpO:Ljava/lang/String;

    .line 77
    iput-wide v2, p0, Lcom/kingroot/kinguser/bhf;->bpP:J

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/bhf;->bpQ:Ljava/lang/String;

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/bhf;->bpR:Ljava/lang/String;

    .line 86
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/bhf;->bpS:Ljava/lang/String;

    .line 89
    iput-wide v2, p0, Lcom/kingroot/kinguser/bhf;->bpT:J

    .line 92
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/bhf;->bpU:Ljava/lang/String;

    .line 95
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/bhf;->bpV:Ljava/lang/String;

    .line 98
    iput v1, p0, Lcom/kingroot/kinguser/bhf;->bpW:I

    .line 101
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/bhf;->bpX:Ljava/lang/String;

    .line 104
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/bhf;->bpY:Ljava/lang/String;

    .line 107
    iput v1, p0, Lcom/kingroot/kinguser/bhf;->bpZ:I

    .line 110
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/bhf;->bqa:Ljava/lang/String;

    .line 113
    iput v1, p0, Lcom/kingroot/kinguser/bhf;->bqb:I

    .line 116
    iput v1, p0, Lcom/kingroot/kinguser/bhf;->bqc:I

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bhf;->bqd:Ljava/util/List;

    .line 122
    iput v1, p0, Lcom/kingroot/kinguser/bhf;->bqe:I

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bhf;->bqf:Ljava/util/List;

    .line 129
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bhf;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/kingroot/kinguser/bhf;->bpN:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 385
    invoke-static {p0}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    .line 399
    :goto_0
    return-object v0

    .line 387
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x3e8

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 388
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 389
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/kingroot/kinguser/aab;->dH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 390
    if-eqz p2, :cond_1

    invoke-static {v0}, Lcom/kingroot/kinguser/bhf;->cN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 391
    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 394
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/kingroot/kinguser/aab;->dH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 395
    if-eqz p2, :cond_2

    invoke-static {v0}, Lcom/kingroot/kinguser/bhf;->cN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 396
    :cond_2
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 399
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/bhf;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/kingroot/kinguser/bhf;->bpO:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/kingroot/kinguser/bhf;)J
    .locals 2

    .prologue
    .line 20
    iget-wide v0, p0, Lcom/kingroot/kinguser/bhf;->bpP:J

    return-wide v0
.end method

.method private cB(J)Ljava/lang/String;
    .locals 3

    .prologue
    .line 273
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static cN(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 366
    const-string v0, ","

    .line 367
    const-string v1, "%2C"

    .line 368
    invoke-static {v0, v1, p0}, Lcom/kingroot/kinguser/bhf;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 369
    const-string v1, ";"

    .line 370
    const-string v2, "%3B"

    .line 371
    invoke-static {v1, v2, v0}, Lcom/kingroot/kinguser/bhf;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 372
    const-string v1, "|"

    .line 373
    const-string v2, "%7C"

    .line 374
    invoke-static {v1, v2, v0}, Lcom/kingroot/kinguser/bhf;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 375
    const-string v1, "\n"

    .line 376
    const-string v2, "%0A"

    .line 377
    invoke-static {v1, v2, v0}, Lcom/kingroot/kinguser/bhf;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 378
    const-string v1, "+"

    .line 379
    const-string v2, "%2B"

    .line 380
    invoke-static {v1, v2, v0}, Lcom/kingroot/kinguser/bhf;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 381
    return-object v0
.end method

.method static synthetic d(Lcom/kingroot/kinguser/bhf;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/kingroot/kinguser/bhf;->bpQ:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/kingroot/kinguser/bhf;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/kingroot/kinguser/bhf;->bpR:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/kingroot/kinguser/bhf;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/kingroot/kinguser/bhf;->bpS:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/kingroot/kinguser/bhf;)J
    .locals 2

    .prologue
    .line 20
    iget-wide v0, p0, Lcom/kingroot/kinguser/bhf;->bpT:J

    return-wide v0
.end method

.method static synthetic h(Lcom/kingroot/kinguser/bhf;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/kingroot/kinguser/bhf;->bpU:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/kingroot/kinguser/bhf;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/kingroot/kinguser/bhf;->bpV:Ljava/lang/String;

    return-object v0
.end method

.method private iN(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    if-gez p1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic j(Lcom/kingroot/kinguser/bhf;)I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/kingroot/kinguser/bhf;->bpW:I

    return v0
.end method

.method private static j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 355
    .line 356
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 357
    invoke-virtual {p2, p0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 359
    :cond_0
    return-object p2
.end method

.method static synthetic k(Lcom/kingroot/kinguser/bhf;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/kingroot/kinguser/bhf;->bpX:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l(Lcom/kingroot/kinguser/bhf;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/kingroot/kinguser/bhf;->bpY:Ljava/lang/String;

    return-object v0
.end method

.method private lC(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 238
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 241
    :goto_0
    return-object v0

    .line 240
    :cond_0
    const-string v0, "\\+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 241
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method private lD(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    invoke-static {p1}, Lcom/kingroot/kinguser/aab;->dH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bhf;->cN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic m(Lcom/kingroot/kinguser/bhf;)I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/kingroot/kinguser/bhf;->bpZ:I

    return v0
.end method

.method static synthetic n(Lcom/kingroot/kinguser/bhf;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/kingroot/kinguser/bhf;->bqa:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic o(Lcom/kingroot/kinguser/bhf;)I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/kingroot/kinguser/bhf;->bqb:I

    return v0
.end method

.method static synthetic p(Lcom/kingroot/kinguser/bhf;)I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/kingroot/kinguser/bhf;->bqc:I

    return v0
.end method

.method static synthetic q(Lcom/kingroot/kinguser/bhf;)Ljava/util/List;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/kingroot/kinguser/bhf;->bqd:Ljava/util/List;

    return-object v0
.end method

.method static synthetic r(Lcom/kingroot/kinguser/bhf;)I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/kingroot/kinguser/bhf;->bqe:I

    return v0
.end method

.method static synthetic s(Lcom/kingroot/kinguser/bhf;)Ljava/util/List;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/kingroot/kinguser/bhf;->bqf:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public aco()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 250
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bhf;->acp()[Ljava/lang/String;

    move-result-object v1

    .line 251
    array-length v2, v1

    if-nez v2, :cond_0

    const-string v0, ""

    .line 261
    :goto_0
    return-object v0

    .line 252
    :cond_0
    array-length v2, v1

    if-ne v2, v0, :cond_1

    aget-object v0, v1, v4

    goto :goto_0

    .line 254
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x3e8

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 255
    aget-object v3, v1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_2

    .line 258
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 261
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public acp()[Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 277
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/kingroot/kinguser/bhf;->bpN:Ljava/lang/String;

    .line 278
    invoke-direct {p0, v2}, Lcom/kingroot/kinguser/bhf;->lD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/kingroot/kinguser/bhf;->bpO:Ljava/lang/String;

    .line 279
    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/bhf;->lD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/kingroot/kinguser/bhf;->bpP:J

    .line 280
    invoke-direct {p0, v2, v3}, Lcom/kingroot/kinguser/bhf;->cB(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/kingroot/kinguser/bhf;->bpQ:Ljava/lang/String;

    .line 281
    invoke-direct {p0, v2}, Lcom/kingroot/kinguser/bhf;->lD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/kingroot/kinguser/bhf;->bpR:Ljava/lang/String;

    .line 282
    invoke-direct {p0, v2}, Lcom/kingroot/kinguser/bhf;->lD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/kingroot/kinguser/bhf;->bpS:Ljava/lang/String;

    .line 283
    invoke-direct {p0, v2}, Lcom/kingroot/kinguser/bhf;->lD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-wide v2, p0, Lcom/kingroot/kinguser/bhf;->bpT:J

    .line 284
    invoke-direct {p0, v2, v3}, Lcom/kingroot/kinguser/bhf;->cB(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/kingroot/kinguser/bhf;->bpU:Ljava/lang/String;

    .line 285
    invoke-direct {p0, v2}, Lcom/kingroot/kinguser/bhf;->lD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/kingroot/kinguser/bhf;->bpV:Ljava/lang/String;

    .line 286
    invoke-direct {p0, v2}, Lcom/kingroot/kinguser/bhf;->lD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget v2, p0, Lcom/kingroot/kinguser/bhf;->bpW:I

    .line 287
    invoke-direct {p0, v2}, Lcom/kingroot/kinguser/bhf;->iN(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/kingroot/kinguser/bhf;->bpX:Ljava/lang/String;

    .line 288
    invoke-direct {p0, v2}, Lcom/kingroot/kinguser/bhf;->lD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/kingroot/kinguser/bhf;->bpY:Ljava/lang/String;

    .line 289
    invoke-direct {p0, v2}, Lcom/kingroot/kinguser/bhf;->lD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    iget v2, p0, Lcom/kingroot/kinguser/bhf;->bpZ:I

    .line 290
    invoke-direct {p0, v2}, Lcom/kingroot/kinguser/bhf;->iN(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/kingroot/kinguser/bhf;->bqa:Ljava/lang/String;

    .line 291
    invoke-direct {p0, v2}, Lcom/kingroot/kinguser/bhf;->lD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    iget v2, p0, Lcom/kingroot/kinguser/bhf;->bqb:I

    .line 292
    invoke-direct {p0, v2}, Lcom/kingroot/kinguser/bhf;->iN(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    iget v2, p0, Lcom/kingroot/kinguser/bhf;->bqc:I

    .line 293
    invoke-direct {p0, v2}, Lcom/kingroot/kinguser/bhf;->iN(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    iget-object v2, p0, Lcom/kingroot/kinguser/bhf;->bqd:Ljava/util/List;

    const-string v3, "+"

    .line 294
    invoke-static {v2, v3, v4}, Lcom/kingroot/kinguser/bhf;->a(Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    iget v2, p0, Lcom/kingroot/kinguser/bhf;->bqe:I

    .line 295
    invoke-direct {p0, v2}, Lcom/kingroot/kinguser/bhf;->iN(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    iget-object v2, p0, Lcom/kingroot/kinguser/bhf;->bqf:Ljava/util/List;

    const-string v3, "+"

    .line 296
    invoke-static {v2, v3, v4}, Lcom/kingroot/kinguser/bhf;->a(Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 277
    return-object v0
.end method

.method public acq()Lcom/kingroot/kinguser/bhf$a;
    .locals 1

    .prologue
    .line 351
    new-instance v0, Lcom/kingroot/kinguser/bhf$a;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/bhf$a;-><init>(Lcom/kingroot/kinguser/bhf;)V

    return-object v0
.end method

.method public bU(Ljava/util/List;)Lcom/kingroot/kinguser/bhf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/kingroot/kinguser/bhf;"
        }
    .end annotation

    .prologue
    .line 232
    iget-object v0, p0, Lcom/kingroot/kinguser/bhf;->bqf:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 233
    return-object p0
.end method

.method public cA(J)Lcom/kingroot/kinguser/bhf;
    .locals 1

    .prologue
    .line 162
    iput-wide p1, p0, Lcom/kingroot/kinguser/bhf;->bpT:J

    .line 163
    return-object p0
.end method

.method public cz(J)Lcom/kingroot/kinguser/bhf;
    .locals 1

    .prologue
    .line 142
    iput-wide p1, p0, Lcom/kingroot/kinguser/bhf;->bpP:J

    .line 143
    return-object p0
.end method

.method public iL(I)Lcom/kingroot/kinguser/bhf;
    .locals 0

    .prologue
    .line 192
    iput p1, p0, Lcom/kingroot/kinguser/bhf;->bpZ:I

    .line 193
    return-object p0
.end method

.method public iM(I)Lcom/kingroot/kinguser/bhf;
    .locals 0

    .prologue
    .line 222
    iput p1, p0, Lcom/kingroot/kinguser/bhf;->bqe:I

    .line 223
    return-object p0
.end method

.method public lA(Ljava/lang/String;)Lcom/kingroot/kinguser/bhf;
    .locals 1

    .prologue
    .line 182
    invoke-static {p1}, Lcom/kingroot/kinguser/aab;->dH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bhf;->bpX:Ljava/lang/String;

    .line 183
    return-object p0
.end method

.method public lB(Ljava/lang/String;)Lcom/kingroot/kinguser/bhf;
    .locals 1

    .prologue
    .line 187
    invoke-static {p1}, Lcom/kingroot/kinguser/aab;->dH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bhf;->bpY:Ljava/lang/String;

    .line 188
    return-object p0
.end method

.method public lE(Ljava/lang/String;)Z
    .locals 13
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 301
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    .line 347
    :goto_0
    return v0

    .line 303
    :cond_0
    const-string v3, ","

    const/16 v4, 0x14

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    .line 304
    array-length v3, v7

    const/16 v4, 0x13

    if-ge v3, v4, :cond_1

    move v0, v1

    goto :goto_0

    .line 314
    :cond_1
    const/4 v3, 0x2

    :try_start_0
    aget-object v3, v7, v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-wide/16 v4, -0x1

    move-wide v10, v4

    .line 315
    :goto_1
    const/4 v3, 0x6

    aget-object v3, v7, v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-wide/16 v4, -0x1

    move-wide v8, v4

    .line 316
    :goto_2
    const/16 v3, 0x9

    aget-object v3, v7, v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v6, v0

    .line 317
    :goto_3
    const/16 v3, 0xc

    aget-object v3, v7, v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v5, v0

    .line 318
    :goto_4
    const/16 v3, 0xe

    aget-object v3, v7, v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v4, v0

    .line 319
    :goto_5
    const/16 v3, 0xf

    aget-object v3, v7, v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    move v3, v0

    .line 320
    :goto_6
    const/16 v12, 0x11

    aget-object v12, v7, v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    if-eqz v12, :cond_8

    .line 325
    :goto_7
    aget-object v1, v7, v1

    iput-object v1, p0, Lcom/kingroot/kinguser/bhf;->bpN:Ljava/lang/String;

    .line 326
    aget-object v1, v7, v2

    iput-object v1, p0, Lcom/kingroot/kinguser/bhf;->bpO:Ljava/lang/String;

    .line 327
    iput-wide v10, p0, Lcom/kingroot/kinguser/bhf;->bpP:J

    .line 328
    const/4 v1, 0x3

    aget-object v1, v7, v1

    iput-object v1, p0, Lcom/kingroot/kinguser/bhf;->bpQ:Ljava/lang/String;

    .line 329
    const/4 v1, 0x4

    aget-object v1, v7, v1

    iput-object v1, p0, Lcom/kingroot/kinguser/bhf;->bpR:Ljava/lang/String;

    .line 330
    const/4 v1, 0x5

    aget-object v1, v7, v1

    iput-object v1, p0, Lcom/kingroot/kinguser/bhf;->bpS:Ljava/lang/String;

    .line 331
    iput-wide v8, p0, Lcom/kingroot/kinguser/bhf;->bpT:J

    .line 332
    const/4 v1, 0x7

    aget-object v1, v7, v1

    iput-object v1, p0, Lcom/kingroot/kinguser/bhf;->bpU:Ljava/lang/String;

    .line 333
    const/16 v1, 0x8

    aget-object v1, v7, v1

    iput-object v1, p0, Lcom/kingroot/kinguser/bhf;->bpV:Ljava/lang/String;

    .line 334
    iput v6, p0, Lcom/kingroot/kinguser/bhf;->bpW:I

    .line 335
    const/16 v1, 0xa

    aget-object v1, v7, v1

    iput-object v1, p0, Lcom/kingroot/kinguser/bhf;->bpX:Ljava/lang/String;

    .line 336
    const/16 v1, 0xb

    aget-object v1, v7, v1

    iput-object v1, p0, Lcom/kingroot/kinguser/bhf;->bpY:Ljava/lang/String;

    .line 337
    iput v5, p0, Lcom/kingroot/kinguser/bhf;->bpZ:I

    .line 338
    const/16 v1, 0xd

    aget-object v1, v7, v1

    iput-object v1, p0, Lcom/kingroot/kinguser/bhf;->bqa:Ljava/lang/String;

    .line 339
    iput v4, p0, Lcom/kingroot/kinguser/bhf;->bqb:I

    .line 340
    iput v3, p0, Lcom/kingroot/kinguser/bhf;->bqc:I

    .line 341
    iget-object v1, p0, Lcom/kingroot/kinguser/bhf;->bqd:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 342
    iget-object v1, p0, Lcom/kingroot/kinguser/bhf;->bqd:Ljava/util/List;

    const/16 v3, 0x10

    aget-object v3, v7, v3

    invoke-direct {p0, v3}, Lcom/kingroot/kinguser/bhf;->lC(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 343
    iput v0, p0, Lcom/kingroot/kinguser/bhf;->bqe:I

    .line 344
    iget-object v0, p0, Lcom/kingroot/kinguser/bhf;->bqf:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 345
    iget-object v0, p0, Lcom/kingroot/kinguser/bhf;->bqf:Ljava/util/List;

    const/16 v1, 0x12

    aget-object v1, v7, v1

    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/bhf;->lC(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move v0, v2

    .line 347
    goto/16 :goto_0

    .line 314
    :cond_2
    const/4 v3, 0x2

    :try_start_1
    aget-object v3, v7, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    move-wide v10, v4

    goto/16 :goto_1

    .line 315
    :cond_3
    const/4 v3, 0x6

    aget-object v3, v7, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    move-wide v8, v4

    goto/16 :goto_2

    .line 316
    :cond_4
    const/16 v3, 0x9

    aget-object v3, v7, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move v6, v3

    goto/16 :goto_3

    .line 317
    :cond_5
    const/16 v3, 0xc

    aget-object v3, v7, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move v5, v3

    goto/16 :goto_4

    .line 318
    :cond_6
    const/16 v3, 0xe

    aget-object v3, v7, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move v4, v3

    goto/16 :goto_5

    .line 319
    :cond_7
    const/16 v3, 0xf

    aget-object v3, v7, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto/16 :goto_6

    .line 320
    :cond_8
    const/16 v0, 0x11

    aget-object v0, v7, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto/16 :goto_7

    .line 321
    :catch_0
    move-exception v0

    move v0, v1

    .line 322
    goto/16 :goto_0
.end method

.method public lu(Ljava/lang/String;)Lcom/kingroot/kinguser/bhf;
    .locals 1

    .prologue
    .line 132
    invoke-static {p1}, Lcom/kingroot/kinguser/aab;->dH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bhf;->bpN:Ljava/lang/String;

    .line 133
    return-object p0
.end method

.method public lv(Ljava/lang/String;)Lcom/kingroot/kinguser/bhf;
    .locals 1

    .prologue
    .line 137
    invoke-static {p1}, Lcom/kingroot/kinguser/aab;->dH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bhf;->bpO:Ljava/lang/String;

    .line 138
    return-object p0
.end method

.method public lw(Ljava/lang/String;)Lcom/kingroot/kinguser/bhf;
    .locals 1

    .prologue
    .line 147
    invoke-static {p1}, Lcom/kingroot/kinguser/aab;->dH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bhf;->bpQ:Ljava/lang/String;

    .line 148
    return-object p0
.end method

.method public lx(Ljava/lang/String;)Lcom/kingroot/kinguser/bhf;
    .locals 1

    .prologue
    .line 152
    invoke-static {p1}, Lcom/kingroot/kinguser/aab;->dH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bhf;->bpR:Ljava/lang/String;

    .line 153
    return-object p0
.end method

.method public ly(Ljava/lang/String;)Lcom/kingroot/kinguser/bhf;
    .locals 1

    .prologue
    .line 157
    invoke-static {p1}, Lcom/kingroot/kinguser/aab;->dH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bhf;->bpS:Ljava/lang/String;

    .line 158
    return-object p0
.end method

.method public lz(Ljava/lang/String;)Lcom/kingroot/kinguser/bhf;
    .locals 1

    .prologue
    .line 167
    invoke-static {p1}, Lcom/kingroot/kinguser/aab;->dH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bhf;->bpU:Ljava/lang/String;

    .line 168
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bhf;->aco()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
