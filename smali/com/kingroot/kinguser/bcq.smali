.class public abstract Lcom/kingroot/kinguser/bcq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bix:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingroot/kinguser/security/entity/ActionRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-direct {p0}, Lcom/kingroot/kinguser/bcq;->XQ()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bcq;->bix:Ljava/util/Map;

    .line 71
    return-void
.end method

.method private N(Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 290
    iget-object v0, p0, Lcom/kingroot/kinguser/bcq;->bix:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/security/entity/ActionRecord;

    .line 291
    if-nez v0, :cond_0

    .line 292
    new-instance v0, Lcom/kingroot/kinguser/security/entity/ActionRecord;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, p2, v2, v3}, Lcom/kingroot/kinguser/security/entity/ActionRecord;-><init>(IJ)V

    .line 293
    iget-object v1, p0, Lcom/kingroot/kinguser/bcq;->bix:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    :goto_0
    return-void

    .line 295
    :cond_0
    iput p2, v0, Lcom/kingroot/kinguser/security/entity/ActionRecord;->flag:I

    .line 296
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/kingroot/kinguser/security/entity/ActionRecord;->when:J

    goto :goto_0
.end method

.method private XP()V
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/kingroot/kinguser/bcq;->bix:Ljava/util/Map;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bcq;->XR()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/security/entity/ActionRecord;->b(Ljava/util/Map;Ljava/lang/String;)V

    .line 302
    return-void
.end method

.method private XQ()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingroot/kinguser/security/entity/ActionRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 305
    invoke-direct {p0}, Lcom/kingroot/kinguser/bcq;->XR()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/security/entity/ActionRecord;->kI(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private XR()Ljava/lang/String;
    .locals 2

    .prologue
    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/kingroot/kinguser/bcq;->XO()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "6000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private XS()J
    .locals 4

    .prologue
    .line 329
    invoke-direct {p0}, Lcom/kingroot/kinguser/bcq;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "7001"

    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/bcq;->kF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bcq;)J
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/kingroot/kinguser/bcq;->XS()J

    move-result-wide v0

    return-wide v0
.end method

