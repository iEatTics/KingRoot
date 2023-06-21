.class public Lcom/kingroot/kinguser/aei;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Landroid/content/Context;Lcom/kingroot/kingmaster/network/updata/CheckResult;Lcom/kingroot/kinguser/ah;)Lcom/kingroot/kingmaster/network/updata/CheckResult;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 221
    iget-object v0, p1, Lcom/kingroot/kingmaster/network/updata/CheckResult;->mUpdateInfoList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/network/download/UpdateInfo;

    .line 222
    iget-object v1, p2, Lcom/kingroot/kinguser/ah;->url:Ljava/lang/String;

    iput-object v1, v0, Lcom/kingroot/common/network/download/UpdateInfo;->url:Ljava/lang/String;

    .line 223
    iget v1, p2, Lcom/kingroot/kinguser/ah;->gV:I

    iput v1, v0, Lcom/kingroot/common/network/download/UpdateInfo;->buildNum:I

    .line 226
    iget-object v1, p2, Lcom/kingroot/kinguser/ah;->gU:Lcom/kingroot/kinguser/n;

    .line 227
    if-eqz v1, :cond_0

    .line 228
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    iget v3, v1, Lcom/kingroot/kinguser/n;->fT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 230
    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    iget v3, v1, Lcom/kingroot/kinguser/n;->fU:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 232
    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    iget v1, v1, Lcom/kingroot/kinguser/n;->fV:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kingroot/common/network/download/UpdateInfo;->version:Ljava/lang/String;

    .line 236
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/kingroot/kingmaster/network/updata/CheckResult;->mVersion:Ljava/lang/String;

    .line 240
    :cond_0
    iget v0, p2, Lcom/kingroot/kinguser/ah;->gW:I

    int-to-long v0, v0

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    invoke-static {p0, v0, v1}, Lcom/kingroot/kinguser/rs;->b(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/kingroot/kingmaster/network/updata/CheckResult;->mSizeInfo:Ljava/lang/String;

    .line 243
    invoke-static {}, Lcom/kingroot/kinguser/zb;->pj()Z

    move-result v0

    if-nez v0, :cond_1

    .line 245
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f0703b9

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/kingroot/kingmaster/network/updata/CheckResult;->mMessage:Ljava/lang/String;

    .line 249
    :goto_0
    return-object p1

    .line 247
    :cond_1
    iget-object v0, p2, Lcom/kingroot/kinguser/ah;->newFeature:Ljava/lang/String;

    iput-object v0, p1, Lcom/kingroot/kingmaster/network/updata/CheckResult;->mMessage:Ljava/lang/String;

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;ZLcom/kingroot/kinguser/u;)Lcom/kingroot/kingmaster/network/updata/CheckResult;
    .locals 6

    .prologue
    .line 120
    if-nez p2, :cond_0

    .line 121
    const/4 v0, 0x0

    .line 133
    :goto_0
    return-object v0

    .line 123
    :cond_0
    iget v0, p2, Lcom/kingroot/kinguser/u;->gh:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_2

    const/4 v2, 0x1

    .line 124
    :goto_1
    new-instance v3, Lcom/kingroot/kinguser/ah;

    invoke-direct {v3}, Lcom/kingroot/kinguser/ah;-><init>()V

    .line 125
    if-eqz v2, :cond_1

    .line 126
    new-instance v0, Lcom/qq/taf/jce/JceInputStream;

    iget-object v1, p2, Lcom/kingroot/kinguser/u;->gn:[B

    invoke-direct {v0, v1}, Lcom/qq/taf/jce/JceInputStream;-><init>([B)V

    .line 127
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Lcom/qq/taf/jce/JceInputStream;->setServerEncoding(Ljava/lang/String;)I

    .line 128
    invoke-virtual {v3, v0}, Lcom/kingroot/kinguser/ah;->readFrom(Lcom/qq/taf/jce/JceInputStream;)V

    .line 131
    :cond_1
    iget-object v4, p2, Lcom/kingroot/kinguser/u;->gp:Lcom/kingroot/kinguser/aj;

    .line 133
    iget-object v0, p2, Lcom/kingroot/kinguser/u;->go:Lcom/kingroot/kinguser/ai;

    iget v5, v0, Lcom/kingroot/kinguser/ai;->ga:I

    move-object v0, p0

    move v1, p1

    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/aei;->a(Landroid/content/Context;ZZLcom/kingroot/kinguser/ah;Lcom/kingroot/kinguser/aj;I)Lcom/kingroot/kingmaster/network/updata/CheckResult;

    move-result-object v0

    goto :goto_0

    .line 123
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;ZZLcom/kingroot/kinguser/ah;Lcom/kingroot/kinguser/aj;I)Lcom/kingroot/kingmaster/network/updata/CheckResult;
    .locals 6
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v1, 0x5

    const/4 v0, 0x1

    .line 154
    new-instance v2, Lcom/kingroot/kingmaster/network/updata/CheckResult;

    invoke-direct {v2}, Lcom/kingroot/kingmaster/network/updata/CheckResult;-><init>()V

    .line 155
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/kingroot/kingmaster/network/updata/CheckResult;->mCheckTime:J

    .line 156
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/kingroot/kingmaster/network/updata/CheckResult;->mUpdateInfoList:Ljava/util/List;

    .line 157
    iput p5, v2, Lcom/kingroot/kingmaster/network/updata/CheckResult;->mValidTime:I

    .line 158
    iget v3, p3, Lcom/kingroot/kinguser/ah;->hc:I

    iput v3, v2, Lcom/kingroot/kingmaster/network/updata/CheckResult;->mNoticeInterval:I

    .line 159
    iget-boolean v3, p3, Lcom/kingroot/kinguser/ah;->gY:Z

    iput-boolean v3, v2, Lcom/kingroot/kingmaster/network/updata/CheckResult;->mIsSilentDownload:Z

    .line 161
    const/4 v3, 0x0

    .line 163
    if-eqz p4, :cond_3

    .line 164
    iget v3, p4, Lcom/kingroot/kinguser/aj;->type:I

    sparse-switch v3, :sswitch_data_0

    .line 186
    :goto_0
    :sswitch_0
    if-eqz p4, :cond_2

    iget v3, p4, Lcom/kingroot/kinguser/aj;->type:I

    if-ne v3, v0, :cond_2

    .line 190
    :goto_1
    new-instance v1, Lcom/kingroot/common/network/download/UpdateInfo;

    invoke-direct {v1}, Lcom/kingroot/common/network/download/UpdateInfo;-><init>()V

    .line 191
    iput v0, v1, Lcom/kingroot/common/network/download/UpdateInfo;->type:I

    .line 193
    const/high16 v0, 0x200000

    iput v0, v1, Lcom/kingroot/common/network/download/UpdateInfo;->flag:I

    .line 194
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/kingroot/common/network/download/UpdateInfo;->fileName:Ljava/lang/String;

    .line 196
    if-eqz p4, :cond_0

    .line 197
    iget-object v0, p4, Lcom/kingroot/kinguser/aj;->title:Ljava/lang/String;

    iput-object v0, v1, Lcom/kingroot/common/network/download/UpdateInfo;->title:Ljava/lang/String;

    .line 198
    iget-object v0, p4, Lcom/kingroot/kinguser/aj;->gc:Ljava/lang/String;

    iput-object v0, v1, Lcom/kingroot/common/network/download/UpdateInfo;->message:Ljava/lang/String;

    .line 201
    :cond_0
    iget-object v0, v2, Lcom/kingroot/kingmaster/network/updata/CheckResult;->mUpdateInfoList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    if-eqz p2, :cond_1

    .line 204
    invoke-static {p0, v2, p3}, Lcom/kingroot/kinguser/aei;->a(Landroid/content/Context;Lcom/kingroot/kingmaster/network/updata/CheckResult;Lcom/kingroot/kinguser/ah;)Lcom/kingroot/kingmaster/network/updata/CheckResult;

    move-result-object v0

    .line 207
    :goto_2
    return-object v0

    .line 168
    :sswitch_1
    const/4 v1, 0x2

    .line 169
    goto :goto_0

    .line 171
    :sswitch_2
    const/4 v1, 0x4

    .line 172
    goto :goto_0

    :cond_1
    move-object v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move v1, v3

    goto :goto_0

    .line 164
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch
.end method

.method public static a(Lcom/kingroot/common/network/download/UpdateInfo;)Ljava/io/File;
    .locals 3
    .param p0    # Lcom/kingroot/common/network/download/UpdateInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 75
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/kingroot/kinguser/aei;->tn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/kingroot/kinguser/aei;->b(Lcom/kingroot/common/network/download/UpdateInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(ILcom/kingroot/common/network/download/UpdateInfo;Lcom/kingroot/kingmaster/network/updata/CheckResult;)V
    .locals 11
    .param p1    # Lcom/kingroot/common/network/download/UpdateInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/kingroot/kingmaster/network/updata/CheckResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 376
    invoke-static {}, Lcom/kingroot/kinguser/akh;->Au()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    :goto_0
    return-void

    .line 383
    :cond_0
    invoke-static {p1}, Lcom/kingroot/kinguser/aei;->a(Lcom/kingroot/common/network/download/UpdateInfo;)Ljava/io/File;

    move-result-object v6

    .line 384
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 387
    :goto_1
    iget-object v4, p1, Lcom/kingroot/common/network/download/UpdateInfo;->title:Ljava/lang/String;

    .line 388
    if-nez v4, :cond_5

    .line 389
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v4

    const v5, 0x7f0700cb

    invoke-virtual {v4, v5}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .line 396
    :goto_2
    if-eqz v0, :cond_4

    .line 397
    invoke-virtual {p2, v1}, Lcom/kingroot/kingmaster/network/updata/CheckResult;->au(Z)Ljava/lang/String;

    move-result-object v1

    move v4, v2

    .line 405
    :goto_3
    if-nez v1, :cond_1

    .line 406
    iget-object v1, p1, Lcom/kingroot/common/network/download/UpdateInfo;->message:Ljava/lang/String;

    .line 407
    if-nez v1, :cond_1

    .line 408
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v7, 0x7f0703bd

    invoke-virtual {v1, v7}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 414
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v7

    .line 415
    new-instance v8, Landroid/content/Intent;

    const-class v9, Lcom/kingroot/kinguser/activitys/CommonDialogActivity;

    invoke-direct {v8, v7, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 416
    const/high16 v9, 0x10000000

    invoke-virtual {v8, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 417
    const-string v9, "Type"

    invoke-virtual {v8, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 418
    const-string v4, "Title"

    invoke-virtual {v8, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 419
    const-string v4, "Content"

    invoke-virtual {v8, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 420
    const-string v1, "WhereFrom"

    invoke-virtual {v8, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 421
    if-eqz v0, :cond_2

    .line 422
    const-string v0, "UpdatePath"

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 425
    :cond_2
    invoke-virtual {v7, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 430
    :goto_4
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    move v1, p0

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/kingroot/kinguser/ady;->b(IIIII)V

    goto :goto_0

    :cond_3
    move v0, v3

    .line 384
    goto :goto_1

    .line 401
    :cond_4
    invoke-virtual {p2, v3}, Lcom/kingroot/kingmaster/network/updata/CheckResult;->au(Z)Ljava/lang/String;

    move-result-object v2

    move v4, v1

    move v10, v1

    move-object v1, v2

    move v2, v10

    .line 403
    goto :goto_3

    .line 426
    :catch_0
    move-exception v0

    goto :goto_4

    :cond_5
    move-object v5, v4

    goto :goto_2
.end method

.method public static a(Lcom/kingroot/kinguser/u;)Z
    .locals 1
    .param p0    # Lcom/kingroot/kinguser/u;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 260
    iget-object v0, p0, Lcom/kingroot/kinguser/u;->go:Lcom/kingroot/kinguser/ai;

    iget v0, v0, Lcom/kingroot/kinguser/ai;->ga:I

    invoke-static {v0}, Lcom/kingroot/kinguser/aei;->cL(I)Z

    move-result v0

    return v0
.end method

.method public static ad(J)Z
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 360
    invoke-static {}, Lcom/kingroot/kinguser/cbu;->akF()Lcom/kingroot/kinguser/cbu;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/kingroot/kinguser/cbu;->cO(J)Z

    move-result v0

    .line 362
    if-nez v0, :cond_0

    .line 363
    invoke-static {}, Lcom/kingroot/kinguser/aeg;->um()Lcom/kingroot/kinguser/aeg;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/kingroot/kinguser/aeg;->ab(J)V

    .line 365
    :cond_0
    return v0
.end method

.method public static b(Lcom/kingroot/kingmaster/network/updata/CheckResult;)Ljava/io/File;
    .locals 3
    .param p0    # Lcom/kingroot/kingmaster/network/updata/CheckResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 100
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kingmaster/network/updata/CheckResult;->mUpdateInfoList:Ljava/util/List;

    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->c(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 109
    :goto_0
    return-object v0

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kingmaster/network/updata/CheckResult;->mUpdateInfoList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/network/download/UpdateInfo;

    .line 105
    if-nez v0, :cond_2

    move-object v0, v1

    .line 106
    goto :goto_0

    .line 109
    :cond_2
    invoke-static {v0}, Lcom/kingroot/kinguser/aei;->a(Lcom/kingroot/common/network/download/UpdateInfo;)Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Lcom/kingroot/common/network/download/UpdateInfo;)Ljava/lang/String;
    .locals 4
    .param p0    # Lcom/kingroot/common/network/download/UpdateInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 83
    const-string v0, "KinguserV%1$sB%2$s.apk"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/kingroot/common/network/download/UpdateInfo;->version:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/kingroot/common/network/download/UpdateInfo;->buildNum:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Lcom/kingroot/kingmaster/network/updata/CheckResult;)Z
    .locals 1
    .param p0    # Lcom/kingroot/kingmaster/network/updata/CheckResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 275
    iget v0, p0, Lcom/kingroot/kingmaster/network/updata/CheckResult;->mValidTime:I

    invoke-static {v0}, Lcom/kingroot/kinguser/aei;->cL(I)Z

    move-result v0

    return v0
.end method

.method private static cL(I)Z
    .locals 4

    .prologue
    .line 264
    if-eqz p0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    int-to-long v2, p0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Lcom/kingroot/kingmaster/network/updata/CheckResult;)V
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 282
    if-nez p0, :cond_1

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 286
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kingmaster/network/updata/CheckResult;->mUpdateInfoList:Ljava/util/List;

    .line 287
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 291
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/kingroot/common/network/download/UpdateInfo;

    .line 292
    if-eqz v6, :cond_0

    iget-object v0, v6, Lcom/kingroot/common/network/download/UpdateInfo;->url:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 296
    iget-wide v0, p0, Lcom/kingroot/kingmaster/network/updata/CheckResult;->mTaskId:J

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/aei;->ad(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->CG()J

    move-result-wide v0

    .line 303
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 305
    iget v4, p0, Lcom/kingroot/kingmaster/network/updata/CheckResult;->mNoticeInterval:I

    int-to-long v4, v4

    const-wide/32 v8, 0x5265c00

    mul-long/2addr v4, v8

    .line 308
    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/adk;->b(JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    invoke-static {v6}, Lcom/kingroot/kinguser/aei;->a(Lcom/kingroot/common/network/download/UpdateInfo;)Ljava/io/File;

    move-result-object v1

    .line 315
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 317
    :goto_1
    iget v2, v6, Lcom/kingroot/common/network/download/UpdateInfo;->type:I

    packed-switch v2, :pswitch_data_0

    .line 350
    :goto_2
    :pswitch_0
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/aks;->aW(J)V

    goto :goto_0

    :cond_2
    move v0, v7

    .line 315
    goto :goto_1

    .line 326
    :pswitch_1
    invoke-static {}, Lcom/kingroot/kinguser/bgs;->abU()Lcom/kingroot/kinguser/bgs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bgs;->abW()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/kingroot/kinguser/bge;->abw()Lcom/kingroot/kinguser/bge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bge;->abx()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    :cond_3
    const/4 v0, 0x2

    invoke-static {v0, v6, p0}, Lcom/kingroot/kinguser/aei;->a(ILcom/kingroot/common/network/download/UpdateInfo;Lcom/kingroot/kingmaster/network/updata/CheckResult;)V

    goto :goto_2

    .line 337
    :pswitch_2
    invoke-static {}, Lcom/kingroot/kinguser/adm;->st()Lcom/kingroot/kinguser/adm;

    move-result-object v2

    iget-object v3, v6, Lcom/kingroot/common/network/download/UpdateInfo;->title:Ljava/lang/String;

    .line 338
    invoke-virtual {p0, v0}, Lcom/kingroot/kingmaster/network/updata/CheckResult;->av(Z)Ljava/lang/String;

    move-result-object v4

    .line 337
    invoke-virtual {v2, v1, v3, v4, v0}, Lcom/kingroot/kinguser/adm;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2

    .line 317
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static e(Lcom/kingroot/kingmaster/network/updata/CheckResult;)V
    .locals 2

    .prologue
    .line 440
    invoke-static {}, Lcom/kingroot/kinguser/aiv;->yw()Lcom/kingroot/kinguser/aiv;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aiv;->aO(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    :goto_0
    return-void

    .line 445
    :cond_0
    invoke-static {p0}, Lcom/kingroot/kinguser/aei;->d(Lcom/kingroot/kingmaster/network/updata/CheckResult;)V

    goto :goto_0
.end method

.method public static f(Lcom/kingroot/kingmaster/network/updata/CheckResult;)V
    .locals 6

    .prologue
    .line 449
    iget v0, p0, Lcom/kingroot/kingmaster/network/updata/CheckResult;->err:I

    if-eqz v0, :cond_1

    .line 461
    :cond_0
    :goto_0
    return-void

    .line 452
    :cond_1
    const-wide/32 v4, 0xf731400

    .line 455
    iget-wide v0, p0, Lcom/kingroot/kingmaster/network/updata/CheckResult;->mCheckTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/adk;->b(JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    invoke-static {p0}, Lcom/kingroot/kinguser/aei;->d(Lcom/kingroot/kingmaster/network/updata/CheckResult;)V

    goto :goto_0
.end method

.method public static tn()Ljava/lang/String;
    .locals 2

    .prologue
    .line 61
    invoke-static {}, Lcom/kingroot/kinguser/bgr;->iZ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-static {}, Lcom/kingroot/kinguser/ru;->iY()Ljava/lang/String;

    move-result-object v0

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/kinguserdown"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    :goto_0
    return-object v0

    .line 65
    :cond_0
    const-string v0, "download"

    invoke-static {v0}, Lcom/kingroot/kinguser/zl;->dx(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static uo()Ljava/io/File;
    .locals 1

    .prologue
    .line 90
    invoke-static {}, Lcom/kingroot/kinguser/aeg;->um()Lcom/kingroot/kinguser/aeg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aeg;->ue()Lcom/kingroot/kingmaster/network/updata/CheckResult;

    move-result-object v0

    .line 91
    invoke-static {v0}, Lcom/kingroot/kinguser/aei;->b(Lcom/kingroot/kingmaster/network/updata/CheckResult;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
