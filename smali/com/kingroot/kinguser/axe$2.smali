.class Lcom/kingroot/kinguser/axe$2;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/axe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aXW:Lcom/kingroot/kinguser/axe;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axe;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/kingroot/kinguser/axe$2;->aXW:Lcom/kingroot/kinguser/axe;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method

.method private TQ()Landroid/util/SparseArray;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/kingroot/kinguser/agd$a;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x6

    const/4 v8, 0x5

    const/4 v7, 0x3

    const/4 v4, 0x2

    const/4 v6, 0x1

    .line 177
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 178
    iget-object v1, p0, Lcom/kingroot/kinguser/axe$2;->aXW:Lcom/kingroot/kinguser/axe;

    const-wide/32 v2, 0x7f070465

    .line 179
    invoke-virtual {v1, v2, v3}, Lcom/kingroot/kinguser/axe;->V(J)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020115

    invoke-static {v1, v4, v2}, Lcom/kingroot/kinguser/agd$a;->e(Ljava/lang/String;II)Lcom/kingroot/kinguser/agd$a;

    move-result-object v1

    .line 178
    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 182
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/kingroot/kinguser/axe$2;->aXW:Lcom/kingroot/kinguser/axe;

    const-wide/32 v4, 0x7f070466

    .line 183
    invoke-virtual {v2, v4, v5}, Lcom/kingroot/kinguser/axe;->V(J)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x9

    const v4, 0x7f020116

    invoke-static {v2, v3, v4}, Lcom/kingroot/kinguser/agd$a;->e(Ljava/lang/String;II)Lcom/kingroot/kinguser/agd$a;

    move-result-object v2

    .line 182
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 186
    invoke-static {}, Lcom/kingroot/kinguser/abd;->qb()I

    move-result v1

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 187
    iget-object v1, p0, Lcom/kingroot/kinguser/axe$2;->aXW:Lcom/kingroot/kinguser/axe;

    const-wide/32 v2, 0x7f070469

    .line 188
    invoke-virtual {v1, v2, v3}, Lcom/kingroot/kinguser/axe;->V(J)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020119

    invoke-static {v1, v7, v2}, Lcom/kingroot/kinguser/agd$a;->e(Ljava/lang/String;II)Lcom/kingroot/kinguser/agd$a;

    move-result-object v1

    .line 187
    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 192
    :cond_0
    iget-object v1, p0, Lcom/kingroot/kinguser/axe$2;->aXW:Lcom/kingroot/kinguser/axe;

    const-wide/32 v2, 0x7f070461

    .line 193
    invoke-virtual {v1, v2, v3}, Lcom/kingroot/kinguser/axe;->V(J)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020112

    invoke-static {v1, v6, v2}, Lcom/kingroot/kinguser/agd$a;->e(Ljava/lang/String;II)Lcom/kingroot/kinguser/agd$a;

    move-result-object v1

    .line 192
    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 196
    iget-object v1, p0, Lcom/kingroot/kinguser/axe$2;->aXW:Lcom/kingroot/kinguser/axe;

    const-wide/32 v2, 0x7f070463

    .line 197
    invoke-virtual {v1, v2, v3}, Lcom/kingroot/kinguser/axe;->V(J)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020113

    invoke-static {v1, v9, v2}, Lcom/kingroot/kinguser/agd$a;->e(Ljava/lang/String;II)Lcom/kingroot/kinguser/agd$a;

    move-result-object v1

    .line 196
    invoke-virtual {v0, v9, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 200
    iget-object v1, p0, Lcom/kingroot/kinguser/axe$2;->aXW:Lcom/kingroot/kinguser/axe;

    const-wide/32 v2, 0x7f070464

    .line 201
    invoke-virtual {v1, v2, v3}, Lcom/kingroot/kinguser/axe;->V(J)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020114

    invoke-static {v1, v8, v2}, Lcom/kingroot/kinguser/agd$a;->e(Ljava/lang/String;II)Lcom/kingroot/kinguser/agd$a;

    move-result-object v1

    .line 200
    invoke-virtual {v0, v8, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 204
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/kingroot/kinguser/axe$2;->aXW:Lcom/kingroot/kinguser/axe;

    const-wide/32 v4, 0x7f070468

    .line 205
    invoke-virtual {v2, v4, v5}, Lcom/kingroot/kinguser/axe;->V(J)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    const v4, 0x7f020118

    invoke-static {v2, v3, v4}, Lcom/kingroot/kinguser/agd$a;->e(Ljava/lang/String;II)Lcom/kingroot/kinguser/agd$a;

    move-result-object v2

    .line 204
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 208
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/kingroot/kinguser/axe$2;->aXW:Lcom/kingroot/kinguser/axe;

    const-wide/32 v4, 0x7f070467

    .line 209
    invoke-virtual {v2, v4, v5}, Lcom/kingroot/kinguser/axe;->V(J)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xb

    const v4, 0x7f020117

    invoke-static {v2, v3, v4}, Lcom/kingroot/kinguser/agd$a;->e(Ljava/lang/String;II)Lcom/kingroot/kinguser/agd$a;

    move-result-object v2

    .line 208
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 212
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/kingroot/kinguser/axe$2;->aXW:Lcom/kingroot/kinguser/axe;

    const-wide/32 v4, 0x7f07046a

    .line 213
    invoke-virtual {v2, v4, v5}, Lcom/kingroot/kinguser/axe;->V(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x7

    const v4, 0x7f02011a

    invoke-static {v2, v3, v4}, Lcom/kingroot/kinguser/agd$a;->e(Ljava/lang/String;II)Lcom/kingroot/kinguser/agd$a;

    move-result-object v2

    .line 212
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 216
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/kingroot/kinguser/axe$2;->aXW:Lcom/kingroot/kinguser/axe;

    const-wide/32 v4, 0x7f07046b

    .line 217
    invoke-virtual {v2, v4, v5}, Lcom/kingroot/kinguser/axe;->V(J)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xd

    const v4, 0x7f02011b

    invoke-static {v2, v3, v4}, Lcom/kingroot/kinguser/agd$a;->e(Ljava/lang/String;II)Lcom/kingroot/kinguser/agd$a;

    move-result-object v2

    .line 216
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 227
    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/4 v13, 0x1

    .line 232
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 233
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 234
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 235
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 237
    invoke-direct {p0}, Lcom/kingroot/kinguser/axe$2;->TQ()Landroid/util/SparseArray;

    move-result-object v5

    .line 238
    invoke-static {}, Lcom/kingroot/kinguser/ahg;->wT()Lcom/kingroot/kinguser/ahg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ahg;->wW()Ljava/util/List;

    move-result-object v6

    .line 239
    invoke-static {}, Lcom/kingroot/kinguser/ahg;->wT()Lcom/kingroot/kinguser/ahg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ahg;->wU()Ljava/util/List;

    move-result-object v0

    .line 240
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 242
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 244
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/advance/model/DefaultSettingInfo;

    .line 246
    iget-object v1, v0, Lcom/kingroot/kinguser/advance/model/DefaultSettingInfo;->pkgName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 250
    iget v1, v0, Lcom/kingroot/kinguser/advance/model/DefaultSettingInfo;->type:I

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/agd$a;

    .line 251
    if-eqz v1, :cond_0

    .line 253
    new-instance v10, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    iget-object v11, v0, Lcom/kingroot/kinguser/advance/model/DefaultSettingInfo;->apy:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    invoke-direct {v10, v11}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;-><init>(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)V

    iput-object v10, v1, Lcom/kingroot/kinguser/agd$a;->akO:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    .line 254
    iget v10, v0, Lcom/kingroot/kinguser/advance/model/DefaultSettingInfo;->type:I

    invoke-static {v10}, Lcom/kingroot/kinguser/ahg;->dm(I)Lcom/kingroot/kinguser/ahg$a;

    move-result-object v10

    .line 255
    iget-object v11, v0, Lcom/kingroot/kinguser/advance/model/DefaultSettingInfo;->pkgName:Ljava/lang/String;

    iget-object v12, v10, Lcom/kingroot/kinguser/ahg$a;->apm:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    iget-boolean v11, v10, Lcom/kingroot/kinguser/ahg$a;->apn:Z

    if-eqz v11, :cond_1

    .line 257
    const/4 v0, 0x2

    iput v0, v1, Lcom/kingroot/kinguser/agd$a;->status:I

    .line 258
    iget-object v0, v10, Lcom/kingroot/kinguser/ahg$a;->akM:Ljava/lang/String;

    iput-object v0, v1, Lcom/kingroot/kinguser/agd$a;->akM:Ljava/lang/String;

    .line 259
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 262
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v11

    iget-object v12, v0, Lcom/kingroot/kinguser/advance/model/DefaultSettingInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/kingroot/kinguser/zh;->du(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 264
    iput v13, v1, Lcom/kingroot/kinguser/agd$a;->status:I

    .line 265
    iget-object v10, v10, Lcom/kingroot/kinguser/ahg$a;->akM:Ljava/lang/String;

    iput-object v10, v1, Lcom/kingroot/kinguser/agd$a;->akM:Ljava/lang/String;

    .line 266
    iget v10, v1, Lcom/kingroot/kinguser/agd$a;->id:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-object v0, v0, Lcom/kingroot/kinguser/advance/model/DefaultSettingInfo;->pkgName:Ljava/lang/String;

    invoke-interface {v7, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    :goto_1
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 269
    :cond_2
    const/4 v0, 0x4

    iput v0, v1, Lcom/kingroot/kinguser/agd$a;->status:I

    .line 270
    iget-object v0, v10, Lcom/kingroot/kinguser/ahg$a;->akM:Ljava/lang/String;

    iput-object v0, v1, Lcom/kingroot/kinguser/agd$a;->akM:Ljava/lang/String;

    goto :goto_1

    .line 276
    :cond_3
    invoke-static {v7}, Lcom/kingroot/kinguser/yy;->f(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 277
    iget-object v0, p0, Lcom/kingroot/kinguser/axe$2;->aXW:Lcom/kingroot/kinguser/axe;

    invoke-static {v0}, Lcom/kingroot/kinguser/axe;->j(Lcom/kingroot/kinguser/axe;)Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    .line 278
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/axe$2;->aXW:Lcom/kingroot/kinguser/axe;

    invoke-static {v0}, Lcom/kingroot/kinguser/axe;->j(Lcom/kingroot/kinguser/axe;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 279
    iget-object v0, p0, Lcom/kingroot/kinguser/axe$2;->aXW:Lcom/kingroot/kinguser/axe;

    invoke-static {v0}, Lcom/kingroot/kinguser/axe;->j(Lcom/kingroot/kinguser/axe;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 280
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    :cond_4
    iget-object v0, p0, Lcom/kingroot/kinguser/axe$2;->aXW:Lcom/kingroot/kinguser/axe;

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/axe;->a(Lcom/kingroot/kinguser/axe;I)V

    .line 286
    invoke-static {v2}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 288
    new-instance v0, Lcom/kingroot/kinguser/axe$2$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/axe$2$1;-><init>(Lcom/kingroot/kinguser/axe$2;)V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 297
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f07045b

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v13, [Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v1, v14

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 296
    invoke-static {v0}, Lcom/kingroot/kinguser/agd$a;->fq(Ljava/lang/String;)Lcom/kingroot/kinguser/agd$a;

    move-result-object v0

    .line 298
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    invoke-interface {v8, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 302
    :cond_5
    iget-object v0, p0, Lcom/kingroot/kinguser/axe$2;->aXW:Lcom/kingroot/kinguser/axe;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/axe;->b(Lcom/kingroot/kinguser/axe;I)V

    .line 305
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/advance/model/DefaultSettingInfo;

    .line 307
    iget-boolean v1, v0, Lcom/kingroot/kinguser/advance/model/DefaultSettingInfo;->apw:Z

    if-eqz v1, :cond_6

    .line 311
    iget v1, v0, Lcom/kingroot/kinguser/advance/model/DefaultSettingInfo;->type:I

    .line 313
    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/agd$a;

    .line 314
    if-eqz v1, :cond_6

    .line 316
    iget v0, v0, Lcom/kingroot/kinguser/advance/model/DefaultSettingInfo;->type:I

    invoke-static {v0}, Lcom/kingroot/kinguser/ahg;->dm(I)Lcom/kingroot/kinguser/ahg$a;

    move-result-object v0

    .line 318
    iget v6, v0, Lcom/kingroot/kinguser/ahg$a;->apl:I

    if-eqz v6, :cond_6

    .line 321
    iget-object v0, v0, Lcom/kingroot/kinguser/ahg$a;->akM:Ljava/lang/String;

    iput-object v0, v1, Lcom/kingroot/kinguser/agd$a;->akM:Ljava/lang/String;

    .line 322
    iput v14, v1, Lcom/kingroot/kinguser/agd$a;->status:I

    .line 324
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 280
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 328
    :cond_7
    invoke-static {v4}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 330
    new-instance v0, Lcom/kingroot/kinguser/axe$2$2;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/axe$2$2;-><init>(Lcom/kingroot/kinguser/axe$2;)V

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 339
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f070458

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v13, [Ljava/lang/Object;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v14

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 338
    invoke-static {v0}, Lcom/kingroot/kinguser/agd$a;->fq(Ljava/lang/String;)Lcom/kingroot/kinguser/agd$a;

    move-result-object v0

    .line 340
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    invoke-interface {v8, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 345
    :cond_8
    invoke-static {v3}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 347
    new-instance v0, Lcom/kingroot/kinguser/axe$2$3;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/axe$2$3;-><init>(Lcom/kingroot/kinguser/axe$2;)V

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 356
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f070459

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v13, [Ljava/lang/Object;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v14

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 355
    invoke-static {v0}, Lcom/kingroot/kinguser/agd$a;->fq(Ljava/lang/String;)Lcom/kingroot/kinguser/agd$a;

    move-result-object v0

    .line 357
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    invoke-interface {v8, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 361
    :cond_9
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 362
    iput v13, v0, Landroid/os/Message;->what:I

    .line 363
    iput-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 364
    iget-object v1, p0, Lcom/kingroot/kinguser/axe$2;->aXW:Lcom/kingroot/kinguser/axe;

    invoke-static {v1}, Lcom/kingroot/kinguser/axe;->k(Lcom/kingroot/kinguser/axe;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 365
    return-void
.end method
