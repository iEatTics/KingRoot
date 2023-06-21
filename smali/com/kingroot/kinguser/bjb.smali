.class public Lcom/kingroot/kinguser/bjb;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/bjb$a;,
        Lcom/kingroot/kinguser/bjb$b;
    }
.end annotation


# static fields
.field private static bvu:Lcom/kingroot/kinguser/bjb;


# instance fields
.field private bvA:I

.field private bvv:Lcom/kingroot/kinguser/bjb$a;

.field private bvw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private bvx:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private bvy:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private bvz:Z

.field private final mLock:Ljava/lang/Object;

.field private mResumed:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bjb;->mLock:Ljava/lang/Object;

    .line 155
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bjb;->bvy:Ljava/util/Set;

    .line 168
    new-instance v0, Lcom/kingroot/kinguser/bjb$a;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/bjb$a;-><init>(Lcom/kingroot/kinguser/bjb;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bjb;->bvv:Lcom/kingroot/kinguser/bjb$a;

    .line 169
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/bjb;->bvA:I

    .line 170
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bjb;I)I
    .locals 0

    .prologue
    .line 48
    iput p1, p0, Lcom/kingroot/kinguser/bjb;->bvA:I

    return p1
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bjb;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/kingroot/kinguser/bjb;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method private a(ILcom/kingroot/kinguser/bjb$b;Ljava/lang/Object;II)V
    .locals 0

    .prologue
    .line 393
    if-eqz p2, :cond_0

    .line 394
    invoke-interface {p2, p1, p3, p4, p5}, Lcom/kingroot/kinguser/bjb$b;->a(ILjava/lang/Object;II)V

    .line 396
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bjb;Lcom/kingroot/kinguser/wo$a;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bjb;->e(Lcom/kingroot/kinguser/wo$a;)V

    return-void
.end method

.method public static declared-synchronized adD()Lcom/kingroot/kinguser/bjb;
    .locals 2

    .prologue
    .line 161
    const-class v1, Lcom/kingroot/kinguser/bjb;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/bjb;->bvu:Lcom/kingroot/kinguser/bjb;

    if-nez v0, :cond_0

    .line 162
    new-instance v0, Lcom/kingroot/kinguser/bjb;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bjb;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bjb;->bvu:Lcom/kingroot/kinguser/bjb;

    .line 164
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/bjb;->bvu:Lcom/kingroot/kinguser/bjb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/bjb;)I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/kingroot/kinguser/bjb;->bvA:I

    return v0
.end method

.method private b(ILcom/kingroot/kinguser/bjb$b;Ljava/lang/Object;II)V
    .locals 0

    .prologue
    .line 399
    if-eqz p2, :cond_0

    .line 400
    invoke-interface {p2, p1, p3, p4, p5}, Lcom/kingroot/kinguser/bjb$b;->b(ILjava/lang/Object;II)V

    .line 402
    :cond_0
    return-void
.end method

