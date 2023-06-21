.class public Lcom/kingroot/kinguser/cer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/cer$a;
    }
.end annotation


# instance fields
.field private volatile Js:Ljava/lang/String;

.field private bYN:Lcom/kingroot/kinguser/cff;

.field private volatile bYO:Z

.field private volatile bYP:J

.field private bYx:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/kingroot/kinguser/cff;Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-boolean v2, p0, Lcom/kingroot/kinguser/cer;->bYO:Z

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/cer;->Js:Ljava/lang/String;

    .line 43
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingroot/kinguser/cer;->bYP:J

    .line 44
    iput-boolean v2, p0, Lcom/kingroot/kinguser/cer;->bYx:Z

    .line 51
    iput-object p1, p0, Lcom/kingroot/kinguser/cer;->mContext:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lcom/kingroot/kinguser/cer;->bYN:Lcom/kingroot/kinguser/cff;

    .line 53
    iput-boolean p3, p0, Lcom/kingroot/kinguser/cer;->bYx:Z

    .line 55
    iget-object v0, p0, Lcom/kingroot/kinguser/cer;->bYN:Lcom/kingroot/kinguser/cff;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cff;->alL()Lcom/kingroot/kinguser/ceu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ceu;->fL()Ljava/lang/String;

    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/kingroot/kinguser/cer;->bYN:Lcom/kingroot/kinguser/cff;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/cff;->alL()Lcom/kingroot/kinguser/ceu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/ceu;->fN()Z

    move-result v1

    .line 58
    iget-boolean v2, p0, Lcom/kingroot/kinguser/cer;->bYx:Z

    if-eq v2, v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/kingroot/kinguser/cer;->bYN:Lcom/kingroot/kinguser/cff;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cff;->alL()Lcom/kingroot/kinguser/ceu;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ceu;->ce(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/kingroot/kinguser/cer;->bYN:Lcom/kingroot/kinguser/cff;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cff;->alL()Lcom/kingroot/kinguser/ceu;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ceu;->cf(Ljava/lang/String;)V

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/cer;->alc()V

    .line 68
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/cer;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/kingroot/kinguser/cer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/cer;Ljava/lang/String;Lcom/kingroot/kinguser/au;Z)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/kingroot/kinguser/cer;->a(Ljava/lang/String;Lcom/kingroot/kinguser/au;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/kingroot/kinguser/au;Z)V
    .locals 2

    .prologue
    .line 225
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    :goto_0
    return-void

    .line 229
    :cond_0
    if-eqz p1, :cond_1

    move-object v0, p1

    :goto_1
    iput-object v0, p0, Lcom/kingroot/kinguser/cer;->Js:Ljava/lang/String;

    .line 230
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/cer;->bYO:Z

    .line 231
    iget-object v0, p0, Lcom/kingroot/kinguser/cer;->bYN:Lcom/kingroot/kinguser/cff;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cff;->alL()Lcom/kingroot/kinguser/ceu;

    move-result-object v0

    invoke-static {}, Lcom/kingroot/kinguser/cdz;->akR()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ceu;->lc(I)V

    .line 232
    iget-object v0, p0, Lcom/kingroot/kinguser/cer;->bYN:Lcom/kingroot/kinguser/cff;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cff;->alL()Lcom/kingroot/kinguser/ceu;

    move-result-object v0

    iget-boolean v1, p0, Lcom/kingroot/kinguser/cer;->bYx:Z

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ceu;->r(Z)V

    .line 235
    iget-object v0, p0, Lcom/kingroot/kinguser/cer;->bYN:Lcom/kingroot/kinguser/cff;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cff;->alL()Lcom/kingroot/kinguser/ceu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/ceu;->ce(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/kingroot/kinguser/cer;->bYN:Lcom/kingroot/kinguser/cff;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cff;->alL()Lcom/kingroot/kinguser/ceu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/ceu;->cf(Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/kingroot/kinguser/cer;->bYN:Lcom/kingroot/kinguser/cff;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cff;->alL()Lcom/kingroot/kinguser/ceu;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/kingroot/kinguser/ceu;->b(Lcom/kingroot/kinguser/au;)V

    goto :goto_0

    .line 229
    :cond_1
    const-string v0, ""

    goto :goto_1
.end method

.method private ald()Lcom/kingroot/kinguser/au;
    .locals 2

    .prologue
    .line 512
    iget-object v0, p0, Lcom/kingroot/kinguser/cer;->bYN:Lcom/kingroot/kinguser/cff;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cff;->alL()Lcom/kingroot/kinguser/ceu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ceu;->fP()Lcom/kingroot/kinguser/au;

    move-result-object v0

    .line 513
    if-nez v0, :cond_0

    .line 514
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "onGetRealInfoOfGuid() return null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 517
    :cond_0
    iget-object v1, v0, Lcom/kingroot/kinguser/au;->iE:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 518
    const-string v1, ""

    iput-object v1, v0, Lcom/kingroot/kinguser/au;->iE:Ljava/lang/String;

    .line 521
    :cond_1
    return-object v0
.end method

.method private ay(II)Z
    .locals 1

    .prologue
    .line 416
    if-eq p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/cer;)Lcom/kingroot/kinguser/cff;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/kingroot/kinguser/cer;->bYN:Lcom/kingroot/kinguser/cff;

    return-object v0
.end method

.method private bg(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 399
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 408
    :cond_0
    :goto_0
    return v0

    .line 403
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 407
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method static synthetic c(Lcom/kingroot/kinguser/cer;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/kingroot/kinguser/cer;->Js:Ljava/lang/String;

    return-object v0
.end method

.method public static c(Landroid/content/Context;ILjava/lang/String;)V
    .locals 4

    .prologue
    .line 108
    :try_start_0
    const-string v0, "action.guid.got:%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 109
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    const-string v0, "k.rc"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 112
    const-string v0, "k.g"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private c(Lcom/kingroot/kinguser/au;)V
    .locals 8

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x0

    .line 438
    invoke-static {}, Lcom/kingroot/kinguser/cfb;->aly()Lcom/kingroot/kinguser/cet;

    move-result-object v0

    invoke-interface {v0}, Lcom/kingroot/kinguser/cet;->alo()I

    move-result v4

    .line 439
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/cer;->d(Lcom/kingroot/kinguser/au;)Lcom/kingroot/kinguser/aw;

    move-result-object v0

    .line 440
    new-instance v2, Lcom/kingroot/kinguser/az;

    invoke-direct {v2}, Lcom/kingroot/kinguser/az;-><init>()V

    .line 441
    iput v4, v2, Lcom/kingroot/kinguser/az;->seqNo:I

    .line 442
    iput v5, v2, Lcom/kingroot/kinguser/az;->cmd:I

    .line 444
    iget-object v3, p0, Lcom/kingroot/kinguser/cer;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, v5, v2}, Lcom/kingroot/kinguser/ceq;->a(Landroid/content/Context;Lcom/qq/taf/jce/JceStruct;ILcom/kingroot/kinguser/az;)[B

    move-result-object v0

    iput-object v0, v2, Lcom/kingroot/kinguser/az;->data:[B

    .line 445
    iget-object v0, v2, Lcom/kingroot/kinguser/az;->data:[B

    if-nez v0, :cond_0

    .line 509
    :goto_0
    return-void

    .line 451
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 452
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    invoke-static {}, Lcom/kingroot/kinguser/cfc;->alC()Lcom/kingroot/kinguser/cfc;

    move-result-object v0

    iget v2, v2, Lcom/kingroot/kinguser/az;->seqNo:I

    const-wide/16 v6, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v6, v7, v3}, Lcom/kingroot/kinguser/cfc;->b(IJLjava/lang/String;)V

    .line 456
    iget-object v0, p0, Lcom/kingroot/kinguser/cer;->bYN:Lcom/kingroot/kinguser/cff;

    const-wide/16 v2, 0x0

    new-instance v6, Lcom/kingroot/kinguser/cer$2;

    invoke-direct {v6, p0, v4, p1}, Lcom/kingroot/kinguser/cer$2;-><init>(Lcom/kingroot/kinguser/cer;ILcom/kingroot/kinguser/au;)V

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Lcom/kingroot/kinguser/cff;->a(IJZLjava/util/ArrayList;Lcom/kingroot/kinguser/cff$a;)V

    goto :goto_0
.end method

.method private d(Lcom/kingroot/kinguser/au;)Lcom/kingroot/kinguser/aw;
    .locals 2

    .prologue
    .line 585
    new-instance v0, Lcom/kingroot/kinguser/aw;

    invoke-direct {v0}, Lcom/kingroot/kinguser/aw;-><init>()V

    .line 586
    iput-object p1, v0, Lcom/kingroot/kinguser/aw;->jQ:Lcom/kingroot/kinguser/au;

    .line 587
    invoke-virtual {p0}, Lcom/kingroot/kinguser/cer;->getGuid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kingroot/kinguser/aw;->jR:Ljava/lang/String;

    .line 588
    iget-object v1, p0, Lcom/kingroot/kinguser/cer;->bYN:Lcom/kingroot/kinguser/cff;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/cff;->alL()Lcom/kingroot/kinguser/ceu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/ceu;->fM()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kingroot/kinguser/aw;->jS:Ljava/lang/String;

    .line 590
    return-object v0
.end method

.method private eJ(Z)Z
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v1, 0x1

    .line 259
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 262
    if-eqz p1, :cond_0

    .line 264
    iput-wide v2, p0, Lcom/kingroot/kinguser/cer;->bYP:J

    .line 265
    iget-object v0, p0, Lcom/kingroot/kinguser/cer;->bYN:Lcom/kingroot/kinguser/cff;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cff;->alL()Lcom/kingroot/kinguser/ceu;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/ceu;->q(J)V

    .line 302
    :goto_0
    return v1

    .line 269
    :cond_0
    const/4 v0, 0x0

    .line 273
    iget-wide v4, p0, Lcom/kingroot/kinguser/cer;->bYP:J

    cmp-long v4, v4, v8

    if-lez v4, :cond_1

    .line 275
    iget-wide v4, p0, Lcom/kingroot/kinguser/cer;->bYP:J

    const/16 v6, 0x3c

    invoke-static {v2, v3, v4, v5, v6}, Lcom/kingroot/kinguser/ceh;->a(JJI)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 277
    :cond_1
    iput-wide v2, p0, Lcom/kingroot/kinguser/cer;->bYP:J

    .line 284
    iget-object v4, p0, Lcom/kingroot/kinguser/cer;->bYN:Lcom/kingroot/kinguser/cff;

    invoke-virtual {v4}, Lcom/kingroot/kinguser/cff;->alL()Lcom/kingroot/kinguser/ceu;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kingroot/kinguser/ceu;->fQ()J

    move-result-wide v4

    .line 285
    cmp-long v6, v4, v8

    if-gtz v6, :cond_3

    .line 288
    iget-object v1, p0, Lcom/kingroot/kinguser/cer;->bYN:Lcom/kingroot/kinguser/cff;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/cff;->alL()Lcom/kingroot/kinguser/ceu;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lcom/kingroot/kinguser/ceu;->q(J)V

    :cond_2
    :goto_1
    move v1, v0

    .line 302
    goto :goto_0

    .line 291
    :cond_3
    const/16 v6, 0x2d0

    invoke-static {v2, v3, v4, v5, v6}, Lcom/kingroot/kinguser/ceh;->a(JJI)Z

    move-result v4

    .line 292
    if-eqz v4, :cond_2

    .line 295
    iget-object v0, p0, Lcom/kingroot/kinguser/cer;->bYN:Lcom/kingroot/kinguser/cff;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cff;->alL()Lcom/kingroot/kinguser/ceu;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/ceu;->q(J)V

    move v0, v1

    goto :goto_1
.end method

.method private eK(Z)Lcom/kingroot/kinguser/au;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 307
    invoke-virtual {p0}, Lcom/kingroot/kinguser/cer;->alb()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 394
    :cond_0
    :goto_0
    return-object v0

    .line 313
    :cond_1
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/cer;->eJ(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 318
    invoke-direct {p0}, Lcom/kingroot/kinguser/cer;->ald()Lcom/kingroot/kinguser/au;

    move-result-object v1

    .line 319
    iget-object v2, p0, Lcom/kingroot/kinguser/cer;->bYN:Lcom/kingroot/kinguser/cff;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/cff;->alL()Lcom/kingroot/kinguser/ceu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/ceu;->fO()Lcom/kingroot/kinguser/au;

    move-result-object v2

    .line 320
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 325
    iget-object v3, v1, Lcom/kingroot/kinguser/au;->iE:Ljava/lang/String;

    iget-object v4, v2, Lcom/kingroot/kinguser/au;->iE:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/kingroot/kinguser/cer;->bg(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    or-int/lit8 v3, v3, 0x0

    .line 327
    iget-object v4, v1, Lcom/kingroot/kinguser/au;->iF:Ljava/lang/String;

    iget-object v5, v2, Lcom/kingroot/kinguser/au;->iF:Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/kingroot/kinguser/cer;->bg(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    or-int/2addr v3, v4

    .line 328
    iget-object v4, v1, Lcom/kingroot/kinguser/au;->ju:Ljava/lang/String;

    iget-object v5, v2, Lcom/kingroot/kinguser/au;->ju:Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/kingroot/kinguser/cer;->bg(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    or-int/2addr v3, v4

    .line 329
    iget-object v4, v1, Lcom/kingroot/kinguser/au;->iG:Ljava/lang/String;

    iget-object v5, v2, Lcom/kingroot/kinguser/au;->iG:Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/kingroot/kinguser/cer;->bg(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    or-int/2addr v3, v4

    .line 330
    iget-object v4, v1, Lcom/kingroot/kinguser/au;->qq:Ljava/lang/String;

    iget-object v5, v2, Lcom/kingroot/kinguser/au;->qq:Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/kingroot/kinguser/cer;->bg(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    or-int/2addr v3, v4

    .line 331
    iget-object v4, v1, Lcom/kingroot/kinguser/au;->iH:Ljava/lang/String;

    iget-object v5, v2, Lcom/kingroot/kinguser/au;->iH:Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/kingroot/kinguser/cer;->bg(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    or-int/2addr v3, v4

    .line 332
    iget v4, v1, Lcom/kingroot/kinguser/au;->product:I

    iget v5, v2, Lcom/kingroot/kinguser/au;->product:I

    invoke-direct {p0, v4, v5}, Lcom/kingroot/kinguser/cer;->ay(II)Z

    move-result v4

    or-int/2addr v3, v4

    .line 333
    iget-object v4, v1, Lcom/kingroot/kinguser/au;->lc:Ljava/lang/String;

    iget-object v5, v2, Lcom/kingroot/kinguser/au;->lc:Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/kingroot/kinguser/cer;->bg(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    or-int/2addr v3, v4

    .line 334
    iget v4, v1, Lcom/kingroot/kinguser/au;->dS:I

    iget v5, v2, Lcom/kingroot/kinguser/au;->dS:I

    invoke-direct {p0, v4, v5}, Lcom/kingroot/kinguser/cer;->ay(II)Z

    move-result v4

    or-int/2addr v3, v4

    .line 335
    iget-object v4, v1, Lcom/kingroot/kinguser/au;->dT:Ljava/lang/String;

    iget-object v5, v2, Lcom/kingroot/kinguser/au;->dT:Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/kingroot/kinguser/cer;->bg(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    or-int/2addr v3, v4

    .line 336
    iget v4, v1, Lcom/kingroot/kinguser/au;->iI:I

    iget v5, v2, Lcom/kingroot/kinguser/au;->iI:I

    invoke-direct {p0, v4, v5}, Lcom/kingroot/kinguser/cer;->ay(II)Z

    move-result v4

    or-int/2addr v3, v4

    .line 337
    iget v4, v1, Lcom/kingroot/kinguser/au;->iJ:I

    iget v5, v2, Lcom/kingroot/kinguser/au;->iJ:I

    invoke-direct {p0, v4, v5}, Lcom/kingroot/kinguser/cer;->ay(II)Z

    move-result v4

    or-int/2addr v3, v4

    .line 338
    iget-boolean v4, v1, Lcom/kingroot/kinguser/au;->iK:Z

    iget-boolean v5, v2, Lcom/kingroot/kinguser/au;->iK:Z

    invoke-direct {p0, v4, v5}, Lcom/kingroot/kinguser/cer;->j(ZZ)Z

    move-result v4

    or-int/2addr v3, v4

    .line 339
    iget-object v4, v1, Lcom/kingroot/kinguser/au;->iL:Ljava/lang/String;

    iget-object v5, v2, Lcom/kingroot/kinguser/au;->iL:Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/kingroot/kinguser/cer;->bg(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    or-int/2addr v3, v4

    .line 340
    iget-object v4, v1, Lcom/kingroot/kinguser/au;->iM:Ljava/lang/String;

    iget-object v5, v2, Lcom/kingroot/kinguser/au;->iM:Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/kingroot/kinguser/cer;->bg(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    or-int/2addr v3, v4

    .line 341
    iget v4, v1, Lcom/kingroot/kinguser/au;->iN:I

    iget v5, v2, Lcom/kingroot/kinguser/au;->iN:I

    invoke-direct {p0, v4, v5}, Lcom/kingroot/kinguser/cer;->ay(II)Z

    move-result v4

    or-int/2addr v3, v4

    .line 342
    iget-object v4, v1, Lcom/kingroot/kinguser/au;->iO:Ljava/lang/String;

    iget-object v5, v2, Lcom/kingroot/kinguser/au;->iO:Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/kingroot/kinguser/cer;->bg(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    or-int/2addr v3, v4

    .line 343
    iget-short v4, v1, Lcom/kingroot/kinguser/au;->iP:S

    iget-short v5, v2, Lcom/kingroot/kinguser/au;->iP:S

    invoke-direct {p0, v4, v5}, Lcom/kingroot/kinguser/cer;->ay(II)Z

    move-result v4

    or-int/2addr v3, v4

    .line 344
    iget v4, v1, Lcom/kingroot/kinguser/au;->ja:I

    iget v5, v2, Lcom/kingroot/kinguser/au;->ja:I

    invoke-direct {p0, v4, v5}, Lcom/kingroot/kinguser/cer;->ay(II)Z

    move-result v4

    or-int/2addr v3, v4

    .line 345
    iget-object v4, v1, Lcom/kingroot/kinguser/au;->jb:Ljava/lang/String;

    iget-object v5, v2, Lcom/kingroot/kinguser/au;->jb:Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/kingroot/kinguser/cer;->bg(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    or-int/2addr v3, v4

    .line 346
    iget-object v4, v1, Lcom/kingroot/kinguser/au;->jD:Ljava/lang/String;

    iget-object v5, v2, Lcom/kingroot/kinguser/au;->jD:Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/kingroot/kinguser/cer;->bg(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    or-int/2addr v3, v4

    .line 347
    iget-object v4, v1, Lcom/kingroot/kinguser/au;->jc:Ljava/lang/String;

    iget-object v5, v2, Lcom/kingroot/kinguser/au;->jc:Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/kingroot/kinguser/cer;->bg(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    or-int/2addr v3, v4

    .line 348
    iget v4, v1, Lcom/kingroot/kinguser/au;->jd:I

    iget v5, v2, Lcom/kingroot/kinguser/au;->jd:I

    invoke-direct {p0, v4, v5}, Lcom/kingroot/kinguser/cer;->ay(II)Z

    move-result v4

    or-int/2addr v3, v4

    .line 349
    iget-object v4, v1, Lcom/kingroot/kinguser/au;->je:Ljava/lang/String;

    iget-object v5, v2, Lcom/kingroot/kinguser/au;->je:Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/kingroot/kinguser/cer;->bg(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    or-int/2addr v3, v4

    .line 350
    iget-wide v4, v1, Lcom/kingroot/kinguser/au;->jf:J

    iget-wide v6, v2, Lcom/kingroot/kinguser/au;->jf:J

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/kingroot/kinguser/cer;->j(JJ)Z

    move-result v4

    or-int/2addr v3, v4

    .line 351
    iget-wide v4, v1, Lcom/kingroot/kinguser/au;->jg:J

    iget-wide v6, v2, Lcom/kingroot/kinguser/au;->jg:J

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/kingroot/kinguser/cer;->j(JJ)Z

    move-result v4

    or-int/2addr v3, v4

    .line 352
    iget-wide v4, v1, Lcom/kingroot/kinguser/au;->jh:J

    iget-wide v6, v2, Lcom/kingroot/kinguser/au;->jh:J

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/kingroot/kinguser/cer;->j(JJ)Z

    move-result v4

    or-int/2addr v3, v4

    .line 353
    iget-wide v4, v1, Lcom/kingroot/kinguser/au;->jI:J

    iget-wide v6, v2, Lcom/kingroot/kinguser/au;->jI:J

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/kingroot/kinguser/cer;->j(JJ)Z

    move-result v4

    or-int/2addr v3, v4

    .line 354
    iget-object v4, v1, Lcom/kingroot/kinguser/au;->ji:Ljava/lang/String;

    iget-object v5, v2, Lcom/kingroot/kinguser/au;->ji:Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/kingroot/kinguser/cer;->bg(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    or-int/2addr v3, v4

    .line 355
    iget-object v4, v1, Lcom/kingroot/kinguser/au;->jj:Ljava/lang/String;

    iget-object v5, v2, Lcom/kingroot/kinguser/au;->jj:Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/kingroot/kinguser/cer;->bg(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    or-int/2addr v3, v4

    .line 356
    iget-object v4, v1, Lcom/kingroot/kinguser/au;->jk:Ljava/lang/String;

    iget-object v5, v2, Lcom/kingroot/kinguser/au;->jk:Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/kingroot/kinguser/cer;->bg(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    or-int/2addr v3, v4

    .line 357
    iget-object v4, v1, Lcom/kingroot/kinguser/au;->version:Ljava/lang/String;

    iget-object v5, v2, Lcom/kingroot/kinguser/au;->version:Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/kingroot/kinguser/cer;->bg(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    or-int/2addr v3, v4

    .line 358
    iget v4, v1, Lcom/kingroot/kinguser/au;->jy:I

    iget v5, v2, Lcom/kingroot/kinguser/au;->jy:I

    invoke-direct {p0, v4, v5}, Lcom/kingroot/kinguser/cer;->ay(II)Z

    move-result v4

    or-int/2addr v3, v4

    .line 359
    iget-object v4, v1, Lcom/kingroot/kinguser/au;->jz:Ljava/lang/String;

    iget-object v5, v2, Lcom/kingroot/kinguser/au;->jz:Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/kingroot/kinguser/cer;->bg(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    or-int/2addr v3, v4

    .line 360
    iget-object v4, v1, Lcom/kingroot/kinguser/au;->jn:Ljava/lang/String;

    iget-object v5, v2, Lcom/kingroot/kinguser/au;->jn:Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/kingroot/kinguser/cer;->bg(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    or-int/2addr v3, v4

    .line 361
    iget v4, v1, Lcom/kingroot/kinguser/au;->jq:I

    iget v5, v2, Lcom/kingroot/kinguser/au;->jq:I

    invoke-direct {p0, v4, v5}, Lcom/kingroot/kinguser/cer;->ay(II)Z

    move-result v4

    or-int/2addr v3, v4

    .line 362
    iget v4, v1, Lcom/kingroot/kinguser/au;->jr:I

    iget v5, v2, Lcom/kingroot/kinguser/au;->jr:I

    invoke-direct {p0, v4, v5}, Lcom/kingroot/kinguser/cer;->ay(II)Z

    move-result v4

    or-int/2addr v3, v4

    .line 363
    iget-object v4, v1, Lcom/kingroot/kinguser/au;->jA:Ljava/lang/String;

    iget-object v5, v2, Lcom/kingroot/kinguser/au;->jA:Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/kingroot/kinguser/cer;->bg(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    or-int/2addr v3, v4

    .line 364
    iget-object v4, v1, Lcom/kingroot/kinguser/au;->jB:Ljava/lang/String;

    iget-object v5, v2, Lcom/kingroot/kinguser/au;->jB:Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/kingroot/kinguser/cer;->bg(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    or-int/2addr v3, v4

    .line 365
    iget-object v4, v1, Lcom/kingroot/kinguser/au;->jC:Ljava/lang/String;

    iget-object v5, v2, Lcom/kingroot/kinguser/au;->jC:Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/kingroot/kinguser/cer;->bg(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    or-int/2addr v3, v4

    .line 366
    iget-object v4, v1, Lcom/kingroot/kinguser/au;->jE:Ljava/lang/String;

    iget-object v5, v2, Lcom/kingroot/kinguser/au;->jE:Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/kingroot/kinguser/cer;->bg(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    or-int/2addr v3, v4

    .line 367
    iget-object v4, v1, Lcom/kingroot/kinguser/au;->jF:Ljava/lang/String;

    iget-object v5, v2, Lcom/kingroot/kinguser/au;->jF:Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/kingroot/kinguser/cer;->bg(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    or-int/2addr v3, v4

    .line 368
    iget-object v4, v1, Lcom/kingroot/kinguser/au;->jG:Ljava/lang/String;

    iget-object v5, v2, Lcom/kingroot/kinguser/au;->jG:Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/kingroot/kinguser/cer;->bg(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    or-int/2addr v3, v4

    .line 369
    iget-object v4, v1, Lcom/kingroot/kinguser/au;->jH:Ljava/lang/String;

    iget-object v5, v2, Lcom/kingroot/kinguser/au;->jH:Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/kingroot/kinguser/cer;->bg(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    or-int/2addr v3, v4

    .line 370
    iget-object v4, v1, Lcom/kingroot/kinguser/au;->jo:Ljava/lang/String;

    iget-object v5, v2, Lcom/kingroot/kinguser/au;->jo:Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/kingroot/kinguser/cer;->bg(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    or-int/2addr v3, v4

    .line 371
    iget-object v4, v1, Lcom/kingroot/kinguser/au;->jJ:Ljava/lang/String;

    iget-object v5, v2, Lcom/kingroot/kinguser/au;->jJ:Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/kingroot/kinguser/cer;->bg(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    or-int/2addr v3, v4

    .line 372
    iget-object v4, v1, Lcom/kingroot/kinguser/au;->jp:Ljava/lang/String;

    iget-object v5, v2, Lcom/kingroot/kinguser/au;->jp:Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/kingroot/kinguser/cer;->bg(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    or-int/2addr v3, v4

    .line 373
    iget-object v4, v1, Lcom/kingroot/kinguser/au;->jl:Ljava/lang/String;

    iget-object v5, v2, Lcom/kingroot/kinguser/au;->jl:Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/kingroot/kinguser/cer;->bg(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    or-int/2addr v3, v4

    .line 374
    iget-object v4, v1, Lcom/kingroot/kinguser/au;->jm:Ljava/lang/String;

    iget-object v5, v2, Lcom/kingroot/kinguser/au;->jm:Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/kingroot/kinguser/cer;->bg(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    or-int/2addr v3, v4

    .line 375
    iget-object v4, v1, Lcom/kingroot/kinguser/au;->jK:Ljava/lang/String;

    iget-object v5, v2, Lcom/kingroot/kinguser/au;->jK:Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/kingroot/kinguser/cer;->bg(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    or-int/2addr v3, v4

    .line 376
    iget-boolean v4, v1, Lcom/kingroot/kinguser/au;->js:Z

    iget-boolean v5, v2, Lcom/kingroot/kinguser/au;->js:Z

    invoke-direct {p0, v4, v5}, Lcom/kingroot/kinguser/cer;->j(ZZ)Z

    move-result v4

    or-int/2addr v3, v4

    .line 377
    iget v4, v1, Lcom/kingroot/kinguser/au;->jL:I

    iget v5, v2, Lcom/kingroot/kinguser/au;->jL:I

    invoke-direct {p0, v4, v5}, Lcom/kingroot/kinguser/cer;->ay(II)Z

    move-result v4

    or-int/2addr v3, v4

    .line 378
    iget-object v4, v1, Lcom/kingroot/kinguser/au;->jM:Ljava/lang/String;

    iget-object v5, v2, Lcom/kingroot/kinguser/au;->jM:Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/kingroot/kinguser/cer;->bg(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    or-int/2addr v3, v4

    .line 379
    iget-object v4, v1, Lcom/kingroot/kinguser/au;->jN:Ljava/lang/String;

    iget-object v5, v2, Lcom/kingroot/kinguser/au;->jN:Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/kingroot/kinguser/cer;->bg(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    or-int/2addr v3, v4

    .line 380
    iget-object v4, v1, Lcom/kingroot/kinguser/au;->jO:Ljava/lang/String;

    iget-object v2, v2, Lcom/kingroot/kinguser/au;->jO:Ljava/lang/String;

    invoke-direct {p0, v4, v2}, Lcom/kingroot/kinguser/cer;->bg(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    or-int/2addr v3, v2

    .line 383
    iget-object v2, p0, Lcom/kingroot/kinguser/cer;->bYN:Lcom/kingroot/kinguser/cff;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/cff;->alL()Lcom/kingroot/kinguser/ceu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/ceu;->fM()Ljava/lang/String;

    move-result-object v2

    .line 384
    invoke-virtual {p0}, Lcom/kingroot/kinguser/cer;->getGuid()Ljava/lang/String;

    move-result-object v4

    .line 385
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    .line 386
    :goto_1
    or-int/2addr v2, v3

    .line 388
    if-eqz v2, :cond_0

    move-object v0, v1

    .line 394
    goto/16 :goto_0

    .line 385
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private j(JJ)Z
    .locals 1

    .prologue
    .line 412
    cmp-long v0, p1, p3

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private j(ZZ)Z
    .locals 1

    .prologue
    .line 420
    if-eq p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/cer$a;)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 123
    invoke-virtual {p0}, Lcom/kingroot/kinguser/cer;->alb()Z

    move-result v0

    .line 124
    if-nez v0, :cond_0

    .line 222
    :goto_0
    return-void

    .line 130
    :cond_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/cer;->ald()Lcom/kingroot/kinguser/au;

    move-result-object v0

    .line 131
    new-instance v1, Lcom/kingroot/kinguser/az;

    invoke-direct {v1}, Lcom/kingroot/kinguser/az;-><init>()V

    .line 132
    invoke-static {}, Lcom/kingroot/kinguser/cfb;->aly()Lcom/kingroot/kinguser/cet;

    move-result-object v2

    invoke-interface {v2}, Lcom/kingroot/kinguser/cet;->alo()I

    move-result v2

    .line 133
    iput v2, v1, Lcom/kingroot/kinguser/az;->seqNo:I

    .line 135
    iput v4, v1, Lcom/kingroot/kinguser/az;->cmd:I

    .line 137
    iget-object v3, p0, Lcom/kingroot/kinguser/cer;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, v4, v1}, Lcom/kingroot/kinguser/ceq;->a(Landroid/content/Context;Lcom/qq/taf/jce/JceStruct;ILcom/kingroot/kinguser/az;)[B

    move-result-object v3

    iput-object v3, v1, Lcom/kingroot/kinguser/az;->data:[B

    .line 138
    iget-object v3, v1, Lcom/kingroot/kinguser/az;->data:[B

    if-nez v3, :cond_1

    .line 140
    const v0, -0x13132dc

    invoke-interface {p1, v2, v4, v0, v5}, Lcom/kingroot/kinguser/cer$a;->a(IIILjava/lang/String;)V

    goto :goto_0

    .line 145
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 146
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    invoke-static {}, Lcom/kingroot/kinguser/cfc;->alC()Lcom/kingroot/kinguser/cfc;

    move-result-object v4

    iget v1, v1, Lcom/kingroot/kinguser/az;->seqNo:I

    const-wide/16 v6, -0x1

    invoke-virtual {v4, v1, v6, v7, v5}, Lcom/kingroot/kinguser/cfc;->b(IJLjava/lang/String;)V

    .line 150
    iget-object v1, p0, Lcom/kingroot/kinguser/cer;->bYN:Lcom/kingroot/kinguser/cff;

    new-instance v4, Lcom/kingroot/kinguser/cer$1;

    invoke-direct {v4, p0, p1, v2, v0}, Lcom/kingroot/kinguser/cer$1;-><init>(Lcom/kingroot/kinguser/cer;Lcom/kingroot/kinguser/cer$a;ILcom/kingroot/kinguser/au;)V

    invoke-virtual {v1, v3, v4}, Lcom/kingroot/kinguser/cff;->b(Ljava/util/ArrayList;Lcom/kingroot/kinguser/cff$a;)V

    goto :goto_0
.end method

.method public alb()Z
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/kingroot/kinguser/cer;->getGuid()Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/kingroot/kinguser/cer;->bYO:Z

    if-eqz v0, :cond_0

    .line 77
    const/4 v0, 0x0

    .line 80
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public alc()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/kingroot/kinguser/cer;->bYN:Lcom/kingroot/kinguser/cff;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cff;->alL()Lcom/kingroot/kinguser/ceu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ceu;->fL()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/cer;->Js:Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lcom/kingroot/kinguser/cer;->Js:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/cer;->bYO:Z

    .line 90
    iget-object v0, p0, Lcom/kingroot/kinguser/cer;->bYN:Lcom/kingroot/kinguser/cff;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cff;->alL()Lcom/kingroot/kinguser/ceu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ceu;->fM()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/cer;->Js:Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lcom/kingroot/kinguser/cer;->Js:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 92
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/cer;->Js:Ljava/lang/String;

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/cer;->bYO:Z

    goto :goto_0
.end method

.method public eI(Z)V
    .locals 1

    .prologue
    .line 246
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/cer;->eK(Z)Lcom/kingroot/kinguser/au;

    move-result-object v0

    .line 247
    if-nez v0, :cond_0

    .line 252
    :goto_0
    return-void

    .line 251
    :cond_0
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/cer;->c(Lcom/kingroot/kinguser/au;)V

    goto :goto_0
.end method

.method public getGuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/kingroot/kinguser/cer;->Js:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/cer;->Js:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
