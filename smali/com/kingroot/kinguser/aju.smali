.class public Lcom/kingroot/kinguser/aju;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final auu:Ljava/lang/String;

.field public static final auv:Ljava/lang/String;

.field public static final auw:Ljava/lang/String;

.field private static aux:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/kingroot/kinguser/vc$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    const-string v0, "wf15"

    invoke-static {v0}, Lcom/kingroot/kinguser/zt;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/aju;->auu:Ljava/lang/String;

    .line 83
    const-string v0, "wf4"

    invoke-static {v0}, Lcom/kingroot/kinguser/zt;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/aju;->auv:Ljava/lang/String;

    .line 84
    const-string v0, "wf17"

    invoke-static {v0}, Lcom/kingroot/kinguser/zt;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/aju;->auw:Ljava/lang/String;

    .line 105
    const/4 v0, 0x0

    sput-object v0, Lcom/kingroot/kinguser/aju;->aux:Landroid/util/SparseArray;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/kingroot/kinguser/bm;Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/kingroot/kinguser/bm;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/kingroot/kinguser/cy;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 625
    .line 628
    :try_start_0
    new-instance v0, Lcom/qq/jce/wup/UniPacket;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    .line 629
    new-instance v2, Lcom/qq/jce/wup/UniPacket;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    .line 631
    const/16 v3, 0x8

    invoke-static {v3, v0, v2}, Lcom/kingroot/kinguser/aju;->a(ILcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;)V

    .line 633
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/kingroot/kinguser/ux;->Q(Z)Lcom/kingroot/kinguser/dc;

    move-result-object v3

    .line 635
    sget-object v4, Lcom/kingroot/kinguser/vc;->PHONE_TYPE:Ljava/lang/String;

    invoke-static {}, Lcom/kingroot/kinguser/vd;->lh()Lcom/kingroot/kinguser/cq;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 636
    sget-object v4, Lcom/kingroot/kinguser/vc;->JI:Ljava/lang/String;

    invoke-static {p0}, Lcom/kingroot/kinguser/vd;->T(Landroid/content/Context;)Lcom/kingroot/kinguser/dn;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 637
    sget-object v4, Lcom/kingroot/kinguser/vc;->Kb:Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 638
    const-string v3, "req"

    invoke-virtual {v0, v3, p1}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 640
    const/4 v3, 0x0

    invoke-static {p0, v0, v2, v3}, Lcom/kingroot/kinguser/vd;->a(Landroid/content/Context;Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;Z)I

    move-result v0

    if-eqz v0, :cond_0

    .line 652
    :goto_0
    return v0

    .line 644
    :cond_0
    new-instance v0, Lcom/kingroot/kinguser/cy;

    invoke-direct {v0}, Lcom/kingroot/kinguser/cy;-><init>()V

    .line 645
    const-string v3, "resp"

    invoke-virtual {v2, v3, v0}, Lcom/qq/jce/wup/UniPacket;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 646
    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 647
    check-cast v0, Lcom/kingroot/kinguser/cy;

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move v0, v1

    .line 652
    goto :goto_0

    .line 649
    :catch_0
    move-exception v0

    .line 650
    const/16 v0, -0xbb8

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/kingroot/kinguser/bn;Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/kingroot/kinguser/bn;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/kingroot/kinguser/cz;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 363
    :try_start_0
    new-instance v0, Lcom/qq/jce/wup/UniPacket;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    .line 364
    new-instance v2, Lcom/qq/jce/wup/UniPacket;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    .line 365
    const/4 v3, 0x6

    invoke-static {v3, v0, v2}, Lcom/kingroot/kinguser/aju;->a(ILcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;)V

    .line 366
    sget-object v3, Lcom/kingroot/kinguser/vc;->PHONE_TYPE:Ljava/lang/String;

    invoke-static {}, Lcom/kingroot/kinguser/vd;->lh()Lcom/kingroot/kinguser/cq;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 367
    sget-object v3, Lcom/kingroot/kinguser/vc;->JI:Ljava/lang/String;

    invoke-static {p0}, Lcom/kingroot/kinguser/vd;->T(Landroid/content/Context;)Lcom/kingroot/kinguser/dn;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 368
    const-string v3, "req"

    invoke-virtual {v0, v3, p1}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 371
    const/4 v3, 0x0

    invoke-static {p0, v0, v2, v3}, Lcom/kingroot/kinguser/vd;->a(Landroid/content/Context;Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;Z)I

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    :goto_0
    return v0

    .line 375
    :cond_0
    new-instance v0, Lcom/kingroot/kinguser/cz;

    invoke-direct {v0}, Lcom/kingroot/kinguser/cz;-><init>()V

    .line 376
    const-string v3, "resp"

    invoke-virtual {v2, v3, v0}, Lcom/qq/jce/wup/UniPacket;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 378
    if-eqz v0, :cond_1

    .line 379
    check-cast v0, Lcom/kingroot/kinguser/cz;

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move v0, v1

    .line 385
    goto :goto_0

    .line 381
    :catch_0
    move-exception v0

    .line 382
    const/16 v0, -0xbb8

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/kingroot/kinguser/ds;)I
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 532
    new-instance v0, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v0, v3}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    .line 533
    new-instance v2, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v2, v3}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    .line 534
    const/16 v3, 0xc

    invoke-static {v3, v0, v2}, Lcom/kingroot/kinguser/aju;->a(ILcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;)V

    .line 535
    sget-object v3, Lcom/kingroot/kinguser/vc;->PHONE_TYPE:Ljava/lang/String;

    invoke-static {}, Lcom/kingroot/kinguser/vd;->lh()Lcom/kingroot/kinguser/cq;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 537
    :try_start_0
    sget-object v3, Lcom/kingroot/kinguser/vc;->JI:Ljava/lang/String;

    invoke-static {p0}, Lcom/kingroot/kinguser/vd;->T(Landroid/content/Context;)Lcom/kingroot/kinguser/dn;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/kingroot/kinguser/abn; {:try_start_0 .. :try_end_0} :catch_0

    .line 542
    const-string v3, "downinfo"

    invoke-virtual {v0, v3, p1}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 545
    invoke-static {p0, v0, v2, v1}, Lcom/kingroot/kinguser/vd;->a(Landroid/content/Context;Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;Z)I

    move-result v0

    if-eqz v0, :cond_0

    .line 549
    :goto_0
    return v0

    .line 538
    :catch_0
    move-exception v0

    .line 540
    const/4 v0, -0x8

    goto :goto_0

    :cond_0
    move v0, v1

    .line 549
    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/kingroot/kinguser/dv;Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/kingroot/kinguser/dv;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/kingroot/kinguser/ef;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 161
    .line 163
    new-instance v0, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v0, v3}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    .line 164
    new-instance v2, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v2, v3}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    .line 166
    invoke-static {v3, v0, v2}, Lcom/kingroot/kinguser/aju;->a(ILcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;)V

    .line 170
    const/4 v3, 0x1

    :try_start_0
    invoke-static {v3}, Lcom/kingroot/kinguser/ux;->Q(Z)Lcom/kingroot/kinguser/dc;
    :try_end_0
    .catch Lcom/kingroot/kinguser/abn; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 176
    const-string v4, "fin"

    invoke-virtual {v0, v4, v3}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 177
    const-string v3, "req"

    invoke-virtual {v0, v3, p1}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 179
    invoke-static {p0, v0, v2, v1}, Lcom/kingroot/kinguser/vd;->a(Landroid/content/Context;Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;Z)I

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    :goto_0
    return v0

    .line 171
    :catch_0
    move-exception v0

    .line 173
    const/4 v0, -0x8

    goto :goto_0

    .line 183
    :cond_0
    new-instance v0, Lcom/kingroot/kinguser/ef;

    invoke-direct {v0}, Lcom/kingroot/kinguser/ef;-><init>()V

    .line 184
    const-string v3, "resp"

    invoke-virtual {v2, v3, v0}, Lcom/qq/jce/wup/UniPacket;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 185
    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 186
    check-cast v0, Lcom/kingroot/kinguser/ef;

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_1
    move v0, v1

    .line 189
    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/kingroot/kinguser/ei;Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/kingroot/kinguser/ei;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/kingroot/kinguser/em;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 195
    .line 197
    new-instance v0, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v0, v3}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    .line 198
    new-instance v2, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v2, v3}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    .line 200
    invoke-static {v1, v0, v2}, Lcom/kingroot/kinguser/aju;->a(ILcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;)V

    .line 204
    const/4 v3, 0x1

    :try_start_0
    invoke-static {v3}, Lcom/kingroot/kinguser/ux;->Q(Z)Lcom/kingroot/kinguser/dc;
    :try_end_0
    .catch Lcom/kingroot/kinguser/abn; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 210
    const-string v4, "fin"

    invoke-virtual {v0, v4, v3}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 211
    const-string v3, "req"

    invoke-virtual {v0, v3, p1}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 213
    invoke-static {p0, v0, v2, v1}, Lcom/kingroot/kinguser/vd;->a(Landroid/content/Context;Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;Z)I

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    :goto_0
    return v0

    .line 205
    :catch_0
    move-exception v0

    .line 207
    const/4 v0, -0x8

    goto :goto_0

    .line 217
    :cond_0
    new-instance v0, Lcom/kingroot/kinguser/em;

    invoke-direct {v0}, Lcom/kingroot/kinguser/em;-><init>()V

    .line 218
    const-string v3, "resp"

    invoke-virtual {v2, v3, v0}, Lcom/qq/jce/wup/UniPacket;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 219
    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 220
    check-cast v0, Lcom/kingroot/kinguser/em;

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_1
    move v0, v1

    .line 223
    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/kingroot/kinguser/eq;Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/kingroot/kinguser/eq;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/kingroot/kinguser/dj;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 235
    .line 237
    new-instance v0, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v0, v3}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    .line 238
    new-instance v2, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v2, v3}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    .line 239
    const/4 v3, 0x2

    invoke-static {v3, v0, v2}, Lcom/kingroot/kinguser/aju;->a(ILcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;)V

    .line 241
    sget-object v3, Lcom/kingroot/kinguser/vc;->PHONE_TYPE:Ljava/lang/String;

    invoke-static {}, Lcom/kingroot/kinguser/vd;->lh()Lcom/kingroot/kinguser/cq;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 243
    :try_start_0
    sget-object v3, Lcom/kingroot/kinguser/vc;->JI:Ljava/lang/String;

    invoke-static {p0}, Lcom/kingroot/kinguser/vd;->T(Landroid/content/Context;)Lcom/kingroot/kinguser/dn;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/kingroot/kinguser/abn; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    sget-object v3, Lcom/kingroot/kinguser/vc;->JP:Ljava/lang/String;

    invoke-virtual {v0, v3, p1}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 250
    invoke-static {p0, v0, v2, v1}, Lcom/kingroot/kinguser/vd;->a(Landroid/content/Context;Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;Z)I

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    :goto_0
    return v0

    .line 244
    :catch_0
    move-exception v0

    .line 246
    const/4 v0, -0x8

    goto :goto_0

    .line 254
    :cond_0
    new-instance v0, Lcom/kingroot/kinguser/dj;

    invoke-direct {v0}, Lcom/kingroot/kinguser/dj;-><init>()V

    .line 255
    sget-object v3, Lcom/kingroot/kinguser/vc;->JQ:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/qq/jce/wup/UniPacket;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/dj;

    .line 256
    if-eqz v0, :cond_1

    .line 257
    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_1
    move v0, v1

    .line 260
    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/kingroot/kinguser/er;Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/kingroot/kinguser/er;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/kingroot/kinguser/eu;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 397
    .line 399
    new-instance v0, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v0, v3}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    .line 400
    new-instance v2, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v2, v3}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    .line 402
    const/4 v3, 0x7

    invoke-static {v3, v0, v2}, Lcom/kingroot/kinguser/aju;->a(ILcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;)V

    .line 405
    :try_start_0
    const-string v3, "userInfo"

    invoke-static {p0}, Lcom/kingroot/kinguser/vd;->T(Landroid/content/Context;)Lcom/kingroot/kinguser/dn;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/kingroot/kinguser/abn; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    const-string v3, "req"

    invoke-virtual {v0, v3, p1}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 412
    invoke-static {p0, v0, v2, v1}, Lcom/kingroot/kinguser/vd;->a(Landroid/content/Context;Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;Z)I

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    :goto_0
    return v0

    .line 406
    :catch_0
    move-exception v0

    .line 408
    const/4 v0, -0x8

    goto :goto_0

    .line 416
    :cond_0
    new-instance v0, Lcom/kingroot/kinguser/eu;

    invoke-direct {v0}, Lcom/kingroot/kinguser/eu;-><init>()V

    .line 417
    const-string v3, "resp"

    invoke-virtual {v2, v3, v0}, Lcom/qq/jce/wup/UniPacket;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 418
    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 419
    check-cast v0, Lcom/kingroot/kinguser/eu;

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_1
    move v0, v1

    .line 422
    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/ArrayList;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/kingroot/kinguser/dh;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/di;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 435
    .line 436
    if-nez p3, :cond_1

    .line 437
    const/4 v0, -0x6

    .line 478
    :cond_0
    :goto_0
    return v0

    .line 440
    :cond_1
    :try_start_0
    new-instance v2, Lcom/qq/jce/wup/UniPacket;

    const/4 v0, 0x1

    invoke-direct {v2, v0}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    .line 441
    new-instance v3, Lcom/qq/jce/wup/UniPacket;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    .line 442
    new-instance v4, Lcom/qq/jce/wup/UniPacket;

    const/4 v0, 0x1

    invoke-direct {v4, v0}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    .line 444
    const/16 v0, 0x9

    invoke-static {v0, v2, v3}, Lcom/kingroot/kinguser/aju;->a(ILcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;)V

    .line 446
    sget-object v0, Lcom/kingroot/kinguser/vc;->PHONE_TYPE:Ljava/lang/String;

    invoke-static {}, Lcom/kingroot/kinguser/vd;->lh()Lcom/kingroot/kinguser/cq;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 447
    sget-object v0, Lcom/kingroot/kinguser/vc;->JI:Ljava/lang/String;

    invoke-static {p0}, Lcom/kingroot/kinguser/vd;->T(Landroid/content/Context;)Lcom/kingroot/kinguser/dn;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 448
    const-string v0, "request"

    invoke-virtual {v2, v0, p1}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 451
    const/4 v0, 0x0

    invoke-static {p0, v2, v3, v0}, Lcom/kingroot/kinguser/vd;->a(Landroid/content/Context;Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;Z)I

    move-result v0

    if-nez v0, :cond_0

    .line 455
    new-instance v0, Lcom/kingroot/kinguser/dh;

    invoke-direct {v0}, Lcom/kingroot/kinguser/dh;-><init>()V

    .line 456
    const-string v5, "serverinfo"

    invoke-virtual {v3, v5, v0}, Lcom/qq/jce/wup/UniPacket;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 457
    if-eqz v0, :cond_2

    .line 458
    check-cast v0, Lcom/kingroot/kinguser/dh;

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 462
    :cond_2
    const/4 v0, 0x0

    invoke-static {p0, v2, v4, v0}, Lcom/kingroot/kinguser/vd;->a(Landroid/content/Context;Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;Z)I

    move-result v0

    if-nez v0, :cond_0

    .line 466
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 467
    new-instance v2, Lcom/kingroot/kinguser/di;

    invoke-direct {v2}, Lcom/kingroot/kinguser/di;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 468
    const-string v2, "utf-8"

    invoke-virtual {v4, v2}, Lcom/qq/jce/wup/UniPacket;->setEncodeName(Ljava/lang/String;)V

    .line 469
    const-string v2, "softs"

    invoke-virtual {v4, v2, v0}, Lcom/qq/jce/wup/UniPacket;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 470
    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->c(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 471
    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 472
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    move v0, v1

    .line 478
    goto :goto_0

    .line 475
    :catch_0
    move-exception v0

    .line 476
    const/16 v0, -0xbb8

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/df;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/de;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 490
    if-nez p2, :cond_1

    .line 491
    const/4 v0, -0x6

    .line 521
    :cond_0
    :goto_0
    return v0

    .line 495
    :cond_1
    :try_start_0
    new-instance v0, Lcom/qq/jce/wup/UniPacket;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    .line 496
    new-instance v2, Lcom/qq/jce/wup/UniPacket;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    .line 498
    const/16 v3, 0xa

    invoke-static {v3, v0, v2}, Lcom/kingroot/kinguser/aju;->a(ILcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;)V

    .line 500
    sget-object v3, Lcom/kingroot/kinguser/vc;->PHONE_TYPE:Ljava/lang/String;

    invoke-static {}, Lcom/kingroot/kinguser/vd;->lh()Lcom/kingroot/kinguser/cq;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 501
    sget-object v3, Lcom/kingroot/kinguser/vc;->JI:Ljava/lang/String;

    invoke-static {p0}, Lcom/kingroot/kinguser/vd;->T(Landroid/content/Context;)Lcom/kingroot/kinguser/dn;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 502
    const-string v3, "vecsoftkey"

    invoke-virtual {v0, v3, p1}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 504
    const/4 v3, 0x0

    invoke-static {p0, v0, v2, v3}, Lcom/kingroot/kinguser/vd;->a(Landroid/content/Context;Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;Z)I

    move-result v0

    if-nez v0, :cond_0

    .line 508
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 509
    new-instance v3, Lcom/kingroot/kinguser/de;

    invoke-direct {v3}, Lcom/kingroot/kinguser/de;-><init>()V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 510
    const-string v3, "vecsoftinfo"

    invoke-virtual {v2, v3, v0}, Lcom/qq/jce/wup/UniPacket;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 512
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 513
    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->c(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 514
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 515
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move v0, v1

    .line 521
    goto :goto_0

    .line 518
    :catch_0
    move-exception v0

    .line 519
    const/16 v0, -0xbb8

    goto :goto_0
.end method

.method private static a(ILcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;)V
    .locals 2

    .prologue
    .line 145
    invoke-static {p0}, Lcom/kingroot/kinguser/aju;->bc(I)Lcom/kingroot/kinguser/vc$a;

    move-result-object v0

    .line 146
    if-nez v0, :cond_0

    .line 153
    :goto_0
    return-void

    .line 150
    :cond_0
    iget-object v1, v0, Lcom/kingroot/kinguser/vc$a;->Ku:Ljava/lang/String;

    iget-object v0, v0, Lcom/kingroot/kinguser/vc$a;->Kv:Ljava/lang/String;

    invoke-static {p0, v1, v0, p1, p2}, Lcom/kingroot/kinguser/vd;->a(ILjava/lang/String;Ljava/lang/String;Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Lcom/kingroot/kinguser/bk;)V
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 736
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v3, "adapter_rank.json"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 737
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 739
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/kingroot/kinguser/bk;->kw:Lcom/kingroot/kinguser/db;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/kingroot/kinguser/bk;->kx:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 787
    :cond_0
    :goto_0
    return-void

    .line 743
    :cond_1
    iget-object v1, p1, Lcom/kingroot/kinguser/bk;->kw:Lcom/kingroot/kinguser/db;

    iget-object v1, v1, Lcom/kingroot/kinguser/db;->mS:Lcom/kingroot/kinguser/bi;

    .line 744
    iget-object v3, p1, Lcom/kingroot/kinguser/bk;->kw:Lcom/kingroot/kinguser/db;

    iget-object v3, v3, Lcom/kingroot/kinguser/db;->mT:Lcom/kingroot/kinguser/cc;

    .line 745
    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    .line 750
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 752
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 754
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 755
    const-string v7, "model"

    iget-object v8, v1, Lcom/kingroot/kinguser/bi;->ko:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 756
    const-string v7, "brand"

    iget-object v8, v1, Lcom/kingroot/kinguser/bi;->kp:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 757
    const-string v7, "adapterNum"

    iget-wide v8, v1, Lcom/kingroot/kinguser/bi;->kq:J

    invoke-virtual {v6, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 758
    const-string v7, "rank"

    iget-wide v8, v1, Lcom/kingroot/kinguser/bi;->kr:J

    invoke-virtual {v6, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 759
    const-string v1, "rankItem"

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 761
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 762
    const-string v6, "succDay"

    iget v7, v3, Lcom/kingroot/kinguser/cc;->lx:I

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 763
    const-string v6, "platform"

    iget v3, v3, Lcom/kingroot/kinguser/cc;->iI:I

    invoke-virtual {v1, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 764
    const-string v3, "dateInfo"

    invoke-virtual {v5, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 766
    const-string v1, "selfRankItem"

    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 768
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    move v1, v0

    .line 769
    :goto_1
    iget-object v0, p1, Lcom/kingroot/kinguser/bk;->kx:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 770
    iget-object v0, p1, Lcom/kingroot/kinguser/bk;->kx:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bi;

    .line 771
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 772
    const-string v6, "model"

    iget-object v7, v0, Lcom/kingroot/kinguser/bi;->ko:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 773
    const-string v6, "brand"

    iget-object v7, v0, Lcom/kingroot/kinguser/bi;->kp:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 774
    const-string v6, "adapterNum"

    iget-wide v8, v0, Lcom/kingroot/kinguser/bi;->kq:J

    invoke-virtual {v5, v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 775
    const-string v6, "rank"

    iget-wide v8, v0, Lcom/kingroot/kinguser/bi;->kr:J

    invoke-virtual {v5, v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 776
    invoke-virtual {v3, v1, v5}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 769
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 778
    :cond_2
    const-string v0, "rankItemList"

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 780
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 781
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v1, v3

    invoke-static {v2, v1}, Lcom/kingroot/kinguser/bbl;->a(Ljava/io/File;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 783
    :catch_0
    move-exception v0

    .line 784
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 785
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto/16 :goto_0
.end method

.method public static aR(Landroid/content/Context;)Lcom/kingroot/kinguser/bk;
    .locals 1

    .prologue
    .line 663
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/kingroot/kinguser/aju;->g(Landroid/content/Context;Z)Lcom/kingroot/kinguser/bk;

    move-result-object v0

    return-object v0
.end method

.method private static aS(Landroid/content/Context;)Lcom/kingroot/kinguser/bk;
    .locals 3

    .prologue
    .line 796
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "adapter_rank.json"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 797
    invoke-static {p0, v0}, Lcom/kingroot/kinguser/aju;->d(Landroid/content/Context;Ljava/io/File;)Lcom/kingroot/kinguser/bk;

    move-result-object v0

    return-object v0
.end method

.method private static bc(I)Lcom/kingroot/kinguser/vc$a;
    .locals 6

    .prologue
    .line 108
    const/4 v1, 0x0

    .line 110
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/aju;->aux:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/aju;->aux:Landroid/util/SparseArray;

    .line 112
    sget-object v0, Lcom/kingroot/kinguser/aju;->aux:Landroid/util/SparseArray;

    const/4 v2, 0x2

    new-instance v3, Lcom/kingroot/kinguser/vc$a;

    const/4 v4, 0x2

    sget-object v5, Lcom/kingroot/kinguser/aju;->auu:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/kingroot/kinguser/vc$a;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 113
    sget-object v0, Lcom/kingroot/kinguser/aju;->aux:Landroid/util/SparseArray;

    const/4 v2, 0x3

    new-instance v3, Lcom/kingroot/kinguser/vc$a;

    const/4 v4, 0x3

    sget-object v5, Lcom/kingroot/kinguser/aju;->auv:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/kingroot/kinguser/vc$a;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 114
    sget-object v0, Lcom/kingroot/kinguser/aju;->aux:Landroid/util/SparseArray;

    const/4 v2, 0x0

    new-instance v3, Lcom/kingroot/kinguser/vc$a;

    const/4 v4, 0x0

    const-string v5, "pluginreport|reportPluginData"

    invoke-direct {v3, v4, v5}, Lcom/kingroot/kinguser/vc$a;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 115
    sget-object v0, Lcom/kingroot/kinguser/aju;->aux:Landroid/util/SparseArray;

    const/4 v2, 0x1

    new-instance v3, Lcom/kingroot/kinguser/vc$a;

    const/4 v4, 0x1

    const-string v5, "pluginv2|getPluginInfos"

    invoke-direct {v3, v4, v5}, Lcom/kingroot/kinguser/vc$a;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 116
    sget-object v0, Lcom/kingroot/kinguser/aju;->aux:Landroid/util/SparseArray;

    const/4 v2, 0x4

    new-instance v3, Lcom/kingroot/kinguser/vc$a;

    const/4 v4, 0x4

    sget-object v5, Lcom/kingroot/kinguser/aju;->auw:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/kingroot/kinguser/vc$a;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 117
    sget-object v0, Lcom/kingroot/kinguser/aju;->aux:Landroid/util/SparseArray;

    const/4 v2, 0x5

    new-instance v3, Lcom/kingroot/kinguser/vc$a;

    const/4 v4, 0x5

    const-string v5, "appmonitor|getAppPermission"

    invoke-direct {v3, v4, v5}, Lcom/kingroot/kinguser/vc$a;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 118
    sget-object v0, Lcom/kingroot/kinguser/aju;->aux:Landroid/util/SparseArray;

    const/4 v2, 0x6

    new-instance v3, Lcom/kingroot/kinguser/vc$a;

    const/4 v4, 0x6

    const-string v5, "uninstall|getSoftClearType"

    invoke-direct {v3, v4, v5}, Lcom/kingroot/kinguser/vc$a;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 119
    sget-object v0, Lcom/kingroot/kinguser/aju;->aux:Landroid/util/SparseArray;

    const/4 v2, 0x7

    new-instance v3, Lcom/kingroot/kinguser/vc$a;

    const/4 v4, 0x7

    const-string v5, "KuRootDesc|getRootDesc"

    invoke-direct {v3, v4, v5}, Lcom/kingroot/kinguser/vc$a;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 120
    sget-object v0, Lcom/kingroot/kinguser/aju;->aux:Landroid/util/SparseArray;

    const/16 v2, 0xb

    new-instance v3, Lcom/kingroot/kinguser/vc$a;

    const/16 v4, 0xb

    const-string v5, "securedownload|DownloadCmdRequest"

    invoke-direct {v3, v4, v5}, Lcom/kingroot/kinguser/vc$a;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 121
    sget-object v0, Lcom/kingroot/kinguser/aju;->aux:Landroid/util/SparseArray;

    const/16 v2, 0x8

    new-instance v3, Lcom/kingroot/kinguser/vc$a;

    const/16 v4, 0x8

    const-string v5, "game|getGame"

    invoke-direct {v3, v4, v5}, Lcom/kingroot/kinguser/vc$a;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 122
    sget-object v0, Lcom/kingroot/kinguser/aju;->aux:Landroid/util/SparseArray;

    const/16 v2, 0x9

    new-instance v3, Lcom/kingroot/kinguser/vc$a;

    const/16 v4, 0x9

    const-string v5, "softinfo|getSoftList"

    invoke-direct {v3, v4, v5}, Lcom/kingroot/kinguser/vc$a;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 123
    sget-object v0, Lcom/kingroot/kinguser/aju;->aux:Landroid/util/SparseArray;

    const/16 v2, 0xa

    new-instance v3, Lcom/kingroot/kinguser/vc$a;

    const/16 v4, 0xa

    const-string v5, "softinfo|getSoftInfo"

    invoke-direct {v3, v4, v5}, Lcom/kingroot/kinguser/vc$a;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 124
    sget-object v0, Lcom/kingroot/kinguser/aju;->aux:Landroid/util/SparseArray;

    const/16 v2, 0xc

    new-instance v3, Lcom/kingroot/kinguser/vc$a;

    const/16 v4, 0xc

    const-string v5, "securereport|reportDownSoft"

    invoke-direct {v3, v4, v5}, Lcom/kingroot/kinguser/vc$a;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 125
    sget-object v0, Lcom/kingroot/kinguser/aju;->aux:Landroid/util/SparseArray;

    const/16 v2, 0xd

    new-instance v3, Lcom/kingroot/kinguser/vc$a;

    const/16 v4, 0xd

    const-string v5, "securereport|reportInfo"

    invoke-direct {v3, v4, v5}, Lcom/kingroot/kinguser/vc$a;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 126
    sget-object v0, Lcom/kingroot/kinguser/aju;->aux:Landroid/util/SparseArray;

    const/16 v2, 0xf

    new-instance v3, Lcom/kingroot/kinguser/vc$a;

    const/16 v4, 0xf

    const-string v5, "rootCheck|reqAdapterRank"

    invoke-direct {v3, v4, v5}, Lcom/kingroot/kinguser/vc$a;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 129
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/aju;->aux:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/vc$a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :goto_0
    return-object v0

    .line 130
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method private static d(Landroid/content/Context;Ljava/io/File;)Lcom/kingroot/kinguser/bk;
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 807
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 855
    :goto_0
    return-object v0

    .line 810
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/rs;->cA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 811
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    move-object v0, v1

    .line 812
    goto :goto_0

    .line 815
    :cond_3
    new-instance v0, Lcom/kingroot/kinguser/bk;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bk;-><init>()V

    .line 817
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 818
    const-string v2, "selfRankItem"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 819
    const-string v4, "rankItem"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 820
    const-string v5, "dateInfo"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 822
    new-instance v5, Lcom/kingroot/kinguser/db;

    invoke-direct {v5}, Lcom/kingroot/kinguser/db;-><init>()V

    .line 824
    new-instance v6, Lcom/kingroot/kinguser/bi;

    invoke-direct {v6}, Lcom/kingroot/kinguser/bi;-><init>()V

    .line 825
    const-string v7, "model"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/kingroot/kinguser/bi;->ko:Ljava/lang/String;

    .line 826
    const-string v7, "brand"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/kingroot/kinguser/bi;->kp:Ljava/lang/String;

    .line 827
    const-string v7, "adapterNum"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v6, Lcom/kingroot/kinguser/bi;->kq:J

    .line 828
    const-string v7, "rank"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v6, Lcom/kingroot/kinguser/bi;->kr:J

    .line 829
    iput-object v6, v5, Lcom/kingroot/kinguser/db;->mS:Lcom/kingroot/kinguser/bi;

    .line 831
    new-instance v4, Lcom/kingroot/kinguser/cc;

    invoke-direct {v4}, Lcom/kingroot/kinguser/cc;-><init>()V

    .line 832
    const-string v6, "succDay"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v4, Lcom/kingroot/kinguser/cc;->lx:I

    .line 833
    const-string v6, "platform"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v4, Lcom/kingroot/kinguser/cc;->iI:I

    .line 834
    iput-object v4, v5, Lcom/kingroot/kinguser/db;->mT:Lcom/kingroot/kinguser/cc;

    .line 836
    iput-object v5, v0, Lcom/kingroot/kinguser/bk;->kw:Lcom/kingroot/kinguser/db;

    .line 838
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 839
    const-string v2, "rankItemList"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 840
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 841
    new-instance v5, Lcom/kingroot/kinguser/bi;

    invoke-direct {v5}, Lcom/kingroot/kinguser/bi;-><init>()V

    .line 842
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 843
    const-string v7, "model"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/kingroot/kinguser/bi;->ko:Ljava/lang/String;

    .line 844
    const-string v7, "brand"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/kingroot/kinguser/bi;->kp:Ljava/lang/String;

    .line 845
    const-string v7, "adapterNum"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v5, Lcom/kingroot/kinguser/bi;->kq:J

    .line 846
    const-string v7, "rank"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v5, Lcom/kingroot/kinguser/bi;->kr:J

    .line 847
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 840
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 849
    :cond_4
    iput-object v4, v0, Lcom/kingroot/kinguser/bk;->kx:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 852
    :catch_0
    move-exception v0

    .line 853
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 854
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-object v0, v1

    .line 855
    goto/16 :goto_0
.end method

.method public static g(Landroid/content/Context;Z)Lcom/kingroot/kinguser/bk;
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v0, 0x1

    .line 675
    if-eqz p1, :cond_0

    .line 677
    invoke-static {p0}, Lcom/kingroot/kinguser/aju;->aS(Landroid/content/Context;)Lcom/kingroot/kinguser/bk;

    move-result-object v0

    .line 722
    :goto_0
    return-object v0

    .line 681
    :cond_0
    new-instance v1, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v1, v0}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    .line 682
    new-instance v2, Lcom/qq/jce/wup/UniPacket;

    invoke-direct {v2, v0}, Lcom/qq/jce/wup/UniPacket;-><init>(Z)V

    .line 684
    new-instance v3, Lcom/kingroot/kinguser/bj;

    invoke-direct {v3}, Lcom/kingroot/kinguser/bj;-><init>()V

    .line 685
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, v3, Lcom/kingroot/kinguser/bj;->ko:Ljava/lang/String;

    .line 686
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iput-object v0, v3, Lcom/kingroot/kinguser/bj;->kp:Ljava/lang/String;

    .line 687
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    iput-object v0, v3, Lcom/kingroot/kinguser/bj;->ks:Ljava/lang/String;

    .line 688
    invoke-static {}, Lcom/kingroot/kinguser/aav;->dI()Ljava/lang/String;

    move-result-object v0

    .line 689
    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 690
    const-string v0, "-1"

    .line 691
    if-eqz v4, :cond_1

    array-length v5, v4

    if-le v5, v6, :cond_1

    .line 692
    aget-object v0, v4, v6

    .line 694
    :cond_1
    iput-object v0, v3, Lcom/kingroot/kinguser/bj;->kt:Ljava/lang/String;

    .line 695
    invoke-static {}, Lcom/kingroot/kinguser/vd;->lh()Lcom/kingroot/kinguser/cq;

    move-result-object v0

    iput-object v0, v3, Lcom/kingroot/kinguser/bj;->ku:Lcom/kingroot/kinguser/cq;

    .line 698
    const/16 v0, 0xf

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/aju;->a(ILcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;)V

    .line 700
    :try_start_0
    const-string v0, "user"

    invoke-static {p0}, Lcom/kingroot/kinguser/vd;->T(Landroid/content/Context;)Lcom/kingroot/kinguser/dn;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/kingroot/kinguser/abn; {:try_start_0 .. :try_end_0} :catch_0

    .line 706
    const-string v0, "req"

    invoke-virtual {v1, v0, v3}, Lcom/qq/jce/wup/UniPacket;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 709
    const/4 v0, 0x0

    invoke-static {p0, v1, v2, v0}, Lcom/kingroot/kinguser/vd;->a(Landroid/content/Context;Lcom/qq/jce/wup/UniPacket;Lcom/qq/jce/wup/UniPacket;Z)I

    move-result v0

    if-eqz v0, :cond_2

    .line 710
    invoke-static {p0}, Lcom/kingroot/kinguser/aju;->aS(Landroid/content/Context;)Lcom/kingroot/kinguser/bk;

    move-result-object v0

    goto :goto_0

    .line 701
    :catch_0
    move-exception v0

    .line 703
    invoke-static {p0}, Lcom/kingroot/kinguser/aju;->aS(Landroid/content/Context;)Lcom/kingroot/kinguser/bk;

    move-result-object v0

    goto :goto_0

    .line 714
    :cond_2
    new-instance v0, Lcom/kingroot/kinguser/bk;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bk;-><init>()V

    .line 715
    const-string v1, "resp"

    invoke-virtual {v2, v1, v0}, Lcom/qq/jce/wup/UniPacket;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 716
    if-eqz v0, :cond_3

    .line 717
    check-cast v0, Lcom/kingroot/kinguser/bk;

    .line 718
    invoke-static {p0, v0}, Lcom/kingroot/kinguser/aju;->a(Landroid/content/Context;Lcom/kingroot/kinguser/bk;)V

    goto :goto_0

    .line 721
    :cond_3
    invoke-static {p0}, Lcom/kingroot/kinguser/aju;->aS(Landroid/content/Context;)Lcom/kingroot/kinguser/bk;

    move-result-object v0

    goto :goto_0
.end method
