.class public Lcom/kingroot/kinguser/aix;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final asH:Ljava/lang/Object;

.field public static asI:Z

.field private static final asJ:Lcom/kingroot/kinguser/bed;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 435
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/aix;->asH:Ljava/lang/Object;

    .line 436
    const/4 v0, 0x0

    sput-boolean v0, Lcom/kingroot/kinguser/aix;->asI:Z

    .line 438
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->blm:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v3, 0x1

    new-instance v4, Lcom/kingroot/kinguser/aix$1;

    invoke-direct {v4}, Lcom/kingroot/kinguser/aix$1;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    sput-object v0, Lcom/kingroot/kinguser/aix;->asJ:Lcom/kingroot/kinguser/bed;

    return-void
.end method

.method private static a(Lcloudsdk/ext/kr/RootInfo;)I
    .locals 7

    .prologue
    const/4 v0, 0x6

    const/4 v2, 0x1

    .line 270
    if-nez p0, :cond_0

    .line 272
    invoke-static {}, Lcom/kingroot/kinguser/bbv;->WK()Lcom/kingroot/kinguser/bbv;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/bbv;->hT(I)V

    .line 318
    :goto_0
    return v0

    .line 275
    :cond_0
    const/16 v3, 0x3e7

    .line 276
    invoke-virtual {p0}, Lcloudsdk/ext/kr/RootInfo;->getMobileRootInfo()Lcloudsdk/ext/kr/RootExtInfo;

    move-result-object v4

    .line 277
    invoke-virtual {p0}, Lcloudsdk/ext/kr/RootInfo;->getPcRootInfo()Lcloudsdk/ext/kr/RootExtInfo;

    move-result-object v5

    .line 278
    const/4 v1, 0x0

    .line 279
    if-eqz v4, :cond_4

    .line 281
    iget v6, v4, Lcloudsdk/ext/kr/RootExtInfo;->canRoot:I

    if-ne v6, v2, :cond_3

    .line 283
    invoke-static {v4}, Lcom/kingroot/kinguser/bbs;->b(Lcloudsdk/ext/kr/RootExtInfo;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 285
    const/4 v0, 0x5

    .line 296
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 298
    invoke-static {v5}, Lcom/kingroot/kinguser/bbs;->b(Lcloudsdk/ext/kr/RootExtInfo;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, v5, Lcloudsdk/ext/kr/RootExtInfo;->canRoot:I

    if-ne v0, v2, :cond_5

    .line 300
    const/4 v0, 0x7

    .line 317
    :cond_2
    :goto_2
    invoke-static {}, Lcom/kingroot/kinguser/bbv;->WK()Lcom/kingroot/kinguser/bbv;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/bbv;->hT(I)V

    goto :goto_0

    :cond_3
    move v1, v2

    move v0, v3

    .line 291
    goto :goto_1

    :cond_4
    move v1, v2

    move v0, v3

    .line 294
    goto :goto_1

    .line 303
    :cond_5
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/akj;->aT(Landroid/content/Context;)Lcom/kingroot/kinguser/akj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/akj;->AN()V

    .line 305
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/akj;->aT(Landroid/content/Context;)Lcom/kingroot/kinguser/akj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/akj;->AI()Z

    move-result v0

    .line 306
    if-eqz v0, :cond_6

    .line 308
    invoke-static {}, Lcom/kingroot/kinguser/bbk;->Wo()Lcom/kingroot/kinguser/bbk;

    move-result-object v0

    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bbk;->bk(Landroid/content/Context;)V

    .line 309
    const/16 v0, 0x8

    goto :goto_2

    .line 311
    :cond_6
    const/16 v0, 0x9

    goto :goto_2
.end method

.method public static aP(Z)I
    .locals 3

    .prologue
    .line 129
    const/4 v0, 0x0

    .line 132
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/aks;->BQ()Z

    move-result v1

    if-nez v1, :cond_0

    .line 134
    const/16 v0, 0x10

    .line 138
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/aix;->yF()Ljava/lang/String;

    move-result-object v1

    .line 139
    if-nez v1, :cond_5

    .line 140
    or-int/lit8 v0, v0, 0x1

    .line 151
    :cond_1
    :goto_0
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/kingroot/kinguser/abc;->isRootPermition(Z)Z

    move-result v1

    .line 152
    if-eqz p0, :cond_2

    if-nez v1, :cond_2

    .line 153
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/kingroot/kinguser/abc;->isRootPermition(Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 157
    :cond_2
    if-nez v1, :cond_6

    .line 159
    or-int/lit8 v0, v0, 0x2

    .line 186
    :cond_3
    :goto_1
    if-nez v0, :cond_4

    .line 187
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/aks;->bI(Z)V

    .line 191
    :cond_4
    invoke-static {}, Lcom/kingroot/kinguser/bbv;->WK()Lcom/kingroot/kinguser/bbv;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/bbv;->hV(I)V

    .line 193
    return v0

    .line 142
    :cond_5
    if-eqz p0, :cond_1

    .line 145
    :try_start_1
    invoke-static {v1}, Lcom/kingroot/kinguser/aix;->gl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 146
    or-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 162
    :cond_6
    invoke-static {}, Lcom/kingroot/kinguser/aaw;->qv()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 164
    or-int/lit8 v0, v0, 0x40

    .line 167
    :cond_7
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/aio;->d(Lcom/kingroot/kinguser/abc;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    if-nez v1, :cond_3

    .line 169
    or-int/lit8 v0, v0, 0x20

    goto :goto_1

    .line 181
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public static aQ(Z)I
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 361
    invoke-static {p0}, Lcom/kingroot/kinguser/aix;->aP(Z)I

    move-result v0

    .line 363
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/aks;->DA()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 364
    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/yx;->B(II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 365
    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/yx;->B(II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 366
    invoke-static {v0, v5}, Lcom/kingroot/kinguser/yx;->B(II)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/aix;->yG()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 367
    new-instance v1, Lcom/kingroot/kinguser/ajq;

    invoke-direct {v1}, Lcom/kingroot/kinguser/ajq;-><init>()V

    invoke-virtual {v1, v4, v4}, Lcom/kingroot/kinguser/ajq;->g(ZZ)V

    .line 368
    invoke-static {}, Lcom/kingroot/kinguser/ajb;->yT()Lcom/kingroot/kinguser/ajb;

    move-result-object v1

    new-instance v2, Lcom/kingroot/kinguser/common/RootPowerInspectUtil$1;

    invoke-direct {v2}, Lcom/kingroot/kinguser/common/RootPowerInspectUtil$1;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v1, v4, v5, v2, v3}, Lcom/kingroot/kinguser/ajb;->checkSync(ZZLcom/kingroot/kinguser/common/check/ISuCheckListener;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 383
    invoke-static {p0}, Lcom/kingroot/kinguser/aix;->aP(Z)I

    move-result v0

    .line 389
    :cond_1
    return v0
.end method

.method static synthetic b(Lcloudsdk/ext/kr/RootInfo;)I
    .locals 1

    .prologue
    .line 49
    invoke-static {p0}, Lcom/kingroot/kinguser/aix;->a(Lcloudsdk/ext/kr/RootInfo;)I

    move-result v0

    return v0
.end method

.method public static dG(I)I
    .locals 3

    .prologue
    const/4 v1, 0x4

    const/4 v0, 0x1

    .line 241
    invoke-static {v0, p0}, Lcom/kingroot/kinguser/yx;->B(II)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1, p0}, Lcom/kingroot/kinguser/yx;->B(II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 242
    :cond_0
    const/16 v0, 0x20

    invoke-static {v0, p0}, Lcom/kingroot/kinguser/yx;->B(II)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 259
    :cond_1
    :goto_0
    return v0

    .line 247
    :cond_2
    const/4 v0, 0x3

    goto :goto_0

    .line 250
    :cond_3
    const/16 v1, 0x40

    invoke-static {v1, p0}, Lcom/kingroot/kinguser/yx;->B(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 252
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static dH(I)I
    .locals 3

    .prologue
    const/16 v1, 0xc

    const/16 v2, 0xb

    const/16 v0, 0xa

    .line 328
    packed-switch p0, :pswitch_data_0

    .line 338
    invoke-static {}, Lcom/kingroot/kinguser/bbv;->WK()Lcom/kingroot/kinguser/bbv;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/bbv;->hU(I)V

    move v0, v2

    .line 339
    :goto_0
    return v0

    .line 332
    :pswitch_0
    invoke-static {}, Lcom/kingroot/kinguser/bbv;->WK()Lcom/kingroot/kinguser/bbv;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/bbv;->hU(I)V

    goto :goto_0

    .line 335
    :pswitch_1
    invoke-static {}, Lcom/kingroot/kinguser/bbv;->WK()Lcom/kingroot/kinguser/bbv;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bbv;->hU(I)V

    move v0, v1

    .line 336
    goto :goto_0

    .line 328
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static dI(I)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 419
    const/4 v2, 0x2

    invoke-static {p0, v2}, Lcom/kingroot/kinguser/yx;->B(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 433
    :cond_0
    :goto_0
    return v0

    .line 424
    :cond_1
    invoke-static {p0, v1}, Lcom/kingroot/kinguser/yx;->B(II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 429
    const/4 v2, 0x4

    invoke-static {p0, v2}, Lcom/kingroot/kinguser/yx;->B(II)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 433
    goto :goto_0
.end method

.method private static gl(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 105
    invoke-static {p0}, Lcom/kingroot/kinguser/bdl;->kR(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    invoke-static {p0}, Lcom/kingroot/kinguser/abj;->en(Ljava/lang/String;)Z

    move-result v0

    .line 117
    :goto_0
    return v0

    .line 110
    :cond_0
    invoke-static {p0}, Lcom/kingroot/kinguser/bdl;->kS(Ljava/lang/String;)Lcom/kingroot/kinguser/bdl$a;

    move-result-object v0

    .line 111
    if-nez v0, :cond_1

    .line 113
    const/4 v0, 0x0

    goto :goto_0

    .line 117
    :cond_1
    const-string v1, "kinguser"

    iget-object v0, v0, Lcom/kingroot/kinguser/bdl$a;->category:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static q(IZ)I
    .locals 2

    .prologue
    const/4 v0, 0x6

    .line 206
    const/4 v1, 0x2

    invoke-static {v1, p0}, Lcom/kingroot/kinguser/yx;->B(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 207
    if-nez p1, :cond_0

    .line 228
    :goto_0
    return v0

    .line 211
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/aix;->yH()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    invoke-static {}, Lcom/kingroot/kinguser/bbs;->WD()Lcom/kingroot/kinguser/bbs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bbs;->WE()Lcloudsdk/ext/kr/RootInfo;

    move-result-object v0

    .line 220
    invoke-static {v0}, Lcom/kingroot/kinguser/aix;->a(Lcloudsdk/ext/kr/RootInfo;)I

    move-result v0

    .line 227
    :goto_1
    invoke-static {}, Lcom/kingroot/kinguser/bbv;->WK()Lcom/kingroot/kinguser/bbv;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/bbv;->hT(I)V

    goto :goto_0

    .line 212
    :catch_0
    move-exception v1

    .line 215
    invoke-static {}, Lcom/kingroot/kinguser/bbv;->WK()Lcom/kingroot/kinguser/bbv;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/bbv;->hT(I)V

    goto :goto_0

    .line 223
    :cond_1
    invoke-static {p0}, Lcom/kingroot/kinguser/aix;->dG(I)I

    move-result v0

    goto :goto_1
.end method

.method private static yF()Ljava/lang/String;
    .locals 6
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 88
    const-string v0, "PATH"

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 89
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 90
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/su"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 92
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 96
    :goto_1
    return-object v0

    .line 89
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static yG()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 397
    invoke-static {}, Lcom/kingroot/kinguser/abf;->qP()Z

    move-result v1

    if-nez v1, :cond_1

    .line 399
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/kingroot/kinguser/abu;->ZV:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 400
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 411
    :cond_0
    :goto_0
    return v0

    .line 405
    :cond_1
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/kingroot/kinguser/abu;->ZW:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 406
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 411
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static yH()V
    .locals 4

    .prologue
    .line 471
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    sget-object v1, Lcom/kingroot/kinguser/aix;->asJ:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 472
    sget-object v1, Lcom/kingroot/kinguser/aix;->asH:Ljava/lang/Object;

    monitor-enter v1

    .line 475
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/aix;->asH:Ljava/lang/Object;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 476
    monitor-exit v1

    .line 477
    return-void

    .line 476
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
