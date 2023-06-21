.class public final Lcom/kingroot/kinguser/kn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/hq;


# static fields
.field private static volatile uc:Lcom/kingroot/kinguser/kn;


# instance fields
.field private final ud:Lcom/kingroot/kinguser/mg;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 408
    new-instance v0, Lcom/kingroot/kinguser/ko;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/ko;-><init>(Lcom/kingroot/kinguser/kn;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/kn;->ud:Lcom/kingroot/kinguser/mg;

    .line 50
    return-void
.end method

.method private W(I)Z
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 80
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private declared-synchronized X(I)I
    .locals 2

    .prologue
    .line 93
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/kn;->dc()V

    .line 94
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/kn;->aa(I)I

    move-result v0

    .line 95
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/kn;->Y(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    :goto_0
    monitor-exit p0

    return v0

    .line 96
    :catch_0
    move-exception v0

    .line 99
    :try_start_1
    invoke-static {}, Lcom/kingroot/kinguser/la;->dp()Lcom/kingroot/kinguser/la;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/la;->c(Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    const v0, 0x1000009

    goto :goto_0

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private Y(I)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x3a98

    .line 125
    invoke-static {}, Lcom/kingroot/kinguser/mx;->eL()Lcom/kingroot/kinguser/mx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/mx;->eO()V

    .line 128
    if-eqz p1, :cond_0

    .line 129
    invoke-static {}, Lcom/kingroot/kinguser/kk;->cY()Lcom/kingroot/kinguser/kk;

    move-result-object v0

    const-string v1, "last_start_uranus_result"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/kk;->a(Ljava/lang/String;I)V

    .line 133
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/mx;->eL()Lcom/kingroot/kinguser/mx;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/mx;->a(J)V

    .line 136
    invoke-static {}, Lcom/kingroot/kinguser/na;->eT()Lcom/kingroot/kinguser/na;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/na;->b(J)V

    .line 138
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/kn;->Z(I)V

    .line 139
    return-void
.end method

.method private Z(I)V
    .locals 1

    .prologue
    .line 142
    invoke-static {}, Lcom/kingroot/kinguser/ih;->bW()Lcom/kingroot/kinguser/if;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Lcom/kingroot/kinguser/if;->bS()Lcom/kingroot/kinguser/hr;

    move-result-object v0

    .line 145
    if-nez v0, :cond_0

    .line 153
    :goto_0
    return-void

    .line 149
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/hr;->L(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Lcom/kingroot/kinguser/hn;Z)I
    .locals 2

    .prologue
    const/high16 v1, 0x2000000

    .line 303
    const-string v0, "zygote"

    invoke-static {v0}, Lcom/kingroot/kinguser/jj;->aN(Ljava/lang/String;)Lcom/kingroot/kinguser/kj;

    move-result-object v0

    .line 304
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/kn;->a(Lcom/kingroot/kinguser/kj;)I

    move-result v0

    .line 305
    invoke-interface {p1, v0}, Lcom/kingroot/kinguser/hn;->H(I)V

    .line 306
    if-eq v0, v1, :cond_1

    .line 321
    :cond_0
    :goto_0
    return v0

    .line 311
    :cond_1
    if-eqz p2, :cond_2

    invoke-static {}, Lcom/kingroot/kinguser/mf;->ey()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 313
    const-string v0, "zygote64"

    invoke-static {v0}, Lcom/kingroot/kinguser/jj;->aN(Ljava/lang/String;)Lcom/kingroot/kinguser/kj;

    move-result-object v0

    .line 314
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/kn;->a(Lcom/kingroot/kinguser/kj;)I

    move-result v0

    .line 315
    invoke-interface {p1, v0}, Lcom/kingroot/kinguser/hn;->H(I)V

    .line 316
    if-ne v0, v1, :cond_0

    :cond_2
    move v0, v1

    .line 321
    goto :goto_0
.end method

.method private a(Lcom/kingroot/kinguser/kj;)I
    .locals 4

    .prologue
    const/high16 v3, 0x2030000

    const/high16 v0, 0x2000000

    .line 332
    .line 334
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/kn;->b(Lcom/kingroot/kinguser/jr;)Lcom/kingroot/kinguser/ha;

    move-result-object v1

    .line 336
    invoke-interface {v1}, Lcom/kingroot/kinguser/ha;->aJ()I

    move-result v2

    .line 338
    packed-switch v2, :pswitch_data_0

    .line 371
    :pswitch_0
    const/high16 v1, 0x2010000

    add-int/2addr v1, v2

    .line 376
    :goto_0
    if-ne v1, v3, :cond_1

    .line 382
    :cond_0
    :goto_1
    return v0

    .line 344
    :pswitch_1
    invoke-static {}, Lcom/kingroot/kinguser/lh;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 347
    invoke-static {}, Lcom/kingroot/kinguser/kk;->cY()Lcom/kingroot/kinguser/kk;

    move-result-object v0

    const-string v1, "last_start_uranus_result"

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/kk;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 349
    if-nez v0, :cond_0

    const v0, 0x100000d

    goto :goto_1

    .line 355
    :pswitch_2
    invoke-static {v1}, Lcom/kingroot/kinguser/lk;->a(Lcom/kingroot/kinguser/ha;)S

    move-result v1

    .line 354
    invoke-static {v3, v1}, Lcom/kingroot/kinguser/lk;->c(II)I

    move-result v1

    goto :goto_0

    .line 362
    :pswitch_3
    const/high16 v2, 0x2020000

    .line 363
    invoke-static {v1}, Lcom/kingroot/kinguser/lk;->a(Lcom/kingroot/kinguser/ha;)S

    move-result v1

    .line 362
    invoke-static {v2, v1}, Lcom/kingroot/kinguser/lk;->c(II)I

    move-result v1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 382
    goto :goto_1

    .line 338
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic a(Lcom/kingroot/kinguser/kn;Lcom/kingroot/kinguser/jr;)Lcom/kingroot/kinguser/ha;
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/kn;->b(Lcom/kingroot/kinguser/jr;)Lcom/kingroot/kinguser/ha;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/kingroot/kinguser/kq;Lcom/kingroot/kinguser/kq;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 398
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 399
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 400
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    iget-object v1, p0, Lcom/kingroot/kinguser/kn;->ud:Lcom/kingroot/kinguser/mg;

    invoke-virtual {v1, v0, v2}, Lcom/kingroot/kinguser/mg;->d(Ljava/util/List;Z)Z

    .line 403
    return-void
.end method

.method private aa(I)I
    .locals 4

    .prologue
    const v1, 0x1000102

    const v2, 0x1000101

    const/4 v3, 0x1

    .line 164
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/kn;->K(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    invoke-static {}, Lcom/kingroot/kinguser/la;->dp()Lcom/kingroot/kinguser/la;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/la;->l(Z)I

    .line 166
    const/4 v0, 0x0

    .line 239
    :cond_0
    :goto_0
    return v0

    .line 179
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/kv;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 181
    const v0, 0x100000a

    goto :goto_0

    .line 186
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/ih;->bW()Lcom/kingroot/kinguser/if;

    move-result-object v0

    .line 187
    invoke-virtual {v0}, Lcom/kingroot/kinguser/if;->bN()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/kingroot/kinguser/mf;->ey()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 188
    const v0, 0x100000f

    goto :goto_0

    .line 195
    :cond_3
    const-class v0, Lcom/kingroot/kinguser/it;

    invoke-static {v0}, Lcom/kingroot/kinguser/ih;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/it;

    .line 197
    invoke-interface {v0, v3}, Lcom/kingroot/kinguser/it;->h(Z)Z

    move-result v0

    if-nez v0, :cond_4

    .line 199
    const v0, 0x1000002

    goto :goto_0

    .line 203
    :cond_4
    invoke-static {}, Lcom/kingroot/kinguser/ls;->ec()Lcom/kingroot/kinguser/ls;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ls;->ed()V

    .line 211
    invoke-static {}, Lcom/kingroot/kinguser/li;->dR()Z

    move-result v0

    if-nez v0, :cond_5

    .line 213
    invoke-static {}, Lcom/kingroot/kinguser/mx;->eL()Lcom/kingroot/kinguser/mx;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/mx;->ap(I)V

    move v0, v1

    .line 214
    goto :goto_0

    .line 217
    :cond_5
    invoke-static {}, Lcom/kingroot/kinguser/li;->dS()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 219
    invoke-static {}, Lcom/kingroot/kinguser/mx;->eL()Lcom/kingroot/kinguser/mx;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/mx;->ap(I)V

    move v0, v2

    .line 220
    goto :goto_0

    .line 227
    :cond_6
    const v0, 0x1000010

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/kn;->Z(I)V

    .line 228
    invoke-static {}, Lcom/kingroot/kinguser/lz;->eq()I

    move-result v0

    .line 229
    const/high16 v1, 0x1000000

    if-ne v0, v1, :cond_0

    .line 239
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/kn;->ab(I)I

    move-result v0

    goto :goto_0
.end method

.method private ab(I)I
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 248
    const-class v0, Lcom/kingroot/kinguser/hn;

    invoke-static {v0}, Lcom/kingroot/kinguser/ih;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/hn;

    .line 252
    const v1, 0x1000011

    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/kn;->Z(I)V

    .line 253
    invoke-static {}, Lcom/kingroot/kinguser/la;->dp()Lcom/kingroot/kinguser/la;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/la;->l(Z)I

    move-result v1

    .line 254
    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/hn;->G(I)V

    .line 255
    const/high16 v2, 0x4000000

    if-eq v1, v2, :cond_0

    .line 262
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/ih;->bW()Lcom/kingroot/kinguser/if;

    move-result-object v1

    .line 263
    if-ne p1, v3, :cond_1

    .line 264
    invoke-static {}, Lcom/kingroot/kinguser/mx;->eL()Lcom/kingroot/kinguser/mx;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/mx;->ao(I)V

    .line 266
    invoke-virtual {v1}, Lcom/kingroot/kinguser/if;->bN()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/kn;->a(Lcom/kingroot/kinguser/hn;Z)I

    move-result v1

    .line 267
    const/high16 v2, 0x2000000

    if-eq v1, v2, :cond_2

    move v0, v1

    .line 294
    :goto_0
    return v0

    .line 272
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/mx;->eL()Lcom/kingroot/kinguser/mx;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/mx;->ao(I)V

    .line 277
    :cond_2
    invoke-static {p1}, Lcom/kingroot/kinguser/lh;->start(I)I

    move-result v1

    .line 278
    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/hn;->I(I)V

    .line 279
    const/high16 v0, 0x3000000

    if-eq v1, v0, :cond_3

    move v0, v1

    .line 280
    goto :goto_0

    .line 285
    :cond_3
    invoke-static {}, Lcom/king/uranus/bv;->aT()Lcom/king/uranus/bv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/king/uranus/bv;->aU()V

    .line 288
    if-ne p1, v3, :cond_4

    .line 289
    invoke-static {}, Lcom/kingroot/kinguser/jj;->cv()Lcom/kingroot/kinguser/kq;

    move-result-object v0

    .line 290
    invoke-static {}, Lcom/kingroot/kinguser/jj;->cw()Lcom/kingroot/kinguser/kq;

    move-result-object v1

    .line 291
    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/kn;->a(Lcom/kingroot/kinguser/kq;Lcom/kingroot/kinguser/kq;)V

    .line 294
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcom/kingroot/kinguser/jr;)Lcom/kingroot/kinguser/ha;
    .locals 3

    .prologue
    .line 386
    invoke-static {}, Lcom/kingroot/kinguser/ju;->cK()Lcom/kingroot/kinguser/ju;

    move-result-object v1

    .line 388
    new-instance v2, Lcom/kingroot/kinguser/mc;

    invoke-direct {v2}, Lcom/kingroot/kinguser/mc;-><init>()V

    const-class v0, Lcom/kingroot/kinguser/it;

    .line 389
    invoke-static {v0}, Lcom/kingroot/kinguser/ih;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/it;

    .line 388
    invoke-interface {v1, p1, v2, v0}, Lcom/kingroot/kinguser/js;->a(Lcom/kingroot/kinguser/jr;Lcom/kingroot/kinguser/jq;Lcom/kingroot/kinguser/it;)Lcom/kingroot/kinguser/ha;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized db()Lcom/kingroot/kinguser/kn;
    .locals 2

    .prologue
    .line 54
    const-class v1, Lcom/kingroot/kinguser/kn;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/kn;->uc:Lcom/kingroot/kinguser/kn;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/kingroot/kinguser/kn;

    invoke-direct {v0}, Lcom/kingroot/kinguser/kn;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/kn;->uc:Lcom/kingroot/kinguser/kn;

    .line 58
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/kn;->uc:Lcom/kingroot/kinguser/kn;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private dc()V
    .locals 4

    .prologue
    .line 108
    const v0, 0x100000e

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/kn;->Z(I)V

    .line 111
    invoke-static {}, Lcom/kingroot/kinguser/ih;->bY()V

    .line 114
    invoke-static {}, Lcom/kingroot/kinguser/lq;->dW()Lcom/kingroot/kinguser/lq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/lq;->dX()V

    .line 117
    invoke-static {}, Lcom/kingroot/kinguser/mx;->eL()Lcom/kingroot/kinguser/mx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/mx;->eM()V

    .line 120
    invoke-static {}, Lcom/kingroot/kinguser/na;->eT()Lcom/kingroot/kinguser/na;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/na;->b(J)V

    .line 121
    return-void
.end method


# virtual methods
.method public K(I)Z
    .locals 2

    .prologue
    .line 552
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/kn;->W(I)Z

    .line 553
    invoke-static {}, Lcom/kingroot/kinguser/lh;->dO()I

    move-result v0

    .line 554
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/kingroot/kinguser/hi;)Lcom/kingroot/kinguser/ho;
    .locals 1

    .prologue
    .line 520
    invoke-static {p1}, Lcom/kingroot/kinguser/kp;->a(Lcom/kingroot/kinguser/hi;)Lcom/kingroot/kinguser/ho;

    move-result-object v0

    return-object v0
.end method

.method public registerClientObserver(Lcom/kingroot/kinguser/hl;)V
    .locals 1

    .prologue
    .line 489
    invoke-static {}, Lcom/king/uranus/bv;->aT()Lcom/king/uranus/bv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/king/uranus/bv;->registerClientObserver(Lcom/kingroot/kinguser/hl;)V

    .line 490
    return-void
.end method

.method public start(I)I
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/kn;->W(I)Z

    .line 70
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/kn;->X(I)I

    move-result v0

    .line 73
    return v0
.end method

.method public unregisterClientObserver(Lcom/kingroot/kinguser/hl;)V
    .locals 1

    .prologue
    .line 494
    invoke-static {}, Lcom/king/uranus/bv;->aT()Lcom/king/uranus/bv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/king/uranus/bv;->unregisterClientObserver(Lcom/kingroot/kinguser/hl;)V

    .line 495
    return-void
.end method
