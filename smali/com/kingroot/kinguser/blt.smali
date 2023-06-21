.class public final Lcom/kingroot/kinguser/blt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/blt$a;
    }
.end annotation


# static fields
.field private static bAm:[Lcom/kingroot/kinguser/blt$a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 117
    const/16 v0, 0x17

    new-array v0, v0, [Lcom/kingroot/kinguser/blt$a;

    new-instance v1, Lcom/kingroot/kinguser/blt$a;

    const-string v2, "info|getUpdatesV2"

    invoke-direct {v1, v3, v2}, Lcom/kingroot/kinguser/blt$a;-><init>(ILjava/lang/String;)V

    aput-object v1, v0, v3

    new-instance v1, Lcom/kingroot/kinguser/blt$a;

    const-string v2, "conf|getConfigV2"

    invoke-direct {v1, v4, v2}, Lcom/kingroot/kinguser/blt$a;-><init>(ILjava/lang/String;)V

    aput-object v1, v0, v4

    new-instance v1, Lcom/kingroot/kinguser/blt$a;

    const-string v2, "kinguser|getSoftStatus"

    invoke-direct {v1, v5, v2}, Lcom/kingroot/kinguser/blt$a;-><init>(ILjava/lang/String;)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/kingroot/kinguser/blt$a;

    const-string v2, "kinguser|reportSoftStatus"

    invoke-direct {v1, v6, v2}, Lcom/kingroot/kinguser/blt$a;-><init>(ILjava/lang/String;)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/kingroot/kinguser/blt$a;

    const-string v2, "info|reportSoftList"

    invoke-direct {v1, v7, v2}, Lcom/kingroot/kinguser/blt$a;-><init>(ILjava/lang/String;)V

    aput-object v1, v0, v7

    const/4 v1, 0x5

    new-instance v2, Lcom/kingroot/kinguser/blt$a;

    const/4 v3, 0x5

    const-string v4, "kinguser|reportMsg"

    invoke-direct {v2, v3, v4}, Lcom/kingroot/kinguser/blt$a;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/kingroot/kinguser/blt$a;

    const/4 v3, 0x6

    const-string v4, "tipsmain|getMainTips"

    invoke-direct {v2, v3, v4}, Lcom/kingroot/kinguser/blt$a;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/kingroot/kinguser/blt$a;

    const/4 v3, 0x7

    const-string v4, "softupdate|getSoftUpdateTips"

    invoke-direct {v2, v3, v4}, Lcom/kingroot/kinguser/blt$a;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/kingroot/kinguser/blt$a;

    const/16 v3, 0x8

    const-string v4, "conf|getConfigTips"

    invoke-direct {v2, v3, v4}, Lcom/kingroot/kinguser/blt$a;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lcom/kingroot/kinguser/blt$a;

    const/16 v3, 0x9

    const-string v4, "cmdactivity|getActivityTips"

    invoke-direct {v2, v3, v4}, Lcom/kingroot/kinguser/blt$a;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lcom/kingroot/kinguser/blt$a;

    const/16 v3, 0xa

    const-string v4, "info|reportTipsRes"

    invoke-direct {v2, v3, v4}, Lcom/kingroot/kinguser/blt$a;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lcom/kingroot/kinguser/blt$a;

    const/16 v3, 0xb

    const-string v4, "info|reportChannelInfo"

    invoke-direct {v2, v3, v4}, Lcom/kingroot/kinguser/blt$a;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lcom/kingroot/kinguser/blt$a;

    const/16 v3, 0xc

    const-string v4, "report|reportSoftUsageInfo"

    invoke-direct {v2, v3, v4}, Lcom/kingroot/kinguser/blt$a;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Lcom/kingroot/kinguser/blt$a;

    const/16 v3, 0xd

    const-string v4, "info|getGuid"

    invoke-direct {v2, v3, v4}, Lcom/kingroot/kinguser/blt$a;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Lcom/kingroot/kinguser/blt$a;

    const/16 v3, 0xe

    const-string v4, "kinguserreport|reportKUStatus"

    invoke-direct {v2, v3, v4}, Lcom/kingroot/kinguser/blt$a;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Lcom/kingroot/kinguser/blt$a;

    const/16 v3, 0xf

    const-string v4, "kingrootsolution|getSolutions"

    invoke-direct {v2, v3, v4}, Lcom/kingroot/kinguser/blt$a;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Lcom/kingroot/kinguser/blt$a;

    const/16 v3, 0x10

    const-string v4, "kingrootreport|reportKingRootResult"

    invoke-direct {v2, v3, v4}, Lcom/kingroot/kinguser/blt$a;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Lcom/kingroot/kinguser/blt$a;

    const/16 v3, 0x11

    const-string v4, "KingUserIssue|getKingUserUrl"

    invoke-direct {v2, v3, v4}, Lcom/kingroot/kinguser/blt$a;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Lcom/kingroot/kinguser/blt$a;

    const/16 v3, 0x12

    const-string v4, "checkCanTmpRoot|checkCanTmpRoot"

    invoke-direct {v2, v3, v4}, Lcom/kingroot/kinguser/blt$a;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Lcom/kingroot/kinguser/blt$a;

    const/16 v3, 0x13

    const-string v4, "rootCheck|reqRootRes"

    invoke-direct {v2, v3, v4}, Lcom/kingroot/kinguser/blt$a;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Lcom/kingroot/kinguser/blt$a;

    const/16 v3, 0x14

    const-string v4, "sharkconfig|getConfigTips"

    invoke-direct {v2, v3, v4}, Lcom/kingroot/kinguser/blt$a;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, Lcom/kingroot/kinguser/blt$a;

    const/16 v3, 0x15

    const-string v4, "androidguid|RequestGUID"

    invoke-direct {v2, v3, v4}, Lcom/kingroot/kinguser/blt$a;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-instance v2, Lcom/kingroot/kinguser/blt$a;

    const/16 v3, 0x16

    const-string v4, "profile|reportProfileV1"

    invoke-direct {v2, v3, v4}, Lcom/kingroot/kinguser/blt$a;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/kingroot/kinguser/blt;->bAm:[Lcom/kingroot/kinguser/blt$a;

    .line 144
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/kingx/cloudsdk/z;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 305
    invoke-static {}, Lcom/kingroot/kinguser/blr;->afw()Lcom/kingx/cloudsdk/w;

    move-result-object v0

    .line 307
    invoke-static {p0, v6, v1}, Lcom/kingroot/kinguser/blu;->a(Landroid/content/Context;ZZ)Lcom/kingx/cloudsdk/ch;

    move-result-object v2

    .line 308
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 309
    invoke-virtual {v2, p1}, Lcom/kingx/cloudsdk/ch;->mv(Ljava/lang/String;)V

    .line 312
    :cond_0
    new-instance v3, Lcom/kingroot/kinguser/bmz;

    invoke-direct {v3, v6}, Lcom/kingroot/kinguser/bmz;-><init>(Z)V

    new-instance v4, Lcom/kingroot/kinguser/bmz;

    invoke-direct {v4, v6}, Lcom/kingroot/kinguser/bmz;-><init>(Z)V

    const/16 v5, 0x16

    invoke-static {v5, v3, v4}, Lcom/kingroot/kinguser/blt;->a(ILcom/kingroot/kinguser/bmz;Lcom/kingroot/kinguser/bmz;)V

    invoke-static {v6}, Lcom/kingroot/kinguser/blr;->eo(Z)Lcom/kingx/cloudsdk/aa;

    move-result-object v5

    const-string v6, "phonetype"

    invoke-static {}, Lcom/kingroot/kinguser/blt;->afx()Lcom/kingx/cloudsdk/aj;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/kingroot/kinguser/bmz;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v6, "userinfo"

    invoke-virtual {v3, v6, v2}, Lcom/kingroot/kinguser/bmz;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "fin"

    invoke-virtual {v3, v2, v5}, Lcom/kingroot/kinguser/bmz;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "req"

    invoke-virtual {v3, v2, v0}, Lcom/kingroot/kinguser/bmz;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0, v3, v4, v1}, Lcom/kingroot/kinguser/blu;->a(Landroid/content/Context;Lcom/kingroot/kinguser/bmz;Lcom/kingroot/kinguser/bmz;Z)I

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return v0

    :cond_1
    new-instance v0, Lcom/kingx/cloudsdk/z;

    invoke-direct {v0}, Lcom/kingx/cloudsdk/z;-><init>()V

    const-string v2, "resp"

    invoke-virtual {v4, v2, v0}, Lcom/kingroot/kinguser/bmz;->e(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    check-cast v0, Lcom/kingx/cloudsdk/z;

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private static a(ILcom/kingroot/kinguser/bmz;Lcom/kingroot/kinguser/bmz;)V
    .locals 1

    .prologue
    .line 178
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Lcom/kingroot/kinguser/bmz;->mr(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p1, p0}, Lcom/kingroot/kinguser/bmz;->Z(I)V

    .line 180
    sget-object v0, Lcom/kingroot/kinguser/blt;->bAm:[Lcom/kingroot/kinguser/blt$a;

    aget-object v0, v0, p0

    iget-object v0, v0, Lcom/kingroot/kinguser/blt$a;->bAn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/kingroot/kinguser/bmz;->aG(Ljava/lang/String;)V

    .line 181
    sget-object v0, Lcom/kingroot/kinguser/blt;->bAm:[Lcom/kingroot/kinguser/blt$a;

    aget-object v0, v0, p0

    iget-object v0, v0, Lcom/kingroot/kinguser/blt$a;->bAo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/kingroot/kinguser/bmz;->ms(Ljava/lang/String;)V

    .line 183
    const-string v0, "UTF-8"

    invoke-virtual {p2, v0}, Lcom/kingroot/kinguser/bmz;->mr(Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method private static afx()Lcom/kingx/cloudsdk/aj;
    .locals 2

    .prologue
    .line 225
    new-instance v0, Lcom/kingx/cloudsdk/aj;

    invoke-direct {v0}, Lcom/kingx/cloudsdk/aj;-><init>()V

    const/4 v1, 0x2

    iput v1, v0, Lcom/kingx/cloudsdk/aj;->ei:I

    sget-object v1, Lcom/kingroot/kinguser/bnf;->bCT:Lcom/kingroot/kinguser/bnf;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bnf;->value()I

    move-result v1

    iput v1, v0, Lcom/kingx/cloudsdk/aj;->cy:I

    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/kingx/cloudsdk/y;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 192
    new-instance v0, Lcom/kingroot/kinguser/bmz;

    invoke-direct {v0, v3}, Lcom/kingroot/kinguser/bmz;-><init>(Z)V

    .line 193
    new-instance v2, Lcom/kingroot/kinguser/bmz;

    invoke-direct {v2, v3}, Lcom/kingroot/kinguser/bmz;-><init>(Z)V

    .line 195
    const/16 v3, 0x15

    invoke-static {v3, v0, v2}, Lcom/kingroot/kinguser/blt;->a(ILcom/kingroot/kinguser/bmz;Lcom/kingroot/kinguser/bmz;)V

    .line 197
    invoke-static {}, Lcom/kingroot/kinguser/blr;->afv()Lcom/kingx/cloudsdk/v;

    move-result-object v3

    .line 198
    invoke-static {v1}, Lcom/kingroot/kinguser/blr;->eo(Z)Lcom/kingx/cloudsdk/aa;

    move-result-object v4

    .line 200
    const-string v5, "phonetype"

    invoke-static {}, Lcom/kingroot/kinguser/blt;->afx()Lcom/kingx/cloudsdk/aj;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/kingroot/kinguser/bmz;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 201
    const-string v5, "userinfo"

    invoke-static {p0, v1, v1}, Lcom/kingroot/kinguser/blu;->a(Landroid/content/Context;ZZ)Lcom/kingx/cloudsdk/ch;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/kingroot/kinguser/bmz;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 202
    const-string v5, "fin"

    invoke-virtual {v0, v5, v4}, Lcom/kingroot/kinguser/bmz;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 203
    const-string v4, "req"

    invoke-virtual {v0, v4, v3}, Lcom/kingroot/kinguser/bmz;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 205
    invoke-static {p0, v0, v2, v1}, Lcom/kingroot/kinguser/blu;->a(Landroid/content/Context;Lcom/kingroot/kinguser/bmz;Lcom/kingroot/kinguser/bmz;Z)I

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    :goto_0
    return v0

    .line 210
    :cond_0
    new-instance v0, Lcom/kingx/cloudsdk/y;

    invoke-direct {v0}, Lcom/kingx/cloudsdk/y;-><init>()V

    .line 211
    const-string v3, "resp"

    invoke-virtual {v2, v3, v0}, Lcom/kingroot/kinguser/bmz;->e(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 212
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 213
    check-cast v0, Lcom/kingx/cloudsdk/y;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_1
    move v0, v1

    .line 216
    goto :goto_0
.end method

.method public static c(Landroid/content/Context;Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/kingx/cloudsdk/cf;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 246
    new-instance v0, Lcom/kingroot/kinguser/bmz;

    invoke-direct {v0, v3}, Lcom/kingroot/kinguser/bmz;-><init>(Z)V

    .line 247
    new-instance v2, Lcom/kingroot/kinguser/bmz;

    invoke-direct {v2, v3}, Lcom/kingroot/kinguser/bmz;-><init>(Z)V

    .line 249
    const/16 v3, 0xd

    invoke-static {v3, v0, v2}, Lcom/kingroot/kinguser/blt;->a(ILcom/kingroot/kinguser/bmz;Lcom/kingroot/kinguser/bmz;)V

    .line 251
    new-instance v3, Lcom/kingx/cloudsdk/cd;

    invoke-direct {v3}, Lcom/kingx/cloudsdk/cd;-><init>()V

    invoke-static {}, Lcom/kingroot/kinguser/bmn;->afQ()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/kingroot/kinguser/bmu;->mo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/kingx/cloudsdk/cd;->mv(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/kingroot/kinguser/bmn;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/kingroot/kinguser/bmu;->mo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/kingx/cloudsdk/cd;->mw(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/kingroot/kinguser/bmn;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/kingx/cloudsdk/cd;->mx(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/kingroot/kinguser/bmn;->bE(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/kingroot/kinguser/bmu;->mo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/kingx/cloudsdk/cd;->my(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/kingroot/kinguser/bmn;->B(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/kingroot/kinguser/bmu;->mo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/kingx/cloudsdk/cd;->mz(Ljava/lang/String;)V

    invoke-static {}, Lcom/kingroot/kinguser/bmp;->V()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/kingx/cloudsdk/cd;->jS(I)V

    invoke-static {}, Lcom/kingroot/kinguser/bmn;->afM()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/kingroot/kinguser/bmu;->mo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/kingx/cloudsdk/cd;->mA(Ljava/lang/String;)V

    invoke-static {}, Lcom/kingroot/kinguser/bmn;->getProductName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/kingroot/kinguser/bmu;->mo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/kingx/cloudsdk/cd;->be(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/kingroot/kinguser/bmk;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/kingroot/kinguser/bmu;->mo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/kingx/cloudsdk/cd;->mB(Ljava/lang/String;)V

    invoke-static {}, Lcom/kingroot/kinguser/bmn;->g()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/kingroot/kinguser/bmu;->mo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/kingx/cloudsdk/cd;->mC(Ljava/lang/String;)V

    .line 253
    const-string v4, "phonetype"

    invoke-static {}, Lcom/kingroot/kinguser/blt;->afx()Lcom/kingx/cloudsdk/aj;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/kingroot/kinguser/bmz;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 254
    const-string v4, "userinfo"

    invoke-static {p0, v1, v1}, Lcom/kingroot/kinguser/blu;->a(Landroid/content/Context;ZZ)Lcom/kingx/cloudsdk/ch;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/kingroot/kinguser/bmz;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 255
    const-string v4, "deviceinfo"

    invoke-virtual {v0, v4, v3}, Lcom/kingroot/kinguser/bmz;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 257
    invoke-static {p0, v0, v2, v1}, Lcom/kingroot/kinguser/blu;->a(Landroid/content/Context;Lcom/kingroot/kinguser/bmz;Lcom/kingroot/kinguser/bmz;Z)I

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    :goto_0
    return v0

    .line 262
    :cond_0
    new-instance v0, Lcom/kingx/cloudsdk/cf;

    invoke-direct {v0}, Lcom/kingx/cloudsdk/cf;-><init>()V

    .line 263
    const-string v3, "guidinfo"

    invoke-virtual {v2, v3, v0}, Lcom/kingroot/kinguser/bmz;->e(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 264
    if-eqz v0, :cond_1

    .line 265
    check-cast v0, Lcom/kingx/cloudsdk/cf;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_1
    move v0, v1

    .line 268
    goto :goto_0
.end method
