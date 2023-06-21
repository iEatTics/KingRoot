.class public Lcom/kingroot/kinguser/asw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static aNF:Lcom/kingroot/kinguser/bed;

.field private static aNG:Lcom/kingroot/kinguser/bed;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 116
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/asw$1;

    invoke-direct {v3}, Lcom/kingroot/kinguser/asw$1;-><init>()V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    sput-object v0, Lcom/kingroot/kinguser/asw;->aNF:Lcom/kingroot/kinguser/bed;

    .line 126
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->bll:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/asw$2;

    invoke-direct {v3}, Lcom/kingroot/kinguser/asw$2;-><init>()V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    sput-object v0, Lcom/kingroot/kinguser/asw;->aNG:Lcom/kingroot/kinguser/bed;

    return-void
.end method

.method public static OA()V
    .locals 2

    .prologue
    .line 145
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->CW()Z

    move-result v0

    .line 146
    if-eqz v0, :cond_0

    .line 148
    invoke-static {}, Lcom/kingroot/kinguser/asn;->Oh()Lcom/kingroot/kinguser/asn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/asn;->Oi()Ljava/util/Set;

    .line 149
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    sget-object v1, Lcom/kingroot/kinguser/asw;->aNF:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 151
    :cond_0
    return-void
.end method

.method public static OB()V
    .locals 6

    .prologue
    .line 163
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->CW()Z

    move-result v0

    .line 164
    if-eqz v0, :cond_1

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/vb;->R(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 175
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->CV()J

    move-result-wide v0

    .line 176
    const-wide/32 v4, 0x5265c00

    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/acu;->b(JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/aks;->aZ(J)V

    .line 183
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    sget-object v1, Lcom/kingroot/kinguser/asw;->aNG:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    goto :goto_0
.end method

.method private static OC()V
    .locals 6

    .prologue
    .line 192
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/vb;->O(Landroid/content/Context;)B

    move-result v0

    .line 197
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 199
    invoke-static {}, Lcom/kingroot/kinguser/asw;->OD()Ljava/util/List;

    move-result-object v0

    .line 211
    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/kingroot/kinguser/asw;->be(Ljava/util/List;)V

    .line 214
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 215
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v4, 0x0

    new-instance v5, Lcom/kingroot/kinguser/asw$3;

    invoke-direct {v5}, Lcom/kingroot/kinguser/asw$3;-><init>()V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 226
    :cond_1
    return-void

    .line 203
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/asw;->OE()Ljava/util/List;

    move-result-object v0

    .line 204
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    invoke-static {}, Lcom/kingroot/kinguser/asw;->OD()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method private static OD()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 234
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zh;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 235
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v2, :cond_1

    .line 237
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 262
    :goto_0
    return-object v0

    .line 241
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/asn;->Oh()Lcom/kingroot/kinguser/asn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/asn;->Oi()Ljava/util/Set;

    move-result-object v3

    .line 243
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 244
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 246
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    move v1, v2

    .line 247
    :goto_2
    if-nez v1, :cond_2

    .line 252
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 246
    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    .line 258
    :cond_4
    invoke-interface {v4, v3}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 259
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 260
    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method private static OE()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 271
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zh;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 272
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v3, :cond_1

    .line 274
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 321
    :goto_0
    return-object v0

    .line 277
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 278
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 279
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 282
    :try_start_0
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    move v2, v3

    .line 283
    :goto_2
    if-nez v2, :cond_2

    .line 287
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/kingroot/kinguser/aaz;->dZ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 288
    new-instance v6, Lcom/kingroot/kinguser/ep;

    invoke-direct {v6}, Lcom/kingroot/kinguser/ep;-><init>()V

    .line 289
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v0, v6, Lcom/kingroot/kinguser/ep;->packageName:Ljava/lang/String;

    .line 290
    iput-object v2, v6, Lcom/kingroot/kinguser/ep;->cert:Ljava/lang/String;

    .line 291
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 293
    :catch_0
    move-exception v0

    goto :goto_1

    .line 282
    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    .line 298
    :cond_4
    new-instance v0, Lcom/kingroot/kinguser/bm;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bm;-><init>()V

    .line 299
    iput-object v4, v0, Lcom/kingroot/kinguser/bm;->kB:Ljava/util/ArrayList;

    .line 301
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 304
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0, v2}, Lcom/kingroot/kinguser/aju;->a(Landroid/content/Context;Lcom/kingroot/kinguser/bm;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v0

    .line 305
    if-nez v0, :cond_6

    .line 306
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/cy;

    .line 307
    if-eqz v0, :cond_6

    iget-object v2, v0, Lcom/kingroot/kinguser/cy;->kB:Ljava/util/ArrayList;

    if-eqz v2, :cond_6

    .line 308
    iget-object v0, v0, Lcom/kingroot/kinguser/cy;->kB:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ep;

    .line 309
    if-eqz v0, :cond_5

    iget-object v3, v0, Lcom/kingroot/kinguser/ep;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 313
    iget-object v0, v0, Lcom/kingroot/kinguser/ep;->packageName:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    move-object v0, v1

    .line 321
    goto :goto_0
.end method

.method public static OF()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 328
    invoke-static {}, Lcom/kingroot/kinguser/asw;->OD()Ljava/util/List;

    move-result-object v0

    .line 329
    invoke-static {}, Lcom/kingroot/kinguser/asw;->OE()Ljava/util/List;

    move-result-object v1

    .line 330
    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 331
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 332
    return-object v0
.end method

.method private static OG()V
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 342
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zh;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 343
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v2, :cond_1

    .line 419
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/asw;->OH()Ljava/util/List;

    move-result-object v4

    .line 348
    invoke-static {}, Lcom/kingroot/kinguser/asw;->OI()Ljava/util/List;

    move-result-object v5

    .line 352
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 354
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 357
    :try_start_0
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    move v1, v2

    .line 358
    :goto_2
    if-nez v1, :cond_2

    .line 362
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v5, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 366
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/kingroot/kinguser/aaz;->dZ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 367
    new-instance v8, Lcom/kingroot/kinguser/ep;

    invoke-direct {v8}, Lcom/kingroot/kinguser/ep;-><init>()V

    .line 368
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v0, v8, Lcom/kingroot/kinguser/ep;->packageName:Ljava/lang/String;

    .line 369
    iput-object v1, v8, Lcom/kingroot/kinguser/ep;->cert:Ljava/lang/String;

    .line 370
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 372
    :catch_0
    move-exception v0

    goto :goto_1

    :cond_3
    move v1, v3

    .line 357
    goto :goto_2

    .line 378
    :cond_4
    new-instance v0, Lcom/kingroot/kinguser/bm;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bm;-><init>()V

    .line 379
    iput-object v6, v0, Lcom/kingroot/kinguser/bm;->kB:Ljava/util/ArrayList;

    .line 381
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 383
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 386
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0, v1}, Lcom/kingroot/kinguser/aju;->a(Landroid/content/Context;Lcom/kingroot/kinguser/bm;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v0

    .line 387
    if-nez v0, :cond_6

    .line 388
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/cy;

    .line 389
    if-eqz v0, :cond_6

    iget-object v1, v0, Lcom/kingroot/kinguser/cy;->kB:Ljava/util/ArrayList;

    if-eqz v1, :cond_6

    .line 390
    iget-object v0, v0, Lcom/kingroot/kinguser/cy;->kB:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ep;

    .line 391
    if-eqz v0, :cond_5

    iget-object v4, v0, Lcom/kingroot/kinguser/ep;->packageName:Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 395
    iget-object v0, v0, Lcom/kingroot/kinguser/ep;->packageName:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 404
    :cond_6
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 405
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v4, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v5, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v6, Lcom/kingroot/kinguser/asw$4;

    invoke-direct {v6}, Lcom/kingroot/kinguser/asw$4;-><init>()V

    invoke-direct {v1, v4, v5, v3, v6}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 418
    :cond_7
    invoke-static {v2}, Lcom/kingroot/kinguser/asw;->be(Ljava/util/List;)V

    goto/16 :goto_0
.end method

.method public static declared-synchronized OH()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 534
    const-class v1, Lcom/kingroot/kinguser/asw;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/asw;->OJ()Lcom/kingroot/kinguser/ate;

    move-result-object v0

    invoke-interface {v0}, Lcom/kingroot/kinguser/ate;->OH()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized OI()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 543
    const-class v1, Lcom/kingroot/kinguser/asw;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/asw;->OJ()Lcom/kingroot/kinguser/ate;

    move-result-object v0

    invoke-interface {v0}, Lcom/kingroot/kinguser/ate;->OI()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static OJ()Lcom/kingroot/kinguser/ate;
    .locals 1

    .prologue
    .line 547
    invoke-static {}, Lcom/kingroot/kinguser/asz;->OL()Lcom/kingroot/kinguser/asz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/asz;->OM()Lcom/kingroot/kinguser/ate;

    move-result-object v0

    return-object v0
.end method

.method public static be(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 488
    invoke-static {}, Lcom/kingroot/kinguser/asw;->OJ()Lcom/kingroot/kinguser/ate;

    move-result-object v0

    const-string v1, "gb_localAdded"

    invoke-interface {v0, p0, v1}, Lcom/kingroot/kinguser/ate;->d(Ljava/util/List;Ljava/lang/String;)V

    .line 490
    invoke-static {}, Lcom/kingroot/kinguser/asw;->OJ()Lcom/kingroot/kinguser/ate;

    move-result-object v0

    const-string v1, "gb_localDeleted"

    invoke-interface {v0, p0, v1}, Lcom/kingroot/kinguser/ate;->e(Ljava/util/List;Ljava/lang/String;)V

    .line 491
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/util/List;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;",
            ">;)",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;"
        }
    .end annotation

    .prologue
    const-wide/32 v4, 0x5265c00

    const/4 v1, 0x0

    .line 53
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-object v1

    .line 57
    :cond_1
    const/4 v0, 0x1

    .line 60
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/kingroot/kinguser/aks;->hr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 61
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 62
    invoke-static {}, Lcom/kingroot/kinguser/amz;->II()Lcom/kingroot/kinguser/amz;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/kingroot/kinguser/amz;->hy(Ljava/lang/String;)Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;

    move-result-object v3

    .line 64
    if-eqz v3, :cond_2

    .line 65
    iget v3, v3, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->appStatus:I

    packed-switch v3, :pswitch_data_0

    .line 88
    :cond_2
    :goto_1
    :pswitch_0
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/kingroot/kinguser/aks;->hh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 91
    if-eqz v0, :cond_5

    .line 92
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 97
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 100
    :cond_3
    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    .line 101
    const/4 v4, 0x2

    if-lt v3, v4, :cond_4

    iget-object v4, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->pkgName:Ljava/lang/String;

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 103
    :cond_4
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v1

    iget-object v2, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, p0, v2}, Lcom/kingroot/kinguser/aks;->ak(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    move-object v1, v0

    .line 113
    goto :goto_0

    .line 67
    :pswitch_1
    const/4 v0, 0x0

    .line 68
    goto :goto_1

    .line 74
    :pswitch_2
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/aks;->hp(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3, v4, v5}, Lcom/kingroot/kinguser/acu;->g(JJ)Z

    move-result v0

    goto :goto_1

    .line 80
    :pswitch_3
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/aks;->hq(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3, v4, v5}, Lcom/kingroot/kinguser/acu;->g(JJ)Z

    move-result v0

    goto :goto_1

    .line 105
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    .line 106
    iget-object v4, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->pkgName:Ljava/lang/String;

    invoke-static {v4, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_2

    :cond_7
    move-object v0, v1

    goto :goto_2

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static iQ(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 426
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 478
    :cond_0
    :goto_0
    return-void

    .line 430
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/asn;->Oh()Lcom/kingroot/kinguser/asn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/asn;->Oi()Ljava/util/Set;

    move-result-object v0

    .line 431
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 433
    invoke-static {p0}, Lcom/kingroot/kinguser/asw;->iR(Ljava/lang/String;)V

    goto :goto_0

    .line 437
    :cond_2
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/vb;->O(Landroid/content/Context;)B

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 444
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 445
    invoke-static {p0}, Lcom/kingroot/kinguser/aaz;->dZ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 446
    new-instance v2, Lcom/kingroot/kinguser/ep;

    invoke-direct {v2}, Lcom/kingroot/kinguser/ep;-><init>()V

    .line 447
    iput-object p0, v2, Lcom/kingroot/kinguser/ep;->packageName:Ljava/lang/String;

    .line 448
    iput-object v1, v2, Lcom/kingroot/kinguser/ep;->cert:Ljava/lang/String;

    .line 449
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    new-instance v1, Lcom/kingroot/kinguser/bm;

    invoke-direct {v1}, Lcom/kingroot/kinguser/bm;-><init>()V

    .line 452
    iput-object v0, v1, Lcom/kingroot/kinguser/bm;->kB:Ljava/util/ArrayList;

    .line 454
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 456
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 459
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1, v0}, Lcom/kingroot/kinguser/aju;->a(Landroid/content/Context;Lcom/kingroot/kinguser/bm;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v1

    .line 460
    if-nez v1, :cond_4

    .line 461
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/cy;

    .line 462
    if-eqz v0, :cond_4

    iget-object v1, v0, Lcom/kingroot/kinguser/cy;->kB:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    .line 463
    iget-object v0, v0, Lcom/kingroot/kinguser/cy;->kB:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ep;

    .line 464
    if-eqz v0, :cond_3

    iget-object v3, v0, Lcom/kingroot/kinguser/ep;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 468
    iget-object v0, v0, Lcom/kingroot/kinguser/ep;->packageName:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 477
    :cond_4
    invoke-static {v2}, Lcom/kingroot/kinguser/asw;->be(Ljava/util/List;)V

    goto :goto_0
.end method

.method public static iR(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 500
    invoke-static {}, Lcom/kingroot/kinguser/asw;->OJ()Lcom/kingroot/kinguser/ate;

    move-result-object v0

    const-string v1, "gb_localAdded"

    invoke-interface {v0, p0, v1}, Lcom/kingroot/kinguser/ate;->av(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    invoke-static {}, Lcom/kingroot/kinguser/asw;->OJ()Lcom/kingroot/kinguser/ate;

    move-result-object v0

    const-string v1, "gb_localDeleted"

    invoke-interface {v0, p0, v1}, Lcom/kingroot/kinguser/ate;->aw(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    return-void
.end method

.method public static iS(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 512
    invoke-static {}, Lcom/kingroot/kinguser/asw;->OJ()Lcom/kingroot/kinguser/ate;

    move-result-object v0

    const-string v1, "gb_localAdded"

    invoke-interface {v0, p0, v1}, Lcom/kingroot/kinguser/ate;->aw(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    invoke-static {}, Lcom/kingroot/kinguser/asw;->OJ()Lcom/kingroot/kinguser/ate;

    move-result-object v0

    const-string v1, "gb_localDeleted"

    invoke-interface {v0, p0, v1}, Lcom/kingroot/kinguser/ate;->av(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    return-void
.end method

.method public static iT(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 524
    invoke-static {}, Lcom/kingroot/kinguser/asw;->OJ()Lcom/kingroot/kinguser/ate;

    move-result-object v0

    const-string v1, "gb_localAdded"

    invoke-interface {v0, p0, v1}, Lcom/kingroot/kinguser/ate;->aw(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    invoke-static {}, Lcom/kingroot/kinguser/asw;->OJ()Lcom/kingroot/kinguser/ate;

    move-result-object v0

    const-string v1, "gb_localDeleted"

    invoke-interface {v0, p0, v1}, Lcom/kingroot/kinguser/ate;->aw(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    return-void
.end method

.method static synthetic jJ()V
    .locals 0

    .prologue
    .line 45
    invoke-static {}, Lcom/kingroot/kinguser/asw;->OC()V

    return-void
.end method

.method static synthetic jK()V
    .locals 0

    .prologue
    .line 45
    invoke-static {}, Lcom/kingroot/kinguser/asw;->OG()V

    return-void
.end method
