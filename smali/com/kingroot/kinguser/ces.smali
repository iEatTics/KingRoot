.class public Lcom/kingroot/kinguser/ces;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/cfu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/ces$a;
    }
.end annotation


# static fields
.field private static bYV:Lcom/kingroot/kinguser/ces;

.field private static bZb:Lcom/kingroot/kinguser/ces$a;

.field private static bZc:Lcom/kingroot/kinguser/ces$a;


# instance fields
.field private final avz:Ljava/lang/Object;

.field private bYW:Lcom/kingroot/kinguser/ceu;

.field private bYX:Ljava/lang/String;

.field private bYY:Ljava/lang/String;

.field private bYZ:Lcom/kingroot/kinguser/ces$a;

.field private bYx:Z

.field private bZa:Lcom/kingroot/kinguser/ces$a;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 54
    sput-object v0, Lcom/kingroot/kinguser/ces;->bYV:Lcom/kingroot/kinguser/ces;

    .line 362
    sput-object v0, Lcom/kingroot/kinguser/ces;->bZb:Lcom/kingroot/kinguser/ces$a;

    .line 363
    sput-object v0, Lcom/kingroot/kinguser/ces;->bZc:Lcom/kingroot/kinguser/ces$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLcom/kingroot/kinguser/ceu;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/ces;->bYx:Z

    .line 188
    const-string v0, "mazu.3g.qq.com"

    iput-object v0, p0, Lcom/kingroot/kinguser/ces;->bYX:Ljava/lang/String;

    .line 190
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/ces;->avz:Ljava/lang/Object;

    .line 191
    const-string v0, "key_notset"

    iput-object v0, p0, Lcom/kingroot/kinguser/ces;->bYY:Ljava/lang/String;

    .line 198
    iput-object p1, p0, Lcom/kingroot/kinguser/ces;->mContext:Landroid/content/Context;

    .line 199
    iput-boolean p2, p0, Lcom/kingroot/kinguser/ces;->bYx:Z

    .line 200
    iput-object p3, p0, Lcom/kingroot/kinguser/ces;->bYW:Lcom/kingroot/kinguser/ceu;

    .line 201
    iget-boolean v0, p0, Lcom/kingroot/kinguser/ces;->bYx:Z

    if-eqz v0, :cond_1

    .line 202
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    iput-object p4, p0, Lcom/kingroot/kinguser/ces;->bYX:Ljava/lang/String;

    .line 216
    :goto_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/ces;->alf()V

    .line 222
    invoke-static {p0}, Lcom/kingroot/kinguser/ces;->a(Lcom/kingroot/kinguser/ces;)V

    .line 223
    return-void

    .line 205
    :cond_0
    const-string v0, "mazutest.3g.qq.com"

    iput-object v0, p0, Lcom/kingroot/kinguser/ces;->bYX:Ljava/lang/String;

    goto :goto_0

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/ces;->bYW:Lcom/kingroot/kinguser/ceu;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ceu;->fX()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 209
    const-string v0, "mazu-hk.3g.qq.com"

    iput-object v0, p0, Lcom/kingroot/kinguser/ces;->bYX:Ljava/lang/String;

    goto :goto_0

    .line 211
    :cond_2
    const-string v0, "mazu.3g.qq.com"

    iput-object v0, p0, Lcom/kingroot/kinguser/ces;->bYX:Ljava/lang/String;

    goto :goto_0
.end method

