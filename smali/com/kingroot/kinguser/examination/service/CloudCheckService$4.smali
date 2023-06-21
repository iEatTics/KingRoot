.class Lcom/kingroot/kinguser/examination/service/CloudCheckService$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bvw;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/examination/service/CloudCheckService;->cloudCheckAll(Lcom/kingroot/kinguser/examination/service/ICloudCheckCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aMl:Lcom/kingroot/kinguser/examination/service/CloudCheckService;

.field final synthetic aMm:Lcom/kingroot/kinguser/examination/service/ICloudCheckCallback;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/examination/service/CloudCheckService;Lcom/kingroot/kinguser/examination/service/ICloudCheckCallback;)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Lcom/kingroot/kinguser/examination/service/CloudCheckService$4;->aMl:Lcom/kingroot/kinguser/examination/service/CloudCheckService;

    iput-object p2, p0, Lcom/kingroot/kinguser/examination/service/CloudCheckService$4;->aMm:Lcom/kingroot/kinguser/examination/service/ICloudCheckCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private NH()V
    .locals 4

    .prologue
    .line 392
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/aks;->bl(J)V

    .line 395
    invoke-static {}, Lcom/kingroot/kinguser/avu;->Sb()Lcom/kingroot/kinguser/avu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/avu;->Sh()V

    .line 396
    return-void
.end method


# virtual methods
.method public f(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/securemodule/api/AppInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/securemodule/api/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 297
    invoke-direct {p0}, Lcom/kingroot/kinguser/examination/service/CloudCheckService$4;->NH()V

    .line 315
    invoke-static {p1}, Lcom/kingroot/kinguser/yy;->c(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 316
    invoke-static {}, Lcom/kingroot/kinguser/bjn;->aeb()Lcom/kingroot/kinguser/bjn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bjn;->EG()V

    .line 319
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 320
    if-eqz p1, :cond_1

    .line 321
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 323
    :cond_1
    if-eqz p2, :cond_2

    .line 324
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 329
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/avu;->Sb()Lcom/kingroot/kinguser/avu;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/avu;->bC(Ljava/util/List;)Ljava/util/Set;

    move-result-object v0

    .line 330
    new-instance v1, Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 331
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/securemodule/api/AppInfo;

    .line 332
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/tencent/securemodule/api/AppInfo;->aiE()I

    move-result v3

    invoke-static {v3}, Lcom/kingroot/kinguser/avu;->hj(I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/tencent/securemodule/api/AppInfo;->pkgName:Ljava/lang/String;

    .line 333
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 337
    iget-object v0, v0, Lcom/tencent/securemodule/api/AppInfo;->pkgName:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 341
    :cond_4
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 342
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/aks;->bT(Z)V

    .line 346
    :cond_5
    iget-object v0, p0, Lcom/kingroot/kinguser/examination/service/CloudCheckService$4;->aMl:Lcom/kingroot/kinguser/examination/service/CloudCheckService;

    iget-object v2, p0, Lcom/kingroot/kinguser/examination/service/CloudCheckService$4;->aMm:Lcom/kingroot/kinguser/examination/service/ICloudCheckCallback;

    invoke-static {v0, v2, p1, p2}, Lcom/kingroot/kinguser/examination/service/CloudCheckService;->access$100(Lcom/kingroot/kinguser/examination/service/CloudCheckService;Lcom/kingroot/kinguser/examination/service/ICloudCheckCallback;Ljava/util/List;Ljava/util/List;)V

    .line 348
    iget-object v0, p0, Lcom/kingroot/kinguser/examination/service/CloudCheckService$4;->aMl:Lcom/kingroot/kinguser/examination/service/CloudCheckService;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/examination/service/CloudCheckService;->access$200(Lcom/kingroot/kinguser/examination/service/CloudCheckService;Ljava/util/Set;)V

    .line 354
    iget-object v0, p0, Lcom/kingroot/kinguser/examination/service/CloudCheckService$4;->aMl:Lcom/kingroot/kinguser/examination/service/CloudCheckService;

    invoke-static {v0}, Lcom/kingroot/kinguser/examination/service/CloudCheckService;->access$300(Lcom/kingroot/kinguser/examination/service/CloudCheckService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 355
    if-eqz p1, :cond_8

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 356
    invoke-static {}, Lcom/kingroot/kinguser/awb;->Sy()Lcom/kingroot/kinguser/awb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/awb;->bD(Ljava/util/List;)Ljava/util/Set;

    move-result-object v0

    .line 357
    new-instance v2, Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 358
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/securemodule/api/AppInfo;

    .line 359
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/tencent/securemodule/api/AppInfo;->aiE()I

    move-result v4

    invoke-static {v4}, Lcom/kingroot/kinguser/awb;->hj(I)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, v0, Lcom/tencent/securemodule/api/AppInfo;->pkgName:Ljava/lang/String;

    .line 360
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 364
    iget-object v0, v0, Lcom/tencent/securemodule/api/AppInfo;->pkgName:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 377
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 368
    :cond_7
    :try_start_1
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 370
    iget-object v0, p0, Lcom/kingroot/kinguser/examination/service/CloudCheckService$4;->aMl:Lcom/kingroot/kinguser/examination/service/CloudCheckService;

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/examination/service/CloudCheckService;->access$400(Lcom/kingroot/kinguser/examination/service/CloudCheckService;Ljava/util/Set;)V

    .line 372
    iget-object v0, p0, Lcom/kingroot/kinguser/examination/service/CloudCheckService$4;->aMl:Lcom/kingroot/kinguser/examination/service/CloudCheckService;

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/examination/service/CloudCheckService;->access$500(Lcom/kingroot/kinguser/examination/service/CloudCheckService;Ljava/util/Set;)V

    .line 374
    iget-object v0, p0, Lcom/kingroot/kinguser/examination/service/CloudCheckService$4;->aMl:Lcom/kingroot/kinguser/examination/service/CloudCheckService;

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/examination/service/CloudCheckService;->access$600(Lcom/kingroot/kinguser/examination/service/CloudCheckService;Ljava/util/Set;)V

    .line 377
    :cond_8
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 378
    return-void
.end method

.method public onFinish(I)V
    .locals 2

    .prologue
    .line 383
    if-nez p1, :cond_0

    .line 384
    invoke-direct {p0}, Lcom/kingroot/kinguser/examination/service/CloudCheckService$4;->NH()V

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/examination/service/CloudCheckService$4;->aMl:Lcom/kingroot/kinguser/examination/service/CloudCheckService;

    iget-object v1, p0, Lcom/kingroot/kinguser/examination/service/CloudCheckService$4;->aMm:Lcom/kingroot/kinguser/examination/service/ICloudCheckCallback;

    invoke-static {v0, v1, p1}, Lcom/kingroot/kinguser/examination/service/CloudCheckService;->access$700(Lcom/kingroot/kinguser/examination/service/CloudCheckService;Lcom/kingroot/kinguser/examination/service/ICloudCheckCallback;I)V

    .line 388
    return-void
.end method
