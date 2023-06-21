.class public Lcom/kingroot/kinguser/blr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static bAk:Lcom/kingroot/kinguser/blr;


# instance fields
.field private bAh:Ljava/lang/String;

.field private bAi:Ljava/lang/String;

.field private bAj:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/blr;->bAh:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/blr;->bAi:Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/blr;->bAj:Z

    return-void
.end method

.method public static afu()Lcom/kingroot/kinguser/blr;
    .locals 2

    .prologue
    .line 56
    sget-object v0, Lcom/kingroot/kinguser/blr;->bAk:Lcom/kingroot/kinguser/blr;

    if-nez v0, :cond_1

    .line 57
    const-class v1, Lcom/kingroot/kinguser/blr;

    monitor-enter v1

    .line 58
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/blr;->bAk:Lcom/kingroot/kinguser/blr;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/kingroot/kinguser/blr;

    invoke-direct {v0}, Lcom/kingroot/kinguser/blr;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/blr;->bAk:Lcom/kingroot/kinguser/blr;

    .line 61
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/blr;->bAk:Lcom/kingroot/kinguser/blr;

    return-object v0

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static afv()Lcom/kingx/cloudsdk/v;
    .locals 7

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 162
    invoke-static {}, Lcloudsdk/CloudSdk;->getInstance()Lcloudsdk/CloudSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcloudsdk/CloudSdk;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 163
    invoke-static {v3}, Lcom/kingroot/kinguser/bmn;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 165
    invoke-static {v3}, Lcom/kingroot/kinguser/bmk;->bC(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v4

    .line 168
    new-instance v5, Lcom/kingx/cloudsdk/v;

    invoke-direct {v5}, Lcom/kingx/cloudsdk/v;-><init>()V

    .line 169
    invoke-static {v3}, Lcom/kingroot/kinguser/bmn;->bD(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/kingx/cloudsdk/v;->co:Ljava/lang/String;

    .line 170
    invoke-static {v3}, Lcom/kingroot/kinguser/bmn;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/kingx/cloudsdk/v;->cp:Ljava/lang/String;

    .line 171
    if-eqz v0, :cond_0

    :goto_0
    iput-object v0, v5, Lcom/kingx/cloudsdk/v;->cq:Ljava/lang/String;

    .line 172
    const-string v0, "0"

    iput-object v0, v5, Lcom/kingx/cloudsdk/v;->cr:Ljava/lang/String;

    .line 173
    const-string v0, "0"

    iput-object v0, v5, Lcom/kingx/cloudsdk/v;->cs:Ljava/lang/String;

    .line 175
    const/16 v0, 0x27

    iput v0, v5, Lcom/kingx/cloudsdk/v;->ct:I

    .line 176
    const-string v0, "F7E418FB9C74DF11"

    iput-object v0, v5, Lcom/kingx/cloudsdk/v;->cu:Ljava/lang/String;

    .line 177
    const/16 v0, 0x321

    iput v0, v5, Lcom/kingx/cloudsdk/v;->cv:I

    .line 178
    sget-object v0, Lcom/kingroot/kinguser/bmu;->uL:Ljava/lang/String;

    iput-object v0, v5, Lcom/kingx/cloudsdk/v;->cw:Ljava/lang/String;

    .line 179
    iput v1, v5, Lcom/kingx/cloudsdk/v;->cx:I

    .line 180
    const/16 v0, 0xc9

    iput v0, v5, Lcom/kingx/cloudsdk/v;->cy:I

    .line 182
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 183
    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    .line 184
    const/4 v0, 0x0

    iput-boolean v0, v5, Lcom/kingx/cloudsdk/v;->cz:Z

    .line 189
    :goto_1
    invoke-static {v3}, Lcom/kingroot/kinguser/bll;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/kingx/cloudsdk/v;->de:Ljava/lang/String;

    .line 190
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/kingx/cloudsdk/v;->cA:Ljava/lang/String;

    .line 192
    invoke-static {}, Lcom/kingroot/kinguser/bmn;->afR()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bmu;->mo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/kingx/cloudsdk/v;->cB:Ljava/lang/String;

    .line 193
    invoke-static {}, Lcom/kingroot/kinguser/bmn;->V()I

    move-result v0

    iput v0, v5, Lcom/kingx/cloudsdk/v;->cC:I

    .line 194
    invoke-static {v3}, Lcom/kingroot/kinguser/bmn;->B(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bmu;->mo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/kingx/cloudsdk/v;->cD:Ljava/lang/String;

    .line 195
    const/16 v0, 0x804

    iput-short v0, v5, Lcom/kingx/cloudsdk/v;->cE:S

    .line 197
    invoke-static {}, Lcom/kingroot/kinguser/bmn;->ck()Z

    move-result v0

    .line 198
    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput v0, v5, Lcom/kingx/cloudsdk/v;->cF:I

    .line 199
    aget-object v0, v4, v1

    iput-object v0, v5, Lcom/kingx/cloudsdk/v;->cG:Ljava/lang/String;

    .line 200
    invoke-static {}, Lcom/kingroot/kinguser/bmk;->Q()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/kingx/cloudsdk/v;->cH:Ljava/lang/String;

    .line 201
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    iput v0, v5, Lcom/kingx/cloudsdk/v;->cI:I

    .line 202
    const/4 v0, 0x3

    aget-object v0, v4, v0

    iput-object v0, v5, Lcom/kingx/cloudsdk/v;->cJ:Ljava/lang/String;

    .line 203
    invoke-static {}, Lcom/kingroot/kinguser/bmk;->P()J

    move-result-wide v0

    iput-wide v0, v5, Lcom/kingx/cloudsdk/v;->cK:J

    .line 204
    invoke-static {}, Lcom/kingroot/kinguser/bmk;->afJ()J

    move-result-wide v0

    iput-wide v0, v5, Lcom/kingx/cloudsdk/v;->cL:J

    .line 206
    new-instance v0, Lcom/kingroot/kinguser/bmn$a;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bmn$a;-><init>()V

    .line 207
    invoke-static {v0}, Lcom/kingroot/kinguser/bmn;->a(Lcom/kingroot/kinguser/bmn$a;)V

    .line 208
    iget-wide v0, v0, Lcom/kingroot/kinguser/bmn$a;->bCc:J

    iput-wide v0, v5, Lcom/kingx/cloudsdk/v;->cM:J

    .line 210
    invoke-static {}, Lcom/kingroot/kinguser/bmn;->afS()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bmu;->mo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/kingx/cloudsdk/v;->cS:Ljava/lang/String;

    .line 211
    invoke-static {}, Lcom/kingroot/kinguser/bmn;->afP()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bmu;->mo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/kingx/cloudsdk/v;->cN:Ljava/lang/String;

    .line 212
    invoke-static {}, Lcom/kingroot/kinguser/bmn;->afN()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bmu;->mo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/kingx/cloudsdk/v;->cO:Ljava/lang/String;

    .line 213
    invoke-static {}, Lcom/kingroot/kinguser/bmn;->afO()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bmu;->mo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/kingx/cloudsdk/v;->cP:Ljava/lang/String;

    .line 215
    invoke-static {}, Lcom/kingroot/kinguser/bmn;->afU()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bmu;->mo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/kingx/cloudsdk/v;->cT:Ljava/lang/String;

    .line 216
    invoke-static {}, Lcom/kingroot/kinguser/bmn;->afT()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bmu;->mo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/kingx/cloudsdk/v;->do:Ljava/lang/String;

    .line 218
    invoke-static {}, Lcom/kingroot/kinguser/blo;->afq()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/kingx/cloudsdk/v;->version:Ljava/lang/String;

    .line 219
    iput v2, v5, Lcom/kingx/cloudsdk/v;->dd:I

    .line 221
    const-string v0, "gsm.version.baseband"

    invoke-static {v0}, Lcom/kingroot/kinguser/blq;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/kingx/cloudsdk/v;->dm:Ljava/lang/String;

    .line 222
    invoke-static {}, Lcom/kingroot/kinguser/blp;->r()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bmu;->mq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bmu;->mo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/kingx/cloudsdk/v;->dj:Ljava/lang/String;

    .line 223
    invoke-static {}, Lcom/kingroot/kinguser/bmn;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bmu;->mq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bmu;->mo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/kingx/cloudsdk/v;->dp:Ljava/lang/String;

    .line 224
    return-object v5

    .line 171
    :cond_0
    const-string v0, ""

    goto/16 :goto_0

    .line 186
    :cond_1
    iput-boolean v2, v5, Lcom/kingx/cloudsdk/v;->cz:Z

    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 198
    goto/16 :goto_2
.end method

.method public static afw()Lcom/kingx/cloudsdk/w;
    .locals 10

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 265
    invoke-static {}, Lcloudsdk/CloudSdk;->getInstance()Lcloudsdk/CloudSdk;

    move-result-object v3

    invoke-virtual {v3}, Lcloudsdk/CloudSdk;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 267
    new-instance v4, Lcom/kingx/cloudsdk/w;

    invoke-direct {v4}, Lcom/kingx/cloudsdk/w;-><init>()V

    .line 269
    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/kingx/cloudsdk/w;->c(I)V

    .line 272
    invoke-virtual {v4, v0}, Lcom/kingx/cloudsdk/w;->O(I)V

    .line 273
    invoke-virtual {v4, v0}, Lcom/kingx/cloudsdk/w;->d(I)V

    .line 274
    invoke-virtual {v4, v1}, Lcom/kingx/cloudsdk/w;->jW(I)V

    .line 276
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 278
    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_1

    .line 285
    :goto_0
    invoke-static {}, Lcom/kingroot/kinguser/bmn;->ck()Z

    move-result v5

    .line 286
    invoke-static {v3}, Lcom/kingroot/kinguser/bmk;->bC(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v6

    .line 289
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 291
    const/16 v8, 0x3eb

    .line 292
    invoke-static {v3}, Lcom/kingroot/kinguser/bmn;->bH(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/kingroot/kinguser/bmu;->mo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 291
    invoke-static {v8, v9}, Lcom/kingroot/kinguser/blr;->c(ILjava/lang/Object;)Lcom/kingx/cloudsdk/x;

    move-result-object v8

    .line 292
    invoke-virtual {v8}, Lcom/kingx/cloudsdk/x;->toByteArray()[B

    move-result-object v8

    .line 291
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    const/16 v8, 0x3e9

    .line 294
    invoke-static {v3}, Lcom/kingroot/kinguser/bmn;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/kingroot/kinguser/bmu;->mo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 293
    invoke-static {v8, v9}, Lcom/kingroot/kinguser/blr;->c(ILjava/lang/Object;)Lcom/kingx/cloudsdk/x;

    move-result-object v8

    .line 294
    invoke-virtual {v8}, Lcom/kingx/cloudsdk/x;->toByteArray()[B

    move-result-object v8

    .line 293
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    const/16 v8, 0x3ec

    .line 296
    invoke-static {v3}, Lcom/kingroot/kinguser/bmn;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/kingroot/kinguser/bmu;->mo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 295
    invoke-static {v8, v9}, Lcom/kingroot/kinguser/blr;->c(ILjava/lang/Object;)Lcom/kingx/cloudsdk/x;

    move-result-object v8

    .line 296
    invoke-virtual {v8}, Lcom/kingx/cloudsdk/x;->toByteArray()[B

    move-result-object v8

    .line 295
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    const/16 v8, 0x3ee

    const/16 v9, 0x27

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/kingroot/kinguser/blr;->c(ILjava/lang/Object;)Lcom/kingx/cloudsdk/x;

    move-result-object v8

    invoke-virtual {v8}, Lcom/kingx/cloudsdk/x;->toByteArray()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    const/16 v8, 0x3fb

    const-string v9, ""

    invoke-static {v8, v9}, Lcom/kingroot/kinguser/blr;->c(ILjava/lang/Object;)Lcom/kingx/cloudsdk/x;

    move-result-object v8

    invoke-virtual {v8}, Lcom/kingx/cloudsdk/x;->toByteArray()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    const/16 v8, 0x3ea

    const/16 v9, 0x321

    .line 301
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 300
    invoke-static {v8, v9}, Lcom/kingroot/kinguser/blr;->c(ILjava/lang/Object;)Lcom/kingx/cloudsdk/x;

    move-result-object v8

    .line 301
    invoke-virtual {v8}, Lcom/kingx/cloudsdk/x;->toByteArray()[B

    move-result-object v8

    .line 300
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    const/16 v8, 0x3ef

    sget-object v9, Lcom/kingroot/kinguser/bmu;->uL:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/kingroot/kinguser/blr;->c(ILjava/lang/Object;)Lcom/kingx/cloudsdk/x;

    move-result-object v8

    .line 305
    invoke-virtual {v8}, Lcom/kingx/cloudsdk/x;->toByteArray()[B

    move-result-object v8

    .line 304
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    const/16 v8, 0x3f4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/kingroot/kinguser/blr;->c(ILjava/lang/Object;)Lcom/kingx/cloudsdk/x;

    move-result-object v8

    invoke-virtual {v8}, Lcom/kingx/cloudsdk/x;->toByteArray()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    const/16 v8, 0x3f5

    const/16 v9, 0xc9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/kingroot/kinguser/blr;->c(ILjava/lang/Object;)Lcom/kingx/cloudsdk/x;

    move-result-object v8

    invoke-virtual {v8}, Lcom/kingx/cloudsdk/x;->toByteArray()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    const/16 v8, 0x3f0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/kingroot/kinguser/blr;->c(ILjava/lang/Object;)Lcom/kingx/cloudsdk/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingx/cloudsdk/x;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    const/16 v0, 0x3f8

    .line 310
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/kingroot/kinguser/bmu;->mo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 309
    invoke-static {v0, v8}, Lcom/kingroot/kinguser/blr;->c(ILjava/lang/Object;)Lcom/kingx/cloudsdk/x;

    move-result-object v0

    .line 310
    invoke-virtual {v0}, Lcom/kingx/cloudsdk/x;->toByteArray()[B

    move-result-object v0

    .line 309
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    const/16 v0, 0x3f1

    .line 314
    invoke-static {}, Lcom/kingroot/kinguser/bmn;->afR()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/kingroot/kinguser/bmu;->mo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 313
    invoke-static {v0, v8}, Lcom/kingroot/kinguser/blr;->c(ILjava/lang/Object;)Lcom/kingx/cloudsdk/x;

    move-result-object v0

    .line 314
    invoke-virtual {v0}, Lcom/kingx/cloudsdk/x;->toByteArray()[B

    move-result-object v0

    .line 313
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    const/16 v0, 0x3f2

    invoke-static {}, Lcom/kingroot/kinguser/bmn;->V()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/kingroot/kinguser/blr;->c(ILjava/lang/Object;)Lcom/kingx/cloudsdk/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingx/cloudsdk/x;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    const/16 v0, 0x3fa

    const/16 v8, 0x7e9

    invoke-static {v8}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/kingroot/kinguser/blr;->c(ILjava/lang/Object;)Lcom/kingx/cloudsdk/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingx/cloudsdk/x;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    const/16 v0, 0x3ed

    .line 320
    invoke-static {}, Lcom/kingroot/kinguser/blo;->afq()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/kingroot/kinguser/bmu;->mo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 319
    invoke-static {v0, v8}, Lcom/kingroot/kinguser/blr;->c(ILjava/lang/Object;)Lcom/kingx/cloudsdk/x;

    move-result-object v0

    .line 320
    invoke-virtual {v0}, Lcom/kingx/cloudsdk/x;->toByteArray()[B

    move-result-object v0

    .line 319
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    const/16 v0, 0x3f9

    .line 324
    invoke-static {}, Lcom/kingroot/kinguser/blo;->afr()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 323
    invoke-static {v0, v8}, Lcom/kingroot/kinguser/blr;->c(ILjava/lang/Object;)Lcom/kingx/cloudsdk/x;

    move-result-object v0

    .line 324
    invoke-virtual {v0}, Lcom/kingx/cloudsdk/x;->toByteArray()[B

    move-result-object v0

    .line 323
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    const/16 v0, 0x3fd

    .line 326
    invoke-static {}, Lcom/kingroot/kinguser/blp;->r()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/kingroot/kinguser/bmu;->mq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/kingroot/kinguser/bmu;->mo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 325
    invoke-static {v0, v8}, Lcom/kingroot/kinguser/blr;->c(ILjava/lang/Object;)Lcom/kingx/cloudsdk/x;

    move-result-object v0

    .line 326
    invoke-virtual {v0}, Lcom/kingx/cloudsdk/x;->toByteArray()[B

    move-result-object v0

    .line 325
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    const/16 v0, 0x3fe

    const-string v8, "F7E418FB9C74DF11"

    invoke-static {v0, v8}, Lcom/kingroot/kinguser/blr;->c(ILjava/lang/Object;)Lcom/kingx/cloudsdk/x;

    move-result-object v0

    .line 330
    invoke-virtual {v0}, Lcom/kingx/cloudsdk/x;->toByteArray()[B

    move-result-object v0

    .line 329
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    const/16 v0, 0x3f6

    const-string v8, ""

    invoke-static {v0, v8}, Lcom/kingroot/kinguser/blr;->c(ILjava/lang/Object;)Lcom/kingx/cloudsdk/x;

    move-result-object v0

    .line 332
    invoke-virtual {v0}, Lcom/kingx/cloudsdk/x;->toByteArray()[B

    move-result-object v0

    .line 331
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    const/16 v0, 0x3f7

    .line 334
    invoke-static {v3}, Lcom/kingroot/kinguser/bll;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kingroot/kinguser/bmu;->mo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 333
    invoke-static {v0, v3}, Lcom/kingroot/kinguser/blr;->c(ILjava/lang/Object;)Lcom/kingx/cloudsdk/x;

    move-result-object v0

    .line 334
    invoke-virtual {v0}, Lcom/kingx/cloudsdk/x;->toByteArray()[B

    move-result-object v0

    .line 333
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    const/16 v0, 0x3fc

    .line 336
    invoke-static {}, Lcom/kingroot/kinguser/bmn;->afS()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kingroot/kinguser/bmu;->mo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 335
    invoke-static {v0, v3}, Lcom/kingroot/kinguser/blr;->c(ILjava/lang/Object;)Lcom/kingx/cloudsdk/x;

    move-result-object v0

    .line 336
    invoke-virtual {v0}, Lcom/kingx/cloudsdk/x;->toByteArray()[B

    move-result-object v0

    .line 335
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    const/16 v0, 0x3ff

    invoke-static {}, Lcom/kingroot/kinguser/bmk;->P()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/kingroot/kinguser/blr;->c(ILjava/lang/Object;)Lcom/kingx/cloudsdk/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingx/cloudsdk/x;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    const/16 v0, 0x400

    const/4 v3, 0x3

    aget-object v3, v6, v3

    .line 340
    invoke-static {v3}, Lcom/kingroot/kinguser/bmu;->mo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 339
    invoke-static {v0, v3}, Lcom/kingroot/kinguser/blr;->c(ILjava/lang/Object;)Lcom/kingx/cloudsdk/x;

    move-result-object v0

    .line 340
    invoke-virtual {v0}, Lcom/kingx/cloudsdk/x;->toByteArray()[B

    move-result-object v0

    .line 339
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    const/16 v0, 0x401

    .line 342
    invoke-static {}, Lcom/kingroot/kinguser/bmn;->afU()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kingroot/kinguser/bmu;->mo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 341
    invoke-static {v0, v3}, Lcom/kingroot/kinguser/blr;->c(ILjava/lang/Object;)Lcom/kingx/cloudsdk/x;

    move-result-object v0

    .line 342
    invoke-virtual {v0}, Lcom/kingx/cloudsdk/x;->toByteArray()[B

    move-result-object v0

    .line 341
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    const/16 v0, 0x402

    .line 344
    invoke-static {}, Lcom/kingroot/kinguser/bmn;->afT()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kingroot/kinguser/bmu;->mo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 343
    invoke-static {v0, v3}, Lcom/kingroot/kinguser/blr;->c(ILjava/lang/Object;)Lcom/kingx/cloudsdk/x;

    move-result-object v0

    .line 344
    invoke-virtual {v0}, Lcom/kingx/cloudsdk/x;->toByteArray()[B

    move-result-object v0

    .line 343
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    const/16 v0, 0x403

    if-eqz v5, :cond_0

    move v1, v2

    .line 346
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 345
    invoke-static {v0, v1}, Lcom/kingroot/kinguser/blr;->c(ILjava/lang/Object;)Lcom/kingx/cloudsdk/x;

    move-result-object v0

    .line 346
    invoke-virtual {v0}, Lcom/kingx/cloudsdk/x;->toByteArray()[B

    move-result-object v0

    .line 345
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    const/16 v0, 0x404

    .line 348
    invoke-static {}, Lcom/kingroot/kinguser/bmn;->afP()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/bmu;->mo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 347
    invoke-static {v0, v1}, Lcom/kingroot/kinguser/blr;->c(ILjava/lang/Object;)Lcom/kingx/cloudsdk/x;

    move-result-object v0

    .line 348
    invoke-virtual {v0}, Lcom/kingx/cloudsdk/x;->toByteArray()[B

    move-result-object v0

    .line 347
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    const/16 v0, 0x405

    .line 350
    invoke-static {}, Lcom/kingroot/kinguser/bmn;->s()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/bmu;->mo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 349
    invoke-static {v0, v1}, Lcom/kingroot/kinguser/blr;->c(ILjava/lang/Object;)Lcom/kingx/cloudsdk/x;

    move-result-object v0

    .line 350
    invoke-virtual {v0}, Lcom/kingx/cloudsdk/x;->toByteArray()[B

    move-result-object v0

    .line 349
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    const/16 v0, 0x899

    invoke-static {}, Lcom/kingroot/kinguser/blo;->afs()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/blr;->c(ILjava/lang/Object;)Lcom/kingx/cloudsdk/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingx/cloudsdk/x;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    const/16 v0, 0x89a

    invoke-static {}, Lcom/kingroot/kinguser/blo;->aft()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/blr;->c(ILjava/lang/Object;)Lcom/kingx/cloudsdk/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingx/cloudsdk/x;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    invoke-virtual {v4, v7}, Lcom/kingx/cloudsdk/w;->A(Ljava/util/ArrayList;)V

    .line 357
    return-object v4

    :cond_1
    move v0, v1

    .line 282
    goto/16 :goto_0
.end method

.method private declared-synchronized aw()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 416
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/bmn;->i()Ljava/lang/String;

    move-result-object v0

    .line 417
    const/16 v3, 0x321

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 420
    iget-object v4, p0, Lcom/kingroot/kinguser/blr;->bAh:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/kingroot/kinguser/blr;->bAj:Z

    if-nez v4, :cond_2

    .line 421
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/kingroot/kinguser/blr;->bAj:Z

    .line 422
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 423
    :cond_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-static {}, Lcloudsdk/CloudSdk;->getInstance()Lcloudsdk/CloudSdk;

    move-result-object v4

    invoke-virtual {v4}, Lcloudsdk/CloudSdk;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v0}, Lcom/kingroot/kinguser/blt;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingx/cloudsdk/z;

    iget v0, v0, Lcom/kingx/cloudsdk/z;->dJ:I

    if-eqz v0, :cond_3

    :cond_1
    move v0, v2

    :goto_0
    if-eqz v0, :cond_5

    .line 425
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 426
    invoke-static {v3}, Lcom/kingroot/kinguser/bmn;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 434
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :cond_3
    move v0, v1

    .line 423
    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_0

    .line 432
    :cond_5
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/kingroot/kinguser/blr;->bAj:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 416
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static c(ILjava/lang/Object;)Lcom/kingx/cloudsdk/x;
    .locals 4

    .prologue
    .line 367
    new-instance v0, Lcom/kingx/cloudsdk/x;

    invoke-direct {v0}, Lcom/kingx/cloudsdk/x;-><init>()V

    .line 369
    invoke-virtual {v0, p0}, Lcom/kingx/cloudsdk/x;->jX(I)V

    .line 371
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 372
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingx/cloudsdk/x;->P(I)V

    .line 373
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kingx/cloudsdk/x;->jY(I)V

    .line 391
    :cond_0
    :goto_0
    return-object v0

    .line 374
    :cond_1
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 375
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/kingx/cloudsdk/x;->P(I)V

    .line 376
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingx/cloudsdk/x;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 377
    :cond_2
    instance-of v1, p1, Ljava/lang/Short;

    if-eqz v1, :cond_3

    .line 378
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/kingx/cloudsdk/x;->P(I)V

    .line 379
    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kingx/cloudsdk/x;->c(S)V

    goto :goto_0

    .line 380
    :cond_3
    instance-of v1, p1, Ljava/lang/Long;

    if-eqz v1, :cond_4

    .line 381
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/kingx/cloudsdk/x;->P(I)V

    .line 382
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/kingx/cloudsdk/x;->a(J)V

    goto :goto_0

    .line 383
    :cond_4
    instance-of v1, p1, Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    .line 384
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/kingx/cloudsdk/x;->P(I)V

    .line 385
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kingx/cloudsdk/x;->a(Z)V

    goto :goto_0

    .line 386
    :cond_5
    instance-of v1, p1, [Ljava/lang/Byte;

    if-eqz v1, :cond_0

    .line 387
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/kingx/cloudsdk/x;->P(I)V

    .line 388
    check-cast p1, [B

    invoke-virtual {v0, p1}, Lcom/kingx/cloudsdk/x;->a([B)V

    goto :goto_0
.end method

.method public static eo(Z)Lcom/kingx/cloudsdk/aa;
    .locals 5

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 234
    new-instance v2, Lcom/kingx/cloudsdk/aa;

    invoke-direct {v2}, Lcom/kingx/cloudsdk/aa;-><init>()V

    .line 236
    const-string v3, ""

    iput-object v3, v2, Lcom/kingx/cloudsdk/aa;->dN:Ljava/lang/String;

    .line 237
    const/16 v3, 0x321

    iput v3, v2, Lcom/kingx/cloudsdk/aa;->cv:I

    .line 240
    invoke-static {}, Lcloudsdk/CloudSdk;->getInstance()Lcloudsdk/CloudSdk;

    move-result-object v3

    invoke-virtual {v3}, Lcloudsdk/CloudSdk;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/kingroot/kinguser/bmu;->bJ(Landroid/content/Context;)B

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    if-ne v3, v1, :cond_1

    const/4 v0, 0x3

    :cond_0
    :goto_0
    iput v0, v2, Lcom/kingx/cloudsdk/aa;->dK:I

    .line 242
    invoke-static {v1}, Lcom/kingroot/kinguser/bmu;->ep(Z)I

    move-result v0

    .line 250
    iput v0, v2, Lcom/kingx/cloudsdk/aa;->dL:I

    .line 252
    if-eqz p0, :cond_3

    .line 253
    invoke-static {}, Lcom/kingroot/kinguser/blr;->afu()Lcom/kingroot/kinguser/blr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/blr;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/kingx/cloudsdk/aa;->dH:Ljava/lang/String;

    .line 258
    :goto_1
    return-object v2

    .line 240
    :cond_1
    if-eq v3, v0, :cond_0

    if-nez v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 255
    :cond_3
    invoke-static {}, Lcom/kingroot/kinguser/bmn;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/kingx/cloudsdk/aa;->dH:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public final declared-synchronized g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 132
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/blr;->bAi:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    invoke-static {}, Lcom/kingroot/kinguser/bmn;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/blr;->bAi:Ljava/lang/String;

    .line 134
    iget-object v0, p0, Lcom/kingroot/kinguser/blr;->bAi:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    invoke-static {}, Lcom/kingroot/kinguser/bmn;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/blr;->bAi:Ljava/lang/String;

    iget-object v0, p0, Lcom/kingroot/kinguser/blr;->bAi:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcloudsdk/CloudSdk;->getInstance()Lcloudsdk/CloudSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcloudsdk/CloudSdk;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/blt;->c(Landroid/content/Context;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingx/cloudsdk/cf;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/kingx/cloudsdk/cf;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/blr;->bAi:Ljava/lang/String;

    iget-object v0, p0, Lcom/kingroot/kinguser/blr;->bAi:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/blr;->bAi:Ljava/lang/String;

    invoke-static {v0}, Lcom/kingroot/kinguser/bmn;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/blr;->bAi:Ljava/lang/String;

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/blr;->bAi:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized h()Ljava/lang/String;
    .locals 2

    .prologue
    .line 147
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/blr;->bAh:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    invoke-static {}, Lcom/kingroot/kinguser/bmn;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/blr;->bAh:Ljava/lang/String;

    .line 149
    iget-object v0, p0, Lcom/kingroot/kinguser/blr;->bAh:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    invoke-static {}, Lcom/kingroot/kinguser/bmn;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/blr;->bAh:Ljava/lang/String;

    iget-object v0, p0, Lcom/kingroot/kinguser/blr;->bAh:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-static {}, Lcloudsdk/CloudSdk;->getInstance()Lcloudsdk/CloudSdk;

    move-result-object v1

    invoke-virtual {v1}, Lcloudsdk/CloudSdk;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/kingroot/kinguser/blt;->b(Landroid/content/Context;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingx/cloudsdk/y;

    iget-object v0, v0, Lcom/kingx/cloudsdk/y;->dH:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/blr;->bAh:Ljava/lang/String;

    iget-object v0, p0, Lcom/kingroot/kinguser/blr;->bAh:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/blr;->bAh:Ljava/lang/String;

    invoke-static {v0}, Lcom/kingroot/kinguser/bmn;->c(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/blr;->bAh:Ljava/lang/String;

    .line 155
    :cond_1
    invoke-direct {p0}, Lcom/kingroot/kinguser/blr;->aw()V

    .line 158
    iget-object v0, p0, Lcom/kingroot/kinguser/blr;->bAh:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
