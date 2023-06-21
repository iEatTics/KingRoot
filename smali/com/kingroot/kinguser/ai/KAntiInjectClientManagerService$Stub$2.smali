.class Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub$2;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aqb:Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;)V
    .locals 0

    .prologue
    .line 272
    iput-object p1, p0, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub$2;->aqb:Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/bed$a;)V
    .locals 10
    .param p1    # Lcom/kingroot/kinguser/bed$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 275
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/bek;->a(Lcom/kingroot/kinguser/bed$a;)V

    .line 276
    invoke-interface {p1}, Lcom/kingroot/kinguser/bed$a;->nF()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 454
    :goto_0
    return-void

    .line 280
    :cond_0
    invoke-interface {p1}, Lcom/kingroot/kinguser/bed$a;->nF()Ljava/util/List;

    move-result-object v2

    .line 281
    const/4 v0, 0x0

    .line 282
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_a

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/kingroot/kinguser/ai/fore/IAntiInjectSwitcherOpObserver;

    if-eqz v1, :cond_a

    .line 283
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ai/fore/IAntiInjectSwitcherOpObserver;

    move-object v1, v0

    .line 287
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v6, :cond_9

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_9

    .line 288
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v2, v0

    .line 292
    :goto_2
    invoke-static {}, Lcom/kingroot/kinguser/ahi;->xc()Lcom/kingroot/kinguser/ahi;

    move-result-object v4

    .line 293
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub$2;->aqb:Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;

    invoke-static {v0}, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;->access$000(Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 295
    invoke-virtual {v4}, Lcom/kingroot/kinguser/ahi;->wc()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 296
    invoke-virtual {v4, v6}, Lcom/kingroot/kinguser/ahi;->aI(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 298
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub$2;->aqb:Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;

    invoke-static {v0, v4}, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;->access$100(Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;Lcom/kingroot/kinguser/ahi;)V

    .line 299
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub$2;->aqb:Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;

    invoke-static {v0}, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;->access$200(Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;)V

    .line 300
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub$2;->aqb:Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;

    invoke-static {v0, v1, v3}, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;->access$300(Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;Lcom/kingroot/kinguser/ai/fore/IAntiInjectSwitcherOpObserver;I)V

    goto :goto_0

    .line 306
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v0

    .line 307
    invoke-virtual {v0, v6}, Lcom/kingroot/kinguser/abc;->isRootPermition(Z)Z

    move-result v5

    if-nez v5, :cond_2

    .line 308
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub$2;->aqb:Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;

    invoke-static {v0, v1, v6}, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;->access$300(Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;Lcom/kingroot/kinguser/ai/fore/IAntiInjectSwitcherOpObserver;I)V

    goto :goto_0

    .line 312
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/ahl;->xl()Z

    .line 316
    iget-object v5, p0, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub$2;->aqb:Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;

    invoke-static {v5}, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;->access$400(Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;)Lcom/kingroot/kinguser/util/protect/RebootStat;

    move-result-object v5

    iget-object v6, p0, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub$2;->aqb:Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;

    invoke-static {v6}, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;->access$500(Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;)Lcom/kingroot/kinguser/bhn;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/kingroot/kinguser/bho;->a(Lcom/kingroot/kinguser/util/protect/RebootStat;Lcom/kingroot/kinguser/bhn;)V

    .line 319
    sget-object v5, Lcom/kingroot/kinguser/bho;->bqT:Ljava/lang/Object;

    monitor-enter v5

    .line 321
    :try_start_0
    iget-object v6, p0, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub$2;->aqb:Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;

    invoke-static {v6}, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;->access$400(Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;)Lcom/kingroot/kinguser/util/protect/RebootStat;

    move-result-object v6

    const/4 v7, 0x1

    const-string v8, "0"

    invoke-static {v6, v7, v8}, Lcom/kingroot/kinguser/bho;->b(Lcom/kingroot/kinguser/util/protect/RebootStat;ILjava/lang/String;)V

    .line 325
    invoke-virtual {v4}, Lcom/kingroot/kinguser/ahi;->wc()Z

    move-result v6

    if-nez v6, :cond_8

    .line 327
    const-string v6, "/system/xbin/supolicy --live \"allow appdomain { init zygote } unix_stream_socket { connectto read write }\""

    invoke-virtual {v0, v6}, Lcom/kingroot/kinguser/abc;->el(Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;

    .line 330
    const-string v0, "mod_aid.jar"

    const-string v6, "mod_aid"

    const-string v7, "dr"

    invoke-static {v0, v6, v7}, Lcom/kingroot/kinguser/bgm;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 334
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 338
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub$2;->aqb:Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;

    invoke-static {v0}, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;->access$400(Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;)Lcom/kingroot/kinguser/util/protect/RebootStat;

    move-result-object v0

    iget-object v2, p0, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub$2;->aqb:Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;

    invoke-static {v2}, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;->access$500(Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;)Lcom/kingroot/kinguser/bhn;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/bho;->c(Lcom/kingroot/kinguser/util/protect/RebootStat;Lcom/kingroot/kinguser/bhn;)V

    .line 340
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub$2;->aqb:Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;->access$300(Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;Lcom/kingroot/kinguser/ai/fore/IAntiInjectSwitcherOpObserver;I)V

    .line 341
    monitor-exit v5

    goto/16 :goto_0

    .line 453
    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 344
    :cond_3
    :try_start_1
    const-class v0, Lcom/kingroot/kinguser/hm;

    invoke-static {v0}, Lcom/kingroot/kinguser/ih;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/hm;

    .line 345
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 346
    const-string v8, "ModServiceName"

    const-string v9, "com.kingroot.kinguser.aid1"

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    const-string v8, "com.kingroot.kinguser.aid.DaemonMod"

    const-string v9, "com.kingroot.kinguser:aid"

    invoke-interface {v0, v6, v8, v9, v7}, Lcom/kingroot/kinguser/hm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v0

    .line 358
    :goto_3
    iget-object v6, p0, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub$2;->aqb:Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;

    invoke-static {v6}, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;->access$400(Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;)Lcom/kingroot/kinguser/util/protect/RebootStat;

    move-result-object v6

    const/4 v7, 0x2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/kingroot/kinguser/bho;->b(Lcom/kingroot/kinguser/util/protect/RebootStat;ILjava/lang/String;)V

    .line 360
    if-eqz v0, :cond_4

    .line 362
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub$2;->aqb:Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;

    invoke-static {v0}, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;->access$400(Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;)Lcom/kingroot/kinguser/util/protect/RebootStat;

    move-result-object v0

    iget-object v2, p0, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub$2;->aqb:Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;

    invoke-static {v2}, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;->access$500(Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;)Lcom/kingroot/kinguser/bhn;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/bho;->c(Lcom/kingroot/kinguser/util/protect/RebootStat;Lcom/kingroot/kinguser/bhn;)V

    .line 365
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub$2;->aqb:Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;->access$300(Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;Lcom/kingroot/kinguser/ai/fore/IAntiInjectSwitcherOpObserver;I)V

    .line 366
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 373
    :cond_4
    :goto_4
    :try_start_2
    invoke-virtual {v4}, Lcom/kingroot/kinguser/ahi;->wc()Z

    move-result v0

    if-nez v0, :cond_5

    add-int/lit8 v0, v3, 0x1

    const/16 v6, 0x32

    if-ge v3, v6, :cond_5

    .line 374
    const-wide/16 v6, 0x64

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v3, v0

    goto :goto_4

    .line 376
    :catch_0
    move-exception v0

    .line 381
    :cond_5
    :try_start_3
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub$2;->aqb:Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;

    invoke-static {v0}, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;->access$400(Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;)Lcom/kingroot/kinguser/util/protect/RebootStat;

    move-result-object v0

    const/4 v3, 0x3

    const-string v6, "0"

    invoke-static {v0, v3, v6}, Lcom/kingroot/kinguser/bho;->b(Lcom/kingroot/kinguser/util/protect/RebootStat;ILjava/lang/String;)V

    .line 383
    invoke-virtual {v4}, Lcom/kingroot/kinguser/ahi;->wc()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    .line 384
    invoke-virtual {v4, v0}, Lcom/kingroot/kinguser/ahi;->aI(Z)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 387
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub$2;->aqb:Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;

    invoke-static {v0, v4}, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;->access$100(Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;Lcom/kingroot/kinguser/ahi;)V

    .line 403
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub$2;->aqb:Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;->access$600(Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;I)I

    move-result v0

    .line 408
    iget-object v2, p0, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub$2;->aqb:Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;

    invoke-static {v2}, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;->access$400(Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;)Lcom/kingroot/kinguser/util/protect/RebootStat;

    move-result-object v2

    const/4 v3, 0x4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v3, v6}, Lcom/kingroot/kinguser/bho;->b(Lcom/kingroot/kinguser/util/protect/RebootStat;ILjava/lang/String;)V

    .line 411
    if-eqz v0, :cond_7

    .line 413
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Lcom/kingroot/kinguser/ahi;->aI(Z)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 418
    const-wide/16 v2, 0x3a98

    :try_start_4
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 426
    :goto_5
    :try_start_5
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub$2;->aqb:Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;

    invoke-static {v0}, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;->access$400(Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;)Lcom/kingroot/kinguser/util/protect/RebootStat;

    move-result-object v0

    iget-object v2, p0, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub$2;->aqb:Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;

    invoke-static {v2}, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;->access$500(Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;)Lcom/kingroot/kinguser/bhn;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/bho;->c(Lcom/kingroot/kinguser/util/protect/RebootStat;Lcom/kingroot/kinguser/bhn;)V

    .line 428
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub$2;->aqb:Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;->access$300(Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;Lcom/kingroot/kinguser/ai/fore/IAntiInjectSwitcherOpObserver;I)V

    .line 453
    :goto_6
    monitor-exit v5

    goto/16 :goto_0

    .line 392
    :cond_6
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub$2;->aqb:Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;

    invoke-static {v0}, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;->access$400(Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;)Lcom/kingroot/kinguser/util/protect/RebootStat;

    move-result-object v0

    iget-object v2, p0, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub$2;->aqb:Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;

    invoke-static {v2}, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;->access$500(Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;)Lcom/kingroot/kinguser/bhn;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/bho;->c(Lcom/kingroot/kinguser/util/protect/RebootStat;Lcom/kingroot/kinguser/bhn;)V

    .line 394
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub$2;->aqb:Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;->access$300(Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;Lcom/kingroot/kinguser/ai/fore/IAntiInjectSwitcherOpObserver;I)V

    .line 395
    monitor-exit v5

    goto/16 :goto_0

    .line 431
    :cond_7
    invoke-static {}, Lcom/kingroot/kinguser/ahl;->xk()Z

    .line 434
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub$2;->aqb:Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;->access$300(Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;Lcom/kingroot/kinguser/ai/fore/IAntiInjectSwitcherOpObserver;I)V

    .line 437
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub$2;->aqb:Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;

    invoke-static {v0}, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;->access$200(Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 442
    const-wide/16 v0, 0x3a98

    :try_start_6
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 450
    :goto_7
    :try_start_7
    iget-object v0, p0, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub$2;->aqb:Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;

    invoke-static {v0}, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;->access$400(Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;)Lcom/kingroot/kinguser/util/protect/RebootStat;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub$2;->aqb:Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;

    invoke-static {v1}, Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;->access$500(Lcom/kingroot/kinguser/ai/KAntiInjectClientManagerService$Stub;)Lcom/kingroot/kinguser/bhn;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bho;->d(Lcom/kingroot/kinguser/util/protect/RebootStat;Lcom/kingroot/kinguser/bhn;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_6

    .line 419
    :catch_1
    move-exception v0

    goto :goto_5

    .line 443
    :catch_2
    move-exception v0

    goto :goto_7

    :cond_8
    move v0, v3

    goto/16 :goto_3

    :cond_9
    move v2, v3

    goto/16 :goto_2

    :cond_a
    move-object v1, v0

    goto/16 :goto_1
.end method
