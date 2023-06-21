.class public Lcom/kingroot/kinguser/bld$4;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bld;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic bzG:Lcom/kingroot/kinguser/bld;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bld;)V
    .locals 0

    .prologue
    .line 349
    iput-object p1, p0, Lcom/kingroot/kinguser/bld$4;->bzG:Lcom/kingroot/kinguser/bld;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method

.method private afg()V
    .locals 2

    .prologue
    .line 352
    invoke-static {}, Lcom/kingroot/kinguser/wm;->nu()Lcom/kingroot/kinguser/wm;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bld$4$1;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/bld$4$1;-><init>(Lcom/kingroot/kinguser/bld$4;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/wm;->post(Ljava/lang/Runnable;)Z

    .line 371
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 375
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 376
    invoke-direct {p0}, Lcom/kingroot/kinguser/bld$4;->afg()V

    .line 378
    invoke-static {}, Lcom/kingroot/kinguser/baq;->VH()Z

    move-result v0

    if-nez v0, :cond_0

    .line 380
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bhg;->init(Landroid/content/Context;)V

    .line 384
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/ahl;->xm()Lcom/kingroot/kinguser/ahl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ahl;->registerClient()V

    .line 387
    invoke-static {}, Lcom/kingroot/kinguser/arv;->NB()V

    .line 390
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v0

    .line 391
    invoke-virtual {v0, v6}, Lcom/kingroot/kinguser/abc;->isRootPermition(Z)Z

    .line 394
    invoke-static {}, Lcom/kingroot/kinguser/abd;->qb()I

    move-result v1

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    invoke-static {}, Lcom/kingroot/kinguser/aav;->qi()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 396
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    .line 398
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 400
    new-instance v2, Lcom/kingroot/kinguser/zn$a;

    invoke-direct {v2}, Lcom/kingroot/kinguser/zn$a;-><init>()V

    .line 401
    const-string v3, "u:object_r:app_data_file:s0"

    iput-object v3, v2, Lcom/kingroot/kinguser/zn$a;->WP:Ljava/lang/String;

    .line 402
    invoke-static {v1, v2}, Lcom/kingroot/kinguser/zn;->a(Ljava/lang/String;Lcom/kingroot/kinguser/zn$a;)I

    move-result v2

    .line 405
    if-eqz v2, :cond_1

    .line 406
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "restorecon -r %s"

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v1, v5, v7

    .line 407
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 406
    invoke-virtual {v2, v1}, Lcom/kingroot/kinguser/abc;->el(Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;

    .line 417
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/ajb;->yT()Lcom/kingroot/kinguser/ajb;

    move-result-object v1

    invoke-virtual {v1, v7, v6, v8}, Lcom/kingroot/kinguser/ajb;->checkAsync(ZZLcom/kingroot/kinguser/common/check/ISuCheckListener;)V

    .line 420
    invoke-static {}, Lcom/kingroot/kinguser/baw;->VY()V

    .line 422
    invoke-virtual {v0}, Lcom/kingroot/kinguser/abc;->isRootPermition()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 424
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/kingroot/kinguser/bha;->bpw:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "cdpm5"

    invoke-static {v2}, Lcom/kingroot/kinguser/zt;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 425
    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/abc;->el(Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;

    .line 428
    invoke-static {}, Lcom/kingroot/kinguser/ait;->ys()Ljava/lang/String;

    move-result-object v1

    .line 429
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 430
    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/abc;->el(Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;

    .line 434
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/agt;->wb()Lcom/kingroot/kinguser/agt;

    move-result-object v0

    new-instance v1, Lcom/kingroot/master/app/ServiceApplication$4$2;

    invoke-direct {v1, p0}, Lcom/kingroot/master/app/ServiceApplication$4$2;-><init>(Lcom/kingroot/kinguser/bld$4;)V

    invoke-virtual {v0, v1, v7}, Lcom/kingroot/kinguser/agt;->a(Lcom/kingroot/kinguser/advance/install/IInjectCallback;Z)V

    .line 442
    invoke-static {}, Lcom/kingroot/kinguser/biq;->ada()Lcom/kingroot/kinguser/biq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/biq;->start()V

    .line 444
    invoke-static {}, Lcom/kingroot/kinguser/bfw;->aaS()Lcom/kingroot/kinguser/bfw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bfw;->aaU()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 445
    invoke-static {}, Lcom/kingroot/kinguser/bfp;->aay()Lcom/kingroot/kinguser/bfp;

    move-result-object v0

    invoke-virtual {v0, v6, v8}, Lcom/kingroot/kinguser/bfp;->a(ZLcom/kingroot/kinguser/urlcheck/aidl/ICallback;)V

    .line 448
    :cond_3
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Gd()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 449
    invoke-static {v6}, Lcom/kingroot/kinguser/ags;->aF(Z)V

    .line 455
    :cond_4
    iget-object v0, p0, Lcom/kingroot/kinguser/bld$4;->bzG:Lcom/kingroot/kinguser/bld;

    invoke-static {v0}, Lcom/kingroot/kinguser/bld;->a(Lcom/kingroot/kinguser/bld;)V

    .line 458
    iget-object v0, p0, Lcom/kingroot/kinguser/bld$4;->bzG:Lcom/kingroot/kinguser/bld;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bld;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/vb;->O(Landroid/content/Context;)B

    move-result v0

    .line 459
    if-nez v0, :cond_5

    .line 461
    invoke-static {}, Lcom/kingroot/kinguser/amz;->II()Lcom/kingroot/kinguser/amz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/amz;->IG()V

    .line 465
    :cond_5
    invoke-static {}, Lcom/kingroot/kinguser/ahg;->wT()Lcom/kingroot/kinguser/ahg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ahg;->refresh()V

    .line 466
    return-void
.end method