.method private b(Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;Z)V
    .locals 2

    .prologue
    .line 419
    invoke-virtual {p1}, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 421
    if-nez p2, :cond_1

    .line 423
    iget-object v1, p0, Lcom/kingroot/kinguser/bjb;->bvy:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 442
    :cond_0
    :goto_0
    return-void

    .line 425
    :cond_1
    iget-object v1, p0, Lcom/kingroot/kinguser/bjb;->bvy:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 426
    iget-object v1, p0, Lcom/kingroot/kinguser/bjb;->bvy:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic c(Lcom/kingroot/kinguser/bjb;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/kingroot/kinguser/bjb;->bvy:Ljava/util/Set;

    return-object v0
.end method

.method private e(Lcom/kingroot/kinguser/wo$a;)V
    .locals 7

    .prologue
    .line 371
    invoke-interface {p1}, Lcom/kingroot/kinguser/wo$a;->nF()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingroot/kinguser/bjb$b;

    .line 376
    iget-object v6, p0, Lcom/kingroot/kinguser/bjb;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 377
    :try_start_0
    new-instance v0, Lcom/kingroot/kinguser/bjg;

    const-string v1, "autostart_enable_settings.conf"

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/bjg;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kingroot/kinguser/bjb;->bvx:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bjg;->t(Ljava/lang/Object;)Z

    .line 378
    new-instance v0, Lcom/kingroot/kinguser/bjg;

    const-string v1, "autostart_snapshot.conf"

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/bjg;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kingroot/kinguser/bjb;->bvw:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bjg;->t(Ljava/lang/Object;)Z

    .line 380
    const/4 v1, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/kingroot/kinguser/bjb;->b(ILcom/kingroot/kinguser/bjb$b;Ljava/lang/Object;II)V

    .line 381
    monitor-exit v6

    .line 383
    return-void

    .line 381
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/bjb$b;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 350
    iget-object v0, p0, Lcom/kingroot/kinguser/bjb;->bvv:Lcom/kingroot/kinguser/bjb$a;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bjb$a;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/kingroot/kinguser/bjb;->bvv:Lcom/kingroot/kinguser/bjb$a;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bjb$a;->nA()V

    .line 354
    :cond_0
    iget-object v1, p0, Lcom/kingroot/kinguser/bjb;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 355
    :try_start_0
    iget-boolean v0, p0, Lcom/kingroot/kinguser/bjb;->mResumed:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/kingroot/kinguser/bjb;->bvz:Z

    if-nez v0, :cond_2

    .line 356
    :cond_1
    monitor-exit v1

    .line 365
    :goto_0
    return-void

    .line 358
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 361
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    iget-object v1, p0, Lcom/kingroot/kinguser/bjb;->bvv:Lcom/kingroot/kinguser/bjb$a;

    invoke-virtual {v1, v0, v2}, Lcom/kingroot/kinguser/bjb$a;->f(Ljava/util/List;Z)Z

    goto :goto_0

    .line 358
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Lcom/kingroot/kinguser/bjb$b;Z)V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/kingroot/kinguser/bjb;->bvv:Lcom/kingroot/kinguser/bjb$a;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bjb$a;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/kingroot/kinguser/bjb;->bvv:Lcom/kingroot/kinguser/bjb$a;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bjb$a;->nA()V

    .line 183
    :cond_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjb;->onResume()V

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 188
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    iget-object v1, p0, Lcom/kingroot/kinguser/bjb;->bvv:Lcom/kingroot/kinguser/bjb$a;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/bjb$a;->I(Ljava/util/List;)Z

    .line 194
    return-void
.end method

