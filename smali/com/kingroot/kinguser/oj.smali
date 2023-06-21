.class public Lcom/kingroot/kinguser/oj;
.super Lcom/kingroot/kinguser/ceu;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/oj$a;
    }
.end annotation


# instance fields
.field private yb:Z

.field private yc:Lcom/kingroot/kinguser/oi;

.field private yd:Lcom/kingroot/kinguser/ol;

.field private ye:Lcom/kingroot/kinguser/car;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/kingroot/kinguser/ceu;-><init>()V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/oj;->yb:Z

    .line 46
    invoke-static {}, Lcom/kingroot/kinguser/oi;->fu()Lcom/kingroot/kinguser/oi;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/oj;->yc:Lcom/kingroot/kinguser/oi;

    .line 47
    invoke-static {}, Lcom/kingroot/kinguser/ol;->fZ()Lcom/kingroot/kinguser/ol;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/oj;->yd:Lcom/kingroot/kinguser/ol;

    .line 48
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/ok;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/kingroot/kinguser/oj;-><init>()V

    return-void
.end method

.method public static fH()Lcom/kingroot/kinguser/oj;
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Lcom/kingroot/kinguser/oj$a;->fY()Lcom/kingroot/kinguser/oj;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 434
    iget-object v0, p0, Lcom/kingroot/kinguser/oj;->ye:Lcom/kingroot/kinguser/car;

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/kingroot/kinguser/oj;->ye:Lcom/kingroot/kinguser/car;

    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/car;->a(Ljava/util/HashMap;)V

    .line 437
    :cond_0
    return-void
.end method

.method public a(ZLcom/kingroot/kinguser/car;)V
    .locals 0
    .param p2    # Lcom/kingroot/kinguser/car;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/kingroot/kinguser/oj;->yb:Z

    .line 62
    iput-object p2, p0, Lcom/kingroot/kinguser/oj;->ye:Lcom/kingroot/kinguser/car;

    .line 63
    return-void
.end method

.method public b(Lcom/kingroot/kinguser/ap;)V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/kingroot/kinguser/oj;->yc:Lcom/kingroot/kinguser/oi;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/oi;->a(Lcom/kingroot/kinguser/ap;)V

    .line 122
    return-void
.end method

.method public b(Lcom/kingroot/kinguser/au;)V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/kingroot/kinguser/oj;->yc:Lcom/kingroot/kinguser/oi;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/oi;->a(Lcom/kingroot/kinguser/au;)V

    .line 200
    return-void
.end method

.method public b(Lcom/kingroot/kinguser/cez$b;)V
    .locals 1

    .prologue
    .line 101
    if-nez p1, :cond_0

    .line 105
    :goto_0
    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/oj;->yc:Lcom/kingroot/kinguser/oi;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/oi;->a(Lcom/kingroot/kinguser/cez$b;)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;JLjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/kingroot/kinguser/oj;->yc:Lcom/kingroot/kinguser/oi;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/kingroot/kinguser/oi;->a(Ljava/lang/String;JLjava/util/List;)V

    .line 93
    return-void
.end method

.method public cd(Ljava/lang/String;)Lcom/kingroot/kinguser/ces$a;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/kingroot/kinguser/oj;->yc:Lcom/kingroot/kinguser/oi;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/oi;->bY(Ljava/lang/String;)Lcom/kingroot/kinguser/ces$a;

    move-result-object v0

    return-object v0
.end method

