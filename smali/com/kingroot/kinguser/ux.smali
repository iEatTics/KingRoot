.class public Lcom/kingroot/kinguser/ux;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static Ju:Lcom/kingroot/kinguser/wo;

.field private static final sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/ux;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private Jr:Ljava/lang/String;

.field private Js:Ljava/lang/String;

.field private Jt:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lcom/kingroot/kinguser/ux$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/ux$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/ux;->sInstance:Lcom/kingroot/kinguser/cce;

    .line 417
    new-instance v0, Lcom/kingroot/kinguser/ux$2;

    invoke-direct {v0}, Lcom/kingroot/kinguser/ux$2;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/ux;->Ju:Lcom/kingroot/kinguser/wo;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/ux;->Jr:Ljava/lang/String;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/ux;->Js:Ljava/lang/String;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/ux;->Jt:Z

    .line 69
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/ux$1;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/kingroot/kinguser/ux;-><init>()V

    return-void
.end method

.method public static Q(Z)Lcom/kingroot/kinguser/dc;
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 203
    new-instance v2, Lcom/kingroot/kinguser/dc;

    invoke-direct {v2}, Lcom/kingroot/kinguser/dc;-><init>()V

    .line 204
    const-string v0, ""

    iput-object v0, v2, Lcom/kingroot/kinguser/dc;->iv:Ljava/lang/String;

    .line 205
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->hZ()I

    move-result v0

    iput v0, v2, Lcom/kingroot/kinguser/dc;->dS:I

    .line 208
    invoke-static {}, Lcom/kingroot/kinguser/ux;->kW()I

    move-result v0

    iput v0, v2, Lcom/kingroot/kinguser/dc;->hT:I

    .line 211
    invoke-static {}, Lcom/kingroot/kinguser/wb;->nd()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    :goto_0
    add-int/2addr v0, v1

    .line 212
    invoke-static {}, Lcom/kingroot/kinguser/wb;->ne()Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v1, 0x8

    :cond_0
    add-int/2addr v0, v1

    .line 213
    iput v0, v2, Lcom/kingroot/kinguser/dc;->ii:I

    .line 215
    if-eqz p0, :cond_2

    .line 216
    invoke-static {}, Lcom/kingroot/kinguser/ux;->kT()Lcom/kingroot/kinguser/ux;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ux;->getSharkGuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/kingroot/kinguser/dc;->it:Ljava/lang/String;

    .line 221
    :goto_1
    return-object v2

    :cond_1
    move v0, v1

    .line 211
    goto :goto_0

    .line 218
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/aav;->getSharkGuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/kingroot/kinguser/dc;->it:Ljava/lang/String;

    goto :goto_1
.end method