.method public a(Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;Z)V
    .locals 3

    .prologue
    .line 409
    if-eqz p2, :cond_0

    const/4 v0, 0x3

    .line 410
    :goto_0
    iget-object v1, p0, Lcom/kingroot/kinguser/bjb;->bvx:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/bjb;->bvz:Z

    .line 413
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/bjb;->b(Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;Z)V

    .line 415
    invoke-virtual {p1}, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/kingroot/kinguser/aeu;->w(Ljava/lang/String;Z)V

    .line 416
    return-void

    .line 409
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public b(Lcom/kingroot/kinguser/bjb$b;)V
    .locals 3

    .prologue
    .line 451
    iget-object v1, p0, Lcom/kingroot/kinguser/bjb;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 452
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/kingroot/kinguser/bjb;->mResumed:Z

    .line 455
    iget-object v0, p0, Lcom/kingroot/kinguser/bjb;->bvy:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-static {}, Lcom/kingroot/kinguser/aeu;->uI()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 457
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v2, Lcom/kingroot/kinguser/bjb$1;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/bjb$1;-><init>(Lcom/kingroot/kinguser/bjb;)V

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/beg;->b(Lcom/kingroot/kinguser/bek;)V

    .line 482
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 485
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/bjb;->a(Lcom/kingroot/kinguser/bjb$b;)V

    .line 486
    return-void

    .line 482
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected c(Lcom/kingroot/kinguser/wo$a;)V
    .locals 11

    .prologue
    .line 199
    invoke-interface {p1}, Lcom/kingroot/kinguser/wo$a;->nF()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingroot/kinguser/bjb$b;

    .line 200
    const/4 v7, 0x0

    .line 201
    const/4 v6, 0x0

    .line 202
    const/4 v1, 0x0

    .line 205
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/aer;->uD()V

    .line 211
    new-instance v10, Lcom/kingroot/kinguser/bjg;

    const-string v0, "autostart_enable_settings.conf"

    invoke-direct {v10, v0}, Lcom/kingroot/kinguser/bjg;-><init>(Ljava/lang/String;)V

    .line 212
    invoke-virtual {v10}, Lcom/kingroot/kinguser/bjg;->adJ()Ljava/lang/Object;

    move-result-object v0

    .line 213
    invoke-static {v0}, Lcom/kingroot/kinguser/bjg;->u(Ljava/lang/Object;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bjb;->bvx:Ljava/util/HashMap;

    .line 214
    invoke-interface {p1}, Lcom/kingroot/kinguser/wo$a;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/bje;->adI()Lcom/kingroot/kinguser/bje;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 218
    :try_start_1
    invoke-virtual {v7}, Lcom/kingroot/kinguser/bje;->adt()I

    move-result v5

    .line 219
    const/4 v4, 0x1

    .line 221
    :goto_1
    invoke-virtual {v7}, Lcom/kingroot/kinguser/bje;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 222
    invoke-interface {p1}, Lcom/kingroot/kinguser/wo$a;->isRunning()Z

    move-result v0

    if-nez v0, :cond_4

    .line 252
    :cond_2
    invoke-interface {p1}, Lcom/kingroot/kinguser/wo$a;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {v7}, Lcom/kingroot/kinguser/bje;->adv()V

    .line 256
    iget-object v0, p0, Lcom/kingroot/kinguser/bjb;->bvx:Ljava/util/HashMap;

    invoke-virtual {v10, v0}, Lcom/kingroot/kinguser/bjg;->t(Ljava/lang/Object;)Z

    .line 257
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/bjb;->bvz:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v5, v1

    move v4, v6

    move-object v0, v7

    .line 263
    :goto_2
    iget-object v6, p0, Lcom/kingroot/kinguser/bjb;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 264
    if-eqz v0, :cond_3

    .line 265
    :try_start_2
    invoke-virtual {v0}, Lcom/kingroot/kinguser/bje;->adu()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bjb;->bvw:Ljava/util/List;

    .line 267
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/bjb;->bvw:Ljava/util/List;

    if-nez v0, :cond_a

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 270
    :goto_3
    const/4 v1, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/kingroot/kinguser/bjb;->b(ILcom/kingroot/kinguser/bjb$b;Ljava/lang/Object;II)V

    .line 271
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 224
    :cond_4
    :try_start_3
    invoke-virtual {v7}, Lcom/kingroot/kinguser/bje;->ads()Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;

    move-result-object v3

    .line 225
    if-eqz v3, :cond_b

    .line 226
    invoke-virtual {v3}, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 227
    invoke-virtual {v3}, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->adB()I

    .line 229
    iget-object v8, p0, Lcom/kingroot/kinguser/bjb;->bvx:Ljava/util/HashMap;

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/kingroot/kinguser/bjb;->bvx:Ljava/util/HashMap;

    .line 230
    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 232
    :goto_4
    if-nez v0, :cond_5

    .line 233
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 236
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v8, 0x3

    if-ne v0, v8, :cond_9

    :cond_6
    const/4 v0, 0x0

    .line 238
    :goto_5
    invoke-virtual {v3, v0}, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->jj(I)V

    .line 240
    invoke-virtual {v3}, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->adB()I

    move-result v0

    if-eqz v0, :cond_7

    .line 241
    invoke-virtual {v3}, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->adB()I

    move-result v0

    const/4 v8, 0x3

    if-ne v0, v8, :cond_b

    .line 242
    :cond_7
    add-int/lit8 v1, v1, 0x1

    .line 244
    invoke-virtual {v3}, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->vk()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {v3}, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->isSystem()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v0

    if-nez v0, :cond_b

    .line 245
    add-int/lit8 v6, v6, 0x1

    move v8, v6

    move v6, v1

    .line 249
    :goto_6
    const/4 v1, 0x1

    add-int/lit8 v9, v4, 0x1

    move-object v0, p0

    :try_start_4
    invoke-direct/range {v0 .. v5}, Lcom/kingroot/kinguser/bjb;->a(ILcom/kingroot/kinguser/bjb$b;Ljava/lang/Object;II)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move v4, v9

    move v1, v6

    move v6, v8

    .line 250
    goto/16 :goto_1

    .line 230
    :cond_8
    const/4 v0, 0x0

    goto :goto_4

    .line 236
    :cond_9
    const/4 v0, 0x1

    goto :goto_5

    .line 267
    :cond_a
    :try_start_5
    new-instance v3, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/kingroot/kinguser/bjb;->bvw:Ljava/util/List;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 259
    :catch_0
    move-exception v0

    move v5, v1

    move v4, v6

    move-object v0, v7

    goto/16 :goto_2

    :catch_1
    move-exception v0

    move v5, v1

    move v4, v6

    move-object v0, v7

    goto/16 :goto_2

    :catch_2
    move-exception v0

    move v5, v6

    move v4, v8

    move-object v0, v7

    goto/16 :goto_2

    :cond_b
    move v8, v6

    move v6, v1

    goto :goto_6
.end method

.method protected d(Lcom/kingroot/kinguser/wo$a;)V
    .locals 13

    .prologue
    const/4 v1, 0x1

    const/4 v12, 0x2

    const/4 v9, 0x0

    .line 295
    invoke-interface {p1}, Lcom/kingroot/kinguser/wo$a;->nF()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingroot/kinguser/bjb$b;

    .line 296
    invoke-interface {p1}, Lcom/kingroot/kinguser/wo$a;->nF()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/List;

    .line 298
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    move v8, v9

    move v7, v9

    .line 308
    :goto_0
    if-ge v8, v5, :cond_2

    .line 309
    :try_start_0
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;

    .line 310
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->jj(I)V

    .line 312
    const/4 v1, 0x2

    add-int/lit8 v4, v8, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/kingroot/kinguser/bjb;->a(ILcom/kingroot/kinguser/bjb$b;Ljava/lang/Object;II)V

    .line 314
    invoke-virtual {v3}, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->adz()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v0

    add-int/2addr v0, v7

    .line 317
    :try_start_1
    invoke-static {}, Lcom/kingroot/kinguser/ahe;->wL()Lcom/kingroot/kinguser/ahe;

    move-result-object v1

    invoke-virtual {v3}, Lcom/kingroot/kinguser/ztool/autostartmgr/AutoStartAppItemInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/kingroot/kinguser/ahe;->x(Ljava/lang/String;Z)V

    .line 319
    invoke-interface {p1}, Lcom/kingroot/kinguser/wo$a;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 330
    :goto_1
    iget-object v3, p0, Lcom/kingroot/kinguser/bjb;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 332
    :try_start_2
    new-instance v1, Lcom/kingroot/kinguser/bjg;

    const-string v4, "autostart_snapshot.conf"

    invoke-direct {v1, v4}, Lcom/kingroot/kinguser/bjg;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/kingroot/kinguser/bjb;->bvw:Ljava/util/List;

    invoke-virtual {v1, v4}, Lcom/kingroot/kinguser/bjg;->t(Ljava/lang/Object;)Z

    .line 333
    new-instance v1, Lcom/kingroot/kinguser/bjg;

    const-string v4, "autostart_enable_settings.conf"

    invoke-direct {v1, v4}, Lcom/kingroot/kinguser/bjg;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/kingroot/kinguser/bjb;->bvx:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Lcom/kingroot/kinguser/bjg;->t(Ljava/lang/Object;)Z

    .line 335
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 337
    :try_start_3
    invoke-interface {p1}, Lcom/kingroot/kinguser/wo$a;->isRunning()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result v1

    if-nez v1, :cond_1

    .line 344
    :goto_2
    return-void

    .line 324
    :cond_0
    const-wide/16 v10, 0x32

    :try_start_4
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 308
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    move v7, v0

    goto :goto_0

    .line 335
    :catchall_0
    move-exception v1

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 338
    :catch_0
    move-exception v1

    :goto_3
    move v6, v0

    .line 342
    :goto_4
    const/4 v3, 0x0

    add-int/lit8 v4, v5, 0x1

    move-object v0, p0

    move v1, v12

    invoke-direct/range {v0 .. v5}, Lcom/kingroot/kinguser/bjb;->a(ILcom/kingroot/kinguser/bjb$b;Ljava/lang/Object;II)V

    .line 343
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v0, p0

    move v1, v12

    move v4, v9

    invoke-direct/range {v0 .. v5}, Lcom/kingroot/kinguser/bjb;->b(ILcom/kingroot/kinguser/bjb$b;Ljava/lang/Object;II)V

    goto :goto_2

    :cond_1
    move v6, v0

    .line 340
    goto :goto_4

    .line 325
    :catch_1
    move-exception v1

    goto :goto_1

    .line 338
    :catch_2
    move-exception v0

    move v0, v7

    goto :goto_3

    :cond_2
    move v0, v7

    goto :goto_1
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 490
    new-instance v0, Lcom/kingroot/kinguser/bjb$2;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/bjb$2;-><init>(Lcom/kingroot/kinguser/bjb;)V

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bjb;->b(Lcom/kingroot/kinguser/bjb$b;)V

    .line 501
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 445
    iget-object v1, p0, Lcom/kingroot/kinguser/bjb;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 446
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/kingroot/kinguser/bjb;->mResumed:Z

    .line 447
    monitor-exit v1

    .line 448
    return-void

    .line 447
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