.method public ce(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 148
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/oj;->yc:Lcom/kingroot/kinguser/oi;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/oi;->bW(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public cf(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 170
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    :goto_0
    return-void

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/oj;->yc:Lcom/kingroot/kinguser/oi;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/oi;->bX(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public fI()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/kingroot/kinguser/oj;->yb:Z

    return v0
.end method

.method public fJ()Lcom/kingroot/kinguser/cez$b;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/kingroot/kinguser/oj;->yc:Lcom/kingroot/kinguser/oi;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/oi;->fw()Lcom/kingroot/kinguser/cez$b;

    move-result-object v0

    return-object v0
.end method

.method public fK()Lcom/kingroot/kinguser/ap;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/kingroot/kinguser/oj;->yc:Lcom/kingroot/kinguser/oi;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/oi;->fD()Lcom/kingroot/kinguser/ap;

    move-result-object v0

    return-object v0
.end method

.method public fL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/kingroot/kinguser/oj;->yc:Lcom/kingroot/kinguser/oi;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/oi;->fx()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public fM()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/kingroot/kinguser/oj;->yc:Lcom/kingroot/kinguser/oi;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/oi;->fy()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public fN()Z
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/kingroot/kinguser/oj;->yc:Lcom/kingroot/kinguser/oi;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/oi;->fB()Z

    move-result v0

    return v0
.end method

.method public fO()Lcom/kingroot/kinguser/au;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/kingroot/kinguser/oj;->yc:Lcom/kingroot/kinguser/oi;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/oi;->fA()Lcom/kingroot/kinguser/au;

    move-result-object v0

    return-object v0
.end method

.method public fP()Lcom/kingroot/kinguser/au;
    .locals 21

    .prologue
    .line 217
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/oj;->yd:Lcom/kingroot/kinguser/ol;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/ol;->ge()Landroid/content/Context;

    move-result-object v7

    .line 218
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kingroot/kinguser/oj;->yd:Lcom/kingroot/kinguser/ol;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/ol;->gd()Lcom/kingroot/kinguser/cas;

    move-result-object v8

    .line 219
    if-eqz v7, :cond_0

    if-nez v8, :cond_1

    .line 220
    :cond_0
    new-instance v2, Lcom/kingroot/kinguser/au;

    invoke-direct {v2}, Lcom/kingroot/kinguser/au;-><init>()V

    .line 345
    :goto_0
    return-object v2

    .line 223
    :cond_1
    invoke-static {v7}, Lcom/kingroot/kinguser/cgo;->Z(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v9

    .line 232
    invoke-virtual {v8}, Lcom/kingroot/kinguser/cas;->Tl()I

    move-result v10

    .line 240
    invoke-static {}, Lcom/kingroot/kinguser/gz;->a()J

    move-result-wide v12

    .line 242
    new-instance v2, Lcom/kingroot/kinguser/cgt$a;

    invoke-direct {v2}, Lcom/kingroot/kinguser/cgt$a;-><init>()V

    .line 243
    invoke-static {v2}, Lcom/kingroot/kinguser/cgt;->a(Lcom/kingroot/kinguser/cgt$a;)V

    .line 244
    iget-wide v14, v2, Lcom/kingroot/kinguser/cgt$a;->Yw:J

    .line 246
    new-instance v2, Lcom/kingroot/kinguser/cgt$a;

    invoke-direct {v2}, Lcom/kingroot/kinguser/cgt$a;-><init>()V

    .line 247
    invoke-static {v2}, Lcom/kingroot/kinguser/cgt;->b(Lcom/kingroot/kinguser/cgt$a;)V

    .line 248
    iget-wide v0, v2, Lcom/kingroot/kinguser/cgt$a;->Yw:J

    move-wide/from16 v16, v0

    .line 250
    invoke-static {v7}, Lcom/kingroot/kinguser/cgt;->ah(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 258
    const-string v2, ""

    const-string v2, ""

    .line 259
    invoke-virtual {v8}, Lcom/kingroot/kinguser/cas;->Tn()Ljava/lang/String;

    move-result-object v11

    .line 260
    invoke-virtual {v8}, Lcom/kingroot/kinguser/cas;->To()Ljava/lang/String;

    move-result-object v18

    .line 263
    invoke-static {v7}, Lcom/kingroot/kinguser/cgt;->cx(Landroid/content/Context;)I

    move-result v2

    .line 264
    invoke-static {v7}, Lcom/kingroot/kinguser/cgt;->cy(Landroid/content/Context;)I

    move-result v3

    .line 265
    if-ge v2, v3, :cond_4

    .line 271
    :goto_1
    new-instance v6, Lcom/kingroot/kinguser/au;

    invoke-direct {v6}, Lcom/kingroot/kinguser/au;-><init>()V

    .line 272
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kingroot/kinguser/oj;->yd:Lcom/kingroot/kinguser/ol;

    invoke-virtual {v4}, Lcom/kingroot/kinguser/ol;->gd()Lcom/kingroot/kinguser/cas;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kingroot/kinguser/cas;->Th()Ljava/lang/String;

    move-result-object v4

    .line 273
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 274
    invoke-static {v7}, Lcom/kingroot/kinguser/cgt;->ae(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 276
    :cond_2
    iput-object v4, v6, Lcom/kingroot/kinguser/au;->iE:Ljava/lang/String;

    .line 277
    iput-object v11, v6, Lcom/kingroot/kinguser/au;->iF:Ljava/lang/String;

    .line 278
    move-object/from16 v0, v18

    iput-object v0, v6, Lcom/kingroot/kinguser/au;->ju:Ljava/lang/String;

    .line 279
    if-eqz v5, :cond_3

    move-object v4, v5

    :goto_2
    iput-object v4, v6, Lcom/kingroot/kinguser/au;->iG:Ljava/lang/String;

    .line 280
    const-string v4, "0"

    iput-object v4, v6, Lcom/kingroot/kinguser/au;->qq:Ljava/lang/String;

    .line 281
    const-string v4, "0"

    iput-object v4, v6, Lcom/kingroot/kinguser/au;->iH:Ljava/lang/String;

    .line 282
    const-string v4, "product"

    invoke-static {v4}, Ltmsdk/common/TMSDKContext;->nF(Ljava/lang/String;)I

    move-result v4

    iput v4, v6, Lcom/kingroot/kinguser/au;->product:I

    .line 283
    const-string v4, "lc"

    invoke-static {v4}, Ltmsdk/common/TMSDKContext;->nG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/kingroot/kinguser/cgx;->nl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v6, Lcom/kingroot/kinguser/au;->lc:Ljava/lang/String;

    .line 284
    const-string v4, "build"

    invoke-static {v4}, Ltmsdk/common/TMSDKContext;->nF(Ljava/lang/String;)I

    move-result v4

    iput v4, v6, Lcom/kingroot/kinguser/au;->dS:I

    .line 285
    const-string v4, "channel"

    invoke-static {v4}, Ltmsdk/common/TMSDKContext;->nG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/kingroot/kinguser/cgx;->nl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v6, Lcom/kingroot/kinguser/au;->dT:Ljava/lang/String;

    .line 286
    const/4 v4, 0x2

    iput v4, v6, Lcom/kingroot/kinguser/au;->iI:I

    .line 287
    const-string v4, "sub_platform"

    invoke-static {v4}, Ltmsdk/common/TMSDKContext;->nF(Ljava/lang/String;)I

    move-result v4

    iput v4, v6, Lcom/kingroot/kinguser/au;->iJ:I

    .line 288
    invoke-static {v7}, Lcom/kingroot/kinguser/cgo;->cv(Landroid/content/Context;)Z

    move-result v4

    iput-boolean v4, v6, Lcom/kingroot/kinguser/au;->iK:Z

    .line 290
    :try_start_0
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v6, Lcom/kingroot/kinguser/au;->iL:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    :goto_3
    invoke-virtual {v8}, Lcom/kingroot/kinguser/cas;->Tj()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/kingroot/kinguser/cgx;->nl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v6, Lcom/kingroot/kinguser/au;->iM:Ljava/lang/String;

    .line 295
    invoke-static {}, Lcom/kingroot/kinguser/cgu;->qb()I

    move-result v4

    iput v4, v6, Lcom/kingroot/kinguser/au;->iN:I

    .line 296
    invoke-static {v7}, Lcom/kingroot/kinguser/cgt;->aj(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/kingroot/kinguser/cgx;->nl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v6, Lcom/kingroot/kinguser/au;->iO:Ljava/lang/String;

    .line 297
    const/16 v4, 0x804

    iput-short v4, v6, Lcom/kingroot/kinguser/au;->iP:S

    .line 298
    iput v10, v6, Lcom/kingroot/kinguser/au;->ja:I

    .line 299
    const/4 v4, 0x2

    aget-object v4, v9, v4

    iput-object v4, v6, Lcom/kingroot/kinguser/au;->jb:Ljava/lang/String;

    .line 300
    const-string v4, "ro.product.cpu.abi2"

    invoke-static {v4}, Lcom/kingroot/kinguser/cgt;->nX(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v6, Lcom/kingroot/kinguser/au;->jD:Ljava/lang/String;

    .line 301
    invoke-static {}, Lcom/kingroot/kinguser/cgo;->pg()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v6, Lcom/kingroot/kinguser/au;->jc:Ljava/lang/String;

    .line 302
    invoke-static {}, Lcom/kingroot/kinguser/cgo;->amZ()I

    move-result v4

    iput v4, v6, Lcom/kingroot/kinguser/au;->jd:I

    .line 303
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/kingroot/kinguser/au;->je:Ljava/lang/String;

    .line 304
    iput-wide v12, v6, Lcom/kingroot/kinguser/au;->jf:J

    .line 305
    invoke-static {}, Lcom/kingroot/kinguser/cgo;->ana()J

    move-result-wide v2

    iput-wide v2, v6, Lcom/kingroot/kinguser/au;->jg:J

    .line 306
    iput-wide v14, v6, Lcom/kingroot/kinguser/au;->jh:J

    .line 307
    move-wide/from16 v0, v16

    iput-wide v0, v6, Lcom/kingroot/kinguser/au;->jI:J

    .line 308
    invoke-static {}, Lcom/kingroot/kinguser/cgt;->qf()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kingroot/kinguser/cgx;->nl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/kingroot/kinguser/au;->ji:Ljava/lang/String;

    .line 309
    invoke-static {}, Lcom/kingroot/kinguser/cgt;->anc()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kingroot/kinguser/cgx;->nl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/kingroot/kinguser/au;->jj:Ljava/lang/String;

    .line 310
    invoke-static {}, Lcom/kingroot/kinguser/cgt;->and()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kingroot/kinguser/cgx;->nl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/kingroot/kinguser/au;->jk:Ljava/lang/String;

    .line 311
    const/4 v2, 0x1

    iput v2, v6, Lcom/kingroot/kinguser/au;->jy:I

    .line 312
    const-string v2, "softversion"

    invoke-static {v2}, Ltmsdk/common/TMSDKContext;->nG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kingroot/kinguser/cgx;->nl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/kingroot/kinguser/au;->version:Ljava/lang/String;

    .line 313
    const-string v2, "pkgkey"

    invoke-static {v2}, Ltmsdk/common/TMSDKContext;->nG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kingroot/kinguser/cgx;->nl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/kingroot/kinguser/au;->jz:Ljava/lang/String;

    .line 315
    invoke-static {}, Lcom/kingroot/kinguser/gz;->b()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/kingroot/kinguser/au;->jn:Ljava/lang/String;

    .line 317
    const/4 v2, 0x0

    iput v2, v6, Lcom/kingroot/kinguser/au;->jq:I

    .line 318
    const/4 v2, 0x0

    iput v2, v6, Lcom/kingroot/kinguser/au;->jr:I

    .line 319
    invoke-static {}, Lcom/kingroot/kinguser/cgt;->ane()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/kingroot/kinguser/au;->jA:Ljava/lang/String;

    .line 320
    invoke-static {}, Lcom/kingroot/kinguser/cgt;->anf()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/kingroot/kinguser/au;->jB:Ljava/lang/String;

    .line 321
    const-string v2, "ro.build.product"

    invoke-static {v2}, Lcom/kingroot/kinguser/cgt;->nX(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/kingroot/kinguser/au;->jC:Ljava/lang/String;

    .line 322
    const-string v2, "ro.build.fingerprint"

    invoke-static {v2}, Lcom/kingroot/kinguser/cgt;->nX(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/kingroot/kinguser/au;->jE:Ljava/lang/String;

    .line 323
    const-string v2, "ro.product.locale.language"

    invoke-static {v2}, Lcom/kingroot/kinguser/cgt;->nX(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/kingroot/kinguser/au;->jF:Ljava/lang/String;

    .line 324
    const-string v2, "ro.product.locale.region"

    invoke-static {v2}, Lcom/kingroot/kinguser/cgt;->nX(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/kingroot/kinguser/au;->jG:Ljava/lang/String;

    .line 325
    invoke-static {}, Lcom/kingroot/kinguser/cgt;->getRadioVersion()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/kingroot/kinguser/au;->jH:Ljava/lang/String;

    .line 326
    const-string v2, "ro.board.platform"

    invoke-static {v2}, Lcom/kingroot/kinguser/cgt;->nX(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/kingroot/kinguser/au;->jo:Ljava/lang/String;

    .line 327
    const-string v2, "ro.mediatek.platform"

    invoke-static {v2}, Lcom/kingroot/kinguser/cgt;->nX(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/kingroot/kinguser/au;->jJ:Ljava/lang/String;

    .line 328
    const-string v2, "ro.sf.lcd_density"

    invoke-static {v2}, Lcom/kingroot/kinguser/cgt;->nX(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/kingroot/kinguser/au;->jp:Ljava/lang/String;

    .line 329
    const-string v2, "ro.product.name"

    invoke-static {v2}, Lcom/kingroot/kinguser/cgt;->nX(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/kingroot/kinguser/au;->jl:Ljava/lang/String;

    .line 330
    const-string v2, "ro.build.version.release"

    invoke-static {v2}, Lcom/kingroot/kinguser/cgt;->nX(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/kingroot/kinguser/au;->jm:Ljava/lang/String;

    .line 331
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/kingroot/kinguser/cgt;->eZ(Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/kingroot/kinguser/au;->jK:Ljava/lang/String;

    .line 336
    invoke-virtual {v8}, Lcom/kingroot/kinguser/cas;->Tm()Z

    move-result v2

    iput-boolean v2, v6, Lcom/kingroot/kinguser/au;->js:Z

    .line 338
    const-string v2, "app_build_type"

    invoke-static {v2}, Ltmsdk/common/TMSDKContext;->nF(Ljava/lang/String;)I

    move-result v2

    iput v2, v6, Lcom/kingroot/kinguser/au;->jL:I

    .line 341
    invoke-static {}, Lcom/kingroot/kinguser/cgt;->ang()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/kingroot/kinguser/au;->jM:Ljava/lang/String;

    .line 342
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/kingroot/kinguser/cgt;->eq(Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/kingroot/kinguser/au;->jN:Ljava/lang/String;

    .line 343
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/kingroot/kinguser/cgt;->eq(Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lcom/kingroot/kinguser/au;->jO:Ljava/lang/String;

    move-object v2, v6

    .line 345
    goto/16 :goto_0

    .line 279
    :cond_3
    const-string v4, ""

    goto/16 :goto_2

    .line 291
    :catch_0
    move-exception v4

    goto/16 :goto_3

    :cond_4
    move/from16 v20, v3

    move v3, v2

    move/from16 v2, v20

    goto/16 :goto_1
.end method

.method public fQ()J
    .locals 2

    .prologue
    .line 363
    iget-object v0, p0, Lcom/kingroot/kinguser/oj;->yc:Lcom/kingroot/kinguser/oi;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/oi;->fz()J

    move-result-wide v0

    .line 364
    return-wide v0
.end method

.method public fR()Z
    .locals 1

    .prologue
    .line 419
    const/4 v0, 0x1

    return v0
.end method

.method public fS()I
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/kingroot/kinguser/oj;->yd:Lcom/kingroot/kinguser/ol;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ol;->gd()Lcom/kingroot/kinguser/cas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cas;->Ti()I

    move-result v0

    return v0
.end method

.method public fT()Z
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/kingroot/kinguser/oj;->yd:Lcom/kingroot/kinguser/ol;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ol;->gd()Lcom/kingroot/kinguser/cas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cas;->aks()Z

    move-result v0

    return v0
.end method

.method public fU()V
    .locals 0

    .prologue
    .line 445
    return-void
.end method

.method public fV()Ljava/lang/String;
    .locals 1

    .prologue
    .line 449
    invoke-static {}, Lcom/kingroot/kinguser/oi;->fu()Lcom/kingroot/kinguser/oi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/oi;->fE()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public fW()Ljava/lang/String;
    .locals 1

    .prologue
    .line 454
    invoke-static {}, Lcom/kingroot/kinguser/oi;->fu()Lcom/kingroot/kinguser/oi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/oi;->fF()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public fX()I
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/kingroot/kinguser/oj;->yd:Lcom/kingroot/kinguser/ol;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ol;->gd()Lcom/kingroot/kinguser/cas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cas;->fX()I

    move-result v0

    return v0
.end method

.method public h(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 459
    if-nez p1, :cond_0

    .line 464
    :goto_0
    return-void

    .line 463
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/oi;->fu()Lcom/kingroot/kinguser/oi;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/oi;->ca(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public i(II)V
    .locals 2

    .prologue
    .line 374
    iget-object v0, p0, Lcom/kingroot/kinguser/oj;->ye:Lcom/kingroot/kinguser/car;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/kingroot/kinguser/oj;->ye:Lcom/kingroot/kinguser/car;

    invoke-interface {v0, p1, p2}, Lcom/kingroot/kinguser/car;->i(II)V

    .line 377
    :cond_0
    invoke-static {p2}, Lcom/kingroot/kinguser/cen;->kI(I)I

    move-result v0

    .line 378
    const v1, -0x35b60

    if-ne v0, v1, :cond_1

    .line 379
    :cond_1
    const v1, -0x27100

    if-ne v0, v1, :cond_2

    .line 380
    :cond_2
    const v1, -0x6ddd0

    if-eq v0, v1, :cond_3

    const v1, -0x83d60

    if-ne v0, v1, :cond_3

    .line 382
    :cond_3
    const v1, -0x11170

    if-eq v0, v1, :cond_4

    const v1, -0x5a550

    if-eq v0, v1, :cond_4

    const v1, -0x5cc60

    if-ne v0, v1, :cond_4

    .line 385
    :cond_4
    const v1, -0x55730

    if-eq v0, v1, :cond_5

    const v1, -0x57e40

    if-eq v0, v1, :cond_5

    const v1, -0x68fb0

    if-ne v0, v1, :cond_5

    .line 394
    :cond_5
    return-void
.end method

.method public i(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 468
    if-nez p1, :cond_0

    .line 473
    :goto_0
    return-void

    .line 472
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/oi;->fu()Lcom/kingroot/kinguser/oi;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/oi;->bZ(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public j(II)V
    .locals 0

    .prologue
    .line 402
    return-void
.end method

.method public k(II)V
    .locals 0

    .prologue
    .line 410
    return-void
.end method

.method public q(J)V
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/kingroot/kinguser/oj;->yc:Lcom/kingroot/kinguser/oi;

    invoke-virtual {v0, p1, p2}, Lcom/kingroot/kinguser/oi;->p(J)V

    .line 355
    return-void
.end method

.method public r(Z)V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/kingroot/kinguser/oj;->yc:Lcom/kingroot/kinguser/oi;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/oi;->q(Z)V

    .line 183
    return-void
.end method
