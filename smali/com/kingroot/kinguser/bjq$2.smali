.class Lcom/kingroot/kinguser/bjq$2;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bjq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bxW:Lcom/kingroot/kinguser/bjq;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bjq;)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lcom/kingroot/kinguser/bjq$2;->bxW:Lcom/kingroot/kinguser/bjq;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v4, 0x0

    const/4 v12, 0x2

    const/4 v3, 0x1

    .line 321
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 323
    sget-object v0, Lcom/kingroot/kinguser/bjs;->byC:Ljava/util/List;

    if-nez v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/kingroot/kinguser/bjq$2;->bxW:Lcom/kingroot/kinguser/bjq;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bjq;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/kingroot/kinguser/afd;->e(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/bjs;->byC:Ljava/util/List;

    .line 327
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/bjs;->byC:Ljava/util/List;

    if-nez v0, :cond_1

    .line 328
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bjs;->byC:Ljava/util/List;

    .line 330
    :cond_1
    sget-object v5, Lcom/kingroot/kinguser/bjs;->byC:Ljava/util/List;

    .line 331
    iget-object v0, p0, Lcom/kingroot/kinguser/bjq$2;->bxW:Lcom/kingroot/kinguser/bjq;

    invoke-static {v0}, Lcom/kingroot/kinguser/bjq;->a(Lcom/kingroot/kinguser/bjq;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    .line 332
    iget-object v0, p0, Lcom/kingroot/kinguser/bjq$2;->bxW:Lcom/kingroot/kinguser/bjq;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bjq;->a(Lcom/kingroot/kinguser/bjq;Ljava/util/List;)Ljava/util/List;

    .line 334
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/bjq$2;->bxW:Lcom/kingroot/kinguser/bjq;

    invoke-static {v0}, Lcom/kingroot/kinguser/bjq;->a(Lcom/kingroot/kinguser/bjq;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 337
    iget-object v0, p0, Lcom/kingroot/kinguser/bjq$2;->bxW:Lcom/kingroot/kinguser/bjq;

    invoke-static {v0}, Lcom/kingroot/kinguser/bjq;->b(Lcom/kingroot/kinguser/bjq;)Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->uR()Ljava/util/ArrayList;

    move-result-object v0

    .line 338
    if-nez v0, :cond_f

    .line 339
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    .line 342
    :goto_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 344
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 346
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$a;

    .line 348
    iget-object v1, v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$a;->mPackageName:Ljava/lang/String;

    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    .line 350
    iget-object v10, v1, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->packageName:Ljava/lang/String;

    if-eqz v10, :cond_4

    iget-object v10, v1, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->packageName:Ljava/lang/String;

    iget-object v11, v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$a;->mPackageName:Ljava/lang/String;

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 351
    iget v1, v1, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->enable:I

    if-eq v1, v12, :cond_5

    .line 352
    iput-boolean v3, v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$a;->ahb:Z

    :cond_5
    move v1, v3

    .line 359
    :goto_2
    if-nez v1, :cond_3

    .line 360
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 364
    :cond_6
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$a;

    .line 365
    new-instance v6, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    invoke-direct {v6}, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;-><init>()V

    .line 366
    iget-object v8, v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$a;->mPackageName:Ljava/lang/String;

    iput-object v8, v6, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->packageName:Ljava/lang/String;

    .line 367
    iget v8, v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$a;->classify:I

    iput v8, v6, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->classify:I

    .line 368
    iget-wide v8, v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$a;->ahd:J

    iput-wide v8, v6, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->pkgSize:J

    .line 369
    iget-object v8, v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$a;->mAppName:Ljava/lang/String;

    iput-object v8, v6, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->appName:Ljava/lang/String;

    .line 370
    iget-object v0, v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$a;->Bk:Ljava/lang/String;

    iput-object v0, v6, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->description:Ljava/lang/String;

    .line 371
    iput v12, v6, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->enable:I

    .line 372
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 375
    :cond_7
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_8
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    .line 376
    if-eqz v0, :cond_8

    iget-boolean v1, v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->isPersonApp:Z

    if-nez v1, :cond_8

    .line 380
    iget v1, v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->enable:I

    if-eq v1, v3, :cond_9

    iget v1, v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->enable:I

    if-ne v1, v12, :cond_8

    .line 381
    :cond_9
    new-instance v6, Lcom/kingroot/kinguser/bjq$d;

    invoke-direct {v6}, Lcom/kingroot/kinguser/bjq$d;-><init>()V

    .line 382
    iput-object v0, v6, Lcom/kingroot/kinguser/bjq$d;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    .line 383
    const-string v1, ""

    iput-object v1, v6, Lcom/kingroot/kinguser/bjq$d;->description:Ljava/lang/String;

    .line 384
    iput-boolean v4, v6, Lcom/kingroot/kinguser/bjq$d;->afR:Z

    .line 385
    iget v1, v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->enable:I

    iput v1, v6, Lcom/kingroot/kinguser/bjq$d;->bxZ:I

    .line 386
    iget-object v1, v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->packageName:Ljava/lang/String;

    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$a;

    iput-object v1, v6, Lcom/kingroot/kinguser/bjq$d;->bya:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$a;

    .line 388
    iget v0, v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->enable:I

    if-ne v0, v12, :cond_a

    iget-object v0, v6, Lcom/kingroot/kinguser/bjq$d;->bya:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$a;

    if-eqz v0, :cond_8

    .line 391
    :cond_a
    iget-object v0, p0, Lcom/kingroot/kinguser/bjq$2;->bxW:Lcom/kingroot/kinguser/bjq;

    invoke-static {v0}, Lcom/kingroot/kinguser/bjq;->a(Lcom/kingroot/kinguser/bjq;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 396
    :cond_b
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$a;

    .line 397
    iget-boolean v2, v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$a;->ahb:Z

    if-eqz v2, :cond_c

    .line 399
    :try_start_0
    iget-object v2, p0, Lcom/kingroot/kinguser/bjq$2;->bxW:Lcom/kingroot/kinguser/bjq;

    invoke-static {v2}, Lcom/kingroot/kinguser/bjq;->b(Lcom/kingroot/kinguser/bjq;)Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;->a(Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$a;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 400
    :catch_0
    move-exception v0

    goto :goto_5

    .line 406
    :cond_d
    iget-object v0, p0, Lcom/kingroot/kinguser/bjq$2;->bxW:Lcom/kingroot/kinguser/bjq;

    invoke-static {v0}, Lcom/kingroot/kinguser/bjq;->a(Lcom/kingroot/kinguser/bjq;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 407
    iget-object v0, p0, Lcom/kingroot/kinguser/bjq$2;->bxW:Lcom/kingroot/kinguser/bjq;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bjq;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 408
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 409
    return-void

    :cond_e
    move v1, v4

    goto/16 :goto_2

    :cond_f
    move-object v2, v0

    goto/16 :goto_0
.end method
