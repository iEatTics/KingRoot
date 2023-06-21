.class public Lcom/kingroot/kinguser/vw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private LH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private LI:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private LJ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private LK:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private LL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private LM:J

.field private LN:J

.field private LO:J

.field private LP:J

.field private LQ:D

.field private LR:I

.field private LS:J

.field private LT:I

.field private LU:Ljava/lang/String;

.field private LV:J

.field private LW:J

.field private LX:I

.field private LY:I

.field private LZ:Ljava/lang/String;

.field private Ma:J

.field private Mb:J

.field private Mc:J

.field private Md:I

.field private Me:I

.field private Mf:I

.field private Mg:D

.field private Mh:I

.field private Mi:I


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v3, p0, Lcom/kingroot/kinguser/vw;->LH:Ljava/util/List;

    .line 36
    iput-object v3, p0, Lcom/kingroot/kinguser/vw;->LI:Ljava/util/List;

    .line 40
    iput-object v3, p0, Lcom/kingroot/kinguser/vw;->LJ:Ljava/util/List;

    .line 44
    iput-object v3, p0, Lcom/kingroot/kinguser/vw;->LK:Ljava/util/List;

    .line 49
    iput-object v3, p0, Lcom/kingroot/kinguser/vw;->LL:Ljava/util/List;

    .line 52
    iput-wide v0, p0, Lcom/kingroot/kinguser/vw;->LM:J

    .line 54
    iput-wide v0, p0, Lcom/kingroot/kinguser/vw;->LN:J

    .line 55
    iput-wide v0, p0, Lcom/kingroot/kinguser/vw;->LO:J

    .line 56
    iput-wide v0, p0, Lcom/kingroot/kinguser/vw;->LP:J

    .line 57
    iput-wide v4, p0, Lcom/kingroot/kinguser/vw;->LQ:D

    .line 58
    iput v2, p0, Lcom/kingroot/kinguser/vw;->LR:I

    .line 59
    iput-wide v0, p0, Lcom/kingroot/kinguser/vw;->LS:J

    .line 60
    iput v2, p0, Lcom/kingroot/kinguser/vw;->LT:I

    .line 63
    iput-object v3, p0, Lcom/kingroot/kinguser/vw;->LU:Ljava/lang/String;

    .line 64
    iput-wide v0, p0, Lcom/kingroot/kinguser/vw;->LV:J

    .line 67
    iput-wide v0, p0, Lcom/kingroot/kinguser/vw;->LW:J

    .line 68
    iput v2, p0, Lcom/kingroot/kinguser/vw;->LX:I

    .line 69
    iput v2, p0, Lcom/kingroot/kinguser/vw;->LY:I

    .line 70
    iput-object v3, p0, Lcom/kingroot/kinguser/vw;->LZ:Ljava/lang/String;

    .line 73
    iput-wide v0, p0, Lcom/kingroot/kinguser/vw;->Ma:J

    .line 74
    iput-wide v0, p0, Lcom/kingroot/kinguser/vw;->Mb:J

    .line 75
    iput-wide v0, p0, Lcom/kingroot/kinguser/vw;->Mc:J

    .line 76
    iput v2, p0, Lcom/kingroot/kinguser/vw;->Md:I

    .line 77
    iput v2, p0, Lcom/kingroot/kinguser/vw;->Me:I

    .line 80
    iput v2, p0, Lcom/kingroot/kinguser/vw;->Mf:I

    .line 83
    iput-wide v4, p0, Lcom/kingroot/kinguser/vw;->Mg:D

    .line 86
    iput v2, p0, Lcom/kingroot/kinguser/vw;->Mh:I

    .line 87
    iput v2, p0, Lcom/kingroot/kinguser/vw;->Mi:I

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/vw;->LH:Ljava/util/List;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/vw;->LJ:Ljava/util/List;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/vw;->LI:Ljava/util/List;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/vw;->LK:Ljava/util/List;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/vw;->LL:Ljava/util/List;

    .line 97
    return-void
.end method

.method private F(Ljava/util/List;)J
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .prologue
    const-wide/16 v0, 0x0

    .line 250
    if-eqz p1, :cond_0

    .line 251
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 259
    :cond_0
    :goto_0
    return-wide v0

    .line 255
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 256
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, v2

    move-wide v2, v0

    .line 257
    goto :goto_1

    .line 259
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    div-long v0, v2, v0

    goto :goto_0
