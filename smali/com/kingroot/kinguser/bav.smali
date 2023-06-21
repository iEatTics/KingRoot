.class public Lcom/kingroot/kinguser/bav;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static VM()Z
    .locals 14

    .prologue
    const-wide/16 v8, 0x0

    const/4 v12, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 65
    invoke-static {}, Lcom/kingroot/kinguser/bav;->VU()I

    move-result v0

    .line 67
    if-eq v0, v12, :cond_0

    .line 115
    :goto_0
    return v6

    .line 74
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 76
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Gc()I

    move-result v10

    .line 77
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Ga()Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 80
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 81
    if-eqz v0, :cond_4

    array-length v1, v0

    if-ne v1, v12, :cond_4

    .line 84
    const/4 v1, 0x0

    :try_start_0
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 85
    const/4 v1, 0x1

    :try_start_1
    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    move v13, v0

    move-wide v0, v4

    move v4, v13

    .line 92
    :goto_1
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v5

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v5, v10}, Lcom/kingroot/kinguser/aks;->eQ(I)V

    .line 93
    add-int/lit8 v4, v4, 0x1

    .line 95
    const/4 v5, 0x5

    if-lt v4, v5, :cond_3

    .line 96
    const-wide/32 v4, 0x36ee80

    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/adk;->b(JJJ)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v6

    move-wide v4, v2

    move v1, v7

    .line 111
    :goto_2
    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, "%d:%d"

    new-array v12, v12, [Ljava/lang/Object;

    cmp-long v8, v4, v8

    if-nez v8, :cond_2

    .line 112
    :goto_3
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v12, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v12, v7

    .line 111
    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 114
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/aks;->ho(Ljava/lang/String;)V

    move v6, v1

    .line 115
    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    move-wide v0, v8

    :goto_4
    move v4, v6

    goto :goto_1

    :cond_1
    move v0, v7

    move-wide v4, v2

    move v1, v6

    .line 107
    goto :goto_2

    :cond_2
    move-wide v2, v4

    .line 111
    goto :goto_3

    .line 86
    :catch_1
    move-exception v0

    move-wide v0, v4

    goto :goto_4

    :cond_3
    move v13, v4

    move-wide v4, v0

    move v0, v13

    move v1, v6

    goto :goto_2

    :cond_4
    move v4, v6

    move-wide v0, v8

    goto :goto_1
.end method

.method public static VN()Z
    .locals 1

    .prologue
    .line 122
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Gb()Z

    move-result v0

    return v0
.end method

.method public static VO()V
    .locals 6

    .prologue
    .line 135
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v4, 0x0

    new-instance v5, Lcom/kingroot/kinguser/bav$1;

    invoke-direct {v5}, Lcom/kingroot/kinguser/bav$1;-><init>()V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 148
    return-void
.end method

.method private static VP()V
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/kingroot/kinguser/bav;->dA(Z)V

    .line 159
    invoke-static {}, Lcom/kingroot/kinguser/bav;->VQ()V

    .line 160
    invoke-static {}, Lcom/kingroot/kinguser/bav;->VR()V

    .line 161
    invoke-static {}, Lcom/kingroot/kinguser/bav;->VS()V

    .line 162
    invoke-static {}, Lcom/kingroot/kinguser/bav;->VT()V

    .line 163
    return-void
.end method

.method private static VQ()V
    .locals 2

    .prologue
    .line 172
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->BQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aks;->bc(Z)V

    .line 177
    invoke-static {}, Lcom/kingroot/kinguser/bby;->WY()V

    .line 179
    invoke-static {}, Lcom/kingroot/kinguser/bbf;->Wn()V

    .line 181
    :cond_0
    return-void
.end method

.method private static VR()V
    .locals 2

    .prologue
    .line 189
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Fc()Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    :goto_0
    return-void

    .line 193
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aks;->bZ(Z)V

    goto :goto_0
.end method

.method private static VS()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 201
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->FM()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aks;->cq(Z)V

    .line 203
    invoke-static {}, Lcom/kingroot/kinguser/biq;->ada()Lcom/kingroot/kinguser/biq;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/biq;->eh(Z)V

    .line 205
    :cond_0
    return-void
.end method

.method private static VT()V
    .locals 3

    .prologue
    .line 212
    invoke-static {}, Lcom/kingroot/kinguser/aii;->xL()Lcom/kingroot/kinguser/aii;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aii;->xO()Z

    move-result v0

    if-nez v0, :cond_1

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->DE()I

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    invoke-static {}, Lcom/kingroot/kinguser/ahl;->xm()Lcom/kingroot/kinguser/ahl;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/kingroot/kinguser/protect/KuBehaviorLimited$2;

    invoke-direct {v2}, Lcom/kingroot/kinguser/protect/KuBehaviorLimited$2;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/ahl;->a(ZLcom/kingroot/kinguser/ai/fore/IAntiInjectSwitcherOpObserver;)V

    goto :goto_0
.end method

.method private static VU()I
    .locals 1

    .prologue
    .line 238
    const-string v0, "grblc"

    invoke-static {v0}, Lcom/kingroot/kinguser/bhm;->lH(Ljava/lang/String;)I

    move-result v0

    .line 241
    return v0
.end method

.method public static VV()V
    .locals 6

    .prologue
    .line 249
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->bll:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v4, 0x0

    new-instance v5, Lcom/kingroot/kinguser/bav$2;

    invoke-direct {v5}, Lcom/kingroot/kinguser/bav$2;-><init>()V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 255
    return-void
.end method

.method private static VW()Ljava/util/List;
    .locals 4
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
    .line 341
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 342
    invoke-static {}, Lcom/kingroot/kinguser/avs;->RY()Lcom/kingroot/kinguser/avs;

    move-result-object v0

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/avs;->ha(I)Ljava/util/List;

    move-result-object v0

    .line 343
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 344
    :cond_0
    const/4 v0, 0x0

    .line 354
    :goto_0
    return-object v0

    .line 347
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 348
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/kingroot/kinguser/zh;->du(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 350
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 354
    goto :goto_0
.end method

.method private static VX()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x64

    const/4 v4, 0x0

    .line 358
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 361
    if-eqz v0, :cond_0

    .line 362
    const-string v1, "level"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 363
    const-string v2, "scale"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 364
    const-string v3, "voltage"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 365
    const-string v3, "temperature"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    int-to-double v4, v0

    .line 366
    mul-int/lit8 v0, v1, 0x64

    div-int/2addr v0, v2

    .line 369
    const-wide v0, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    .line 371
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method static synthetic Vb()V
    .locals 0

    .prologue
    .line 54
    invoke-static {}, Lcom/kingroot/kinguser/bav;->VP()V

    return-void
.end method

.method static synthetic cL(Z)V
    .locals 0

    .prologue
    .line 54
    invoke-static {p0}, Lcom/kingroot/kinguser/bav;->dB(Z)V

    return-void
.end method

.method public static dA(Z)V
    .locals 1

    .prologue
    .line 126
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/kingroot/kinguser/aks;->ct(Z)V

    .line 127
    return-void
.end method

.method private static dB(Z)V
    .locals 11

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 259
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 261
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v0

    .line 262
    invoke-virtual {v0, p0}, Lcom/kingroot/kinguser/abc;->isRootPermition(Z)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 264
    const-string v1, "su"

    invoke-static {v1}, Lcom/kingroot/kinguser/abj;->en(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    move v1, v2

    .line 268
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v8

    invoke-virtual {v8}, Lcom/kingroot/kinguser/aks;->DE()I

    move-result v8

    .line 272
    new-array v9, v6, [I

    .line 273
    invoke-static {v0}, Lcom/kingroot/kinguser/aio;->d(Lcom/kingroot/kinguser/abc;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    :goto_1
    aput v0, v9, v4

    .line 274
    invoke-static {v3}, Lcom/kingroot/kinguser/aiu;->aM(Z)I

    move-result v0

    if-ne v0, v3, :cond_2

    move v0, v2

    :goto_2
    aput v0, v9, v3

    .line 275
    if-eqz v8, :cond_3

    move v0, v5

    :goto_3
    aput v0, v9, v2

    .line 277
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v0

    const-string v10, "connectivity"

    .line 278
    invoke-virtual {v0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 279
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v6

    :goto_4
    aput v0, v9, v5

    .line 281
    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    new-array v9, v6, [I

    .line 285
    if-eqz v8, :cond_5

    move v0, v3

    :goto_5
    aput v0, v9, v4

    .line 286
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Fc()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v2

    :goto_6
    aput v0, v9, v3

    .line 287
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->BQ()Z

    move-result v0

    if-eqz v0, :cond_7

    if-ne v1, v2, :cond_7

    move v0, v5

    :goto_7
    aput v0, v9, v2

    .line 288
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->FM()Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_8
    aput v6, v9, v5

    .line 290
    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 295
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->io()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    const-string v0, ""

    .line 298
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/ux;->kT()Lcom/kingroot/kinguser/ux;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/ux;->getSharkGuid()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 302
    :goto_9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "0"

    :cond_0
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    invoke-static {}, Lcom/kingroot/kinguser/bav;->VX()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Gc()I

    move-result v0

    .line 306
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/kingroot/kinguser/aks;->eQ(I)V

    .line 309
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_a

    :cond_1
    move v0, v4

    .line 273
    goto/16 :goto_1

    :cond_2
    move v0, v4

    .line 274
    goto/16 :goto_2

    :cond_3
    move v0, v4

    .line 275
    goto/16 :goto_3

    :cond_4
    move v0, v4

    .line 279
    goto/16 :goto_4

    :cond_5
    move v0, v4

    .line 285
    goto/16 :goto_5

    :cond_6
    move v0, v4

    .line 286
    goto/16 :goto_6

    :cond_7
    move v0, v4

    .line 287
    goto :goto_7

    :cond_8
    move v6, v4

    .line 288
    goto :goto_8

    .line 315
    :cond_9
    invoke-static {}, Lcom/kingroot/kinguser/bbo;->Wv()Lcom/kingroot/kinguser/bbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bbo;->getTodayRequestAllowAppList()Ljava/util/List;

    move-result-object v1

    .line 316
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    :goto_b
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_c

    .line 316
    :cond_a
    const-string v0, "0"

    goto :goto_b

    .line 322
    :cond_b
    const-string v0, "0"

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    invoke-static {}, Lcom/kingroot/kinguser/bav;->VW()Ljava/util/List;

    move-result-object v1

    .line 326
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_c

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    :goto_d
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_e

    .line 326
    :cond_c
    const-string v0, "0"

    goto :goto_d

    .line 333
    :cond_d
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x1892e

    invoke-virtual {v0, v1, v4, v7, v4}, Lcom/kingroot/kinguser/ady;->a(IILjava/util/List;Z)V

    .line 337
    return-void

    .line 299
    :catch_0
    move-exception v2

    goto/16 :goto_9

    :cond_e
    move v1, v3

    goto/16 :goto_0

    :cond_f
    move v1, v4

    goto/16 :goto_0
.end method

.method static synthetic wa()Z
    .locals 1

    .prologue
    .line 54
    invoke-static {}, Lcom/kingroot/kinguser/bav;->VM()Z

    move-result v0

    return v0
.end method
