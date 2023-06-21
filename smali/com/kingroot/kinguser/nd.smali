.class public Lcom/kingroot/kinguser/nd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/jb;


# static fields
.field private static ur:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static wQ:Lcom/kingroot/kinguser/nd;

.field private static wR:Lcom/king/uranus/t;

.field private static wS:Lcom/king/uranus/G;

.field private static wT:Lcom/king/uranus/z;

.field private static wU:Lcom/king/uranus/n;


# instance fields
.field private hM:I

.field private sT:I

.field private wV:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 50
    new-instance v0, Lcom/kingroot/kinguser/nd;

    invoke-direct {v0}, Lcom/kingroot/kinguser/nd;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/nd;->wQ:Lcom/kingroot/kinguser/nd;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/nd;->ur:Ljava/util/HashMap;

    .line 77
    sget-object v0, Lcom/kingroot/kinguser/nd;->ur:Ljava/util/HashMap;

    const-string v1, "com.kingroot.kinguser"

    const v2, 0x186a1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/kingroot/kinguser/nd;->ur:Ljava/util/HashMap;

    const-string v1, "com.kingroot.master"

    const v2, 0x186a2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/kingroot/kinguser/nd;->ur:Ljava/util/HashMap;

    const-string v1, "com.tencent.qqpimsecure"

    const v2, 0x186a3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/kingroot/kinguser/nd;->ur:Ljava/util/HashMap;

    const-string v1, "com.cafeteam.kingsu"

    const v2, 0x186a4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput v0, p0, Lcom/kingroot/kinguser/nd;->sT:I

    .line 69
    iput v0, p0, Lcom/kingroot/kinguser/nd;->hM:I

    .line 74
    return-void
.end method

.method private static C(Landroid/content/Context;)I
    .locals 5

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 341
    invoke-static {p0}, Lcom/kingroot/kinguser/kb;->l(Landroid/content/Context;)B

    move-result v3

    .line 342
    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 352
    :cond_0
    :goto_0
    return v0

    .line 344
    :cond_1
    if-ne v3, v2, :cond_2

    .line 345
    const/4 v0, 0x3

    goto :goto_0

    .line 346
    :cond_2
    if-ne v3, v1, :cond_3

    move v0, v1

    .line 347
    goto :goto_0

    .line 348
    :cond_3
    if-nez v3, :cond_0

    move v0, v2

    .line 349
    goto :goto_0
.end method

.method public static eY()Lcom/kingroot/kinguser/nd;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/kingroot/kinguser/nd;->wQ:Lcom/kingroot/kinguser/nd;

    return-object v0
.end method

.method private eZ()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    const-string v0, "096CE82CAD7A6725"

    return-object v0
.end method

.method public static fb()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 405
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 407
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 408
    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 411
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 412
    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 414
    return-object v0
.end method


