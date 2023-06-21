.class public Lcom/kingroot/kinguser/ceq;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static bYJ:I

.field private static bYK:Lcom/kingroot/kinguser/aq;

.field private static bYL:Ljava/lang/String;

.field private static bYM:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 211
    sput v0, Lcom/kingroot/kinguser/ceq;->bYJ:I

    .line 375
    sput-boolean v0, Lcom/kingroot/kinguser/ceq;->bYM:Z

    return-void
.end method

.method private static a(Landroid/content/Context;ZLcom/kingroot/kinguser/cez$b;Ljava/lang/String;Lcom/kingroot/kinguser/ceu;)Lcom/kingroot/kinguser/aq;
    .locals 4

    .prologue
    .line 390
    if-nez p4, :cond_0

    .line 391
    const/4 v0, 0x0

    .line 421
    :goto_0
    return-object v0

    .line 394
    :cond_0
    new-instance v1, Lcom/kingroot/kinguser/aq;

    invoke-direct {v1}, Lcom/kingroot/kinguser/aq;-><init>()V

    .line 397
    if-eqz p2, :cond_3

    iget-object v0, p2, Lcom/kingroot/kinguser/cez$b;->bZu:Ljava/lang/String;

    .line 398
    :goto_1
    if-eqz p1, :cond_1

    const-string v0, ""

    :cond_1
    iput-object v0, v1, Lcom/kingroot/kinguser/aq;->iv:Ljava/lang/String;

    .line 399
    const-string v0, "build"

    invoke-static {v0}, Ltmsdk/common/TMSDKContext;->nF(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/kingroot/kinguser/aq;->dS:I

    .line 400
    invoke-static {p0}, Lcom/kingroot/kinguser/ceq;->cs(Landroid/content/Context;)I

    move-result v0

    iput v0, v1, Lcom/kingroot/kinguser/aq;->hT:I

    .line 402
    invoke-static {p0}, Lcom/kingroot/kinguser/cgr;->cw(Landroid/content/Context;)I

    move-result v0

    iput v0, v1, Lcom/kingroot/kinguser/aq;->iw:I

    .line 403
    invoke-virtual {p4}, Lcom/kingroot/kinguser/ceu;->fR()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 404
    invoke-virtual {p4}, Lcom/kingroot/kinguser/ceu;->fS()I

    move-result v0

    iput v0, v1, Lcom/kingroot/kinguser/aq;->ii:I

    .line 408
    :goto_2
    iput-object p3, v1, Lcom/kingroot/kinguser/aq;->it:Ljava/lang/String;

    .line 409
    invoke-virtual {p4}, Lcom/kingroot/kinguser/ceu;->alp()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/kingroot/kinguser/aq;->ix:J

    .line 410
    invoke-virtual {p4}, Lcom/kingroot/kinguser/ceu;->alq()I

    move-result v0

    iput v0, v1, Lcom/kingroot/kinguser/aq;->iy:I

    .line 411
    invoke-virtual {p4}, Lcom/kingroot/kinguser/ceu;->alr()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/kingroot/kinguser/aq;->iz:Ljava/lang/String;

    .line 412
    sget-object v0, Lcom/kingroot/kinguser/ceq;->bYL:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 413
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    .line 414
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 415
    invoke-virtual {p4}, Lcom/kingroot/kinguser/ceu;->fI()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "b"

    :goto_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 417
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/ceq;->bYL:Ljava/lang/String;

    .line 419
    :cond_2
    sget-object v0, Lcom/kingroot/kinguser/ceq;->bYL:Ljava/lang/String;

    iput-object v0, v1, Lcom/kingroot/kinguser/aq;->iu:Ljava/lang/String;

    move-object v0, v1

    .line 421
    goto :goto_0

    .line 397
    :cond_3
    const-string v0, ""

    goto :goto_1

    .line 406
    :cond_4
    invoke-static {}, Lcom/kingroot/kinguser/ceq;->ala()I

    move-result v0

    iput v0, v1, Lcom/kingroot/kinguser/aq;->ii:I

    goto :goto_2

    .line 415
    :cond_5
    const-string v0, "f"

    goto :goto_3
.end method

.method private static a(Landroid/content/Context;ZLcom/kingroot/kinguser/cff$d;Lcom/kingroot/kinguser/cez$b;Ljava/util/ArrayList;Ljava/lang/String;Lcom/kingroot/kinguser/ceu;)Lcom/kingroot/kinguser/ba;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Lcom/kingroot/kinguser/cff$d;",
            "Lcom/kingroot/kinguser/cez$b;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/az;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/kingroot/kinguser/ceu;",
            ")",
            "Lcom/kingroot/kinguser/ba;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 214
    invoke-static {}, Lcom/kingroot/kinguser/cew;->als()Lcom/kingroot/kinguser/ba;

    move-result-object v0

    .line 215
    iget v1, p2, Lcom/kingroot/kinguser/cff$d;->caN:I

    iput v1, v0, Lcom/kingroot/kinguser/ba;->seqNo:I

    .line 216
    const/4 v1, 0x4

    iput v1, v0, Lcom/kingroot/kinguser/ba;->kd:I

    .line 217
    iput-object p4, v0, Lcom/kingroot/kinguser/ba;->kf:Ljava/util/ArrayList;

    .line 280
    if-eqz p1, :cond_0

    iget-boolean v1, p2, Lcom/kingroot/kinguser/cff$d;->caG:Z

    if-nez v1, :cond_0

    iget-boolean v1, p2, Lcom/kingroot/kinguser/cff$d;->caH:Z

    if-nez v1, :cond_0

    iget-boolean v1, p2, Lcom/kingroot/kinguser/cff$d;->caJ:Z

    if-eqz v1, :cond_2

    .line 287
    :cond_0
    iget-boolean v1, p2, Lcom/kingroot/kinguser/cff$d;->caG:Z

    .line 288
    invoke-static {p0, v1, p3, p5, p6}, Lcom/kingroot/kinguser/ceq;->a(Landroid/content/Context;ZLcom/kingroot/kinguser/cez$b;Ljava/lang/String;Lcom/kingroot/kinguser/ceu;)Lcom/kingroot/kinguser/aq;

    move-result-object v1

    .line 289
    iput-object v1, v0, Lcom/kingroot/kinguser/ba;->ke:Lcom/kingroot/kinguser/aq;

    .line 290
    sput-object v1, Lcom/kingroot/kinguser/ceq;->bYK:Lcom/kingroot/kinguser/aq;

    .line 291
    sput-boolean v3, Lcom/kingroot/kinguser/ceq;->bYM:Z

    .line 330
    :cond_1
    :goto_0
    return-object v0

    .line 295
    :cond_2
    iget-boolean v1, p2, Lcom/kingroot/kinguser/cff$d;->caI:Z

    if-nez v1, :cond_1

    .line 299
    invoke-static {p0, v3, p3, p5, p6}, Lcom/kingroot/kinguser/ceq;->a(Landroid/content/Context;ZLcom/kingroot/kinguser/cez$b;Ljava/lang/String;Lcom/kingroot/kinguser/ceu;)Lcom/kingroot/kinguser/aq;

    move-result-object v1

    .line 301
    sget-object v2, Lcom/kingroot/kinguser/ceq;->bYK:Lcom/kingroot/kinguser/aq;

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/ceq;->a(Lcom/kingroot/kinguser/aq;Lcom/kingroot/kinguser/aq;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 310
    iput-object v1, v0, Lcom/kingroot/kinguser/ba;->ke:Lcom/kingroot/kinguser/aq;

    .line 311
    sput-object v1, Lcom/kingroot/kinguser/ceq;->bYK:Lcom/kingroot/kinguser/aq;

    .line 312
    sput-boolean v3, Lcom/kingroot/kinguser/ceq;->bYM:Z

    goto :goto_0

    .line 313
    :cond_3
    sget-boolean v2, Lcom/kingroot/kinguser/ceq;->bYM:Z

    if-eqz v2, :cond_1

    .line 321
    iput-object v1, v0, Lcom/kingroot/kinguser/ba;->ke:Lcom/kingroot/kinguser/aq;

    .line 322
    sput-object v1, Lcom/kingroot/kinguser/ceq;->bYK:Lcom/kingroot/kinguser/aq;

    .line 323
    sput-boolean v3, Lcom/kingroot/kinguser/ceq;->bYM:Z

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;[B[BLcom/qq/taf/jce/JceStruct;ZI)Lcom/qq/taf/jce/JceStruct;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 496
    if-eqz p2, :cond_0

    array-length v1, p2

    if-nez v1, :cond_1

    .line 505
    :cond_0
    :goto_0
    return-object v0

    .line 501
    :cond_1
    invoke-static {p0, p1, p2, p5}, Lcom/kingroot/kinguser/ceq;->a(Landroid/content/Context;[B[BI)[B

    move-result-object v1

    .line 502
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    if-eqz p3, :cond_0

    .line 504
    invoke-static {v1, p3, p4}, Lcom/kingroot/kinguser/cew;->a([BLcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    goto :goto_0
.end method

.method public static a([BLcom/qq/taf/jce/JceStruct;)Lcom/qq/taf/jce/JceStruct;
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/kingroot/kinguser/cew;->a([BLcom/qq/taf/jce/JceStruct;Z)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/kingroot/kinguser/aq;Lcom/kingroot/kinguser/aq;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 340
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    .line 356
    :cond_0
    :goto_0
    return v0

    .line 342
    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    move v0, v1

    .line 343
    goto :goto_0

    .line 346
    :cond_3
    iget v2, p0, Lcom/kingroot/kinguser/aq;->hT:I

    iget v3, p1, Lcom/kingroot/kinguser/aq;->hT:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/kingroot/kinguser/aq;->ii:I

    iget v3, p1, Lcom/kingroot/kinguser/aq;->ii:I

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/kingroot/kinguser/aq;->it:Ljava/lang/String;

    iget-object v3, p1, Lcom/kingroot/kinguser/aq;->it:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/kingroot/kinguser/ceq;->bf(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/kingroot/kinguser/aq;->iu:Ljava/lang/String;

    iget-object v3, p1, Lcom/kingroot/kinguser/aq;->iu:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/kingroot/kinguser/ceq;->bf(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/kingroot/kinguser/aq;->iv:Ljava/lang/String;

    iget-object v3, p1, Lcom/kingroot/kinguser/aq;->iv:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/kingroot/kinguser/ceq;->bf(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/kingroot/kinguser/aq;->dS:I

    iget v3, p1, Lcom/kingroot/kinguser/aq;->dS:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/kingroot/kinguser/aq;->iw:I

    iget v3, p1, Lcom/kingroot/kinguser/aq;->iw:I

    if-ne v2, v3, :cond_4

    iget-wide v2, p0, Lcom/kingroot/kinguser/aq;->ix:J

    iget-wide v4, p1, Lcom/kingroot/kinguser/aq;->ix:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/qq/taf/jce/JceStruct;ILcom/kingroot/kinguser/az;)[B
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    .line 107
    if-eqz p1, :cond_0

    .line 108
    invoke-static {p1}, Lcom/kingroot/kinguser/cew;->b(Lcom/qq/taf/jce/JceStruct;)[B

    move-result-object v0

    .line 110
    :cond_0
    invoke-static {p0, v0, p2, p3}, Lcom/kingroot/kinguser/ceq;->a(Landroid/content/Context;[BILcom/kingroot/kinguser/az;)[B

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;[BILcom/kingroot/kinguser/az;)[B
    .locals 4

    .prologue
    .line 124
    const/4 v0, 0x0

    .line 128
    if-eqz p1, :cond_2

    :try_start_0
    array-length v1, p1

    const/16 v2, 0x32

    if-le v1, v2, :cond_2

    .line 129
    invoke-static {p1}, Lcom/kingroot/kinguser/ceq;->ac([B)[B

    move-result-object v1

    .line 130
    if-eqz p3, :cond_3

    .line 131
    iget v2, p3, Lcom/kingroot/kinguser/az;->flag:I

    .line 132
    if-eqz v1, :cond_1

    array-length v2, v1

    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 133
    iget v2, p3, Lcom/kingroot/kinguser/az;->flag:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p3, Lcom/kingroot/kinguser/az;->flag:I

    move-object p1, v1

    .line 160
    :cond_0
    :goto_0
    invoke-static {p2, p1}, Lcom/kingroot/kinguser/ceq;->b(I[B)[B

    move-result-object v0

    .line 173
    :goto_1
    return-object v0

    .line 141
    :cond_1
    iget v1, p3, Lcom/kingroot/kinguser/az;->flag:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p3, Lcom/kingroot/kinguser/az;->flag:I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    .line 149
    :cond_2
    if-eqz p3, :cond_0

    .line 150
    iget v1, p3, Lcom/kingroot/kinguser/az;->flag:I

    .line 151
    iget v1, p3, Lcom/kingroot/kinguser/az;->flag:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p3, Lcom/kingroot/kinguser/az;->flag:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_3
    move-object p1, v1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;[B[BI)[B
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 523
    if-eqz p2, :cond_0

    array-length v0, p2

    if-nez v0, :cond_2

    :cond_0
    move-object v0, v1

    .line 577
    :cond_1
    :goto_0
    return-object v0

    .line 529
    :cond_2
    and-int/lit8 v0, p3, 0x2

    if-nez v0, :cond_3

    .line 532
    :try_start_0
    invoke-static {p2, p1}, Ltmsdk/common/tcc/TccCryptor;->g([B[B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 541
    :cond_3
    :goto_1
    if-eqz p2, :cond_4

    array-length v0, p2

    const/4 v2, 0x4

    if-lt v0, v2, :cond_4

    .line 557
    invoke-static {p2}, Lcom/kingroot/kinguser/ceq;->ab([B)[B

    move-result-object v0

    .line 558
    if-eqz v0, :cond_4

    array-length v2, v0

    if-lez v2, :cond_4

    .line 559
    and-int/lit8 v1, p3, 0x1

    if-nez v1, :cond_1

    .line 562
    invoke-static {v0}, Lcom/kingroot/kinguser/ceq;->ad([B)[B

    move-result-object v0

    goto :goto_0

    .line 535
    :catch_0
    move-exception v0

    move-object p2, v1

    goto :goto_1

    :cond_4
    move-object v0, v1

    .line 577
    goto :goto_0
.end method

.method public static a(Lcom/kingroot/kinguser/cff$d;ZLjava/lang/String;Lcom/kingroot/kinguser/ceu;)[B
    .locals 7

    .prologue
    .line 185
    if-nez p0, :cond_0

    .line 186
    const/4 v0, 0x0

    .line 199
    :goto_0
    return-object v0

    .line 189
    :cond_0
    iget-boolean v0, p0, Lcom/kingroot/kinguser/cff$d;->caI:Z

    if-eqz v0, :cond_1

    .line 191
    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 192
    const/4 v1, 0x0

    iget-byte v2, p0, Lcom/kingroot/kinguser/cff$d;->caU:B

    aput-byte v2, v0, v1

    goto :goto_0

    .line 195
    :cond_1
    invoke-static {}, Ltmsdk/common/TMSDKContext;->akS()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/kingroot/kinguser/cff$d;->caO:Lcom/kingroot/kinguser/cez$b;

    iget-object v4, p0, Lcom/kingroot/kinguser/cff$d;->caQ:Ljava/util/ArrayList;

    move v1, p1

    move-object v2, p0

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/kingroot/kinguser/ceq;->a(Landroid/content/Context;ZLcom/kingroot/kinguser/cff$d;Lcom/kingroot/kinguser/cez$b;Ljava/util/ArrayList;Ljava/lang/String;Lcom/kingroot/kinguser/ceu;)Lcom/kingroot/kinguser/ba;

    move-result-object v0

    .line 196
    invoke-static {v0}, Lcom/kingroot/kinguser/cew;->b(Lcom/qq/taf/jce/JceStruct;)[B

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lcom/qq/taf/jce/JceStruct;)[B
    .locals 1

    .prologue
    .line 84
    if-nez p0, :cond_0

    .line 85
    const/4 v0, 0x0

    .line 88
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/kingroot/kinguser/cew;->b(Lcom/qq/taf/jce/JceStruct;)[B

    move-result-object v0

    goto :goto_0
.end method

.method private static ab([B)[B
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 623
    if-eqz p0, :cond_0

    array-length v0, p0

    if-lt v0, v3, :cond_0

    .line 625
    array-length v0, p0

    add-int/lit8 v0, v0, -0x4

    new-array v0, v0, [B

    .line 626
    const/4 v1, 0x0

    array-length v2, p0

    add-int/lit8 v2, v2, -0x4

    invoke-static {p0, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 631
    :goto_0
    return-object v0

    .line 629
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static ac([B)[B
    .locals 3

    .prologue
    .line 658
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 660
    new-instance v2, Ljava/util/zip/DeflaterOutputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 662
    :try_start_0
    invoke-virtual {v2, p0}, Ljava/util/zip/DeflaterOutputStream;->write([B)V

    .line 663
    invoke-virtual {v2}, Ljava/util/zip/DeflaterOutputStream;->finish()V

    .line 664
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 670
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 671
    invoke-virtual {v2}, Ljava/util/zip/DeflaterOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 677
    :goto_0
    return-object v0

    .line 672
    :catch_0
    move-exception v1

    .line 673
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 667
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 671
    invoke-virtual {v2}, Ljava/util/zip/DeflaterOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 674
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 672
    :catch_2
    move-exception v0

    .line 673
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 669
    :catchall_0
    move-exception v0

    .line 670
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 671
    invoke-virtual {v2}, Ljava/util/zip/DeflaterOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 674
    :goto_2
    throw v0

    .line 672
    :catch_3
    move-exception v1

    .line 673
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method private static ad([B)[B
    .locals 5

    .prologue
    .line 686
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 688
    new-instance v2, Ljava/util/zip/InflaterInputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 689
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 691
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Ljava/util/zip/InflaterInputStream;->read()I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    .line 693
    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 699
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    .line 703
    invoke-virtual {v2}, Ljava/util/zip/InflaterInputStream;->close()V

    .line 704
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 707
    :goto_1
    const/4 v0, 0x0

    .line 710
    :goto_2
    return-object v0

    .line 696
    :cond_0
    :try_start_2
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 702
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    .line 703
    invoke-virtual {v2}, Ljava/util/zip/InflaterInputStream;->close()V

    .line 704
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 705
    :catch_1
    move-exception v1

    .line 706
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 705
    :catch_2
    move-exception v0

    .line 706
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 701
    :catchall_0
    move-exception v0

    .line 702
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    .line 703
    invoke-virtual {v2}, Ljava/util/zip/InflaterInputStream;->close()V

    .line 704
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 707
    :goto_3
    throw v0

    .line 705
    :catch_3
    move-exception v1

    .line 706
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method

.method public static akZ()V
    .locals 1

    .prologue
    .line 377
    const/4 v0, 0x1

    sput-boolean v0, Lcom/kingroot/kinguser/ceq;->bYM:Z

    .line 378
    return-void
.end method

.method private static ala()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 478
    invoke-static {}, Lcom/kingroot/kinguser/cgo;->amY()I

    move-result v1

    .line 479
    packed-switch v1, :pswitch_data_0

    .line 483
    :goto_0
    :pswitch_0
    return v0

    .line 481
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 482
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 479
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static b(I[B)[B
    .locals 4

    .prologue
    .line 598
    const/4 v0, 0x0

    .line 600
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 601
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 602
    invoke-virtual {v2, p0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 603
    if-eqz p1, :cond_0

    array-length v3, p1

    if-lez v3, :cond_0

    .line 604
    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->write([B)V

    .line 606
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 614
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static bf(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 360
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 361
    const/4 v0, 0x1

    .line 365
    :goto_0
    return v0

    .line 362
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    .line 363
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 365
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static cs(Landroid/content/Context;)I
    .locals 3

    .prologue
    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 450
    sput-boolean v1, Lcom/kingroot/kinguser/cef;->bYc:Z

    .line 451
    invoke-static {p0}, Lcom/kingroot/kinguser/cef;->cr(Landroid/content/Context;)V

    .line 454
    sget-byte v2, Lcom/kingroot/kinguser/cef;->bYd:B

    if-ne v0, v2, :cond_0

    .line 455
    const/4 v0, 0x1

    .line 469
    :goto_0
    :pswitch_0
    return v0

    .line 458
    :cond_0
    sget-byte v2, Lcom/kingroot/kinguser/cef;->bYf:B

    .line 459
    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 469
    goto :goto_0

    .line 460
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 462
    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 463
    :pswitch_3
    const/4 v0, 0x5

    goto :goto_0

    .line 464
    :pswitch_4
    const/4 v0, 0x6

    goto :goto_0

    .line 465
    :pswitch_5
    const/4 v0, 0x7

    goto :goto_0

    .line 466
    :pswitch_6
    const/16 v0, 0x8

    goto :goto_0

    .line 467
    :pswitch_7
    const/16 v0, 0x9

    goto :goto_0

    .line 468
    :pswitch_8
    const/16 v0, 0xa

    goto :goto_0

    .line 459
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static decrypt([B[B)[B
    .locals 1

    .prologue
    .line 55
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 64
    :cond_0
    :goto_0
    return-object p0

    .line 60
    :cond_1
    :try_start_0
    invoke-static {p0, p1}, Ltmsdk/common/tcc/TccCryptor;->g([B[B)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static encrypt([B[B)[B
    .locals 1

    .prologue
    .line 42
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 51
    :cond_0
    :goto_0
    return-object p0

    .line 47
    :cond_1
    :try_start_0
    invoke-static {p0, p1}, Ltmsdk/common/tcc/TccCryptor;->f([B[B)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 51
    :catch_0
    move-exception v0

    const/4 p0, 0x0

    goto :goto_0
.end method