.method private N(Ljava/lang/String;Z)Lcom/kingroot/kinguser/ces$a;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 494
    .line 497
    iget-object v0, p0, Lcom/kingroot/kinguser/ces;->bYW:Lcom/kingroot/kinguser/ceu;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/ceu;->cd(Ljava/lang/String;)Lcom/kingroot/kinguser/ces$a;

    move-result-object v0

    .line 498
    if-eqz v0, :cond_1

    .line 499
    invoke-virtual {v0}, Lcom/kingroot/kinguser/ces$a;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 513
    :goto_0
    return-object v0

    .line 504
    :cond_0
    if-eqz p2, :cond_1

    .line 506
    iget-object v0, p0, Lcom/kingroot/kinguser/ces;->bYW:Lcom/kingroot/kinguser/ceu;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, p1, v2, v3, v1}, Lcom/kingroot/kinguser/ceu;->b(Ljava/lang/String;JLjava/util/List;)V

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private static O(Ljava/lang/String;Z)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 611
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 625
    :cond_0
    :goto_0
    return v0

    .line 615
    :cond_1
    const-string v1, ":"

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 616
    if-lez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_0

    .line 620
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 621
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 622
    if-nez p1, :cond_2

    invoke-static {v2}, Lcom/kingroot/kinguser/ces;->nO(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 623
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static a(Lcom/kingroot/kinguser/ceu;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ceu;->fX()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 69
    const-string v0, "mazuburst-hk.3g.qq.com"

    .line 71
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "mazuburst.3g.qq.com"

    goto :goto_0
.end method

.method public static a(Lcom/kingroot/kinguser/ces;)V
    .locals 0

    .prologue
    .line 56
    sput-object p0, Lcom/kingroot/kinguser/ces;->bYV:Lcom/kingroot/kinguser/ces;

    .line 57
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/kingroot/kinguser/ces$a;Z)V
    .locals 5

    .prologue
    .line 337
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/kingroot/kinguser/ces$a;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 353
    :cond_0
    :goto_0
    return-void

    .line 343
    :cond_1
    new-instance v0, Lcom/kingroot/kinguser/ces$a;

    iget-wide v2, p2, Lcom/kingroot/kinguser/ces$a;->bZd:J

    iget-object v1, p2, Lcom/kingroot/kinguser/ces$a;->bZe:Ljava/util/List;

    iget-boolean v4, p2, Lcom/kingroot/kinguser/ces$a;->bZf:Z

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/kingroot/kinguser/ces$a;-><init>(JLjava/util/List;Z)V

    .line 344
    if-eqz p3, :cond_2

    .line 345
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/ces;->eM(Z)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/ces$a;->a(Lcom/kingroot/kinguser/ces$a;Ljava/util/List;)V

    .line 348
    :cond_2
    iget-object v1, p0, Lcom/kingroot/kinguser/ces;->avz:Ljava/lang/Object;

    monitor-enter v1

    .line 349
    :try_start_0
    iput-object v0, p0, Lcom/kingroot/kinguser/ces;->bYZ:Lcom/kingroot/kinguser/ces$a;

    .line 350
    iget-object v0, p0, Lcom/kingroot/kinguser/ces;->bYZ:Lcom/kingroot/kinguser/ces$a;

    invoke-static {v0}, Lcom/kingroot/kinguser/ces$a;->a(Lcom/kingroot/kinguser/ces$a;)Lcom/kingroot/kinguser/ces$a;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ces;->bZa:Lcom/kingroot/kinguser/ces$a;

    .line 352
    iput-object p1, p0, Lcom/kingroot/kinguser/ces;->bYY:Ljava/lang/String;

    .line 353
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static ale()Lcom/kingroot/kinguser/ces;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/kingroot/kinguser/ces;->bYV:Lcom/kingroot/kinguser/ces;

    return-object v0
.end method

.method private alf()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 297
    invoke-direct {p0}, Lcom/kingroot/kinguser/ces;->alh()Ljava/lang/String;

    move-result-object v0

    .line 298
    iget-object v1, p0, Lcom/kingroot/kinguser/ces;->avz:Ljava/lang/Object;

    monitor-enter v1

    .line 299
    :try_start_0
    iget-object v2, p0, Lcom/kingroot/kinguser/ces;->bYY:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/kingroot/kinguser/ces;->bYY:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/kingroot/kinguser/ces;->bYZ:Lcom/kingroot/kinguser/ces$a;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/kingroot/kinguser/ces;->bYZ:Lcom/kingroot/kinguser/ces$a;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/ces$a;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 302
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    :goto_0
    return-void

    .line 304
    :cond_0
    monitor-exit v1

    .line 306
    invoke-direct {p0, v0, v3}, Lcom/kingroot/kinguser/ces;->N(Ljava/lang/String;Z)Lcom/kingroot/kinguser/ces$a;

    move-result-object v1

    .line 307
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/ces$a;->isValid()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 308
    invoke-direct {p0, v0, v1, v3}, Lcom/kingroot/kinguser/ces;->a(Ljava/lang/String;Lcom/kingroot/kinguser/ces$a;Z)V

    goto :goto_0

    .line 304
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 310
    :cond_1
    invoke-direct {p0}, Lcom/kingroot/kinguser/ces;->alg()V

    goto :goto_0
.end method

.method private alg()V
    .locals 3

    .prologue
    .line 317
    iget-object v1, p0, Lcom/kingroot/kinguser/ces;->avz:Ljava/lang/Object;

    monitor-enter v1

    .line 319
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ces;->bYY:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/ces;->bYY:Ljava/lang/String;

    const-string v2, "key_default"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/ces;->bYZ:Lcom/kingroot/kinguser/ces$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/ces;->bYZ:Lcom/kingroot/kinguser/ces$a;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ces$a;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    :goto_0
    return-void

    .line 324
    :cond_0
    monitor-exit v1

    .line 326
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/ces;->eL(Z)Lcom/kingroot/kinguser/ces$a;

    move-result-object v0

    .line 327
    const-string v1, "key_default"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/kingroot/kinguser/ces;->a(Ljava/lang/String;Lcom/kingroot/kinguser/ces$a;Z)V

    goto :goto_0

    .line 324
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private alh()Ljava/lang/String;
    .locals 4

    .prologue
    .line 523
    const-string v0, ""

    .line 526
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/kingroot/kinguser/ces;->bYx:Z

    if-eqz v0, :cond_0

    const-string v0, "t_"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 528
    iget-object v0, p0, Lcom/kingroot/kinguser/ces;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/kingroot/kinguser/ceq;->cs(Landroid/content/Context;)I

    move-result v0

    .line 530
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 531
    invoke-static {}, Lcom/kingroot/kinguser/cgy;->getSSID()Ljava/lang/String;

    move-result-object v0

    .line 532
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "wifi_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 536
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 538
    return-object v0

    .line 526
    :cond_0
    const-string v0, "r_"

    goto :goto_0

    .line 534
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "apn_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private alj()I
    .locals 3

    .prologue
    const/4 v0, 0x2

    .line 807
    const/4 v1, 0x4

    sget v2, Lcom/kingroot/kinguser/cef;->bXX:I

    if-ne v1, v2, :cond_1

    .line 820
    :cond_0
    :goto_0
    return v0

    .line 812
    :cond_1
    iget-object v1, p0, Lcom/kingroot/kinguser/ces;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/kingroot/kinguser/cgt;->cz(Landroid/content/Context;)I

    move-result v1

    .line 813
    const/4 v2, -0x1

    if-eq v2, v1, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private eL(Z)Lcom/kingroot/kinguser/ces$a;
    .locals 6

    .prologue
    .line 365
    if-eqz p1, :cond_0

    sget-object v0, Lcom/kingroot/kinguser/ces;->bZb:Lcom/kingroot/kinguser/ces$a;

    if-eqz v0, :cond_0

    .line 366
    sget-object v0, Lcom/kingroot/kinguser/ces;->bZb:Lcom/kingroot/kinguser/ces$a;

    .line 402
    :goto_0
    return-object v0

    .line 368
    :cond_0
    if-nez p1, :cond_1

    sget-object v0, Lcom/kingroot/kinguser/ces;->bZc:Lcom/kingroot/kinguser/ces$a;

    if-eqz v0, :cond_1

    .line 369
    sget-object v0, Lcom/kingroot/kinguser/ces;->bZc:Lcom/kingroot/kinguser/ces$a;

    goto :goto_0

    .line 372
    :cond_1
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ces;->eM(Z)Ljava/util/List;

    move-result-object v0

    .line 373
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ces;->eN(Z)Ljava/util/List;

    move-result-object v1

    .line 375
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 387
    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 388
    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 393
    new-instance v0, Lcom/kingroot/kinguser/ces$a;

    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    invoke-direct {v0, v4, v5, v2, v1}, Lcom/kingroot/kinguser/ces$a;-><init>(JLjava/util/List;Z)V

    .line 396
    if-eqz p1, :cond_2

    .line 397
    sput-object v0, Lcom/kingroot/kinguser/ces;->bZb:Lcom/kingroot/kinguser/ces$a;

    goto :goto_0

    .line 399
    :cond_2
    sput-object v0, Lcom/kingroot/kinguser/ces;->bZc:Lcom/kingroot/kinguser/ces$a;

    goto :goto_0
.end method

.method private eM(Z)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 406
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 407
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 408
    if-eqz p1, :cond_0

    .line 409
    const/16 v2, 0x1bb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 416
    :goto_0
    iget-object v2, p0, Lcom/kingroot/kinguser/ces;->bYX:Ljava/lang/String;

    .line 417
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 418
    const-string v4, "%s:%d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v6, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 413
    :cond_0
    const/16 v2, 0x50

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 421
    :cond_1
    return-object v1
.end method

.method private eN(Z)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 430
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 431
    iget-boolean v0, p0, Lcom/kingroot/kinguser/ces;->bYx:Z

    if-eqz v0, :cond_0

    move-object v0, v2

    .line 485
    :goto_0
    return-object v0

    .line 435
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 436
    if-eqz p1, :cond_1

    .line 437
    const/16 v0, 0x1bb

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 444
    :goto_1
    iget-object v0, p0, Lcom/kingroot/kinguser/ces;->bYW:Lcom/kingroot/kinguser/ceu;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ceu;->fX()I

    move-result v0

    if-ne v0, v6, :cond_2

    .line 452
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 453
    const-string v3, "%s:%d"

    new-array v4, v8, [Ljava/lang/Object;

    const-string v5, "203.205.143.147"

    aput-object v5, v4, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 454
    const-string v3, "%s:%d"

    new-array v4, v8, [Ljava/lang/Object;

    const-string v5, "203.205.146.46"

    aput-object v5, v4, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 455
    const-string v3, "%s:%d"

    new-array v4, v8, [Ljava/lang/Object;

    const-string v5, "203.205.146.45"

    aput-object v5, v4, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 441
    :cond_1
    const/16 v0, 0x50

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 465
    :cond_2
    invoke-direct {p0}, Lcom/kingroot/kinguser/ces;->alj()I

    move-result v0

    .line 467
    packed-switch v0, :pswitch_data_0

    .line 476
    const-string v0, "120.198.203.156"

    move-object v1, v0

    .line 480
    :goto_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 481
    const-string v4, "%s:%d"

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v1, v5, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 469
    :pswitch_0
    const-string v0, "163.177.71.153"

    move-object v1, v0

    .line 470
    goto :goto_3

    .line 472
    :pswitch_1
    const-string v0, "183.232.125.162"

    move-object v1, v0

    .line 473
    goto :goto_3

    :cond_3
    move-object v0, v2

    .line 485
    goto/16 :goto_0

    .line 467
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private eO(Z)V
    .locals 2

    .prologue
    .line 661
    iget-object v1, p0, Lcom/kingroot/kinguser/ces;->avz:Ljava/lang/Object;

    monitor-enter v1

    .line 663
    if-eqz p1, :cond_1

    .line 664
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ces;->bYZ:Lcom/kingroot/kinguser/ces$a;

    .line 668
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 670
    if-nez v0, :cond_2

    .line 671
    invoke-direct {p0}, Lcom/kingroot/kinguser/ces;->alf()V

    .line 677
    :cond_0
    :goto_1
    return-void

    .line 666
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/ces;->bZa:Lcom/kingroot/kinguser/ces$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 668
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 673
    :cond_2
    invoke-virtual {v0}, Lcom/kingroot/kinguser/ces$a;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 674
    invoke-direct {p0}, Lcom/kingroot/kinguser/ces;->alg()V

    goto :goto_1
.end method

.method private lb(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 542
    const-string v0, ""

    .line 545
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/kingroot/kinguser/ces;->bYx:Z

    if-eqz v0, :cond_0

    const-string v0, "t_"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 547
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 549
    invoke-static {}, Lcom/kingroot/kinguser/cgy;->anj()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 550
    invoke-static {}, Lcom/kingroot/kinguser/cgy;->getSSID()Ljava/lang/String;

    move-result-object v0

    .line 551
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "wifi_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 558
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 560
    return-object v0

    .line 545
    :cond_0
    const-string v0, "r_"

    goto :goto_0

    .line 553
    :cond_1
    const-string v0, "wifi_nonessid"

    goto :goto_1

    .line 556
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "apn_"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static n(Ljava/util/List;Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 569
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 571
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 572
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 573
    invoke-static {v0, p1}, Lcom/kingroot/kinguser/ces;->O(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 574
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 581
    :cond_1
    return-object v1
.end method

.method private static nN(Ljava/lang/String;)Lcom/kingroot/kinguser/cfv$b;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 585
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 602
    :cond_0
    :goto_0
    return-object v0

    .line 589
    :cond_1
    const-string v1, ":"

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 590
    if-lez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_0

    .line 594
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 595
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 596
    invoke-static {v1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 598
    new-instance v0, Lcom/kingroot/kinguser/cfv$b;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v2, v1}, Lcom/kingroot/kinguser/cfv$b;-><init>(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private static nO(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/16 v5, 0xff

    const/4 v0, 0x0

    .line 635
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 657
    :cond_0
    :goto_0
    return v0

    .line 640
    :cond_1
    :try_start_0
    const-string v2, "\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}"

    invoke-virtual {p0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 641
    const-string v2, "\\."

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 642
    array-length v3, v2

    const/4 v4, 0x4

    if-lt v3, v4, :cond_0

    .line 646
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-gt v3, v5, :cond_0

    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-gt v3, v5, :cond_0

    const/4 v3, 0x2

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-gt v3, v5, :cond_0

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-gt v2, v5, :cond_0

    move v0, v1

    .line 650
    goto :goto_0

    .line 654
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic nP(Ljava/lang/String;)Lcom/kingroot/kinguser/cfv$b;
    .locals 1

    .prologue
    .line 31
    invoke-static {p0}, Lcom/kingroot/kinguser/ces;->nN(Ljava/lang/String;)Lcom/kingroot/kinguser/cfv$b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public KD()V
    .locals 0

    .prologue
    .line 234
    invoke-direct {p0}, Lcom/kingroot/kinguser/ces;->alf()V

    .line 235
    return-void
.end method

.method public a(JILcom/qq/taf/jce/JceStruct;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 249
    if-nez p4, :cond_1

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    instance-of v0, p4, Lcom/kingroot/kinguser/ao;

    if-eqz v0, :cond_0

    .line 259
    check-cast p4, Lcom/kingroot/kinguser/ao;

    .line 273
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    iget v4, p4, Lcom/kingroot/kinguser/ao;->hF:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 274
    new-instance v2, Lcom/kingroot/kinguser/ces$a;

    iget-object v3, p4, Lcom/kingroot/kinguser/ao;->hE:Ljava/util/ArrayList;

    invoke-static {v3, v6}, Lcom/kingroot/kinguser/ces;->n(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v0, v1, v3, v6}, Lcom/kingroot/kinguser/ces$a;-><init>(JLjava/util/List;Z)V

    .line 275
    invoke-virtual {v2}, Lcom/kingroot/kinguser/ces$a;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/kingroot/kinguser/ces;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/kingroot/kinguser/ceq;->cs(Landroid/content/Context;)I

    move-result v0

    .line 279
    iget v1, p4, Lcom/kingroot/kinguser/ao;->hT:I

    .line 280
    if-ne v1, v0, :cond_2

    .line 282
    invoke-direct {p0}, Lcom/kingroot/kinguser/ces;->alh()Ljava/lang/String;

    move-result-object v0

    .line 283
    iget-object v1, p0, Lcom/kingroot/kinguser/ces;->bYW:Lcom/kingroot/kinguser/ceu;

    iget-wide v4, v2, Lcom/kingroot/kinguser/ces$a;->bZd:J

    iget-object v3, v2, Lcom/kingroot/kinguser/ces$a;->bZe:Ljava/util/List;

    invoke-virtual {v1, v0, v4, v5, v3}, Lcom/kingroot/kinguser/ceu;->b(Ljava/lang/String;JLjava/util/List;)V

    .line 284
    const/4 v1, 0x1

    invoke-direct {p0, v0, v2, v1}, Lcom/kingroot/kinguser/ces;->a(Ljava/lang/String;Lcom/kingroot/kinguser/ces$a;Z)V

    goto :goto_0

    .line 289
    :cond_2
    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/ces;->lb(I)Ljava/lang/String;

    move-result-object v0

    .line 290
    iget-object v1, p0, Lcom/kingroot/kinguser/ces;->bYW:Lcom/kingroot/kinguser/ceu;

    iget-wide v4, v2, Lcom/kingroot/kinguser/ces$a;->bZd:J

    iget-object v2, v2, Lcom/kingroot/kinguser/ces$a;->bZe:Ljava/util/List;

    invoke-virtual {v1, v0, v4, v5, v2}, Lcom/kingroot/kinguser/ceu;->b(Ljava/lang/String;JLjava/util/List;)V

    goto :goto_0
.end method

.method public ali()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x7

    const/4 v2, 0x0

    .line 773
    const/4 v0, 0x0

    .line 775
    invoke-virtual {p0, v2}, Lcom/kingroot/kinguser/ces;->eP(Z)Lcom/kingroot/kinguser/cfv$b;

    move-result-object v1

    .line 776
    if-eqz v1, :cond_1

    .line 777
    invoke-virtual {v1}, Lcom/kingroot/kinguser/cfv$b;->amE()Ljava/lang/String;

    move-result-object v0

    .line 779
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v3, :cond_0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 782
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 787
    :cond_1
    if-nez v0, :cond_2

    .line 788
    iget-object v0, p0, Lcom/kingroot/kinguser/ces;->bYX:Ljava/lang/String;

    .line 789
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 794
    :cond_2
    return-object v0
.end method

.method public eP(Z)Lcom/kingroot/kinguser/cfv$b;
    .locals 2

    .prologue
    .line 681
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/ces;->eO(Z)V

    .line 683
    iget-object v1, p0, Lcom/kingroot/kinguser/ces;->avz:Ljava/lang/Object;

    monitor-enter v1

    .line 685
    if-eqz p1, :cond_0

    .line 686
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ces;->bYZ:Lcom/kingroot/kinguser/ces$a;

    .line 691
    :goto_0
    if-eqz v0, :cond_1

    .line 692
    invoke-static {v0}, Lcom/kingroot/kinguser/ces$a;->b(Lcom/kingroot/kinguser/ces$a;)Lcom/kingroot/kinguser/cfv$b;

    move-result-object v0

    monitor-exit v1

    .line 696
    :goto_1
    return-object v0

    .line 688
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ces;->bZa:Lcom/kingroot/kinguser/ces$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 694
    :cond_1
    monitor-exit v1

    .line 696
    const/4 v0, 0x0

    goto :goto_1

    .line 694
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public eQ(Z)V
    .locals 2

    .prologue
    .line 701
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/ces;->eO(Z)V

    .line 703
    iget-object v1, p0, Lcom/kingroot/kinguser/ces;->avz:Ljava/lang/Object;

    monitor-enter v1

    .line 705
    if-eqz p1, :cond_1

    .line 706
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ces;->bYZ:Lcom/kingroot/kinguser/ces$a;

    .line 711
    :goto_0
    if-eqz v0, :cond_0

    .line 712
    invoke-static {v0}, Lcom/kingroot/kinguser/ces$a;->c(Lcom/kingroot/kinguser/ces$a;)V

    .line 714
    :cond_0
    monitor-exit v1

    return-void

    .line 708
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/ces;->bZa:Lcom/kingroot/kinguser/ces$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 714
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public eR(Z)V
    .locals 2

    .prologue
    .line 719
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/ces;->eO(Z)V

    .line 721
    iget-object v1, p0, Lcom/kingroot/kinguser/ces;->avz:Ljava/lang/Object;

    monitor-enter v1

    .line 723
    if-eqz p1, :cond_1

    .line 724
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ces;->bYZ:Lcom/kingroot/kinguser/ces$a;

    .line 729
    :goto_0
    if-eqz v0, :cond_0

    .line 730
    invoke-static {v0}, Lcom/kingroot/kinguser/ces$a;->d(Lcom/kingroot/kinguser/ces$a;)V

    .line 732
    :cond_0
    monitor-exit v1

    return-void

    .line 726
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/ces;->bZa:Lcom/kingroot/kinguser/ces$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 732
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public eS(Z)V
    .locals 0

    .prologue
    .line 738
    return-void
.end method

.method public eT(Z)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 742
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/ces;->eO(Z)V

    .line 744
    iget-object v1, p0, Lcom/kingroot/kinguser/ces;->avz:Ljava/lang/Object;

    monitor-enter v1

    .line 746
    if-eqz p1, :cond_0

    .line 747
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ces;->bYZ:Lcom/kingroot/kinguser/ces$a;

    .line 752
    :goto_0
    if-eqz v0, :cond_1

    .line 753
    iget-object v0, v0, Lcom/kingroot/kinguser/ces$a;->bZe:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    monitor-exit v1

    .line 757
    :goto_1
    return-object v0

    .line 749
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ces;->bZa:Lcom/kingroot/kinguser/ces$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 755
    :cond_1
    monitor-exit v1

    .line 757
    const/4 v0, 0x0

    goto :goto_1

    .line 755
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public eU(Z)I
    .locals 1

    .prologue
    .line 762
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/ces;->eT(Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 764
    if-eqz v0, :cond_0

    .line 765
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 768
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public fB()Z
    .locals 1

    .prologue
    .line 799
    iget-boolean v0, p0, Lcom/kingroot/kinguser/ces;->bYx:Z

    return v0
.end method
