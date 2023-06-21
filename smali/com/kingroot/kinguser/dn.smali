.class public final Lcom/kingroot/kinguser/dn;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic lo:Z

.field static nx:Lcom/kingroot/kinguser/cv;


# instance fields
.field public ct:I

.field public dS:I

.field public dT:Ljava/lang/String;

.field public iE:Ljava/lang/String;

.field public iF:Ljava/lang/String;

.field public iH:Ljava/lang/String;

.field public iM:Ljava/lang/String;

.field public iP:S

.field public isbuildin:I

.field public it:Ljava/lang/String;

.field public language:I

.field public lc:Ljava/lang/String;

.field public ls:I

.field public np:Ljava/lang/String;

.field public nq:Lcom/kingroot/kinguser/cv;

.field public nr:I

.field public ns:Ljava/lang/String;

.field public nt:D

.field public nu:D

.field public nv:Ljava/lang/String;

.field public nw:Ljava/lang/String;

.field public product:I

.field public qq:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/kingroot/kinguser/dn;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/kingroot/kinguser/dn;->lo:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 298
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/dn;->iE:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/dn;->qq:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/dn;->iH:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/dn;->np:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/dn;->lc:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/dn;->dT:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/dn;->iM:Ljava/lang/String;

    .line 35
    iput v1, p0, Lcom/kingroot/kinguser/dn;->ct:I

    .line 37
    iput v1, p0, Lcom/kingroot/kinguser/dn;->product:I

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/dn;->nq:Lcom/kingroot/kinguser/cv;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/dn;->it:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/dn;->iF:Ljava/lang/String;

    .line 45
    iput v1, p0, Lcom/kingroot/kinguser/dn;->isbuildin:I

    .line 47
    iput v1, p0, Lcom/kingroot/kinguser/dn;->nr:I

    .line 49
    iput v1, p0, Lcom/kingroot/kinguser/dn;->ls:I

    .line 51
    iput v1, p0, Lcom/kingroot/kinguser/dn;->dS:I

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/dn;->ns:Ljava/lang/String;

    .line 55
    iput-short v1, p0, Lcom/kingroot/kinguser/dn;->iP:S

    .line 57
    iput-wide v2, p0, Lcom/kingroot/kinguser/dn;->nt:D

    .line 59
    iput-wide v2, p0, Lcom/kingroot/kinguser/dn;->nu:D

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/dn;->nv:Ljava/lang/String;

    .line 63
    iput v1, p0, Lcom/kingroot/kinguser/dn;->language:I

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/dn;->nw:Ljava/lang/String;

    .line 299
    iget-object v0, p0, Lcom/kingroot/kinguser/dn;->iE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/dn;->v(Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcom/kingroot/kinguser/dn;->qq:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/dn;->P(Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/kingroot/kinguser/dn;->iH:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/dn;->setPhone(Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/kingroot/kinguser/dn;->np:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/dn;->Q(Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/kingroot/kinguser/dn;->lc:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/dn;->R(Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/kingroot/kinguser/dn;->dT:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/dn;->S(Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/kingroot/kinguser/dn;->iM:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/dn;->T(Ljava/lang/String;)V

    .line 306
    iget v0, p0, Lcom/kingroot/kinguser/dn;->ct:I

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/dn;->y(I)V

    .line 307
    iget v0, p0, Lcom/kingroot/kinguser/dn;->product:I

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/dn;->z(I)V

    .line 308
    iget-object v0, p0, Lcom/kingroot/kinguser/dn;->nq:Lcom/kingroot/kinguser/cv;

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/dn;->a(Lcom/kingroot/kinguser/cv;)V

    .line 309
    iget-object v0, p0, Lcom/kingroot/kinguser/dn;->it:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/dn;->E(Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lcom/kingroot/kinguser/dn;->iF:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/dn;->w(Ljava/lang/String;)V

    .line 311
    iget v0, p0, Lcom/kingroot/kinguser/dn;->isbuildin:I

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/dn;->p(I)V

    .line 312
    iget v0, p0, Lcom/kingroot/kinguser/dn;->nr:I

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/dn;->A(I)V

    .line 313
    iget v0, p0, Lcom/kingroot/kinguser/dn;->ls:I

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/dn;->g(I)V

    .line 314
    iget v0, p0, Lcom/kingroot/kinguser/dn;->dS:I

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/dn;->B(I)V

    .line 315
    iget-object v0, p0, Lcom/kingroot/kinguser/dn;->ns:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/dn;->U(Ljava/lang/String;)V

    .line 316
    iget-short v0, p0, Lcom/kingroot/kinguser/dn;->iP:S

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/dn;->b(S)V

    .line 317
    iget-wide v0, p0, Lcom/kingroot/kinguser/dn;->nt:D

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/dn;->setLongitude(D)V

    .line 318
    iget-wide v0, p0, Lcom/kingroot/kinguser/dn;->nu:D

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/dn;->setLatitude(D)V

    .line 319
    iget-object v0, p0, Lcom/kingroot/kinguser/dn;->nv:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/dn;->V(Ljava/lang/String;)V

    .line 320
    iget v0, p0, Lcom/kingroot/kinguser/dn;->language:I

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/dn;->C(I)V

    .line 321
    iget-object v0, p0, Lcom/kingroot/kinguser/dn;->nw:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/dn;->W(Ljava/lang/String;)V

    .line 322
    return-void
.end method


# virtual methods
.method public A(I)V
    .locals 0

    .prologue
    .line 204
    iput p1, p0, Lcom/kingroot/kinguser/dn;->nr:I

    .line 205
    return-void
.end method

.method public B(I)V
    .locals 0

    .prologue
    .line 224
    iput p1, p0, Lcom/kingroot/kinguser/dn;->dS:I

    .line 225
    return-void
.end method

.method public C(I)V
    .locals 0

    .prologue
    .line 284
    iput p1, p0, Lcom/kingroot/kinguser/dn;->language:I

    .line 285
    return-void
.end method

.method public E(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/kingroot/kinguser/dn;->it:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public P(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/kingroot/kinguser/dn;->qq:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public Q(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/kingroot/kinguser/dn;->np:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public R(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/kingroot/kinguser/dn;->lc:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public S(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/kingroot/kinguser/dn;->dT:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public T(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/kingroot/kinguser/dn;->iM:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public U(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/kingroot/kinguser/dn;->ns:Ljava/lang/String;

    .line 235
    return-void
.end method

.method public V(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lcom/kingroot/kinguser/dn;->nv:Ljava/lang/String;

    .line 275
    return-void
.end method

.method public W(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lcom/kingroot/kinguser/dn;->nw:Ljava/lang/String;

    .line 295
    return-void
.end method

.method public a(Lcom/kingroot/kinguser/cv;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/kingroot/kinguser/dn;->nq:Lcom/kingroot/kinguser/cv;

    .line 165
    return-void
.end method

.method public b(S)V
    .locals 0

    .prologue
    .line 244
    iput-short p1, p0, Lcom/kingroot/kinguser/dn;->iP:S

    .line 245
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 403
    const/4 v0, 0x0

    .line 406
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 412
    :cond_0
    return-object v0

    .line 408
    :catch_0
    move-exception v1

    .line 410
    sget-boolean v1, Lcom/kingroot/kinguser/dn;->lo:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public display(Ljava/lang/StringBuilder;I)V
    .locals 4

    .prologue
    .line 539
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 540
    iget-object v1, p0, Lcom/kingroot/kinguser/dn;->iE:Ljava/lang/String;

    const-string v2, "imei"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 541
    iget-object v1, p0, Lcom/kingroot/kinguser/dn;->qq:Ljava/lang/String;

    const-string v2, "qq"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 542
    iget-object v1, p0, Lcom/kingroot/kinguser/dn;->iH:Ljava/lang/String;

    const-string v2, "phone"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 543
    iget-object v1, p0, Lcom/kingroot/kinguser/dn;->np:Ljava/lang/String;

    const-string v2, "ip"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 544
    iget-object v1, p0, Lcom/kingroot/kinguser/dn;->lc:Ljava/lang/String;

    const-string v2, "lc"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 545
    iget-object v1, p0, Lcom/kingroot/kinguser/dn;->dT:Ljava/lang/String;

    const-string v2, "channelid"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 546
    iget-object v1, p0, Lcom/kingroot/kinguser/dn;->iM:Ljava/lang/String;

    const-string v2, "ua"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 547
    iget v1, p0, Lcom/kingroot/kinguser/dn;->ct:I

    const-string v2, "ct"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 548
    iget v1, p0, Lcom/kingroot/kinguser/dn;->product:I

    const-string v2, "product"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 549
    iget-object v1, p0, Lcom/kingroot/kinguser/dn;->nq:Lcom/kingroot/kinguser/cv;

    const-string v2, "version"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 550
    iget-object v1, p0, Lcom/kingroot/kinguser/dn;->it:Ljava/lang/String;

    const-string v2, "guid"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 551
    iget-object v1, p0, Lcom/kingroot/kinguser/dn;->iF:Ljava/lang/String;

    const-string v2, "imsi"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 552
    iget v1, p0, Lcom/kingroot/kinguser/dn;->isbuildin:I

    const-string v2, "isbuildin"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 553
    iget v1, p0, Lcom/kingroot/kinguser/dn;->nr:I

    const-string v2, "isroot"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 554
    iget v1, p0, Lcom/kingroot/kinguser/dn;->ls:I

    const-string v2, "sdkversion"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 555
    iget v1, p0, Lcom/kingroot/kinguser/dn;->dS:I

    const-string v2, "buildno"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 556
    iget-object v1, p0, Lcom/kingroot/kinguser/dn;->ns:Ljava/lang/String;

    const-string v2, "uuid"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 557
    iget-short v1, p0, Lcom/kingroot/kinguser/dn;->iP:S

    const-string v2, "lang"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(SLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 558
    iget-wide v2, p0, Lcom/kingroot/kinguser/dn;->nt:D

    const-string v1, "longitude"

    invoke-virtual {v0, v2, v3, v1}, Lcom/qq/taf/jce/JceDisplayer;->display(DLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 559
    iget-wide v2, p0, Lcom/kingroot/kinguser/dn;->nu:D

    const-string v1, "latitude"

    invoke-virtual {v0, v2, v3, v1}, Lcom/qq/taf/jce/JceDisplayer;->display(DLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 560
    iget-object v1, p0, Lcom/kingroot/kinguser/dn;->nv:Ljava/lang/String;

    const-string v2, "newguid"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 561
    iget v1, p0, Lcom/kingroot/kinguser/dn;->language:I

    const-string v2, "language"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 562
    iget-object v1, p0, Lcom/kingroot/kinguser/dn;->nw:Ljava/lang/String;

    const-string v2, "langName"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 563
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 357
    if-nez p1, :cond_1

    .line 363
    :cond_0
    :goto_0
    return v0

    .line 362
    :cond_1
    check-cast p1, Lcom/kingroot/kinguser/dn;

    .line 363
    iget-object v1, p0, Lcom/kingroot/kinguser/dn;->iE:Ljava/lang/String;

    iget-object v2, p1, Lcom/kingroot/kinguser/dn;->iE:Ljava/lang/String;

    .line 364
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kingroot/kinguser/dn;->qq:Ljava/lang/String;

    iget-object v2, p1, Lcom/kingroot/kinguser/dn;->qq:Ljava/lang/String;

    .line 365
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kingroot/kinguser/dn;->iH:Ljava/lang/String;

    iget-object v2, p1, Lcom/kingroot/kinguser/dn;->iH:Ljava/lang/String;

    .line 366
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kingroot/kinguser/dn;->np:Ljava/lang/String;

    iget-object v2, p1, Lcom/kingroot/kinguser/dn;->np:Ljava/lang/String;

    .line 367
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kingroot/kinguser/dn;->lc:Ljava/lang/String;

    iget-object v2, p1, Lcom/kingroot/kinguser/dn;->lc:Ljava/lang/String;

    .line 368
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kingroot/kinguser/dn;->dT:Ljava/lang/String;

    iget-object v2, p1, Lcom/kingroot/kinguser/dn;->dT:Ljava/lang/String;

    .line 369
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kingroot/kinguser/dn;->iM:Ljava/lang/String;

    iget-object v2, p1, Lcom/kingroot/kinguser/dn;->iM:Ljava/lang/String;

    .line 370
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/kingroot/kinguser/dn;->ct:I

    iget v2, p1, Lcom/kingroot/kinguser/dn;->ct:I

    .line 371
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/kingroot/kinguser/dn;->product:I

    iget v2, p1, Lcom/kingroot/kinguser/dn;->product:I

    .line 372
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kingroot/kinguser/dn;->nq:Lcom/kingroot/kinguser/cv;

    iget-object v2, p1, Lcom/kingroot/kinguser/dn;->nq:Lcom/kingroot/kinguser/cv;

    .line 373
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kingroot/kinguser/dn;->it:Ljava/lang/String;

    iget-object v2, p1, Lcom/kingroot/kinguser/dn;->it:Ljava/lang/String;

    .line 374
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kingroot/kinguser/dn;->iF:Ljava/lang/String;

    iget-object v2, p1, Lcom/kingroot/kinguser/dn;->iF:Ljava/lang/String;

    .line 375
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/kingroot/kinguser/dn;->isbuildin:I

    iget v2, p1, Lcom/kingroot/kinguser/dn;->isbuildin:I

    .line 376
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/kingroot/kinguser/dn;->nr:I

    iget v2, p1, Lcom/kingroot/kinguser/dn;->nr:I

    .line 377
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/kingroot/kinguser/dn;->ls:I

    iget v2, p1, Lcom/kingroot/kinguser/dn;->ls:I

    .line 378
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/kingroot/kinguser/dn;->dS:I

    iget v2, p1, Lcom/kingroot/kinguser/dn;->dS:I

    .line 379
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kingroot/kinguser/dn;->ns:Ljava/lang/String;

    iget-object v2, p1, Lcom/kingroot/kinguser/dn;->ns:Ljava/lang/String;

    .line 380
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-short v1, p0, Lcom/kingroot/kinguser/dn;->iP:S

    iget-short v2, p1, Lcom/kingroot/kinguser/dn;->iP:S

    .line 381
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(SS)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/kingroot/kinguser/dn;->nt:D

    iget-wide v4, p1, Lcom/kingroot/kinguser/dn;->nt:D

    .line 382
    invoke-static {v2, v3, v4, v5}, Lcom/qq/taf/jce/JceUtil;->equals(DD)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/kingroot/kinguser/dn;->nu:D

    iget-wide v4, p1, Lcom/kingroot/kinguser/dn;->nu:D

    .line 383
    invoke-static {v2, v3, v4, v5}, Lcom/qq/taf/jce/JceUtil;->equals(DD)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kingroot/kinguser/dn;->nv:Ljava/lang/String;

    iget-object v2, p1, Lcom/kingroot/kinguser/dn;->nv:Ljava/lang/String;

    .line 384
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/kingroot/kinguser/dn;->language:I

    iget v2, p1, Lcom/kingroot/kinguser/dn;->language:I

    .line 385
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kingroot/kinguser/dn;->nw:Ljava/lang/String;

    iget-object v2, p1, Lcom/kingroot/kinguser/dn;->nw:Ljava/lang/String;

    .line 386
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public g(I)V
    .locals 0

    .prologue
    .line 214
    iput p1, p0, Lcom/kingroot/kinguser/dn;->ls:I

    .line 215
    return-void
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 393
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Need define key first!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    :catch_0
    move-exception v0

    .line 397
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 399
    const/4 v0, 0x0

    return v0
.end method

.method public p(I)V
    .locals 0

    .prologue
    .line 194
    iput p1, p0, Lcom/kingroot/kinguser/dn;->isbuildin:I

    .line 195
    return-void
.end method

.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 485
    invoke-virtual {p1, v3, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/dn;->v(Ljava/lang/String;)V

    .line 487
    invoke-virtual {p1, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/dn;->P(Ljava/lang/String;)V

    .line 489
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/dn;->setPhone(Ljava/lang/String;)V

    .line 491
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/dn;->Q(Ljava/lang/String;)V

    .line 493
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/dn;->R(Ljava/lang/String;)V

    .line 495
    const/4 v0, 0x5

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/dn;->S(Ljava/lang/String;)V

    .line 497
    const/4 v0, 0x6

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/dn;->T(Ljava/lang/String;)V

    .line 499
    iget v0, p0, Lcom/kingroot/kinguser/dn;->ct:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/dn;->y(I)V

    .line 501
    iget v0, p0, Lcom/kingroot/kinguser/dn;->product:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/dn;->z(I)V

    .line 503
    sget-object v0, Lcom/kingroot/kinguser/dn;->nx:Lcom/kingroot/kinguser/cv;

    if-nez v0, :cond_0

    .line 505
    new-instance v0, Lcom/kingroot/kinguser/cv;

    invoke-direct {v0}, Lcom/kingroot/kinguser/cv;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/dn;->nx:Lcom/kingroot/kinguser/cv;

    .line 507
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/dn;->nx:Lcom/kingroot/kinguser/cv;

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/cv;

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/dn;->a(Lcom/kingroot/kinguser/cv;)V

    .line 509
    const/16 v0, 0xa

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/dn;->E(Ljava/lang/String;)V

    .line 511
    const/16 v0, 0xb

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/dn;->w(Ljava/lang/String;)V

    .line 513
    iget v0, p0, Lcom/kingroot/kinguser/dn;->isbuildin:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/dn;->p(I)V

    .line 515
    iget v0, p0, Lcom/kingroot/kinguser/dn;->nr:I

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/dn;->A(I)V

    .line 517
    iget v0, p0, Lcom/kingroot/kinguser/dn;->ls:I

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/dn;->g(I)V

    .line 519
    iget v0, p0, Lcom/kingroot/kinguser/dn;->dS:I

    const/16 v1, 0xf

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/dn;->B(I)V

    .line 521
    const/16 v0, 0x10

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/dn;->U(Ljava/lang/String;)V

    .line 523
    iget-short v0, p0, Lcom/kingroot/kinguser/dn;->iP:S

    const/16 v1, 0x11

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(SIZ)S

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/dn;->b(S)V

    .line 525
    iget-wide v0, p0, Lcom/kingroot/kinguser/dn;->nt:D

    const/16 v2, 0x12

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(DIZ)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/dn;->setLongitude(D)V

    .line 527
    iget-wide v0, p0, Lcom/kingroot/kinguser/dn;->nu:D

    const/16 v2, 0x13

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(DIZ)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/dn;->setLatitude(D)V

    .line 529
    const/16 v0, 0x14

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/dn;->V(Ljava/lang/String;)V

    .line 531
    iget v0, p0, Lcom/kingroot/kinguser/dn;->language:I

    const/16 v1, 0x15

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/dn;->C(I)V

    .line 533
    const/16 v0, 0x16

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/dn;->W(Ljava/lang/String;)V

    .line 535
    return-void
.end method

.method public setLatitude(D)V
    .locals 1

    .prologue
    .line 264
    iput-wide p1, p0, Lcom/kingroot/kinguser/dn;->nu:D

    .line 265
    return-void
.end method

.method public setLongitude(D)V
    .locals 1

    .prologue
    .line 254
    iput-wide p1, p0, Lcom/kingroot/kinguser/dn;->nt:D

    .line 255
    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/kingroot/kinguser/dn;->iH:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public v(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/kingroot/kinguser/dn;->iE:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public w(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/kingroot/kinguser/dn;->iF:Ljava/lang/String;

    .line 185
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 3

    .prologue
    .line 417
    iget-object v0, p0, Lcom/kingroot/kinguser/dn;->iE:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 418
    iget-object v0, p0, Lcom/kingroot/kinguser/dn;->qq:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/kingroot/kinguser/dn;->qq:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/dn;->iH:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 424
    iget-object v0, p0, Lcom/kingroot/kinguser/dn;->iH:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 426
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/dn;->np:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 428
    iget-object v0, p0, Lcom/kingroot/kinguser/dn;->np:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 430
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/dn;->lc:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 432
    iget-object v0, p0, Lcom/kingroot/kinguser/dn;->lc:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 434
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/dn;->dT:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 436
    iget-object v0, p0, Lcom/kingroot/kinguser/dn;->dT:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 438
    :cond_4
    iget-object v0, p0, Lcom/kingroot/kinguser/dn;->iM:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 440
    iget-object v0, p0, Lcom/kingroot/kinguser/dn;->iM:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 442
    :cond_5
    iget v0, p0, Lcom/kingroot/kinguser/dn;->ct:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 443
    iget v0, p0, Lcom/kingroot/kinguser/dn;->product:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 444
    iget-object v0, p0, Lcom/kingroot/kinguser/dn;->nq:Lcom/kingroot/kinguser/cv;

    if-eqz v0, :cond_6

    .line 446
    iget-object v0, p0, Lcom/kingroot/kinguser/dn;->nq:Lcom/kingroot/kinguser/cv;

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 448
    :cond_6
    iget-object v0, p0, Lcom/kingroot/kinguser/dn;->it:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 450
    iget-object v0, p0, Lcom/kingroot/kinguser/dn;->it:Ljava/lang/String;

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 452
    :cond_7
    iget-object v0, p0, Lcom/kingroot/kinguser/dn;->iF:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 454
    iget-object v0, p0, Lcom/kingroot/kinguser/dn;->iF:Ljava/lang/String;

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 456
    :cond_8
    iget v0, p0, Lcom/kingroot/kinguser/dn;->isbuildin:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 457
    iget v0, p0, Lcom/kingroot/kinguser/dn;->nr:I

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 458
    iget v0, p0, Lcom/kingroot/kinguser/dn;->ls:I

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 459
    iget v0, p0, Lcom/kingroot/kinguser/dn;->dS:I

    const/16 v1, 0xf

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 460
    iget-object v0, p0, Lcom/kingroot/kinguser/dn;->ns:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 462
    iget-object v0, p0, Lcom/kingroot/kinguser/dn;->ns:Ljava/lang/String;

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 464
    :cond_9
    iget-short v0, p0, Lcom/kingroot/kinguser/dn;->iP:S

    const/16 v1, 0x11

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(SI)V

    .line 465
    iget-wide v0, p0, Lcom/kingroot/kinguser/dn;->nt:D

    const/16 v2, 0x12

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(DI)V

    .line 466
    iget-wide v0, p0, Lcom/kingroot/kinguser/dn;->nu:D

    const/16 v2, 0x13

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(DI)V

    .line 467
    iget-object v0, p0, Lcom/kingroot/kinguser/dn;->nv:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 469
    iget-object v0, p0, Lcom/kingroot/kinguser/dn;->nv:Ljava/lang/String;

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 471
    :cond_a
    iget v0, p0, Lcom/kingroot/kinguser/dn;->language:I

    if-eqz v0, :cond_b

    .line 472
    iget v0, p0, Lcom/kingroot/kinguser/dn;->language:I

    const/16 v1, 0x15

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 474
    :cond_b
    iget-object v0, p0, Lcom/kingroot/kinguser/dn;->nw:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 475
    iget-object v0, p0, Lcom/kingroot/kinguser/dn;->nw:Ljava/lang/String;

    const/16 v1, 0x16

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 477
    :cond_c
    return-void
.end method

.method public y(I)V
    .locals 0

    .prologue
    .line 144
    iput p1, p0, Lcom/kingroot/kinguser/dn;->ct:I

    .line 145
    return-void
.end method

.method public z(I)V
    .locals 0

    .prologue
    .line 154
    iput p1, p0, Lcom/kingroot/kinguser/dn;->product:I

    .line 155
    return-void
.end method