.method private static a(ILjava/lang/Object;)Lcom/kingroot/kinguser/cf;
    .locals 4

    .prologue
    const/4 v2, 0x4

    .line 329
    new-instance v0, Lcom/kingroot/kinguser/cf;

    invoke-direct {v0}, Lcom/kingroot/kinguser/cf;-><init>()V

    .line 331
    invoke-virtual {v0, p0}, Lcom/kingroot/kinguser/cf;->i(I)V

    .line 333
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 334
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/cf;->h(I)V

    .line 335
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/cf;->j(I)V

    .line 363
    :cond_0
    :goto_0
    return-object v0

    .line 337
    :cond_1
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 338
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/cf;->h(I)V

    .line 339
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/cf;->F(Ljava/lang/String;)V

    goto :goto_0

    .line 341
    :cond_2
    instance-of v1, p1, Ljava/lang/Short;

    if-eqz v1, :cond_3

    .line 342
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/cf;->h(I)V

    .line 343
    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/cf;->a(S)V

    goto :goto_0

    .line 345
    :cond_3
    instance-of v1, p1, Ljava/lang/Long;

    if-eqz v1, :cond_4

    .line 346
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/cf;->h(I)V

    .line 347
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/cf;->l(J)V

    goto :goto_0

    .line 349
    :cond_4
    instance-of v1, p1, Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    .line 350
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/cf;->h(I)V

    .line 351
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/cf;->e(Z)V

    goto :goto_0

    .line 353
    :cond_5
    instance-of v1, p1, [Ljava/lang/Byte;

    if-eqz v1, :cond_6

    .line 354
    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/cf;->h(I)V

    .line 355
    check-cast p1, [Ljava/lang/Byte;

    check-cast p1, [Ljava/lang/Byte;

    invoke-static {p1}, Lcom/kingroot/kinguser/yv;->a([Ljava/lang/Byte;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/cf;->f([B)V

    goto :goto_0

    .line 357
    :cond_6
    instance-of v1, p1, [B

    if-eqz v1, :cond_0

    .line 358
    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/cf;->h(I)V

    .line 359
    check-cast p1, [B

    check-cast p1, [B

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/cf;->f([B)V

    goto :goto_0
.end method

.method public static i(Ljava/util/ArrayList;)Lcom/kingroot/kinguser/cg;
    .locals 12
    .param p0    # Ljava/util/ArrayList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;)",
            "Lcom/kingroot/kinguser/cg;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 237
    invoke-static {}, Lcom/kingroot/kinguser/bzt;->ge()Landroid/content/Context;

    move-result-object v3

    .line 239
    new-instance v4, Lcom/kingroot/kinguser/cg;

    invoke-direct {v4}, Lcom/kingroot/kinguser/cg;-><init>()V

    .line 240
    invoke-static {}, Lcom/kingroot/kinguser/wb;->nc()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    .line 242
    const/4 v6, 0x4

    invoke-virtual {v4, v6}, Lcom/kingroot/kinguser/cg;->k(I)V

    .line 243
    invoke-virtual {v4, v0}, Lcom/kingroot/kinguser/cg;->n(I)V

    .line 244
    invoke-virtual {v4, v0}, Lcom/kingroot/kinguser/cg;->l(I)V

    .line 245
    invoke-virtual {v4, v5}, Lcom/kingroot/kinguser/cg;->m(I)V

    .line 247
    const/16 v5, 0x7e9

    .line 248
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ic()I

    move-result v6

    .line 249
    if-eqz v6, :cond_0

    move v0, v1

    .line 251
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/aav;->qe()Z

    move-result v6

    .line 253
    invoke-static {v3}, Lcom/kingroot/kinguser/aax;->Z(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v7

    .line 255
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 257
    const/16 v9, 0x3eb

    .line 258
    invoke-static {v3}, Lcom/kingroot/kinguser/aav;->af(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/kingroot/kinguser/aab;->dH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 257
    invoke-static {v9, v10}, Lcom/kingroot/kinguser/ux;->a(ILjava/lang/Object;)Lcom/kingroot/kinguser/cf;

    move-result-object v9

    .line 258
    invoke-virtual {v9}, Lcom/kingroot/kinguser/cf;->toByteArray()[B

    move-result-object v9

    .line 257
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    const/16 v9, 0x3e9

    .line 260
    invoke-static {v3}, Lcom/kingroot/kinguser/aav;->ag(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/kingroot/kinguser/aab;->dH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 259
    invoke-static {v9, v10}, Lcom/kingroot/kinguser/ux;->a(ILjava/lang/Object;)Lcom/kingroot/kinguser/cf;

    move-result-object v9

    .line 260
    invoke-virtual {v9}, Lcom/kingroot/kinguser/cf;->toByteArray()[B

    move-result-object v9

    .line 259
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    const/16 v9, 0x3ec

    .line 262
    invoke-static {v3}, Lcom/kingroot/kinguser/aav;->ah(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/kingroot/kinguser/aab;->dH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 261
    invoke-static {v9, v10}, Lcom/kingroot/kinguser/ux;->a(ILjava/lang/Object;)Lcom/kingroot/kinguser/cf;

    move-result-object v9

    .line 262
    invoke-virtual {v9}, Lcom/kingroot/kinguser/cf;->toByteArray()[B

    move-result-object v9

    .line 261
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    const/16 v9, 0x3ee

    invoke-static {}, Lcom/kingroot/common/app/KApplication;->hY()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/kingroot/kinguser/ux;->a(ILjava/lang/Object;)Lcom/kingroot/kinguser/cf;

    move-result-object v9

    invoke-virtual {v9}, Lcom/kingroot/kinguser/cf;->toByteArray()[B

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    const/16 v9, 0x3fb

    const-string v10, ""

    invoke-static {v9, v10}, Lcom/kingroot/kinguser/ux;->a(ILjava/lang/Object;)Lcom/kingroot/kinguser/cf;

    move-result-object v9

    invoke-virtual {v9}, Lcom/kingroot/kinguser/cf;->toByteArray()[B

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    const/16 v9, 0x3ea

    .line 266
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->hZ()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 265
    invoke-static {v9, v10}, Lcom/kingroot/kinguser/ux;->a(ILjava/lang/Object;)Lcom/kingroot/kinguser/cf;

    move-result-object v9

    .line 266
    invoke-virtual {v9}, Lcom/kingroot/kinguser/cf;->toByteArray()[B

    move-result-object v9

    .line 265
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    const/16 v9, 0x3ef

    .line 268
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ib()Ljava/lang/String;

    move-result-object v10

    .line 267
    invoke-static {v9, v10}, Lcom/kingroot/kinguser/ux;->a(ILjava/lang/Object;)Lcom/kingroot/kinguser/cf;

    move-result-object v9

    .line 268
    invoke-virtual {v9}, Lcom/kingroot/kinguser/cf;->toByteArray()[B

    move-result-object v9

    .line 267
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    const/16 v9, 0x3f4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/kingroot/kinguser/ux;->a(ILjava/lang/Object;)Lcom/kingroot/kinguser/cf;

    move-result-object v9

    invoke-virtual {v9}, Lcom/kingroot/kinguser/cf;->toByteArray()[B

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    const/16 v9, 0x3f5

    const/16 v10, 0xc9

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/kingroot/kinguser/ux;->a(ILjava/lang/Object;)Lcom/kingroot/kinguser/cf;

    move-result-object v9

    invoke-virtual {v9}, Lcom/kingroot/kinguser/cf;->toByteArray()[B

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    const/16 v9, 0x3f0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/kingroot/kinguser/ux;->a(ILjava/lang/Object;)Lcom/kingroot/kinguser/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cf;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    const/16 v0, 0x3f8

    .line 273
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kingroot/kinguser/aab;->dH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 272
    invoke-static {v0, v3}, Lcom/kingroot/kinguser/ux;->a(ILjava/lang/Object;)Lcom/kingroot/kinguser/cf;

    move-result-object v0

    .line 273
    invoke-virtual {v0}, Lcom/kingroot/kinguser/cf;->toByteArray()[B

    move-result-object v0

    .line 272
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    const/16 v0, 0x3f1

    .line 275
    invoke-static {}, Lcom/kingroot/kinguser/aav;->pZ()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kingroot/kinguser/aab;->dH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 274
    invoke-static {v0, v3}, Lcom/kingroot/kinguser/ux;->a(ILjava/lang/Object;)Lcom/kingroot/kinguser/cf;

    move-result-object v0

    .line 275
    invoke-virtual {v0}, Lcom/kingroot/kinguser/cf;->toByteArray()[B

    move-result-object v0

    .line 274
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    const/16 v0, 0x3f2

    invoke-static {}, Lcom/kingroot/kinguser/aav;->qb()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/kingroot/kinguser/ux;->a(ILjava/lang/Object;)Lcom/kingroot/kinguser/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cf;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    const/16 v0, 0x3fa

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/kingroot/kinguser/ux;->a(ILjava/lang/Object;)Lcom/kingroot/kinguser/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cf;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    const/16 v0, 0x3ed

    .line 279
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ii()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kingroot/kinguser/aab;->dH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 278
    invoke-static {v0, v3}, Lcom/kingroot/kinguser/ux;->a(ILjava/lang/Object;)Lcom/kingroot/kinguser/cf;

    move-result-object v0

    .line 279
    invoke-virtual {v0}, Lcom/kingroot/kinguser/cf;->toByteArray()[B

    move-result-object v0

    .line 278
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    const/16 v0, 0x3f9

    .line 281
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ik()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 280
    invoke-static {v0, v3}, Lcom/kingroot/kinguser/ux;->a(ILjava/lang/Object;)Lcom/kingroot/kinguser/cf;

    move-result-object v0

    .line 281
    invoke-virtual {v0}, Lcom/kingroot/kinguser/cf;->toByteArray()[B

    move-result-object v0

    .line 280
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    const/16 v0, 0x3fd

    .line 283
    invoke-static {}, Lcom/kingroot/kinguser/ze;->po()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kingroot/kinguser/sw;->cN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kingroot/kinguser/aab;->dH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 282
    invoke-static {v0, v3}, Lcom/kingroot/kinguser/ux;->a(ILjava/lang/Object;)Lcom/kingroot/kinguser/cf;

    move-result-object v0

    .line 283
    invoke-virtual {v0}, Lcom/kingroot/kinguser/cf;->toByteArray()[B

    move-result-object v0

    .line 282
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    const/16 v0, 0x3fe

    .line 285
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ia()Ljava/lang/String;

    move-result-object v3

    .line 284
    invoke-static {v0, v3}, Lcom/kingroot/kinguser/ux;->a(ILjava/lang/Object;)Lcom/kingroot/kinguser/cf;

    move-result-object v0

    .line 285
    invoke-virtual {v0}, Lcom/kingroot/kinguser/cf;->toByteArray()[B

    move-result-object v0

    .line 284
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    const/16 v0, 0x3f6

    const-string v3, ""

    invoke-static {v0, v3}, Lcom/kingroot/kinguser/ux;->a(ILjava/lang/Object;)Lcom/kingroot/kinguser/cf;

    move-result-object v0

    .line 287
    invoke-virtual {v0}, Lcom/kingroot/kinguser/cf;->toByteArray()[B

    move-result-object v0

    .line 286
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    const/16 v0, 0x3f7

    .line 289
    invoke-static {}, Lcom/kingroot/kinguser/aaz;->qy()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kingroot/kinguser/aab;->dH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 288
    invoke-static {v0, v3}, Lcom/kingroot/kinguser/ux;->a(ILjava/lang/Object;)Lcom/kingroot/kinguser/cf;

    move-result-object v0

    .line 289
    invoke-virtual {v0}, Lcom/kingroot/kinguser/cf;->toByteArray()[B

    move-result-object v0

    .line 288
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    const/16 v0, 0x3fc

    .line 291
    invoke-static {}, Lcom/kingroot/kinguser/aav;->qg()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kingroot/kinguser/aab;->dH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 290
    invoke-static {v0, v3}, Lcom/kingroot/kinguser/ux;->a(ILjava/lang/Object;)Lcom/kingroot/kinguser/cf;

    move-result-object v0

    .line 291
    invoke-virtual {v0}, Lcom/kingroot/kinguser/cf;->toByteArray()[B

    move-result-object v0

    .line 290
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    const/16 v0, 0x3ff

    invoke-static {}, Lcom/kingroot/kinguser/aax;->qw()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/kingroot/kinguser/ux;->a(ILjava/lang/Object;)Lcom/kingroot/kinguser/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cf;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    const/16 v0, 0x400

    const/4 v3, 0x3

    aget-object v3, v7, v3

    .line 295
    invoke-static {v3}, Lcom/kingroot/kinguser/aab;->dH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 294
    invoke-static {v0, v3}, Lcom/kingroot/kinguser/ux;->a(ILjava/lang/Object;)Lcom/kingroot/kinguser/cf;

    move-result-object v0

    .line 295
    invoke-virtual {v0}, Lcom/kingroot/kinguser/cf;->toByteArray()[B

    move-result-object v0

    .line 294
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    const/16 v0, 0x401

    .line 297
    invoke-static {}, Lcom/kingroot/kinguser/aav;->qs()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kingroot/kinguser/aab;->dH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 296
    invoke-static {v0, v3}, Lcom/kingroot/kinguser/ux;->a(ILjava/lang/Object;)Lcom/kingroot/kinguser/cf;

    move-result-object v0

    .line 297
    invoke-virtual {v0}, Lcom/kingroot/kinguser/cf;->toByteArray()[B

    move-result-object v0

    .line 296
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    const/16 v0, 0x402

    .line 299
    invoke-static {}, Lcom/kingroot/kinguser/aav;->qr()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kingroot/kinguser/aab;->dH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 298
    invoke-static {v0, v3}, Lcom/kingroot/kinguser/ux;->a(ILjava/lang/Object;)Lcom/kingroot/kinguser/cf;

    move-result-object v0

    .line 299
    invoke-virtual {v0}, Lcom/kingroot/kinguser/cf;->toByteArray()[B

    move-result-object v0

    .line 298
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    const/16 v0, 0x403

    if-eqz v6, :cond_1

    move v1, v2

    .line 301
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 300
    invoke-static {v0, v1}, Lcom/kingroot/kinguser/ux;->a(ILjava/lang/Object;)Lcom/kingroot/kinguser/cf;

    move-result-object v0

    .line 301
    invoke-virtual {v0}, Lcom/kingroot/kinguser/cf;->toByteArray()[B

    move-result-object v0

    .line 300
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    const/16 v0, 0x404

    .line 303
    invoke-static {}, Lcom/kingroot/kinguser/aav;->qf()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/aab;->dH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 302
    invoke-static {v0, v1}, Lcom/kingroot/kinguser/ux;->a(ILjava/lang/Object;)Lcom/kingroot/kinguser/cf;

    move-result-object v0

    .line 303
    invoke-virtual {v0}, Lcom/kingroot/kinguser/cf;->toByteArray()[B

    move-result-object v0

    .line 302
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    const/16 v0, 0x405

    .line 305
    invoke-static {}, Lcom/kingroot/kinguser/aav;->dI()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/aab;->dH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 304
    invoke-static {v0, v1}, Lcom/kingroot/kinguser/ux;->a(ILjava/lang/Object;)Lcom/kingroot/kinguser/cf;

    move-result-object v0

    .line 305
    invoke-virtual {v0}, Lcom/kingroot/kinguser/cf;->toByteArray()[B

    move-result-object v0

    .line 304
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    const/16 v0, 0x899

    invoke-static {}, Lcom/kingroot/common/app/KApplication;->il()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/ux;->a(ILjava/lang/Object;)Lcom/kingroot/kinguser/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cf;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    const/16 v0, 0x89a

    invoke-static {}, Lcom/kingroot/common/app/KApplication;->im()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/ux;->a(ILjava/lang/Object;)Lcom/kingroot/kinguser/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cf;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 313
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 314
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 318
    :cond_2
    invoke-virtual {v4, v8}, Lcom/kingroot/kinguser/cg;->b(Ljava/util/ArrayList;)V

    .line 319
    return-object v4
.end method

.method private declared-synchronized j(Ljava/util/ArrayList;)V
    .locals 3
    .param p1    # Ljava/util/ArrayList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .line 456
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->hT()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 459
    invoke-static {}, Lcom/kingroot/kinguser/aav;->qt()Ljava/lang/String;

    move-result-object v0

    .line 460
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->hZ()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 462
    iget-object v2, p0, Lcom/kingroot/kinguser/ux;->Jr:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/kingroot/kinguser/ux;->Jt:Z

    if-nez v2, :cond_1

    .line 463
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/kingroot/kinguser/ux;->Jt:Z

    .line 464
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 465
    :cond_0
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/ux;->g(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 467
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 468
    invoke-static {v1}, Lcom/kingroot/kinguser/aav;->dQ(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 476
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 473
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/kingroot/kinguser/ux;->Jt:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 456
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static kT()Lcom/kingroot/kinguser/ux;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/kingroot/kinguser/ux;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ux;

    return-object v0
.end method

.method public static kV()Lcom/kingroot/kinguser/cg;
    .locals 1

    .prologue
    .line 229
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/kingroot/kinguser/ux;->i(Ljava/util/ArrayList;)Lcom/kingroot/kinguser/cg;

    move-result-object v0

    return-object v0
.end method

.method private static kW()I
    .locals 5

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 367
    invoke-static {}, Lcom/kingroot/kinguser/bzt;->ge()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/kingroot/kinguser/vb;->O(Landroid/content/Context;)B

    move-result v3

    .line 368
    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 378
    :cond_0
    :goto_0
    return v0

    .line 370
    :cond_1
    if-ne v3, v2, :cond_2

    .line 371
    const/4 v0, 0x3

    goto :goto_0

    .line 372
    :cond_2
    if-ne v3, v1, :cond_3

    move v0, v1

    .line 373
    goto :goto_0

    .line 374
    :cond_3
    if-nez v3, :cond_0

    move v0, v2

    .line 375
    goto :goto_0
.end method


# virtual methods
.method public g(Ljava/util/ArrayList;)Z
    .locals 2
    .param p1    # Ljava/util/ArrayList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;)Z"
        }
    .end annotation

    .prologue
    .line 105
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->hV()Lcom/kingroot/kinguser/rh;

    move-result-object v0

    .line 106
    instance-of v1, v0, Lcom/kingroot/kinguser/re;

    if-eqz v1, :cond_0

    .line 107
    check-cast v0, Lcom/kingroot/kinguser/re;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/re;->hM()Z

    move-result v0

    .line 108
    if-nez v0, :cond_0

    .line 110
    const/4 v0, 0x0

    .line 113
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/cbj;->akz()Lcom/kingroot/kinguser/cbj;

    move-result-object v0

    invoke-static {p1}, Lcom/kingroot/kinguser/ux;->i(Ljava/util/ArrayList;)Lcom/kingroot/kinguser/cg;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/cbj;->a(Lcom/kingroot/kinguser/cg;)Z

    move-result v0

    goto :goto_0
.end method

.method public declared-synchronized getGuid()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 124
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ux;->Js:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    invoke-static {}, Lcom/kingroot/kinguser/aav;->getGuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ux;->Js:Ljava/lang/String;

    .line 126
    iget-object v0, p0, Lcom/kingroot/kinguser/ux;->Js:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ux;->kU()Ljava/lang/String;

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ux;->Js:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSharkGuid()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 161
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/ux;->h(Ljava/util/ArrayList;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized h(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 3
    .param p1    # Ljava/util/ArrayList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 183
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ux;->Jr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    invoke-static {}, Lcom/kingroot/kinguser/aav;->getSharkGuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ux;->Jr:Ljava/lang/String;

    .line 188
    :cond_0
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ux;->j(Ljava/util/ArrayList;)V

    .line 190
    const-string v1, "common_GUIDManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSharkGuid()  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/kingroot/kinguser/ux;->Jr:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/kingroot/kinguser/zg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/kingroot/kinguser/ux;->Jr:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 190
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/ux;->Jr:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public kU()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 80
    invoke-static {}, Lcom/kingroot/kinguser/aav;->getGuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ux;->Js:Ljava/lang/String;

    .line 81
    iget-object v0, p0, Lcom/kingroot/kinguser/ux;->Js:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-static {}, Lcom/kingroot/kinguser/tj;->ge()Landroid/content/Context;

    move-result-object v0

    .line 83
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 84
    invoke-static {v0, v1}, Lcom/kingroot/kinguser/vc;->a(Landroid/content/Context;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v0

    .line 85
    if-nez v0, :cond_0

    .line 86
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/cb;

    .line 87
    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {v0}, Lcom/kingroot/kinguser/cb;->getGuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ux;->Js:Ljava/lang/String;

    .line 89
    iget-object v0, p0, Lcom/kingroot/kinguser/ux;->Js:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/kingroot/kinguser/ux;->Js:Ljava/lang/String;

    invoke-static {v0}, Lcom/kingroot/kinguser/aav;->E(Ljava/lang/String;)V

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ux;->Js:Ljava/lang/String;

    return-object v0
.end method