# virtual methods
.method public B(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/kingroot/kinguser/nd;->wV:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/kingroot/kinguser/nd;->wV:Ljava/lang/String;

    .line 113
    :goto_0
    return-object v0

    .line 107
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/nd;->ur:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/nd;->wV:Ljava/lang/String;

    .line 109
    iget-object v0, p0, Lcom/kingroot/kinguser/nd;->wV:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    const v0, 0x186a0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/nd;->wV:Ljava/lang/String;

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/nd;->wV:Ljava/lang/String;

    goto :goto_0
.end method

.method public D(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 418
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    invoke-virtual {p0, p1, v0}, Lcom/kingroot/kinguser/nd;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;I)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 423
    iget v2, p0, Lcom/kingroot/kinguser/nd;->sT:I

    if-ne v2, v1, :cond_0

    .line 424
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 425
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 426
    if-eqz v3, :cond_0

    .line 428
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 429
    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v2, p0, Lcom/kingroot/kinguser/nd;->sT:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    :cond_0
    :goto_0
    iget v2, p0, Lcom/kingroot/kinguser/nd;->hM:I

    if-ne v2, v1, :cond_1

    .line 436
    invoke-static {}, Lcom/kingroot/kinguser/mf;->ey()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x40

    :goto_1
    iput v2, p0, Lcom/kingroot/kinguser/nd;->hM:I

    .line 439
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v6, v2

    .line 441
    iget v2, p0, Lcom/kingroot/kinguser/nd;->hM:I

    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/nd;->B(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/kingroot/kinguser/nd;->sT:I

    const/4 v5, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move v7, p2

    invoke-static/range {v0 .. v7}, Lcom/kingroot/kinguser/mv;->a(IIILjava/lang/String;IILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 436
    :cond_2
    const/16 v2, 0x20

    goto :goto_1

    .line 430
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 256
    invoke-static {}, Lcom/kingroot/kinguser/kk;->cY()Lcom/kingroot/kinguser/kk;

    move-result-object v0

    const-string v1, "wup_guid"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/kk;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    return-void
.end method

.method public aG(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 358
    invoke-static {}, Lcom/kingroot/kinguser/kk;->cY()Lcom/kingroot/kinguser/kk;

    move-result-object v0

    const-string v1, "wup_guid_v3"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/kk;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    return-void
.end method

.method public cq()Ljava/lang/String;
    .locals 2

    .prologue
    .line 363
    invoke-static {}, Lcom/kingroot/kinguser/kk;->cY()Lcom/kingroot/kinguser/kk;

    move-result-object v0

    const-string v1, "wup_guid_v3"

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/kk;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 365
    return-object v0
.end method

.method public cr()Lcom/king/uranus/r;
    .locals 2

    .prologue
    .line 370
    new-instance v0, Lcom/king/uranus/r;

    invoke-direct {v0}, Lcom/king/uranus/r;-><init>()V

    .line 372
    const-string v1, ""

    iput-object v1, v0, Lcom/king/uranus/r;->bl:Ljava/lang/String;

    .line 373
    new-instance v1, Lcom/king/uranus/F;

    invoke-direct {v1}, Lcom/king/uranus/F;-><init>()V

    .line 374
    iput-object v1, v0, Lcom/king/uranus/r;->c:Lcom/king/uranus/F;

    .line 375
    return-object v0
.end method

.method public cs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 394
    const-string v0, "http://pmir.3g.qq.com/"

    return-object v0
.end method

.method public fa()I
    .locals 1

    .prologue
    .line 261
    const/16 v0, 0x2c

    return v0
.end method

.method public i(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 248
    invoke-static {}, Lcom/kingroot/kinguser/kk;->cY()Lcom/kingroot/kinguser/kk;

    move-result-object v0

    const-string v1, "wup_guid"

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/kk;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 250
    return-object v0
.end method

.method public k([B)[B
    .locals 1

    .prologue
    .line 381
    invoke-static {p1}, Lcom/kingroot/kinguser/jp;->m([B)[B

    move-result-object v0

    return-object v0
.end method

.method public l([B)[B
    .locals 1

    .prologue
    .line 386
    invoke-static {p1}, Lcom/kingroot/kinguser/jp;->n([B)[B

    move-result-object v0

    return-object v0
.end method

.method public o(Landroid/content/Context;)Lcom/king/uranus/G;
    .locals 7

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 124
    sget-object v0, Lcom/kingroot/kinguser/nd;->wS:Lcom/king/uranus/G;

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Lcom/king/uranus/G;

    invoke-direct {v0}, Lcom/king/uranus/G;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/nd;->wS:Lcom/king/uranus/G;

    .line 127
    sget-object v0, Lcom/kingroot/kinguser/nd;->wS:Lcom/king/uranus/G;

    invoke-static {p1}, Lcom/kingroot/kinguser/me;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/kingroot/kinguser/mi;->br(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/king/uranus/G;->i:Ljava/lang/String;

    .line 128
    sget-object v0, Lcom/kingroot/kinguser/nd;->wS:Lcom/king/uranus/G;

    invoke-static {p1}, Lcom/kingroot/kinguser/me;->w(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/kingroot/kinguser/mi;->br(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/king/uranus/G;->j:Ljava/lang/String;

    .line 130
    sget-object v0, Lcom/kingroot/kinguser/nd;->wS:Lcom/king/uranus/G;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/nd;->fa()I

    move-result v4

    iput v4, v0, Lcom/king/uranus/G;->n:I

    .line 132
    sget-object v0, Lcom/kingroot/kinguser/nd;->wS:Lcom/king/uranus/G;

    invoke-direct {p0}, Lcom/kingroot/kinguser/nd;->eZ()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/king/uranus/G;->o:Ljava/lang/String;

    .line 133
    sget-object v0, Lcom/kingroot/kinguser/nd;->wS:Lcom/king/uranus/G;

    const/16 v4, 0x28

    iput v4, v0, Lcom/king/uranus/G;->p:I

    .line 134
    sget-object v0, Lcom/kingroot/kinguser/nd;->wS:Lcom/king/uranus/G;

    invoke-static {p1}, Lcom/kingroot/kinguser/me;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/kingroot/kinguser/mi;->br(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/king/uranus/G;->v:Ljava/lang/String;

    .line 135
    sget-object v0, Lcom/kingroot/kinguser/nd;->wS:Lcom/king/uranus/G;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v4, v0, Lcom/king/uranus/G;->aY:I

    .line 136
    const-string v0, "1.6.1"

    const-string v4, "[\\.]"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 137
    sget-object v0, Lcom/kingroot/kinguser/nd;->wS:Lcom/king/uranus/G;

    new-instance v5, Lcom/king/uranus/v;

    invoke-direct {v5}, Lcom/king/uranus/v;-><init>()V

    iput-object v5, v0, Lcom/king/uranus/G;->cn:Lcom/king/uranus/v;

    .line 139
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/nd;->wS:Lcom/king/uranus/G;

    iget-object v5, v0, Lcom/king/uranus/G;->cn:Lcom/king/uranus/v;

    array-length v0, v4

    if-lt v0, v3, :cond_1

    const/4 v0, 0x0

    aget-object v0, v4, v0

    .line 140
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    iput v0, v5, Lcom/king/uranus/v;->bt:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_1
    :try_start_1
    sget-object v0, Lcom/kingroot/kinguser/nd;->wS:Lcom/king/uranus/G;

    iget-object v5, v0, Lcom/king/uranus/G;->cn:Lcom/king/uranus/v;

    array-length v0, v4

    if-lt v0, v2, :cond_2

    const/4 v0, 0x1

    aget-object v0, v4, v0

    .line 146
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_2
    iput v0, v5, Lcom/king/uranus/v;->bu:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 151
    :goto_3
    :try_start_2
    sget-object v0, Lcom/kingroot/kinguser/nd;->wS:Lcom/king/uranus/G;

    iget-object v5, v0, Lcom/king/uranus/G;->cn:Lcom/king/uranus/v;

    array-length v0, v4

    const/4 v6, 0x3

    if-lt v0, v6, :cond_3

    const/4 v0, 0x2

    aget-object v0, v4, v0

    .line 152
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_4
    iput v0, v5, Lcom/king/uranus/v;->bv:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 161
    :goto_5
    const-class v0, Lcom/kingroot/kinguser/it;

    invoke-static {v0}, Lcom/kingroot/kinguser/ih;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/it;

    .line 162
    sget-object v4, Lcom/kingroot/kinguser/nd;->wS:Lcom/king/uranus/G;

    invoke-interface {v0, v3}, Lcom/kingroot/kinguser/it;->h(Z)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x8

    :goto_6
    iput v0, v4, Lcom/king/uranus/G;->co:I

    .line 164
    sget-object v0, Lcom/kingroot/kinguser/nd;->wS:Lcom/king/uranus/G;

    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/nd;->B(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/king/uranus/G;->q:Ljava/lang/String;

    .line 168
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/nd;->wS:Lcom/king/uranus/G;

    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/nd;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/mi;->br(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/king/uranus/G;->bk:Ljava/lang/String;

    .line 169
    sget-object v1, Lcom/kingroot/kinguser/nd;->wS:Lcom/king/uranus/G;

    invoke-static {p1}, Lcom/kingroot/kinguser/kb;->l(Landroid/content/Context;)B

    move-result v0

    if-nez v0, :cond_5

    move v0, v2

    :goto_7
    iput v0, v1, Lcom/king/uranus/G;->cm:I

    .line 170
    sget-object v0, Lcom/kingroot/kinguser/nd;->wS:Lcom/king/uranus/G;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/nd;->cq()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/mi;->br(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/king/uranus/G;->bR:Ljava/lang/String;

    .line 172
    sget-object v0, Lcom/kingroot/kinguser/nd;->wS:Lcom/king/uranus/G;

    return-object v0

    :cond_1
    move v0, v3

    .line 140
    goto :goto_0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    sget-object v0, Lcom/kingroot/kinguser/nd;->wS:Lcom/king/uranus/G;

    iget-object v0, v0, Lcom/king/uranus/G;->cn:Lcom/king/uranus/v;

    iput v3, v0, Lcom/king/uranus/v;->bt:I

    goto :goto_1

    :cond_2
    move v0, v1

    .line 146
    goto :goto_2

    .line 147
    :catch_1
    move-exception v0

    .line 148
    sget-object v0, Lcom/kingroot/kinguser/nd;->wS:Lcom/king/uranus/G;

    iget-object v0, v0, Lcom/king/uranus/G;->cn:Lcom/king/uranus/v;

    iput v1, v0, Lcom/king/uranus/v;->bu:I

    goto :goto_3

    :cond_3
    move v0, v1

    .line 152
    goto :goto_4

    .line 153
    :catch_2
    move-exception v0

    .line 154
    sget-object v0, Lcom/kingroot/kinguser/nd;->wS:Lcom/king/uranus/G;

    iget-object v0, v0, Lcom/king/uranus/G;->cn:Lcom/king/uranus/v;

    iput v1, v0, Lcom/king/uranus/v;->bv:I

    goto :goto_5

    :cond_4
    move v0, v1

    .line 162
    goto :goto_6

    :cond_5
    move v0, v3

    .line 169
    goto :goto_7
.end method

.method public p(Landroid/content/Context;)Lcom/king/uranus/z;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 177
    sget-object v0, Lcom/kingroot/kinguser/nd;->wT:Lcom/king/uranus/z;

    if-nez v0, :cond_0

    .line 178
    new-instance v0, Lcom/king/uranus/z;

    invoke-direct {v0}, Lcom/king/uranus/z;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/nd;->wT:Lcom/king/uranus/z;

    .line 180
    sget-object v0, Lcom/kingroot/kinguser/nd;->wT:Lcom/king/uranus/z;

    invoke-static {p1}, Lcom/kingroot/kinguser/me;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/mi;->br(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/king/uranus/z;->i:Ljava/lang/String;

    .line 181
    sget-object v0, Lcom/kingroot/kinguser/nd;->wT:Lcom/king/uranus/z;

    invoke-static {p1}, Lcom/kingroot/kinguser/me;->w(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/mi;->br(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/king/uranus/z;->j:Ljava/lang/String;

    .line 182
    sget-object v0, Lcom/kingroot/kinguser/nd;->wT:Lcom/king/uranus/z;

    const-string v1, "EP_KingCommon"

    iput-object v1, v0, Lcom/king/uranus/z;->name:Ljava/lang/String;

    .line 183
    const/4 v0, 0x0

    .line 185
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 188
    :goto_0
    if-eqz v0, :cond_1

    .line 189
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 190
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 191
    sget-object v2, Lcom/kingroot/kinguser/nd;->wT:Lcom/king/uranus/z;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "screen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "*"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/king/uranus/z;->bM:Ljava/lang/String;

    .line 196
    :goto_1
    sget-object v0, Lcom/kingroot/kinguser/nd;->wT:Lcom/king/uranus/z;

    iput v5, v0, Lcom/king/uranus/z;->s:I

    .line 197
    sget-object v0, Lcom/kingroot/kinguser/nd;->wT:Lcom/king/uranus/z;

    iput v5, v0, Lcom/king/uranus/z;->bN:I

    .line 198
    sget-object v0, Lcom/kingroot/kinguser/nd;->wT:Lcom/king/uranus/z;

    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/nd;->B(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/king/uranus/z;->q:Ljava/lang/String;

    .line 199
    sget-object v0, Lcom/kingroot/kinguser/nd;->wT:Lcom/king/uranus/z;

    invoke-direct {p0}, Lcom/kingroot/kinguser/nd;->eZ()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/king/uranus/z;->o:Ljava/lang/String;

    .line 202
    sget-object v0, Lcom/kingroot/kinguser/nd;->wT:Lcom/king/uranus/z;

    const/4 v1, 0x2

    iput v1, v0, Lcom/king/uranus/z;->type:I

    .line 203
    sget-object v0, Lcom/kingroot/kinguser/nd;->wT:Lcom/king/uranus/z;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/king/uranus/z;->bK:Ljava/lang/String;

    .line 204
    sget-object v0, Lcom/kingroot/kinguser/nd;->wT:Lcom/king/uranus/z;

    invoke-static {}, Lcom/kingroot/kinguser/me;->eu()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/mi;->br(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/king/uranus/z;->bL:Ljava/lang/String;

    .line 212
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/nd;->wT:Lcom/king/uranus/z;

    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/nd;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/mi;->br(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/king/uranus/z;->bk:Ljava/lang/String;

    .line 213
    sget-object v0, Lcom/kingroot/kinguser/nd;->wT:Lcom/king/uranus/z;

    return-object v0

    .line 193
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/nd;->wT:Lcom/king/uranus/z;

    const-string v1, "screen=0*0"

    iput-object v1, v0, Lcom/king/uranus/z;->bM:Ljava/lang/String;

    goto :goto_1

    .line 186
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public q(Landroid/content/Context;)Lcom/king/uranus/n;
    .locals 2

    .prologue
    .line 218
    sget-object v0, Lcom/kingroot/kinguser/nd;->wU:Lcom/king/uranus/n;

    if-nez v0, :cond_0

    .line 219
    new-instance v0, Lcom/king/uranus/n;

    invoke-direct {v0}, Lcom/king/uranus/n;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/nd;->wU:Lcom/king/uranus/n;

    .line 220
    sget-object v0, Lcom/kingroot/kinguser/nd;->wU:Lcom/king/uranus/n;

    invoke-static {p1}, Lcom/kingroot/kinguser/me;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/mi;->br(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/king/uranus/n;->i:Ljava/lang/String;

    .line 221
    sget-object v0, Lcom/kingroot/kinguser/nd;->wU:Lcom/king/uranus/n;

    invoke-static {p1}, Lcom/kingroot/kinguser/me;->w(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/mi;->br(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/king/uranus/n;->j:Ljava/lang/String;

    .line 222
    sget-object v0, Lcom/kingroot/kinguser/nd;->wU:Lcom/king/uranus/n;

    invoke-static {p1}, Lcom/kingroot/kinguser/me;->x(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/mi;->br(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/king/uranus/n;->k:Ljava/lang/String;

    .line 223
    sget-object v0, Lcom/kingroot/kinguser/nd;->wU:Lcom/king/uranus/n;

    invoke-static {p1}, Lcom/kingroot/kinguser/me;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/mi;->br(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/king/uranus/n;->aX:Ljava/lang/String;

    .line 224
    sget-object v0, Lcom/kingroot/kinguser/nd;->wU:Lcom/king/uranus/n;

    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/nd;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/mi;->br(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/king/uranus/n;->bc:Ljava/lang/String;

    .line 225
    sget-object v0, Lcom/kingroot/kinguser/nd;->wU:Lcom/king/uranus/n;

    invoke-static {}, Lcom/kingroot/kinguser/me;->et()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/mi;->br(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/king/uranus/n;->x:Ljava/lang/String;

    .line 226
    sget-object v0, Lcom/kingroot/kinguser/nd;->wU:Lcom/king/uranus/n;

    invoke-static {}, Lcom/kingroot/kinguser/me;->ev()I

    move-result v1

    iput v1, v0, Lcom/king/uranus/n;->aY:I

    .line 227
    sget-object v0, Lcom/kingroot/kinguser/nd;->wU:Lcom/king/uranus/n;

    invoke-static {}, Lcom/kingroot/kinguser/me;->eu()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/mi;->br(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/king/uranus/n;->aZ:Ljava/lang/String;

    .line 228
    sget-object v0, Lcom/kingroot/kinguser/nd;->wU:Lcom/king/uranus/n;

    const-string v1, "EP_KingCommon"

    iput-object v1, v0, Lcom/king/uranus/n;->ba:Ljava/lang/String;

    .line 232
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/nd;->wU:Lcom/king/uranus/n;

    return-object v0
.end method

.method public r(Landroid/content/Context;)Lcom/king/uranus/t;
    .locals 2

    .prologue
    .line 238
    sget-object v0, Lcom/kingroot/kinguser/nd;->wR:Lcom/king/uranus/t;

    if-nez v0, :cond_0

    .line 239
    new-instance v0, Lcom/king/uranus/t;

    invoke-direct {v0}, Lcom/king/uranus/t;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/nd;->wR:Lcom/king/uranus/t;

    .line 240
    sget-object v0, Lcom/kingroot/kinguser/nd;->wR:Lcom/king/uranus/t;

    const/4 v1, 0x2

    iput v1, v0, Lcom/king/uranus/t;->bp:I

    .line 241
    sget-object v0, Lcom/kingroot/kinguser/nd;->wR:Lcom/king/uranus/t;

    const/16 v1, 0xc9

    iput v1, v0, Lcom/king/uranus/t;->s:I

    .line 243
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/nd;->wR:Lcom/king/uranus/t;

    return-object v0
.end method

.method public s(Landroid/content/Context;)Lcom/king/uranus/e;
    .locals 8

    .prologue
    const/4 v5, 0x2

    const-wide/16 v6, 0x1

    const/4 v1, 0x1

    .line 267
    invoke-static {p1}, Lcom/kingroot/kinguser/me;->x(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 269
    invoke-static {}, Lcom/kingroot/kinguser/nd;->fb()[Ljava/lang/String;

    move-result-object v2

    .line 271
    new-instance v3, Lcom/king/uranus/e;

    invoke-direct {v3}, Lcom/king/uranus/e;-><init>()V

    .line 272
    invoke-static {p1}, Lcom/kingroot/kinguser/me;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/king/uranus/e;->i:Ljava/lang/String;

    .line 273
    invoke-static {p1}, Lcom/kingroot/kinguser/me;->w(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/king/uranus/e;->j:Ljava/lang/String;

    .line 274
    if-eqz v0, :cond_0

    :goto_0
    iput-object v0, v3, Lcom/king/uranus/e;->k:Ljava/lang/String;

    .line 275
    const-string v0, "0"

    iput-object v0, v3, Lcom/king/uranus/e;->l:Ljava/lang/String;

    .line 276
    const-string v0, "0"

    iput-object v0, v3, Lcom/king/uranus/e;->m:Ljava/lang/String;

    .line 277
    const/16 v0, 0x2c

    iput v0, v3, Lcom/king/uranus/e;->n:I

    .line 278
    invoke-direct {p0}, Lcom/kingroot/kinguser/nd;->eZ()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/king/uranus/e;->o:Ljava/lang/String;

    .line 279
    const/16 v0, 0x28

    iput v0, v3, Lcom/king/uranus/e;->p:I

    .line 280
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/nd;->B(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/king/uranus/e;->q:Ljava/lang/String;

    .line 281
    iput v5, v3, Lcom/king/uranus/e;->r:I

    .line 282
    const/16 v0, 0xc9

    iput v0, v3, Lcom/king/uranus/e;->s:I

    .line 284
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 285
    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, v3, Lcom/king/uranus/e;->t:Z

    .line 287
    const-string v0, ""

    iput-object v0, v3, Lcom/king/uranus/e;->Z:Ljava/lang/String;

    .line 288
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/king/uranus/e;->u:Ljava/lang/String;

    .line 289
    invoke-static {p1}, Lcom/kingroot/kinguser/me;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/mi;->br(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/king/uranus/e;->v:Ljava/lang/String;

    .line 290
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, v3, Lcom/king/uranus/e;->w:I

    .line 291
    const-string v0, ""

    iput-object v0, v3, Lcom/king/uranus/e;->x:Ljava/lang/String;

    .line 292
    const/16 v0, 0x804

    iput-short v0, v3, Lcom/king/uranus/e;->y:S

    .line 294
    iput v1, v3, Lcom/king/uranus/e;->z:I

    .line 295
    aget-object v0, v2, v5

    iput-object v0, v3, Lcom/king/uranus/e;->A:Ljava/lang/String;

    .line 296
    const-string v0, ""

    iput-object v0, v3, Lcom/king/uranus/e;->B:Ljava/lang/String;

    .line 297
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    iput v0, v3, Lcom/king/uranus/e;->C:I

    .line 298
    const/4 v0, 0x3

    aget-object v0, v2, v0

    iput-object v0, v3, Lcom/king/uranus/e;->D:Ljava/lang/String;

    .line 299
    iput-wide v6, v3, Lcom/king/uranus/e;->E:J

    .line 300
    iput-wide v6, v3, Lcom/king/uranus/e;->F:J

    .line 302
    iput-wide v6, v3, Lcom/king/uranus/e;->G:J

    .line 304
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v0}, Lcom/kingroot/kinguser/mi;->br(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/king/uranus/e;->M:Ljava/lang/String;

    .line 305
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v0}, Lcom/kingroot/kinguser/mi;->br(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/king/uranus/e;->H:Ljava/lang/String;

    .line 306
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-static {v0}, Lcom/kingroot/kinguser/mi;->br(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/king/uranus/e;->I:Ljava/lang/String;

    .line 307
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v0}, Lcom/kingroot/kinguser/mi;->br(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/king/uranus/e;->J:Ljava/lang/String;

    .line 309
    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-static {v0}, Lcom/kingroot/kinguser/mi;->br(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/king/uranus/e;->N:Ljava/lang/String;

    .line 310
    const-string v0, ""

    invoke-static {v0}, Lcom/kingroot/kinguser/mi;->br(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/king/uranus/e;->aj:Ljava/lang/String;

    .line 312
    const-string v0, "1.6.1"

    iput-object v0, v3, Lcom/king/uranus/e;->X:Ljava/lang/String;

    .line 313
    iput v1, v3, Lcom/king/uranus/e;->Y:I

    .line 315
    const-string v0, ""

    iput-object v0, v3, Lcom/king/uranus/e;->ah:Ljava/lang/String;

    .line 316
    invoke-static {}, Lcom/kingroot/kinguser/me;->ex()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/mi;->br(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/king/uranus/e;->ae:Ljava/lang/String;

    .line 317
    invoke-static {}, Lcom/kingroot/kinguser/me;->dI()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/mi;->br(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/king/uranus/e;->ak:Ljava/lang/String;

    .line 319
    return-object v3

    .line 274
    :cond_0
    const-string v0, ""

    goto/16 :goto_0

    .line 285
    :cond_1
    const/4 v0, 0x0

    goto/16 :goto_1
.end method

.method public t(Landroid/content/Context;)Lcom/king/uranus/C;
    .locals 2

    .prologue
    .line 324
    new-instance v0, Lcom/king/uranus/C;

    invoke-direct {v0}, Lcom/king/uranus/C;-><init>()V

    .line 325
    const-string v1, ""

    iput-object v1, v0, Lcom/king/uranus/C;->cf:Ljava/lang/String;

    .line 326
    const/16 v1, 0x28

    iput v1, v0, Lcom/king/uranus/C;->p:I

    .line 329
    invoke-static {p1}, Lcom/kingroot/kinguser/nd;->C(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Lcom/king/uranus/C;->cc:I

    .line 333
    const/4 v1, 0x0

    .line 334
    iput v1, v0, Lcom/king/uranus/C;->cd:I

    .line 335
    invoke-virtual {p0}, Lcom/kingroot/kinguser/nd;->cq()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/king/uranus/C;->bk:Ljava/lang/String;

    .line 337
    return-object v0
.end method
