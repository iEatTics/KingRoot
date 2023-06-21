.class public Lcom/kingroot/kinguser/ajz;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static auH:Lcom/kingroot/kinguser/bed;


# instance fields
.field private arB:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field private arC:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/aka;",
            ">;"
        }
    .end annotation
.end field

.field private auF:I

.field private auG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 521
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v3, 0x1

    new-instance v4, Lcom/kingroot/kinguser/ajz$1;

    invoke-direct {v4}, Lcom/kingroot/kinguser/ajz$1;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    sput-object v0, Lcom/kingroot/kinguser/ajz;->auH:Lcom/kingroot/kinguser/bed;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/ajz;->arB:Ljava/util/List;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/ajz;->arC:Ljava/util/List;

    .line 67
    iput v1, p0, Lcom/kingroot/kinguser/ajz;->auF:I

    .line 68
    iput-boolean v1, p0, Lcom/kingroot/kinguser/ajz;->auG:Z

    .line 71
    iput p1, p0, Lcom/kingroot/kinguser/ajz;->auF:I

    .line 72
    return-void
.end method

.method private X(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 318
    const/4 v1, 0x0

    .line 319
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    .line 329
    :cond_1
    :goto_0
    return v0

    .line 323
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 325
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method private a(Lcom/kingroot/kinguser/aka;)V
    .locals 1

    .prologue
    .line 255
    new-instance v0, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;

    invoke-direct {v0}, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;-><init>()V

    .line 256
    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/common/check/ScriptFileCheckUnit;->e(Lcom/kingroot/kinguser/aka;)V

    .line 257
    return-void
.end method

.method private b(Lcom/kingroot/kinguser/aka;)V
    .locals 3

    .prologue
    .line 274
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ajz;->d(Lcom/kingroot/kinguser/aka;)V

    .line 276
    const-string v0, "sh"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/kingroot/kinguser/aka;->zQ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/abj;->Q(Ljava/lang/String;Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;

    move-result-object v0

    .line 277
    iget-object v0, v0, Lcom/kingroot/common/utils/system/VTCmdResult;->mStdOut:Ljava/lang/String;

    .line 278
    invoke-virtual {p1, v0}, Lcom/kingroot/kinguser/aka;->gE(Ljava/lang/String;)V

    .line 279
    return-void
.end method

.method private c(Lcom/kingroot/kinguser/aka;)V
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/kingroot/kinguser/ajz;->arB:Ljava/util/List;

    if-nez v0, :cond_0

    .line 286
    invoke-static {}, Lcom/kingroot/common/utils/system/ProcessUtils;->qJ()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ajz;->arB:Ljava/util/List;

    .line 289
    :cond_0
    invoke-virtual {p1}, Lcom/kingroot/kinguser/aka;->zQ()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/ajz;->fZ(Ljava/lang/String;)Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/kingroot/kinguser/aka;->a(Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;)V

    .line 290
    return-void
.end method

.method private d(Lcom/kingroot/kinguser/aka;)V
    .locals 7

    .prologue
    .line 333
    invoke-virtual {p1}, Lcom/kingroot/kinguser/aka;->zQ()Ljava/lang/String;

    move-result-object v0

    .line 335
    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/kingroot/kinguser/zn;->I(Ljava/lang/String;Ljava/lang/String;)Lcom/kingroot/kinguser/zn$a;

    move-result-object v0

    .line 336
    if-eqz v0, :cond_0

    .line 337
    iget v1, v0, Lcom/kingroot/kinguser/zn$a;->WN:I

    iget v2, v0, Lcom/kingroot/kinguser/zn$a;->WO:I

    iget v3, v0, Lcom/kingroot/kinguser/zn$a;->mode:I

    iget-wide v4, v0, Lcom/kingroot/kinguser/zn$a;->size:J

    iget-object v6, v0, Lcom/kingroot/kinguser/zn$a;->WP:Ljava/lang/String;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/kingroot/kinguser/aka;->a(IIIJLjava/lang/String;)V

    .line 342
    :cond_0
    return-void
.end method

.method public static dU(I)V
    .locals 6

    .prologue
    .line 509
    if-nez p0, :cond_0

    .line 510
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 511
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->CB()J

    move-result-wide v0

    .line 512
    const-wide/32 v4, 0x5265c00

    .line 513
    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/adk;->b(JJJ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 519
    :goto_0
    return-void

    .line 518
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    sget-object v1, Lcom/kingroot/kinguser/ajz;->auH:Lcom/kingroot/kinguser/bed;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/beg;->a(Lcom/kingroot/kinguser/bed;[Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private f(Lcom/kingroot/kinguser/aka;)V
    .locals 3

    .prologue
    .line 263
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ajz;->d(Lcom/kingroot/kinguser/aka;)V

    .line 265
    const-string v0, "sh"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/kingroot/kinguser/aka;->zQ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/abj;->Q(Ljava/lang/String;Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;

    move-result-object v0

    .line 266
    iget-object v0, v0, Lcom/kingroot/common/utils/system/VTCmdResult;->mStdOut:Ljava/lang/String;

    .line 267
    invoke-virtual {p1, v0}, Lcom/kingroot/kinguser/aka;->gE(Ljava/lang/String;)V

    .line 268
    return-void
.end method

.method private fZ(Ljava/lang/String;)Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;
    .locals 4

    .prologue
    .line 296
    const/4 v1, 0x0

    .line 297
    iget-object v0, p0, Lcom/kingroot/kinguser/ajz;->arB:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;

    .line 298
    iget-object v3, v0, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;->name:Ljava/lang/String;

    invoke-direct {p0, v3, p1}, Lcom/kingroot/kinguser/ajz;->X(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 306
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private g(Lcom/kingroot/kinguser/aka;)Z
    .locals 1

    .prologue
    .line 345
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/kingroot/kinguser/aka;->zO()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 347
    :cond_0
    const/4 v0, 0x0

    .line 349
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ajz;->j(Lcom/kingroot/kinguser/aka;)Z

    move-result v0

    goto :goto_0
.end method

.method private h(Lcom/kingroot/kinguser/aka;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 353
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/kingroot/kinguser/aka;->zO()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 364
    :cond_0
    :goto_0
    return v0

    .line 358
    :cond_1
    invoke-virtual {p1}, Lcom/kingroot/kinguser/aka;->zQ()Ljava/lang/String;

    move-result-object v1

    .line 359
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/kingroot/kinguser/abu;->ZV:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/kingroot/kinguser/abu;->ZW:Ljava/lang/String;

    .line 360
    invoke-virtual {v1, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 364
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ajz;->j(Lcom/kingroot/kinguser/aka;)Z

    move-result v0

    goto :goto_0
.end method

.method private i(Lcom/kingroot/kinguser/aka;)Z
    .locals 1

    .prologue
    .line 368
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/kingroot/kinguser/aka;->zO()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 370
    :cond_0
    const/4 v0, 0x0

    .line 372
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ajz;->j(Lcom/kingroot/kinguser/aka;)Z

    move-result v0

    goto :goto_0
.end method

.method private j(Lcom/kingroot/kinguser/aka;)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v6, -0x1

    const/4 v0, 0x0

    .line 383
    if-nez p1, :cond_1

    .line 444
    :cond_0
    :goto_0
    return v0

    .line 387
    :cond_1
    invoke-virtual {p1}, Lcom/kingroot/kinguser/aka;->zQ()Ljava/lang/String;

    move-result-object v2

    .line 388
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 392
    new-instance v3, Lcom/kingroot/kinguser/zn$a;

    invoke-direct {v3}, Lcom/kingroot/kinguser/zn$a;-><init>()V

    .line 393
    invoke-virtual {p1}, Lcom/kingroot/kinguser/aka;->zV()I

    move-result v4

    iput v4, v3, Lcom/kingroot/kinguser/zn$a;->WN:I

    .line 394
    invoke-virtual {p1}, Lcom/kingroot/kinguser/aka;->zW()I

    move-result v4

    iput v4, v3, Lcom/kingroot/kinguser/zn$a;->WO:I

    .line 395
    invoke-virtual {p1}, Lcom/kingroot/kinguser/aka;->zX()I

    move-result v4

    iput v4, v3, Lcom/kingroot/kinguser/zn$a;->mode:I

    .line 396
    invoke-virtual {p1}, Lcom/kingroot/kinguser/aka;->zY()I

    move-result v4

    iput v4, v3, Lcom/kingroot/kinguser/zn$a;->WQ:I

    .line 397
    invoke-virtual {p1}, Lcom/kingroot/kinguser/aka;->zZ()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/kingroot/kinguser/zn$a;->WP:Ljava/lang/String;

    .line 401
    const/4 v4, 0x0

    invoke-static {v4, v2}, Lcom/kingroot/kinguser/zn;->I(Ljava/lang/String;Ljava/lang/String;)Lcom/kingroot/kinguser/zn$a;

    move-result-object v2

    .line 402
    if-eqz v2, :cond_0

    .line 408
    iget v4, v3, Lcom/kingroot/kinguser/zn$a;->WN:I

    if-eq v4, v6, :cond_2

    iget v4, v2, Lcom/kingroot/kinguser/zn$a;->WN:I

    iget v5, v3, Lcom/kingroot/kinguser/zn$a;->WN:I

    if-ne v4, v5, :cond_3

    :cond_2
    iget v4, v3, Lcom/kingroot/kinguser/zn$a;->WO:I

    if-eq v4, v6, :cond_4

    iget v4, v2, Lcom/kingroot/kinguser/zn$a;->WO:I

    iget v5, v3, Lcom/kingroot/kinguser/zn$a;->WO:I

    if-eq v4, v5, :cond_4

    :cond_3
    move v0, v1

    .line 412
    goto :goto_0

    .line 416
    :cond_4
    iget v4, v3, Lcom/kingroot/kinguser/zn$a;->mode:I

    if-eq v4, v6, :cond_6

    iget v4, v2, Lcom/kingroot/kinguser/zn$a;->mode:I

    iget v5, v3, Lcom/kingroot/kinguser/zn$a;->mode:I

    if-eq v4, v5, :cond_6

    .line 421
    iget v4, v3, Lcom/kingroot/kinguser/zn$a;->WQ:I

    if-eq v4, v6, :cond_5

    iget v2, v2, Lcom/kingroot/kinguser/zn$a;->mode:I

    iget v4, v3, Lcom/kingroot/kinguser/zn$a;->WQ:I

    and-int/2addr v2, v4

    iget v3, v3, Lcom/kingroot/kinguser/zn$a;->WQ:I

    if-eq v2, v3, :cond_0

    :cond_5
    move v0, v1

    .line 425
    goto :goto_0

    .line 429
    :cond_6
    iget-wide v4, v3, Lcom/kingroot/kinguser/zn$a;->size:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_7

    iget-wide v4, v2, Lcom/kingroot/kinguser/zn$a;->size:J

    iget-wide v6, v3, Lcom/kingroot/kinguser/zn$a;->size:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_7

    move v0, v1

    .line 431
    goto :goto_0

    .line 438
    :cond_7
    iget-object v4, v2, Lcom/kingroot/kinguser/zn$a;->WP:Ljava/lang/String;

    const-string v5, "unlabeled"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v3, Lcom/kingroot/kinguser/zn$a;->WP:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v2, Lcom/kingroot/kinguser/zn$a;->WP:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v2, v2, Lcom/kingroot/kinguser/zn$a;->WP:Ljava/lang/String;

    iget-object v3, v3, Lcom/kingroot/kinguser/zn$a;->WP:Ljava/lang/String;

    .line 439
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 441
    goto/16 :goto_0
.end method

.method private k(Lcom/kingroot/kinguser/aka;)V
    .locals 8

    .prologue
    const/4 v3, 0x4

    const/4 v7, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 450
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 451
    invoke-virtual {p1}, Lcom/kingroot/kinguser/aka;->zP()I

    move-result v1

    .line 452
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 453
    invoke-virtual {p1}, Lcom/kingroot/kinguser/aka;->zQ()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 455
    if-eq v1, v4, :cond_0

    if-eq v1, v5, :cond_0

    if-eq v1, v6, :cond_0

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    const/4 v2, 0x5

    if-ne v1, v2, :cond_6

    .line 459
    :cond_0
    invoke-virtual {p1}, Lcom/kingroot/kinguser/aka;->zN()Z

    move-result v2

    .line 460
    if-nez v2, :cond_3

    .line 461
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 499
    :cond_1
    :goto_0
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v1

    iget v2, p0, Lcom/kingroot/kinguser/ajz;->auF:I

    invoke-virtual {v1, v2, v0}, Lcom/kingroot/kinguser/ady;->c(ILjava/util/List;)V

    .line 500
    :cond_2
    return-void

    .line 463
    :cond_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 464
    invoke-virtual {p1}, Lcom/kingroot/kinguser/aka;->zO()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 466
    new-array v2, v3, [Ljava/lang/String;

    .line 467
    invoke-virtual {p1}, Lcom/kingroot/kinguser/aka;->getMode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toOctalString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    .line 468
    invoke-virtual {p1}, Lcom/kingroot/kinguser/aka;->zS()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 469
    invoke-virtual {p1}, Lcom/kingroot/kinguser/aka;->zT()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 470
    invoke-virtual {p1}, Lcom/kingroot/kinguser/aka;->zU()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 471
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 473
    if-ne v1, v4, :cond_4

    .line 474
    invoke-virtual {p1}, Lcom/kingroot/kinguser/aka;->zR()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 475
    invoke-virtual {p1}, Lcom/kingroot/kinguser/aka;->Aa()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 476
    :cond_4
    if-eq v1, v5, :cond_5

    if-eq v1, v6, :cond_5

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 479
    :cond_5
    invoke-virtual {p1}, Lcom/kingroot/kinguser/aka;->dG()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 480
    invoke-virtual {p1}, Lcom/kingroot/kinguser/aka;->lk()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 481
    invoke-virtual {p1}, Lcom/kingroot/kinguser/aka;->getSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 484
    :cond_6
    if-ne v1, v3, :cond_2

    .line 485
    invoke-virtual {p1}, Lcom/kingroot/kinguser/aka;->Ac()Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;

    move-result-object v1

    .line 486
    if-nez v1, :cond_7

    .line 487
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 489
    :cond_7
    invoke-virtual {p1}, Lcom/kingroot/kinguser/aka;->zQ()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 490
    invoke-virtual {p1}, Lcom/kingroot/kinguser/aka;->Ac()Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;

    move-result-object v1

    iget v1, v1, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 491
    invoke-virtual {p1}, Lcom/kingroot/kinguser/aka;->Ac()Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;

    move-result-object v1

    iget v1, v1, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;->pid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 492
    invoke-virtual {p1}, Lcom/kingroot/kinguser/aka;->Ac()Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;

    move-result-object v1

    iget v1, v1, Lcom/kingroot/common/utils/system/ProcessUtils$ProcessInfo;->ppid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private declared-synchronized zM()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/aka;",
            ">;"
        }
    .end annotation

    .prologue
    .line 203
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/kingroot/kinguser/ajz;->auF:I

    if-nez v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/kingroot/kinguser/ajz;->arC:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    :goto_0
    monitor-exit p0

    return-object v0

    .line 208
    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 209
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 210
    iget-object v0, p0, Lcom/kingroot/kinguser/ajz;->arC:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aka;

    .line 211
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aka;->Ab()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aka;->zN()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 212
    :cond_2
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aka;->zP()I

    move-result v4

    .line 213
    packed-switch v4, :pswitch_data_0

    goto :goto_1

    .line 215
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/ajz;->g(Lcom/kingroot/kinguser/aka;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 216
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 203
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 221
    :pswitch_1
    :try_start_2
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/ajz;->h(Lcom/kingroot/kinguser/aka;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 222
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 226
    :pswitch_2
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 229
    :pswitch_3
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/ajz;->i(Lcom/kingroot/kinguser/aka;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 230
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 234
    :pswitch_4
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/ajz;->i(Lcom/kingroot/kinguser/aka;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 235
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 245
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 246
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    move-object v0, v1

    .line 248
    goto :goto_0

    .line 213
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected declared-synchronized jz()Z
    .locals 15

    .prologue
    .line 75
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/kingroot/kinguser/ajz;->auG:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 76
    const/4 v0, 0x1

    .line 159
    :goto_0
    monitor-exit p0

    return v0

    .line 79
    :cond_0
    const/4 v1, -0x1

    .line 80
    const/4 v0, -0x1

    .line 82
    :try_start_1
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v2

    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/kingroot/kinguser/zh;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 83
    if-eqz v2, :cond_3

    .line 84
    iget v1, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 85
    iget v0, v2, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v8, v0

    move v9, v1

    .line 94
    :goto_1
    :try_start_2
    iget-object v7, p0, Lcom/kingroot/kinguser/ajz;->arC:Ljava/util/List;

    new-instance v0, Lcom/kingroot/kinguser/aka;

    invoke-static {}, Lcom/kingroot/kinguser/ajg;->zi()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x1ed

    const-string v6, "u:object_r:system_file:s0"

    invoke-direct/range {v0 .. v6}, Lcom/kingroot/kinguser/aka;-><init>(Ljava/lang/String;IIIILjava/lang/String;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v7, p0, Lcom/kingroot/kinguser/ajz;->arC:Ljava/util/List;

    new-instance v0, Lcom/kingroot/kinguser/aka;

    sget-object v1, Lcom/kingroot/kinguser/bha;->bpy:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x1ed

    const-string v6, "u:object_r:system_file:s0"

    invoke-direct/range {v0 .. v6}, Lcom/kingroot/kinguser/aka;-><init>(Ljava/lang/String;IIIILjava/lang/String;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v7, p0, Lcom/kingroot/kinguser/ajz;->arC:Ljava/util/List;

    new-instance v0, Lcom/kingroot/kinguser/aka;

    sget-object v1, Lcom/kingroot/kinguser/bha;->bpz:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x1ed

    const-string v6, "u:object_r:system_file:s0"

    invoke-direct/range {v0 .. v6}, Lcom/kingroot/kinguser/aka;-><init>(Ljava/lang/String;IIIILjava/lang/String;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v7, p0, Lcom/kingroot/kinguser/ajz;->arC:Ljava/util/List;

    new-instance v0, Lcom/kingroot/kinguser/aka;

    sget-object v1, Lcom/kingroot/kinguser/bha;->bpA:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x1ed

    const-string v6, "u:object_r:system_file:s0"

    invoke-direct/range {v0 .. v6}, Lcom/kingroot/kinguser/aka;-><init>(Ljava/lang/String;IIIILjava/lang/String;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object v10, p0, Lcom/kingroot/kinguser/ajz;->arC:Ljava/util/List;

    new-instance v0, Lcom/kingroot/kinguser/aka;

    sget-object v1, Lcom/kingroot/kinguser/bha;->bpv:Ljava/lang/String;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xded

    const/16 v6, 0x1ed

    const-string v7, "u:object_r:system_file:s0"

    invoke-direct/range {v0 .. v7}, Lcom/kingroot/kinguser/aka;-><init>(Ljava/lang/String;IIIIILjava/lang/String;)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v10, p0, Lcom/kingroot/kinguser/ajz;->arC:Ljava/util/List;

    new-instance v0, Lcom/kingroot/kinguser/aka;

    sget-object v1, Lcom/kingroot/kinguser/bha;->bpu:Ljava/lang/String;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xded

    const/16 v6, 0x1ed

    const-string v7, "u:object_r:system_file:s0"

    invoke-direct/range {v0 .. v7}, Lcom/kingroot/kinguser/aka;-><init>(Ljava/lang/String;IIIIILjava/lang/String;)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    invoke-static {}, Lcom/kingroot/kinguser/abf;->qP()Z

    move-result v0

    if-nez v0, :cond_1

    .line 104
    iget-object v10, p0, Lcom/kingroot/kinguser/ajz;->arC:Ljava/util/List;

    new-instance v0, Lcom/kingroot/kinguser/aka;

    sget-object v1, Lcom/kingroot/kinguser/abu;->ZV:Ljava/lang/String;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xded

    const/16 v6, 0x7ed

    const-string v7, "u:object_r:system_file:s0"

    invoke-direct/range {v0 .. v7}, Lcom/kingroot/kinguser/aka;-><init>(Ljava/lang/String;IIIIILjava/lang/String;)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_1
    iget-object v10, p0, Lcom/kingroot/kinguser/ajz;->arC:Ljava/util/List;

    new-instance v0, Lcom/kingroot/kinguser/aka;

    sget-object v1, Lcom/kingroot/kinguser/abu;->ZW:Ljava/lang/String;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xded

    const/16 v6, 0x7ed

    const-string v7, "u:object_r:system_file:s0"

    invoke-direct/range {v0 .. v7}, Lcom/kingroot/kinguser/aka;-><init>(Ljava/lang/String;IIIIILjava/lang/String;)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object v10, p0, Lcom/kingroot/kinguser/ajz;->arC:Ljava/util/List;

    new-instance v0, Lcom/kingroot/kinguser/aka;

    sget-object v1, Lcom/kingroot/kinguser/bha;->bpw:Ljava/lang/String;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xded

    const/16 v6, 0x1ed

    const-string v7, "u:object_r:system_file:s0"

    invoke-direct/range {v0 .. v7}, Lcom/kingroot/kinguser/aka;-><init>(Ljava/lang/String;IIIIILjava/lang/String;)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object v7, p0, Lcom/kingroot/kinguser/ajz;->arC:Ljava/util/List;

    new-instance v0, Lcom/kingroot/kinguser/aka;

    const-string v1, "p13"

    invoke-static {v1}, Lcom/kingroot/kinguser/zt;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x1ed

    const-string v6, "u:object_r:system_file:s0"

    invoke-direct/range {v0 .. v6}, Lcom/kingroot/kinguser/aka;-><init>(Ljava/lang/String;IIIILjava/lang/String;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v7, p0, Lcom/kingroot/kinguser/ajz;->arC:Ljava/util/List;

    new-instance v0, Lcom/kingroot/kinguser/aka;

    const-string v1, "ps1"

    invoke-static {v1}, Lcom/kingroot/kinguser/zt;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x1ed

    const-string v6, "u:object_r:system_file:s0"

    invoke-direct/range {v0 .. v6}, Lcom/kingroot/kinguser/aka;-><init>(Ljava/lang/String;IIIILjava/lang/String;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object v7, p0, Lcom/kingroot/kinguser/ajz;->arC:Ljava/util/List;

    new-instance v0, Lcom/kingroot/kinguser/aka;

    const-string v1, "ps2"

    invoke-static {v1}, Lcom/kingroot/kinguser/zt;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x1ed

    const-string v6, "u:object_r:system_file:s0"

    invoke-direct/range {v0 .. v6}, Lcom/kingroot/kinguser/aka;-><init>(Ljava/lang/String;IIIILjava/lang/String;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object v7, p0, Lcom/kingroot/kinguser/ajz;->arC:Ljava/util/List;

    new-instance v0, Lcom/kingroot/kinguser/aka;

    const-string v1, "ps3"

    invoke-static {v1}, Lcom/kingroot/kinguser/zt;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x1ed

    const-string v6, "u:object_r:system_file:s0"

    invoke-direct/range {v0 .. v6}, Lcom/kingroot/kinguser/aka;-><init>(Ljava/lang/String;IIIILjava/lang/String;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    .line 118
    new-instance v10, Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    const-string v1, "applib"

    invoke-direct {v10, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "fn5"

    invoke-static {v1}, Lcom/kingroot/kinguser/zt;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 123
    iget-object v11, p0, Lcom/kingroot/kinguser/ajz;->arC:Ljava/util/List;

    new-instance v0, Lcom/kingroot/kinguser/aka;

    const/4 v2, 0x6

    const/16 v5, 0x1f4

    const-string v6, "u:object_r:app_data_file:s0"

    move v3, v9

    move v4, v8

    invoke-direct/range {v0 .. v6}, Lcom/kingroot/kinguser/aka;-><init>(Ljava/lang/String;IIIILjava/lang/String;)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "fn7"

    invoke-static {v1}, Lcom/kingroot/kinguser/zt;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 126
    iget-object v11, p0, Lcom/kingroot/kinguser/ajz;->arC:Ljava/util/List;

    new-instance v0, Lcom/kingroot/kinguser/aka;

    const/4 v2, 0x6

    const/16 v5, 0x1f4

    const-string v6, "u:object_r:app_data_file:s0"

    move v3, v9

    move v4, v8

    invoke-direct/range {v0 .. v6}, Lcom/kingroot/kinguser/aka;-><init>(Ljava/lang/String;IIIILjava/lang/String;)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    invoke-static {}, Lcom/kingroot/kinguser/abd;->qO()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "fn6"

    invoke-static {v0}, Lcom/kingroot/kinguser/zt;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 130
    iget-object v11, p0, Lcom/kingroot/kinguser/ajz;->arC:Ljava/util/List;

    new-instance v0, Lcom/kingroot/kinguser/aka;

    const/4 v2, 0x6

    const/16 v5, 0x1f4

    const-string v6, "u:object_r:app_data_file:s0"

    move v3, v9

    move v4, v8

    invoke-direct/range {v0 .. v6}, Lcom/kingroot/kinguser/aka;-><init>(Ljava/lang/String;IIIILjava/lang/String;)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x9db4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 134
    iget-object v11, p0, Lcom/kingroot/kinguser/ajz;->arC:Ljava/util/List;

    new-instance v0, Lcom/kingroot/kinguser/aka;

    const/4 v2, 0x6

    const/16 v5, 0x180

    const-string v6, "u:object_r:app_data_file:s0"

    move v3, v9

    move v4, v8

    invoke-direct/range {v0 .. v6}, Lcom/kingroot/kinguser/aka;-><init>(Ljava/lang/String;IIIILjava/lang/String;)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x9d3b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 137
    iget-object v11, p0, Lcom/kingroot/kinguser/ajz;->arC:Ljava/util/List;

    new-instance v0, Lcom/kingroot/kinguser/aka;

    const/4 v2, 0x6

    const/16 v5, 0x180

    const-string v6, "u:object_r:app_data_file:s0"

    move v3, v9

    move v4, v8

    invoke-direct/range {v0 .. v6}, Lcom/kingroot/kinguser/aka;-><init>(Ljava/lang/String;IIIILjava/lang/String;)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x9d71

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 140
    iget-object v11, p0, Lcom/kingroot/kinguser/ajz;->arC:Ljava/util/List;

    new-instance v0, Lcom/kingroot/kinguser/aka;

    const/4 v2, 0x6

    const/16 v5, 0x180

    const-string v6, "u:object_r:app_data_file:s0"

    move v3, v9

    move v4, v8

    invoke-direct/range {v0 .. v6}, Lcom/kingroot/kinguser/aka;-><init>(Ljava/lang/String;IIIILjava/lang/String;)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x9d9f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 143
    iget-object v11, p0, Lcom/kingroot/kinguser/ajz;->arC:Ljava/util/List;

    new-instance v0, Lcom/kingroot/kinguser/aka;

    const/4 v2, 0x6

    const/16 v5, 0x180

    const-string v6, "u:object_r:app_data_file:s0"

    move v3, v9

    move v4, v8

    invoke-direct/range {v0 .. v6}, Lcom/kingroot/kinguser/aka;-><init>(Ljava/lang/String;IIIILjava/lang/String;)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    new-instance v11, Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    const-string v1, "databases"

    invoke-direct {v11, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 149
    new-instance v12, Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    const-string v1, "app_workspace"

    invoke-direct {v12, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 150
    new-instance v13, Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    const-string v1, "cache"

    invoke-direct {v13, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 152
    iget-object v14, p0, Lcom/kingroot/kinguser/ajz;->arC:Ljava/util/List;

    new-instance v0, Lcom/kingroot/kinguser/aka;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    const/16 v5, 0x1f9

    const-string v6, "u:object_r:app_data_file:s0"

    move v3, v9

    move v4, v8

    invoke-direct/range {v0 .. v6}, Lcom/kingroot/kinguser/aka;-><init>(Ljava/lang/String;IIIILjava/lang/String;)V

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    iget-object v7, p0, Lcom/kingroot/kinguser/ajz;->arC:Ljava/util/List;

    new-instance v0, Lcom/kingroot/kinguser/aka;

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    const/16 v5, 0x1f9

    const-string v6, "u:object_r:app_data_file:s0"

    move v3, v9

    move v4, v8

    invoke-direct/range {v0 .. v6}, Lcom/kingroot/kinguser/aka;-><init>(Ljava/lang/String;IIIILjava/lang/String;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    iget-object v7, p0, Lcom/kingroot/kinguser/ajz;->arC:Ljava/util/List;

    new-instance v0, Lcom/kingroot/kinguser/aka;

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    const/16 v5, 0x1f9

    const-string v6, "u:object_r:app_data_file:s0"

    move v3, v9

    move v4, v8

    invoke-direct/range {v0 .. v6}, Lcom/kingroot/kinguser/aka;-><init>(Ljava/lang/String;IIIILjava/lang/String;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    iget-object v7, p0, Lcom/kingroot/kinguser/ajz;->arC:Ljava/util/List;

    new-instance v0, Lcom/kingroot/kinguser/aka;

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    const/16 v5, 0x1f9

    const-string v6, "u:object_r:app_data_file:s0"

    move v3, v9

    move v4, v8

    invoke-direct/range {v0 .. v6}, Lcom/kingroot/kinguser/aka;-><init>(Ljava/lang/String;IIIILjava/lang/String;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    iget-object v7, p0, Lcom/kingroot/kinguser/ajz;->arC:Ljava/util/List;

    new-instance v0, Lcom/kingroot/kinguser/aka;

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    const/16 v5, 0x1f9

    const-string v6, "u:object_r:app_data_file:s0"

    move v3, v9

    move v4, v8

    invoke-direct/range {v0 .. v6}, Lcom/kingroot/kinguser/aka;-><init>(Ljava/lang/String;IIIILjava/lang/String;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/ajz;->auG:Z

    .line 159
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 87
    :catch_0
    move-exception v0

    .line 89
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 128
    :cond_2
    const-string v0, "fn3"

    invoke-static {v0}, Lcom/kingroot/kinguser/zt;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto/16 :goto_2

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    move v8, v0

    move v9, v1

    goto/16 :goto_1
.end method

.method protected declared-synchronized zL()Z
    .locals 3

    .prologue
    .line 164
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ajz;->jz()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 166
    const/4 v0, 0x0

    .line 196
    :goto_0
    monitor-exit p0

    return v0

    .line 169
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/kingroot/kinguser/ajz;->zM()Ljava/util/List;

    move-result-object v0

    .line 170
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aka;

    .line 171
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aka;->zP()I

    move-result v2

    .line 172
    packed-switch v2, :pswitch_data_0

    .line 193
    :goto_2
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/ajz;->k(Lcom/kingroot/kinguser/aka;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 174
    :pswitch_0
    :try_start_2
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/ajz;->a(Lcom/kingroot/kinguser/aka;)V

    goto :goto_2

    .line 177
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/ajz;->f(Lcom/kingroot/kinguser/aka;)V

    goto :goto_2

    .line 180
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/ajz;->b(Lcom/kingroot/kinguser/aka;)V

    goto :goto_2

    .line 183
    :pswitch_3
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/ajz;->c(Lcom/kingroot/kinguser/aka;)V

    goto :goto_2

    .line 187
    :pswitch_4
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/ajz;->d(Lcom/kingroot/kinguser/aka;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 196
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 172
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method
