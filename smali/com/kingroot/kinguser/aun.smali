.class public Lcom/kingroot/kinguser/aun;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/aue$a;


# instance fields
.field private aRA:Lcom/kingroot/kinguser/aue$b;

.field private aRB:Lcom/kingroot/kinguser/bed;

.field private aRC:Lcom/kingroot/kinguser/advance/manager/IPermChangedListener;

.field private final aRz:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/kingroot/kinguser/aue$b;)V
    .locals 5
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/kingroot/kinguser/aue$b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    const/4 v3, 0x1

    new-instance v4, Lcom/kingroot/kinguser/aun$1;

    invoke-direct {v4, p0}, Lcom/kingroot/kinguser/aun$1;-><init>(Lcom/kingroot/kinguser/aun;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aun;->aRB:Lcom/kingroot/kinguser/bed;

    .line 371
    new-instance v0, Lcom/kingroot/kinguser/mvp/presenter/AdvancePermPagePresenter$2;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/mvp/presenter/AdvancePermPagePresenter$2;-><init>(Lcom/kingroot/kinguser/aun;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aun;->aRC:Lcom/kingroot/kinguser/advance/manager/IPermChangedListener;

    .line 61
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-static {p1}, Lcom/kingroot/kinguser/zd;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aun;->aRz:Ljava/lang/ref/WeakReference;

    .line 62
    invoke-static {p2}, Lcom/kingroot/kinguser/zd;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aue$b;

    iput-object v0, p0, Lcom/kingroot/kinguser/aun;->aRA:Lcom/kingroot/kinguser/aue$b;

    .line 63
    return-void
.end method

.method private QB()V
    .locals 3

    .prologue
    .line 332
    iget-object v0, p0, Lcom/kingroot/kinguser/aun;->aRz:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 334
    if-nez v0, :cond_0

    .line 341
    :goto_0
    return-void

    .line 338
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 339
    const-class v2, Lcom/kingroot/kinguser/activitys/SilentInstallActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 340
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private QC()V
    .locals 4

    .prologue
    .line 344
    iget-object v0, p0, Lcom/kingroot/kinguser/aun;->aRz:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 346
    if-nez v0, :cond_0

    .line 354
    :goto_0
    return-void

    .line 349
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 351
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v2

    const v3, 0x186dd

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 352
    const-class v2, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartMgrActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 353
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private QD()V
    .locals 3

    .prologue
    .line 357
    iget-object v0, p0, Lcom/kingroot/kinguser/aun;->aRz:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 359
    if-nez v0, :cond_0

    .line 369
    :goto_0
    return-void

    .line 363
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 364
    const-class v2, Lcom/kingroot/kinguser/activitys/DefaultAppSettingsActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 365
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 366
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x1891a

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 368
    invoke-static {}, Lcom/kingroot/kinguser/akt;->Gj()Lcom/kingroot/kinguser/akt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/akt;->Gl()V

    goto :goto_0
.end method

.method private Qx()V
    .locals 2

    .prologue
    .line 90
    invoke-static {}, Lcom/kingroot/kinguser/bbv;->WK()Lcom/kingroot/kinguser/bbv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bbv;->WP()Z

    move-result v0

    if-nez v0, :cond_1

    .line 92
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x188c6

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/bbv;->WK()Lcom/kingroot/kinguser/bbv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bbv;->WQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x188c7

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    goto :goto_0
.end method

.method private Qy()Ljava/lang/String;
    .locals 4

    .prologue
    .line 245
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    .line 247
    invoke-static {}, Lcom/kingroot/kinguser/agy;->wk()Lcom/kingroot/kinguser/agy;

    move-result-object v1

    const-wide v2, 0x9a7ec800L

    invoke-virtual {v1, v2, v3}, Lcom/kingroot/kinguser/agy;->ah(J)Ljava/util/List;

    move-result-object v1

    .line 249
    invoke-static {v1}, Lcom/kingroot/kinguser/yy;->c(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 250
    const v1, 0x7f070031

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 253
    :goto_0
    return-object v0

    :cond_0
    const v2, 0x7f070030

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private Qz()Ljava/lang/String;
    .locals 4

    .prologue
    .line 311
    invoke-static {}, Lcom/kingroot/kinguser/ahg;->wT()Lcom/kingroot/kinguser/ahg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ahg;->wV()I

    move-result v0

    .line 312
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    .line 313
    if-gtz v0, :cond_0

    const v0, 0x7f0703d2

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v2, 0x7f07045d

    .line 314
    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/aun;)Lcom/kingroot/kinguser/aue$b;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/kingroot/kinguser/aun;->aRA:Lcom/kingroot/kinguser/aue$b;

    return-object v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/aun;Z)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/aun;->cZ(Z)V

    return-void
.end method

.method static synthetic b(Lcom/kingroot/kinguser/aun;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/kingroot/kinguser/aun;->Qx()V

    return-void
.end method

.method private bn(Ljava/util/List;)Ljava/lang/String;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/advance/model/AdvancePermModel;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v3, 0x0

    .line 190
    if-nez p1, :cond_1

    .line 191
    const-string v0, ""

    .line 241
    :cond_0
    :goto_0
    return-object v0

    .line 194
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v7

    .line 195
    const-string v6, ""

    .line 200
    invoke-static {}, Lcom/kingroot/kinguser/awb;->Sy()Lcom/kingroot/kinguser/awb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/awb;->Sf()Ljava/util/Set;

    move-result-object v8

    .line 202
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v2, v3

    move v4, v3

    move v1, v3

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/advance/model/AdvancePermModel;

    .line 204
    iget v5, v0, Lcom/kingroot/kinguser/advance/model/AdvancePermModel;->apt:I

    packed-switch v5, :pswitch_data_0

    move v0, v2

    move v2, v1

    move v1, v4

    :goto_2
    move v4, v1

    move v1, v2

    move v2, v0

    .line 225
    goto :goto_1

    .line 207
    :pswitch_0
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v5, v1

    :cond_2
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 208
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 211
    iget-object v11, v0, Lcom/kingroot/kinguser/advance/model/AdvancePermModel;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 212
    add-int/lit8 v1, v5, 0x1

    :goto_4
    move v5, v1

    .line 214
    goto :goto_3

    :cond_3
    move v0, v2

    move v1, v4

    move v2, v5

    .line 216
    goto :goto_2

    .line 218
    :pswitch_1
    add-int/lit8 v4, v4, 0x1

    move v0, v2

    move v2, v1

    move v1, v4

    .line 219
    goto :goto_2

    .line 221
    :pswitch_2
    add-int/lit8 v2, v2, 0x1

    move v0, v2

    move v2, v1

    move v1, v4

    goto :goto_2

    .line 229
    :cond_4
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/abc;->isRootPermition()Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    .line 230
    const v0, 0x7f07002f

    invoke-virtual {v7, v0}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v12, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 232
    :cond_5
    if-lez v4, :cond_6

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f07002c

    invoke-virtual {v7, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v5, v12, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v3

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 236
    :goto_5
    if-lez v2, :cond_0

    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f07002d

    invoke-virtual {v7, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v4, v12, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v3

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    move-object v0, v6

    goto :goto_5

    :cond_7
    move v1, v5

    goto/16 :goto_4

    .line 204
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private bo(Ljava/util/List;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/advance/model/AdvancePermModel;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 276
    if-nez p1, :cond_1

    .line 277
    const-string v0, ""

    .line 307
    :cond_0
    :goto_0
    return-object v0

    .line 279
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v4

    .line 282
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    move v3, v2

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/advance/model/AdvancePermModel;

    .line 283
    iget v0, v0, Lcom/kingroot/kinguser/advance/model/AdvancePermModel;->apv:I

    packed-switch v0, :pswitch_data_0

    move v0, v1

    move v1, v3

    :goto_2
    move v3, v1

    move v1, v0

    .line 294
    goto :goto_1

    .line 286
    :pswitch_0
    add-int/lit8 v3, v3, 0x1

    move v0, v1

    move v1, v3

    .line 287
    goto :goto_2

    .line 290
    :pswitch_1
    add-int/lit8 v1, v1, 0x1

    move v0, v1

    move v1, v3

    goto :goto_2

    .line 297
    :cond_2
    const-string v0, ""

    .line 298
    if-lez v3, :cond_3

    .line 299
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v5, 0x7f07002a

    invoke-virtual {v4, v5}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 300
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 303
    :cond_3
    if-lez v1, :cond_0

    .line 304
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v3, 0x7f070029

    invoke-virtual {v4, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 283
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic c(Lcom/kingroot/kinguser/aun;)Lcom/kingroot/kinguser/bed;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/kingroot/kinguser/aun;->aRB:Lcom/kingroot/kinguser/bed;

    return-object v0
.end method

.method private cZ(Z)V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 156
    invoke-static {}, Lcom/kingroot/kinguser/ahe;->wL()Lcom/kingroot/kinguser/ahe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ahe;->wI()Ljava/util/Map;

    move-result-object v1

    .line 158
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    .line 160
    if-eqz p1, :cond_3

    .line 161
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->BQ()Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/kingroot/kinguser/aun;->aRA:Lcom/kingroot/kinguser/aue$b;

    const v3, 0x7f070271

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v4, v3, v4}, Lcom/kingroot/kinguser/aue$b;->b(ILjava/lang/String;Z)V

    .line 169
    :goto_0
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Fc()Z

    move-result v0

    if-nez v0, :cond_2

    .line 170
    iget-object v0, p0, Lcom/kingroot/kinguser/aun;->aRA:Lcom/kingroot/kinguser/aue$b;

    const v3, 0x7f0703d0

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v5, v2, v4}, Lcom/kingroot/kinguser/aue$b;->b(ILjava/lang/String;Z)V

    .line 175
    :goto_1
    iget-object v2, p0, Lcom/kingroot/kinguser/aun;->aRA:Lcom/kingroot/kinguser/aue$b;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/aun;->bo(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v6, v0}, Lcom/kingroot/kinguser/aue$b;->N(ILjava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/kingroot/kinguser/aun;->aRA:Lcom/kingroot/kinguser/aue$b;

    invoke-direct {p0}, Lcom/kingroot/kinguser/aun;->Qz()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v7, v1}, Lcom/kingroot/kinguser/aue$b;->N(ILjava/lang/String;)V

    .line 186
    :goto_2
    return-void

    .line 163
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/bbv;->WK()Lcom/kingroot/kinguser/bbv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bbv;->WR()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/kingroot/kinguser/aun;->aRA:Lcom/kingroot/kinguser/aue$b;

    const v3, 0x7f070367

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v4, v3, v4}, Lcom/kingroot/kinguser/aue$b;->b(ILjava/lang/String;Z)V

    goto :goto_0

    .line 166
    :cond_1
    iget-object v3, p0, Lcom/kingroot/kinguser/aun;->aRA:Lcom/kingroot/kinguser/aue$b;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/aun;->bn(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Lcom/kingroot/kinguser/aue$b;->N(ILjava/lang/String;)V

    goto :goto_0

    .line 172
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/aun;->aRA:Lcom/kingroot/kinguser/aue$b;

    invoke-direct {p0}, Lcom/kingroot/kinguser/aun;->Qy()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v5, v2}, Lcom/kingroot/kinguser/aue$b;->N(ILjava/lang/String;)V

    goto :goto_1

    .line 179
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/aun;->aRA:Lcom/kingroot/kinguser/aue$b;

    const v1, 0x7f070039

    invoke-virtual {v2, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Lcom/kingroot/kinguser/aue$b;->N(ILjava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/kingroot/kinguser/aun;->aRA:Lcom/kingroot/kinguser/aue$b;

    const v1, 0x7f07003d

    invoke-virtual {v2, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Lcom/kingroot/kinguser/aue$b;->N(ILjava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/kingroot/kinguser/aun;->aRA:Lcom/kingroot/kinguser/aue$b;

    const v1, 0x7f07003b

    invoke-virtual {v2, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v6, v1}, Lcom/kingroot/kinguser/aue$b;->N(ILjava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/kingroot/kinguser/aun;->aRA:Lcom/kingroot/kinguser/aue$b;

    const v1, 0x7f0703d1

    invoke-virtual {v2, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v7, v1}, Lcom/kingroot/kinguser/aue$b;->N(ILjava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method public PH()V
    .locals 3

    .prologue
    .line 107
    iget-object v0, p0, Lcom/kingroot/kinguser/aun;->aRz:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 109
    if-nez v0, :cond_0

    .line 116
    :goto_0
    return-void

    .line 113
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 114
    const-class v2, Lcom/kingroot/kinguser/activitys/AdvancePermAppListActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 115
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public PI()V
    .locals 4

    .prologue
    .line 140
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x188c8

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 143
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 144
    invoke-static {}, Lcom/kingroot/kinguser/aft;->vt()Landroid/app/Activity;

    move-result-object v1

    .line 145
    const-class v2, Lcom/kingroot/kinguser/activitys/RootProcessActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 146
    const-string v2, "root_process_state"

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 147
    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 148
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :goto_0
    return-void

    .line 149
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public PJ()V
    .locals 2

    .prologue
    .line 101
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/aun;->aRB:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 102
    return-void
.end method

.method public QA()V
    .locals 4

    .prologue
    .line 319
    iget-object v0, p0, Lcom/kingroot/kinguser/aun;->aRz:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 321
    if-nez v0, :cond_0

    .line 329
    :goto_0
    return-void

    .line 325
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 326
    const-class v2, Lcom/kingroot/kinguser/activitys/RootMgrActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 327
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v2

    const v3, 0x1873c

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 328
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 385
    invoke-static {}, Lcom/kingroot/kinguser/ahe;->wL()Lcom/kingroot/kinguser/ahe;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/aun;->aRC:Lcom/kingroot/kinguser/advance/manager/IPermChangedListener;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ahe;->d(Lcom/kingroot/kinguser/advance/manager/IPermChangedListener;)V

    .line 386
    return-void
.end method

.method public gJ(I)V
    .locals 2

    .prologue
    .line 120
    packed-switch p1, :pswitch_data_0

    .line 135
    :goto_0
    :pswitch_0
    return-void

    .line 122
    :pswitch_1
    invoke-virtual {p0}, Lcom/kingroot/kinguser/aun;->QA()V

    goto :goto_0

    .line 125
    :pswitch_2
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x188a5

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 126
    invoke-direct {p0}, Lcom/kingroot/kinguser/aun;->QB()V

    goto :goto_0

    .line 129
    :pswitch_3
    invoke-direct {p0}, Lcom/kingroot/kinguser/aun;->QC()V

    goto :goto_0

    .line 132
    :pswitch_4
    invoke-direct {p0}, Lcom/kingroot/kinguser/aun;->QD()V

    goto :goto_0

    .line 120
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public start()V
    .locals 2

    .prologue
    .line 380
    invoke-static {}, Lcom/kingroot/kinguser/ahe;->wL()Lcom/kingroot/kinguser/ahe;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/aun;->aRC:Lcom/kingroot/kinguser/advance/manager/IPermChangedListener;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ahe;->c(Lcom/kingroot/kinguser/advance/manager/IPermChangedListener;)V

    .line 381
    return-void
.end method