.method private bL(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 239
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 240
    const/4 v2, 0x2

    invoke-direct {p0, v0, v2}, Lcom/kingroot/kinguser/bcq;->N(Ljava/lang/String;I)V

    goto :goto_0

    .line 242
    :cond_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/bcq;->XP()V

    .line 243
    return-void
.end method

.method private cr(J)V
    .locals 3

    .prologue
    .line 324
    invoke-direct {p0}, Lcom/kingroot/kinguser/bcq;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "7001"

    .line 325
    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/bcq;->kF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 324
    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 325
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 326
    return-void
.end method

.method private getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 315
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 316
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bcq;->XO()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "6001"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 315
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private ih(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/security/entity/ActionRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 263
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 265
    iget-object v0, p0, Lcom/kingroot/kinguser/bcq;->bix:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/security/entity/ActionRecord;

    .line 266
    iget v3, v0, Lcom/kingroot/kinguser/security/entity/ActionRecord;->flag:I

    if-ne v3, p1, :cond_0

    .line 267
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 270
    :cond_1
    return-object v1
.end method

.method private kF(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/kingroot/kinguser/bcq;->XO()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public XK()Ljava/util/List;
    .locals 9
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
    const/4 v3, 0x0

    .line 143
    invoke-virtual {p0, v3}, Lcom/kingroot/kinguser/bcq;->dE(Z)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 144
    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->c(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    const/4 v0, 0x0

    .line 166
    :goto_0
    return-object v0

    .line 149
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 151
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 152
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v3

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 153
    iget-object v1, p0, Lcom/kingroot/kinguser/bcq;->bix:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/security/entity/ActionRecord;

    .line 154
    if-nez v1, :cond_2

    .line 155
    iget-object v2, p0, Lcom/kingroot/kinguser/bcq;->bix:Ljava/util/Map;

    new-instance v8, Lcom/kingroot/kinguser/security/entity/ActionRecord;

    invoke-direct {v8, v3, v6, v7}, Lcom/kingroot/kinguser/security/entity/ActionRecord;-><init>(IJ)V

    invoke-interface {v2, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const/4 v2, 0x1

    .line 159
    :cond_2
    iget v1, v1, Lcom/kingroot/kinguser/security/entity/ActionRecord;->flag:I

    const/4 v8, 0x2

    if-ne v1, v8, :cond_1

    .line 160
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 163
    :cond_3
    if-eqz v2, :cond_4

    .line 164
    invoke-direct {p0}, Lcom/kingroot/kinguser/bcq;->XP()V

    :cond_4
    move-object v0, v4

    .line 166
    goto :goto_0
.end method

.method public XL()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/security/entity/ActionRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 249
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/bcq;->ih(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected XM()J
    .locals 2

    .prologue
    .line 275
    const-wide/32 v0, 0xf731400

    return-wide v0
.end method

.method protected XN()J
    .locals 2

    .prologue
    .line 280
    const-wide/32 v0, 0xdbba00

    return-wide v0
.end method

.method protected abstract XO()Ljava/lang/String;
.end method

.method protected abstract dE(Z)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingroot/kinguser/bdh;",
            ">;"
        }
    .end annotation
.end method

.method public dF(Z)Ljava/util/Map;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingroot/kinguser/bdh;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 87
    if-eqz p1, :cond_0

    .line 88
    invoke-direct {p0}, Lcom/kingroot/kinguser/bcq;->XQ()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bcq;->bix:Ljava/util/Map;

    .line 91
    :cond_0
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/bcq;->dE(Z)Ljava/util/Map;

    move-result-object v10

    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 95
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 97
    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move v7, v8

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    .line 98
    iget-object v0, p0, Lcom/kingroot/kinguser/bcq;->bix:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/security/entity/ActionRecord;

    .line 99
    if-nez v0, :cond_4

    .line 100
    new-instance v0, Lcom/kingroot/kinguser/security/entity/ActionRecord;

    invoke-direct {v0, v8, v2, v3}, Lcom/kingroot/kinguser/security/entity/ActionRecord;-><init>(IJ)V

    .line 101
    iget-object v1, p0, Lcom/kingroot/kinguser/bcq;->bix:Ljava/util/Map;

    invoke-interface {v1, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v9, v0

    .line 103
    :goto_1
    iget v0, v9, Lcom/kingroot/kinguser/security/entity/ActionRecord;->flag:I

    packed-switch v0, :pswitch_data_0

    :cond_1
    move v0, v7

    :goto_2
    move v7, v0

    .line 129
    goto :goto_0

    .line 105
    :pswitch_0
    invoke-interface {v10, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v11, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v7

    .line 106
    goto :goto_2

    :pswitch_1
    move v0, v7

    .line 110
    goto :goto_2

    :pswitch_2
    move v0, v7

    .line 114
    goto :goto_2

    .line 119
    :pswitch_3
    iget-wide v0, v9, Lcom/kingroot/kinguser/security/entity/ActionRecord;->when:J

    invoke-virtual {p0}, Lcom/kingroot/kinguser/bcq;->XM()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/acu;->b(JJJ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    invoke-interface {v10, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v11, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    invoke-virtual {v9, v8, v2, v3}, Lcom/kingroot/kinguser/security/entity/ActionRecord;->h(IJ)V

    .line 122
    const/4 v7, 0x1

    move v0, v7

    goto :goto_2

    .line 131
    :cond_2
    if-eqz v7, :cond_3

    .line 132
    invoke-direct {p0}, Lcom/kingroot/kinguser/bcq;->XP()V

    .line 135
    :cond_3
    return-object v11

    :cond_4
    move-object v9, v0

    goto :goto_1

    .line 103
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public h(Ljava/util/List;I)Z
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 184
    invoke-static {p1}, Lcom/kingroot/kinguser/yy;->c(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    const/4 v0, 0x1

    .line 189
    :goto_0
    return v0

    .line 187
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/bcq;->cr(J)V

    .line 188
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bcq;->bL(Ljava/util/List;)V

    .line 189
    invoke-virtual {p0, p1, p2}, Lcom/kingroot/kinguser/bcq;->i(Ljava/util/List;I)Z

    move-result v0

    goto :goto_0
.end method

.method protected abstract i(Ljava/util/List;I)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation
.end method

.method public ig(I)V
    .locals 6

    .prologue
    .line 199
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v4, 0x0

    new-instance v5, Lcom/kingroot/kinguser/bcq$1;

    invoke-direct {v5, p0, p1}, Lcom/kingroot/kinguser/bcq$1;-><init>(Lcom/kingroot/kinguser/bcq;I)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 214
    return-void
.end method

.method public kD(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/kingroot/kinguser/bcq;->N(Ljava/lang/String;I)V

    .line 222
    invoke-direct {p0}, Lcom/kingroot/kinguser/bcq;->XP()V

    .line 223
    return-void
.end method

.method public kE(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 230
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/kingroot/kinguser/bcq;->N(Ljava/lang/String;I)V

    .line 231
    invoke-direct {p0}, Lcom/kingroot/kinguser/bcq;->XP()V

    .line 232
    return-void
.end method
