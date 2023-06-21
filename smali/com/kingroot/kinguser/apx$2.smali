.class Lcom/kingroot/kinguser/apx$2;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/apx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aKi:Lcom/kingroot/kinguser/apx;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/apx;)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lcom/kingroot/kinguser/apx$2;->aKi:Lcom/kingroot/kinguser/apx;

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
    const-wide/16 v8, 0x1f4

    const/4 v6, 0x0

    .line 253
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/bek;->a(Lcom/kingroot/kinguser/bed$a;)V

    .line 257
    invoke-static {}, Lcom/kingroot/kinguser/arq;->gK()V

    .line 258
    iget-object v0, p0, Lcom/kingroot/kinguser/apx$2;->aKi:Lcom/kingroot/kinguser/apx;

    invoke-static {v0}, Lcom/kingroot/kinguser/apx;->b(Lcom/kingroot/kinguser/apx;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 259
    iget-object v0, p0, Lcom/kingroot/kinguser/apx$2;->aKi:Lcom/kingroot/kinguser/apx;

    invoke-static {v0}, Lcom/kingroot/kinguser/apx;->c(Lcom/kingroot/kinguser/apx;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 260
    iget-object v0, p0, Lcom/kingroot/kinguser/apx$2;->aKi:Lcom/kingroot/kinguser/apx;

    invoke-static {v0, v6}, Lcom/kingroot/kinguser/apx;->a(Lcom/kingroot/kinguser/apx;I)I

    .line 262
    iget-object v0, p0, Lcom/kingroot/kinguser/apx$2;->aKi:Lcom/kingroot/kinguser/apx;

    invoke-static {v0}, Lcom/kingroot/kinguser/apx;->d(Lcom/kingroot/kinguser/apx;)Lcom/kingroot/kinguser/aqj;

    move-result-object v0

    .line 263
    if-eqz v0, :cond_0

    .line 264
    iget-object v1, p0, Lcom/kingroot/kinguser/apx$2;->aKi:Lcom/kingroot/kinguser/apx;

    invoke-static {v1}, Lcom/kingroot/kinguser/apx;->e(Lcom/kingroot/kinguser/apx;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/abc;->isRootPermition()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/kingroot/kinguser/apx$2;->aKi:Lcom/kingroot/kinguser/apx;

    invoke-static {v0}, Lcom/kingroot/kinguser/apx;->b(Lcom/kingroot/kinguser/apx;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/aqq;

    invoke-direct {v1}, Lcom/kingroot/kinguser/aqq;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/ais;->yp()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 273
    iget-object v0, p0, Lcom/kingroot/kinguser/apx$2;->aKi:Lcom/kingroot/kinguser/apx;

    invoke-static {v0}, Lcom/kingroot/kinguser/apx;->b(Lcom/kingroot/kinguser/apx;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/aqp;

    invoke-direct {v1}, Lcom/kingroot/kinguser/aqp;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/anf;->IU()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 278
    invoke-static {}, Lcom/kingroot/kinguser/alx;->HB()Lcom/kingroot/kinguser/alx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alx;->HD()Ljava/lang/Integer;

    move-result-object v0

    .line 279
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_3

    .line 280
    iget-object v1, p0, Lcom/kingroot/kinguser/apx$2;->aKi:Lcom/kingroot/kinguser/apx;

    invoke-static {v1}, Lcom/kingroot/kinguser/apx;->b(Lcom/kingroot/kinguser/apx;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/kingroot/kinguser/aqg;

    invoke-static {}, Lcom/kingroot/kinguser/alx;->HB()Lcom/kingroot/kinguser/alx;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/kingroot/kinguser/alx;->fk(I)I

    move-result v0

    invoke-direct {v2, v0}, Lcom/kingroot/kinguser/aqg;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/apx$2;->aKi:Lcom/kingroot/kinguser/apx;

    invoke-static {v0}, Lcom/kingroot/kinguser/apx;->b(Lcom/kingroot/kinguser/apx;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/aqm;

    invoke-direct {v1}, Lcom/kingroot/kinguser/aqm;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    :cond_4
    iget-object v0, p0, Lcom/kingroot/kinguser/apx$2;->aKi:Lcom/kingroot/kinguser/apx;

    invoke-static {v0}, Lcom/kingroot/kinguser/apx;->b(Lcom/kingroot/kinguser/apx;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/aqn;

    invoke-direct {v1}, Lcom/kingroot/kinguser/aqn;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    iget-object v0, p0, Lcom/kingroot/kinguser/apx$2;->aKi:Lcom/kingroot/kinguser/apx;

    invoke-static {v0}, Lcom/kingroot/kinguser/apx;->b(Lcom/kingroot/kinguser/apx;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/aqi;

    invoke-direct {v1}, Lcom/kingroot/kinguser/aqi;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/aop;->Kq()Lcom/kingroot/kinguser/aop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aop;->JY()Ljava/util/List;

    move-result-object v0

    .line 291
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 292
    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->e(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;

    .line 293
    if-eqz v0, :cond_5

    .line 296
    invoke-virtual {v0}, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->Km()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 298
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 312
    :catch_0
    move-exception v0

    .line 317
    :cond_6
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/apx$2;->aKi:Lcom/kingroot/kinguser/apx;

    invoke-static {v0}, Lcom/kingroot/kinguser/apx;->b(Lcom/kingroot/kinguser/apx;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/aqo;

    invoke-direct {v1}, Lcom/kingroot/kinguser/aqo;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 320
    new-instance v0, Lcom/kingroot/kinguser/are;

    invoke-direct {v0}, Lcom/kingroot/kinguser/are;-><init>()V

    .line 321
    iget-object v1, p0, Lcom/kingroot/kinguser/apx$2;->aKi:Lcom/kingroot/kinguser/apx;

    invoke-static {v1}, Lcom/kingroot/kinguser/apx;->b(Lcom/kingroot/kinguser/apx;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/are;->l(Ljava/util/Collection;)V

    .line 323
    new-instance v1, Lcom/kingroot/kinguser/aqv;

    invoke-direct {v1, v0}, Lcom/kingroot/kinguser/aqv;-><init>(Lcom/kingroot/kinguser/are;)V

    .line 325
    new-instance v0, Lcom/kingroot/kinguser/aqu;

    invoke-direct {v0}, Lcom/kingroot/kinguser/aqu;-><init>()V

    .line 327
    new-instance v2, Lcom/kingroot/kinguser/aqt;

    invoke-direct {v2}, Lcom/kingroot/kinguser/aqt;-><init>()V

    .line 328
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 332
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 333
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    new-instance v0, Lcom/kingroot/kinguser/aqr;

    new-instance v1, Lcom/kingroot/kinguser/apx$2$1;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/apx$2$1;-><init>(Lcom/kingroot/kinguser/apx$2;)V

    invoke-direct {v0, v3, v1}, Lcom/kingroot/kinguser/aqr;-><init>(Ljava/util/List;Lcom/kingroot/kinguser/aqr$a;)V

    .line 350
    iget-object v1, p0, Lcom/kingroot/kinguser/apx$2;->aKi:Lcom/kingroot/kinguser/apx;

    invoke-static {v1}, Lcom/kingroot/kinguser/apx;->c(Lcom/kingroot/kinguser/apx;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    iget-object v0, p0, Lcom/kingroot/kinguser/apx$2;->aKi:Lcom/kingroot/kinguser/apx;

    invoke-static {v0}, Lcom/kingroot/kinguser/apx;->c(Lcom/kingroot/kinguser/apx;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aqs;

    .line 352
    iget-object v2, p0, Lcom/kingroot/kinguser/apx$2;->aKi:Lcom/kingroot/kinguser/apx;

    invoke-static {v2}, Lcom/kingroot/kinguser/apx;->f(Lcom/kingroot/kinguser/apx;)Lcom/kingroot/kinguser/aqs$a;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/aqs;->a(Lcom/kingroot/kinguser/aqs$a;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 354
    :catch_1
    move-exception v0

    .line 359
    :cond_7
    invoke-interface {p1}, Lcom/kingroot/kinguser/bed$a;->nF()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 360
    invoke-interface {p1}, Lcom/kingroot/kinguser/bed$a;->nF()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 361
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_8

    .line 363
    :try_start_2
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_7

    .line 368
    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/kingroot/kinguser/apx$2;->aKi:Lcom/kingroot/kinguser/apx;

    invoke-static {v0}, Lcom/kingroot/kinguser/apx;->a(Lcom/kingroot/kinguser/apx;)Lcom/kingroot/kinguser/apx$a;

    move-result-object v1

    .line 372
    if-eqz v1, :cond_9

    .line 373
    :try_start_3
    invoke-interface {v1}, Lcom/kingroot/kinguser/apx$a;->Mf()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 379
    :cond_9
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 383
    :try_start_4
    iget-object v0, p0, Lcom/kingroot/kinguser/apx$2;->aKi:Lcom/kingroot/kinguser/apx;

    invoke-static {v0}, Lcom/kingroot/kinguser/apx;->c(Lcom/kingroot/kinguser/apx;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aqs;

    .line 385
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aqs;->My()Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    .line 388
    :catch_2
    move-exception v0

    .line 392
    :cond_a
    iget-object v0, p0, Lcom/kingroot/kinguser/apx$2;->aKi:Lcom/kingroot/kinguser/apx;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/apx;->a(Lcom/kingroot/kinguser/apx;Lcom/kingroot/kinguser/apx$a;)V

    .line 394
    const-string v0, ""

    .line 397
    :try_start_5
    iget-object v4, p0, Lcom/kingroot/kinguser/apx$2;->aKi:Lcom/kingroot/kinguser/apx;

    invoke-virtual {v4}, Lcom/kingroot/kinguser/apx;->Md()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_6

    move-result-object v0

    .line 402
    :goto_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    .line 403
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_b

    cmp-long v4, v2, v8

    if-gez v4, :cond_b

    .line 405
    sub-long v2, v8, v2

    :try_start_6
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_4

    .line 412
    :cond_b
    :goto_6
    if-eqz v1, :cond_c

    .line 413
    invoke-interface {v1, v0}, Lcom/kingroot/kinguser/apx$a;->ii(Ljava/lang/String;)V

    .line 418
    :cond_c
    if-eqz v1, :cond_d

    .line 419
    :try_start_7
    invoke-interface {v1}, Lcom/kingroot/kinguser/apx$a;->Mg()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5

    .line 424
    :cond_d
    :goto_7
    return-void

    .line 302
    :cond_e
    :try_start_8
    iget-object v0, p0, Lcom/kingroot/kinguser/apx$2;->aKi:Lcom/kingroot/kinguser/apx;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/apx;->b(Lcom/kingroot/kinguser/apx;I)Ljava/util/Set;

    move-result-object v0

    .line 303
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 304
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 305
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;

    .line 306
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, v0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->picUrls:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 307
    iget-object v4, v0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->iconUrl:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    invoke-static {}, Lcom/kingroot/kinguser/apv;->LO()Lcom/kingroot/kinguser/apv;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/kingroot/kinguser/apv;->aY(Ljava/util/List;)Ljava/util/Map;

    move-result-object v3

    .line 309
    iget-object v4, p0, Lcom/kingroot/kinguser/apx$2;->aKi:Lcom/kingroot/kinguser/apx;

    invoke-static {v4}, Lcom/kingroot/kinguser/apx;->b(Lcom/kingroot/kinguser/apx;)Ljava/util/List;

    move-result-object v4

    new-instance v5, Lcom/kingroot/kinguser/aqk;

    invoke-direct {v5, v0, v3}, Lcom/kingroot/kinguser/aqk;-><init>(Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;Ljava/util/Map;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_8

    .line 375
    :catch_3
    move-exception v0

    goto/16 :goto_3

    .line 406
    :catch_4
    move-exception v2

    goto :goto_6

    .line 421
    :catch_5
    move-exception v0

    goto :goto_7

    .line 398
    :catch_6
    move-exception v4

    goto :goto_5

    .line 364
    :catch_7
    move-exception v0

    goto/16 :goto_2
.end method