.end method

.method private G(Ljava/util/List;)J
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .prologue
    const-wide/16 v0, 0x0

    .line 313
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 321
    :goto_0
    return-wide v0

    .line 317
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 318
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, v2

    move-wide v2, v0

    .line 319
    goto :goto_1

    .line 321
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    div-long v0, v2, v0

    goto :goto_0
.end method

.method private H(Ljava/util/List;)D
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)D"
        }
    .end annotation

    .prologue
    .line 325
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 326
    const-wide/16 v0, 0x0

    .line 343
    :goto_0
    return-wide v0

    .line 328
    :cond_0
    const-wide/16 v4, 0x0

    .line 329
    const-wide/16 v0, 0x0

    .line 330
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-wide v2, v0

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 331
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-double v0, v0

    add-double/2addr v0, v2

    move-wide v2, v0

    .line 332
    goto :goto_1

    .line 333
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    int-to-double v0, v0

    div-double v6, v2, v0

    .line 335
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-wide v2, v4

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 336
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v10, 0x400

    div-long/2addr v4, v10

    long-to-double v4, v4

    const-wide/high16 v10, 0x4090000000000000L    # 1024.0

    div-double v10, v6, v10

    sub-double/2addr v4, v10

    .line 337
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v10, 0x400

    div-long/2addr v0, v10

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide/high16 v10, 0x4090000000000000L    # 1024.0

    div-double v10, v6, v10

    sub-double/2addr v0, v10

    mul-double/2addr v0, v4

    add-double/2addr v0, v2

    move-wide v2, v0

    .line 338
    goto :goto_2

    .line 339
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    int-to-double v0, v0

    div-double v0, v2, v0

    .line 341
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v0, v1}, Ljava/math/BigDecimal;-><init>(D)V

    .line 342
    const/4 v0, 0x4

    const/4 v1, 0x4

    invoke-virtual {v2, v0, v1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    goto :goto_0
.end method

.method private mJ()J
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/kingroot/kinguser/vw;->LI:Ljava/util/List;

    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->c(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    const-wide/16 v0, 0x0

    .line 246
    :goto_0
    return-wide v0

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/vw;->LI:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 246
    iget-object v0, p0, Lcom/kingroot/kinguser/vw;->LI:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method private mK()J
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/kingroot/kinguser/vw;->LH:Ljava/util/List;

    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->c(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    const-wide/16 v0, 0x0

    .line 275
    :goto_0
    return-wide v0

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/vw;->LH:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 275
    iget-object v0, p0, Lcom/kingroot/kinguser/vw;->LH:Ljava/util/List;

    iget-object v1, p0, Lcom/kingroot/kinguser/vw;->LH:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method private mL()J
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/kingroot/kinguser/vw;->LH:Ljava/util/List;

    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->c(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    const-wide/16 v0, 0x0

    .line 291
    :goto_0
    return-wide v0

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/vw;->LH:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 291
    iget-object v0, p0, Lcom/kingroot/kinguser/vw;->LH:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method private mM()D
    .locals 5

    .prologue
    const-wide/16 v0, 0x0

    .line 300
    .line 301
    iget-object v2, p0, Lcom/kingroot/kinguser/vw;->LK:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/kingroot/kinguser/vw;->LK:Ljava/util/List;

    .line 302
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 309
    :cond_0
    :goto_0
    return-wide v0

    .line 306
    :cond_1
    iget-object v2, p0, Lcom/kingroot/kinguser/vw;->LK:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 307
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    add-double/2addr v0, v2

    move-wide v2, v0

    .line 308
    goto :goto_1

    .line 309
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/vw;->LK:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-double v0, v0

    div-double v0, v2, v0

    goto :goto_0
.end method

.method private mN()Ljava/lang/String;
    .locals 6

    .prologue
    .line 348
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 349
    iget-object v0, p0, Lcom/kingroot/kinguser/vw;->LL:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 350
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 351
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 352
    const-string v3, "|"

    invoke-static {v0, v3}, Lcom/kingroot/kinguser/aab;->L(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 353
    if-eqz v0, :cond_0

    array-length v3, v0

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    .line 356
    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 358
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 359
    invoke-static {}, Lcom/kingroot/kinguser/tj;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":task"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 358
    invoke-static {v4}, Lcom/kingroot/common/utils/system/ProcessUtils;->ej(Ljava/lang/String;)I

    move-result v4

    .line 360
    if-eq v3, v4, :cond_1

    .line 362
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 365
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    aget-object v0, v0, v4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 367
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public A(J)V
    .locals 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/kingroot/kinguser/vw;->LH:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    return-void
.end method

.method public B(J)V
    .locals 3

    .prologue
    .line 104
    iget-object v0, p0, Lcom/kingroot/kinguser/vw;->LI:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    return-void
.end method

.method public C(J)V
    .locals 3

    .prologue
    .line 108
    iget-object v0, p0, Lcom/kingroot/kinguser/vw;->LJ:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    return-void
.end method

.method public D(J)V
    .locals 1

    .prologue
    .line 120
    iput-wide p1, p0, Lcom/kingroot/kinguser/vw;->LM:J

    .line 121
    return-void
.end method

.method public E(J)V
    .locals 3

    .prologue
    .line 148
    iget-wide v0, p0, Lcom/kingroot/kinguser/vw;->LS:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/kingroot/kinguser/vw;->LS:J

    .line 149
    return-void
.end method

.method public F(J)V
    .locals 1

    .prologue
    .line 160
    iput-wide p1, p0, Lcom/kingroot/kinguser/vw;->LV:J

    .line 161
    return-void
.end method

.method public G(J)V
    .locals 3

    .prologue
    .line 164
    iget-wide v0, p0, Lcom/kingroot/kinguser/vw;->LW:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/kingroot/kinguser/vw;->LW:J

    .line 165
    return-void
.end method

.method public a(D)V
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/kingroot/kinguser/vw;->LK:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    return-void
.end method

.method public bA(I)V
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lcom/kingroot/kinguser/vw;->Mi:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/kingroot/kinguser/vw;->Mi:I

    .line 213
    return-void
.end method

.method public bs(I)V
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/kingroot/kinguser/vw;->LR:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/kingroot/kinguser/vw;->LR:I

    .line 145
    return-void
.end method

.method public bt(I)V
    .locals 0

    .prologue
    .line 152
    iput p1, p0, Lcom/kingroot/kinguser/vw;->LT:I

    .line 153
    return-void
.end method

.method public bu(I)V
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/kingroot/kinguser/vw;->LX:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/kingroot/kinguser/vw;->LX:I

    .line 169
    return-void
.end method

.method public bv(I)V
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lcom/kingroot/kinguser/vw;->LY:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/kingroot/kinguser/vw;->LY:I

    .line 173
    return-void
.end method

.method public bw(I)V
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcom/kingroot/kinguser/vw;->Md:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/kingroot/kinguser/vw;->Md:I

    .line 193
    return-void
.end method

.method public bx(I)V
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lcom/kingroot/kinguser/vw;->Me:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/kingroot/kinguser/vw;->Me:I

    .line 197
    return-void
.end method

.method public by(I)V
    .locals 0

    .prologue
    .line 200
    iput p1, p0, Lcom/kingroot/kinguser/vw;->Mf:I

    .line 201
    return-void
.end method

.method public bz(I)V
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Lcom/kingroot/kinguser/vw;->Mh:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/kingroot/kinguser/vw;->Mh:I

    .line 209
    return-void
.end method

.method public dl(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/kingroot/kinguser/vw;->LL:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    return-void
.end method

.method public dm(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/kingroot/kinguser/vw;->LU:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public mH()J
    .locals 2

    .prologue
    .line 124
    iget-wide v0, p0, Lcom/kingroot/kinguser/vw;->LM:J

    return-wide v0
.end method

.method public mI()J
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/kingroot/kinguser/vw;->LI:Ljava/util/List;

    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->c(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    const-wide/16 v0, 0x0

    .line 230
    :goto_0
    return-wide v0

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/vw;->LI:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 230
    iget-object v0, p0, Lcom/kingroot/kinguser/vw;->LI:Ljava/util/List;

    iget-object v1, p0, Lcom/kingroot/kinguser/vw;->LI:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method public mO()[Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 381
    invoke-direct {p0}, Lcom/kingroot/kinguser/vw;->mK()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/vw;->LN:J

    .line 382
    invoke-direct {p0}, Lcom/kingroot/kinguser/vw;->mL()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/vw;->LO:J

    .line 383
    iget-object v0, p0, Lcom/kingroot/kinguser/vw;->LH:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/vw;->G(Ljava/util/List;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/vw;->LP:J

    .line 384
    iget-object v0, p0, Lcom/kingroot/kinguser/vw;->LH:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/vw;->H(Ljava/util/List;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/vw;->LQ:D

    .line 386
    iget-object v0, p0, Lcom/kingroot/kinguser/vw;->LJ:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/vw;->F(Ljava/util/List;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/vw;->Ma:J

    .line 387
    invoke-virtual {p0}, Lcom/kingroot/kinguser/vw;->mI()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/vw;->Mb:J

    .line 388
    invoke-direct {p0}, Lcom/kingroot/kinguser/vw;->mJ()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/vw;->Mc:J

    .line 390
    invoke-direct {p0}, Lcom/kingroot/kinguser/vw;->mM()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/vw;->Mg:D

    .line 392
    invoke-direct {p0}, Lcom/kingroot/kinguser/vw;->mN()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/vw;->LZ:Ljava/lang/String;

    .line 394
    new-array v0, v7, [[Ljava/lang/String;

    .line 395
    const/16 v1, 0x17

    new-array v1, v1, [Ljava/lang/String;

    iget-wide v2, p0, Lcom/kingroot/kinguser/vw;->LM:J

    const-wide/16 v4, 0x18

    mul-long/2addr v2, v4

    const-wide/16 v4, 0xe10

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    .line 397
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    iget-wide v2, p0, Lcom/kingroot/kinguser/vw;->LN:J

    .line 399
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    const/4 v2, 0x2

    iget-wide v4, p0, Lcom/kingroot/kinguser/vw;->LO:J

    .line 400
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-wide v4, p0, Lcom/kingroot/kinguser/vw;->LP:J

    .line 401
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-wide v4, p0, Lcom/kingroot/kinguser/vw;->LQ:D

    .line 402
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget v3, p0, Lcom/kingroot/kinguser/vw;->LR:I

    .line 403
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-wide v4, p0, Lcom/kingroot/kinguser/vw;->LS:J

    .line 404
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget v3, p0, Lcom/kingroot/kinguser/vw;->LT:I

    .line 405
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/kingroot/kinguser/vw;->LU:Ljava/lang/String;

    .line 407
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x9

    iget-wide v4, p0, Lcom/kingroot/kinguser/vw;->LV:J

    .line 408
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xa

    iget-wide v4, p0, Lcom/kingroot/kinguser/vw;->LW:J

    .line 410
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xb

    iget v3, p0, Lcom/kingroot/kinguser/vw;->LX:I

    .line 411
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xc

    iget v3, p0, Lcom/kingroot/kinguser/vw;->LY:I

    .line 412
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xd

    iget-object v3, p0, Lcom/kingroot/kinguser/vw;->LZ:Ljava/lang/String;

    .line 413
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xe

    iget-wide v4, p0, Lcom/kingroot/kinguser/vw;->Ma:J

    .line 415
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xf

    iget-wide v4, p0, Lcom/kingroot/kinguser/vw;->Mb:J

    .line 416
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x10

    iget-wide v4, p0, Lcom/kingroot/kinguser/vw;->Mc:J

    .line 417
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x11

    iget v3, p0, Lcom/kingroot/kinguser/vw;->Md:I

    .line 418
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x12

    iget v3, p0, Lcom/kingroot/kinguser/vw;->Me:I

    .line 419
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x13

    iget v3, p0, Lcom/kingroot/kinguser/vw;->Mf:I

    .line 421
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x14

    iget-wide v4, p0, Lcom/kingroot/kinguser/vw;->Mg:D

    .line 423
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x15

    iget v3, p0, Lcom/kingroot/kinguser/vw;->Mh:I

    .line 425
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x16

    iget v3, p0, Lcom/kingroot/kinguser/vw;->Mi:I

    .line 426
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    aput-object v1, v0, v6

    .line 429
    aget-object v0, v0, v6

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 508
    const-string v0, ""

    return-object v0
.end method
