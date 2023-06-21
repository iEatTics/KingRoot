.class Lcom/kingroot/kinguser/avm$1;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/avm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aTO:Lcom/kingroot/kinguser/avm;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/avm;)V
    .locals 0

    .prologue
    .line 378
    iput-object p1, p0, Lcom/kingroot/kinguser/avm$1;->aTO:Lcom/kingroot/kinguser/avm;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method

.method private dh(Z)Ljava/util/List;
    .locals 4
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
    .line 454
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 456
    if-eqz p1, :cond_1

    .line 458
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/zh;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 459
    if-eqz v0, :cond_3

    .line 460
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 461
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 462
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 468
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/bbt;->WG()Lcom/kingroot/kinguser/bbt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bbt;->getAllAppsInfo()Ljava/util/List;

    move-result-object v0

    .line 469
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/model/RootMgrAppModel;

    .line 470
    iget-object v3, v0, Lcom/kingroot/kinguser/model/RootMgrAppModel;->aQQ:Lcom/kingroot/kinguser/model/AppInfo;

    invoke-virtual {v3}, Lcom/kingroot/kinguser/model/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 471
    iget-object v0, v0, Lcom/kingroot/kinguser/model/RootMgrAppModel;->aQQ:Lcom/kingroot/kinguser/model/AppInfo;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/model/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 476
    :cond_3
    return-object v1
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 381
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 382
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v6

    .line 383
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 384
    invoke-virtual {v6}, Lcom/kingroot/kinguser/aks;->Dm()J

    move-result-wide v0

    .line 385
    invoke-virtual {v6}, Lcom/kingroot/kinguser/aks;->Dn()Z

    move-result v7

    .line 386
    invoke-virtual {v6}, Lcom/kingroot/kinguser/aks;->Dk()Z

    move-result v8

    .line 389
    cmp-long v4, v2, v0

    if-gez v4, :cond_1

    .line 391
    invoke-virtual {v6, v2, v3}, Lcom/kingroot/kinguser/aks;->bc(J)V

    .line 450
    :cond_0
    :goto_0
    return-void

    .line 396
    :cond_1
    const-wide/32 v4, 0x5265c00

    .line 397
    invoke-static {}, Lcom/kingroot/kinguser/bbt;->WG()Lcom/kingroot/kinguser/bbt;

    move-result-object v9

    .line 398
    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/adk;->b(JJJ)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 400
    if-nez v7, :cond_4

    .line 401
    invoke-direct {p0, v8}, Lcom/kingroot/kinguser/avm$1;->dh(Z)Ljava/util/List;

    move-result-object v0

    .line 402
    iget-object v1, p0, Lcom/kingroot/kinguser/avm$1;->aTO:Lcom/kingroot/kinguser/avm;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/avm;->bx(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 407
    if-eqz v8, :cond_2

    .line 408
    invoke-virtual {v6}, Lcom/kingroot/kinguser/aks;->Dl()V

    .line 409
    invoke-virtual {v9}, Lcom/kingroot/kinguser/bbt;->startPrepareRootMgrList()V

    .line 413
    :cond_2
    invoke-virtual {v9}, Lcom/kingroot/kinguser/bbt;->startPrepareRootMgrSuggestion()V

    .line 418
    :cond_3
    invoke-virtual {v6, v10}, Lcom/kingroot/kinguser/aks;->bD(Z)V

    goto :goto_0

    .line 424
    :cond_4
    const-wide/32 v4, 0x240c8400

    .line 425
    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/adk;->b(JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    invoke-direct {p0, v8}, Lcom/kingroot/kinguser/avm$1;->dh(Z)Ljava/util/List;

    move-result-object v0

    .line 427
    iget-object v1, p0, Lcom/kingroot/kinguser/avm$1;->aTO:Lcom/kingroot/kinguser/avm;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/avm;->bx(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 432
    if-eqz v8, :cond_5

    .line 433
    invoke-virtual {v6}, Lcom/kingroot/kinguser/aks;->Dl()V

    .line 434
    invoke-virtual {v9}, Lcom/kingroot/kinguser/bbt;->startPrepareRootMgrList()V

    .line 438
    :cond_5
    invoke-virtual {v9}, Lcom/kingroot/kinguser/bbt;->startPrepareRootMgrSuggestion()V

    .line 441
    invoke-virtual {v6, v10}, Lcom/kingroot/kinguser/aks;->bD(Z)V

    .line 448
    :goto_1
    invoke-virtual {v6, v2, v3}, Lcom/kingroot/kinguser/aks;->bc(J)V

    goto :goto_0

    .line 444
    :cond_6
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Lcom/kingroot/kinguser/aks;->bD(Z)V

    goto :goto_1
.end method
