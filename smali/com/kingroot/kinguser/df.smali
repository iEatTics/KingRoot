.class public final Lcom/kingroot/kinguser/df;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic lo:Z


# instance fields
.field public apkFileMd5:Ljava/lang/String;

.field public appid:I

.field public break_flag:I

.field public category:I

.field public categorytype:I

.field public cert:Ljava/lang/String;

.field public filesize:I

.field public isbuildin:I

.field public name:Ljava/lang/String;

.field public newest_version:Ljava/lang/String;

.field public old_versioncode:I

.field public partnerId:I

.field public producttime:Ljava/lang/String;

.field public sdk_version:I

.field public softname:Ljava/lang/String;

.field public source:I

.field public uid:Ljava/lang/String;

.field public version:Ljava/lang/String;

.field public versioncode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/kingroot/kinguser/df;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/kingroot/kinguser/df;->lo:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 234
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/df;->uid:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/df;->softname:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/df;->version:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/df;->producttime:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/df;->cert:Ljava/lang/String;

    .line 31
    iput v1, p0, Lcom/kingroot/kinguser/df;->versioncode:I

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/df;->name:Ljava/lang/String;

    .line 35
    iput v1, p0, Lcom/kingroot/kinguser/df;->isbuildin:I

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/df;->newest_version:Ljava/lang/String;

    .line 39
    iput v1, p0, Lcom/kingroot/kinguser/df;->old_versioncode:I

    .line 41
    iput v1, p0, Lcom/kingroot/kinguser/df;->categorytype:I

    .line 43
    iput v1, p0, Lcom/kingroot/kinguser/df;->category:I

    .line 45
    iput v1, p0, Lcom/kingroot/kinguser/df;->break_flag:I

    .line 47
    iput v1, p0, Lcom/kingroot/kinguser/df;->source:I

    .line 49
    iput v1, p0, Lcom/kingroot/kinguser/df;->sdk_version:I

    .line 51
    iput v1, p0, Lcom/kingroot/kinguser/df;->appid:I

    .line 52
    iput v1, p0, Lcom/kingroot/kinguser/df;->filesize:I

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/df;->apkFileMd5:Ljava/lang/String;

    .line 56
    iput v1, p0, Lcom/kingroot/kinguser/df;->partnerId:I

    .line 235
    iget-object v0, p0, Lcom/kingroot/kinguser/df;->uid:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/df;->H(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/kingroot/kinguser/df;->softname:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/df;->I(Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/kingroot/kinguser/df;->version:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/df;->J(Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/kingroot/kinguser/df;->producttime:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/df;->K(Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/kingroot/kinguser/df;->cert:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/df;->L(Ljava/lang/String;)V

    .line 240
    iget v0, p0, Lcom/kingroot/kinguser/df;->versioncode:I

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/df;->f(I)V

    .line 241
    iget-object v0, p0, Lcom/kingroot/kinguser/df;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/df;->setName(Ljava/lang/String;)V

    .line 242
    iget v0, p0, Lcom/kingroot/kinguser/df;->isbuildin:I

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/df;->p(I)V

    .line 243
    iget-object v0, p0, Lcom/kingroot/kinguser/df;->newest_version:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/df;->M(Ljava/lang/String;)V

    .line 244
    iget v0, p0, Lcom/kingroot/kinguser/df;->old_versioncode:I

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/df;->q(I)V

    .line 245
    iget v0, p0, Lcom/kingroot/kinguser/df;->categorytype:I

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/df;->r(I)V

    .line 246
    iget v0, p0, Lcom/kingroot/kinguser/df;->category:I

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/df;->s(I)V

    .line 247
    iget v0, p0, Lcom/kingroot/kinguser/df;->break_flag:I

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/df;->t(I)V

    .line 248
    iget v0, p0, Lcom/kingroot/kinguser/df;->source:I

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/df;->setSource(I)V

    .line 249
    iget v0, p0, Lcom/kingroot/kinguser/df;->sdk_version:I

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/df;->u(I)V

    .line 250
    iget v0, p0, Lcom/kingroot/kinguser/df;->appid:I

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/df;->v(I)V

    .line 251
    iget v0, p0, Lcom/kingroot/kinguser/df;->filesize:I

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/df;->w(I)V

    .line 252
    iget-object v0, p0, Lcom/kingroot/kinguser/df;->apkFileMd5:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/df;->N(Ljava/lang/String;)V

    .line 253
    iget v0, p0, Lcom/kingroot/kinguser/df;->partnerId:I

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/df;->x(I)V

    .line 254
    return-void
.end method


# virtual methods
.method public H(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/kingroot/kinguser/df;->uid:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public I(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/kingroot/kinguser/df;->softname:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public J(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/kingroot/kinguser/df;->version:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public K(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/kingroot/kinguser/df;->producttime:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public L(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/kingroot/kinguser/df;->cert:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public M(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/kingroot/kinguser/df;->newest_version:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public N(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/kingroot/kinguser/df;->apkFileMd5:Ljava/lang/String;

    .line 226
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 326
    const/4 v0, 0x0

    .line 329
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 335
    :cond_0
    return-object v0

    .line 331
    :catch_0
    move-exception v1

    .line 333
    sget-boolean v1, Lcom/kingroot/kinguser/df;->lo:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public display(Ljava/lang/StringBuilder;I)V
    .locals 3

    .prologue
    .line 420
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 421
    iget-object v1, p0, Lcom/kingroot/kinguser/df;->uid:Ljava/lang/String;

    const-string v2, "uid"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 422
    iget-object v1, p0, Lcom/kingroot/kinguser/df;->softname:Ljava/lang/String;

    const-string v2, "softname"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 423
    iget-object v1, p0, Lcom/kingroot/kinguser/df;->version:Ljava/lang/String;

    const-string v2, "version"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 424
    iget-object v1, p0, Lcom/kingroot/kinguser/df;->producttime:Ljava/lang/String;

    const-string v2, "producttime"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 425
    iget-object v1, p0, Lcom/kingroot/kinguser/df;->cert:Ljava/lang/String;

    const-string v2, "cert"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 426
    iget v1, p0, Lcom/kingroot/kinguser/df;->versioncode:I

    const-string v2, "versioncode"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 427
    iget-object v1, p0, Lcom/kingroot/kinguser/df;->name:Ljava/lang/String;

    const-string v2, "name"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 428
    iget v1, p0, Lcom/kingroot/kinguser/df;->isbuildin:I

    const-string v2, "isbuildin"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 429
    iget-object v1, p0, Lcom/kingroot/kinguser/df;->newest_version:Ljava/lang/String;

    const-string v2, "newest_version"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 430
    iget v1, p0, Lcom/kingroot/kinguser/df;->old_versioncode:I

    const-string v2, "old_versioncode"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 431
    iget v1, p0, Lcom/kingroot/kinguser/df;->categorytype:I

    const-string v2, "categorytype"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 432
    iget v1, p0, Lcom/kingroot/kinguser/df;->category:I

    const-string v2, "category"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 433
    iget v1, p0, Lcom/kingroot/kinguser/df;->break_flag:I

    const-string v2, "break_flag"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 434
    iget v1, p0, Lcom/kingroot/kinguser/df;->source:I

    const-string v2, "source"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 435
    iget v1, p0, Lcom/kingroot/kinguser/df;->sdk_version:I

    const-string v2, "sdk_version"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 436
    iget v1, p0, Lcom/kingroot/kinguser/df;->appid:I

    const-string v2, "appid"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 437
    iget v1, p0, Lcom/kingroot/kinguser/df;->filesize:I

    const-string v2, "filesize"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 438
    iget-object v1, p0, Lcom/kingroot/kinguser/df;->apkFileMd5:Ljava/lang/String;

    const-string v2, "apkFileMd5"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 439
    iget v1, p0, Lcom/kingroot/kinguser/df;->partnerId:I

    const-string v2, "partnerId"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 440
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 284
    if-nez p1, :cond_1

    .line 290
    :cond_0
    :goto_0
    return v0

    .line 289
    :cond_1
    check-cast p1, Lcom/kingroot/kinguser/df;

    .line 290
    iget-object v1, p0, Lcom/kingroot/kinguser/df;->uid:Ljava/lang/String;

    iget-object v2, p1, Lcom/kingroot/kinguser/df;->uid:Ljava/lang/String;

    .line 291
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kingroot/kinguser/df;->softname:Ljava/lang/String;

    iget-object v2, p1, Lcom/kingroot/kinguser/df;->softname:Ljava/lang/String;

    .line 292
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kingroot/kinguser/df;->version:Ljava/lang/String;

    iget-object v2, p1, Lcom/kingroot/kinguser/df;->version:Ljava/lang/String;

    .line 293
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kingroot/kinguser/df;->producttime:Ljava/lang/String;

    iget-object v2, p1, Lcom/kingroot/kinguser/df;->producttime:Ljava/lang/String;

    .line 294
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kingroot/kinguser/df;->cert:Ljava/lang/String;

    iget-object v2, p1, Lcom/kingroot/kinguser/df;->cert:Ljava/lang/String;

    .line 295
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/kingroot/kinguser/df;->versioncode:I

    iget v2, p1, Lcom/kingroot/kinguser/df;->versioncode:I

    .line 296
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kingroot/kinguser/df;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/kingroot/kinguser/df;->name:Ljava/lang/String;

    .line 297
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/kingroot/kinguser/df;->isbuildin:I

    iget v2, p1, Lcom/kingroot/kinguser/df;->isbuildin:I

    .line 298
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kingroot/kinguser/df;->newest_version:Ljava/lang/String;

    iget-object v2, p1, Lcom/kingroot/kinguser/df;->newest_version:Ljava/lang/String;

    .line 299
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/kingroot/kinguser/df;->old_versioncode:I

    iget v2, p1, Lcom/kingroot/kinguser/df;->old_versioncode:I

    .line 300
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/kingroot/kinguser/df;->categorytype:I

    iget v2, p1, Lcom/kingroot/kinguser/df;->categorytype:I

    .line 301
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/kingroot/kinguser/df;->category:I

    iget v2, p1, Lcom/kingroot/kinguser/df;->category:I

    .line 302
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/kingroot/kinguser/df;->break_flag:I

    iget v2, p1, Lcom/kingroot/kinguser/df;->break_flag:I

    .line 303
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/kingroot/kinguser/df;->source:I

    iget v2, p1, Lcom/kingroot/kinguser/df;->source:I

    .line 304
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/kingroot/kinguser/df;->sdk_version:I

    iget v2, p1, Lcom/kingroot/kinguser/df;->sdk_version:I

    .line 305
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/kingroot/kinguser/df;->appid:I

    iget v2, p1, Lcom/kingroot/kinguser/df;->appid:I

    .line 306
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/kingroot/kinguser/df;->filesize:I

    iget v2, p1, Lcom/kingroot/kinguser/df;->filesize:I

    .line 307
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kingroot/kinguser/df;->apkFileMd5:Ljava/lang/String;

    iget-object v2, p1, Lcom/kingroot/kinguser/df;->apkFileMd5:Ljava/lang/String;

    .line 308
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/kingroot/kinguser/df;->partnerId:I

    iget v2, p1, Lcom/kingroot/kinguser/df;->partnerId:I

    .line 309
    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public f(I)V
    .locals 0

    .prologue
    .line 115
    iput p1, p0, Lcom/kingroot/kinguser/df;->versioncode:I

    .line 116
    return-void
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 316
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Need define key first!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    :catch_0
    move-exception v0

    .line 320
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 322
    const/4 v0, 0x0

    return v0
.end method

.method public p(I)V
    .locals 0

    .prologue
    .line 135
    iput p1, p0, Lcom/kingroot/kinguser/df;->isbuildin:I

    .line 136
    return-void
.end method

.method public q(I)V
    .locals 0

    .prologue
    .line 155
    iput p1, p0, Lcom/kingroot/kinguser/df;->old_versioncode:I

    .line 156
    return-void
.end method

.method public r(I)V
    .locals 0

    .prologue
    .line 165
    iput p1, p0, Lcom/kingroot/kinguser/df;->categorytype:I

    .line 166
    return-void
.end method

.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 379
    invoke-virtual {p1, v2, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/df;->H(Ljava/lang/String;)V

    .line 381
    invoke-virtual {p1, v1, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/df;->I(Ljava/lang/String;)V

    .line 383
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/df;->J(Ljava/lang/String;)V

    .line 385
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/df;->K(Ljava/lang/String;)V

    .line 387
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/df;->L(Ljava/lang/String;)V

    .line 389
    iget v0, p0, Lcom/kingroot/kinguser/df;->versioncode:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/df;->f(I)V

    .line 391
    const/4 v0, 0x6

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/df;->setName(Ljava/lang/String;)V

    .line 393
    iget v0, p0, Lcom/kingroot/kinguser/df;->isbuildin:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/df;->p(I)V

    .line 395
    const/16 v0, 0x8

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/df;->M(Ljava/lang/String;)V

    .line 397
    iget v0, p0, Lcom/kingroot/kinguser/df;->old_versioncode:I

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/df;->q(I)V

    .line 399
    iget v0, p0, Lcom/kingroot/kinguser/df;->categorytype:I

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/df;->r(I)V

    .line 401
    iget v0, p0, Lcom/kingroot/kinguser/df;->category:I

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/df;->s(I)V

    .line 403
    iget v0, p0, Lcom/kingroot/kinguser/df;->break_flag:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/df;->t(I)V

    .line 405
    iget v0, p0, Lcom/kingroot/kinguser/df;->source:I

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/df;->setSource(I)V

    .line 407
    iget v0, p0, Lcom/kingroot/kinguser/df;->sdk_version:I

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/df;->u(I)V

    .line 409
    iget v0, p0, Lcom/kingroot/kinguser/df;->appid:I

    const/16 v1, 0xf

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/df;->v(I)V

    .line 411
    iget v0, p0, Lcom/kingroot/kinguser/df;->filesize:I

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/df;->w(I)V

    .line 413
    const/16 v0, 0x11

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/df;->N(Ljava/lang/String;)V

    .line 415
    iget v0, p0, Lcom/kingroot/kinguser/df;->partnerId:I

    const/16 v1, 0x12

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/df;->x(I)V

    .line 416
    return-void
.end method

.method public s(I)V
    .locals 0

    .prologue
    .line 175
    iput p1, p0, Lcom/kingroot/kinguser/df;->category:I

    .line 176
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/kingroot/kinguser/df;->name:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setSource(I)V
    .locals 0

    .prologue
    .line 195
    iput p1, p0, Lcom/kingroot/kinguser/df;->source:I

    .line 196
    return-void
.end method

.method public t(I)V
    .locals 0

    .prologue
    .line 185
    iput p1, p0, Lcom/kingroot/kinguser/df;->break_flag:I

    .line 186
    return-void
.end method

.method public u(I)V
    .locals 0

    .prologue
    .line 205
    iput p1, p0, Lcom/kingroot/kinguser/df;->sdk_version:I

    .line 206
    return-void
.end method

.method public v(I)V
    .locals 0

    .prologue
    .line 215
    iput p1, p0, Lcom/kingroot/kinguser/df;->appid:I

    .line 216
    return-void
.end method

.method public w(I)V
    .locals 0

    .prologue
    .line 220
    iput p1, p0, Lcom/kingroot/kinguser/df;->filesize:I

    .line 221
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/kingroot/kinguser/df;->uid:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 341
    iget-object v0, p0, Lcom/kingroot/kinguser/df;->softname:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 342
    iget-object v0, p0, Lcom/kingroot/kinguser/df;->version:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 343
    iget-object v0, p0, Lcom/kingroot/kinguser/df;->producttime:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/kingroot/kinguser/df;->producttime:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/df;->cert:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 349
    iget-object v0, p0, Lcom/kingroot/kinguser/df;->cert:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 351
    :cond_1
    iget v0, p0, Lcom/kingroot/kinguser/df;->versioncode:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 352
    iget-object v0, p0, Lcom/kingroot/kinguser/df;->name:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 354
    iget-object v0, p0, Lcom/kingroot/kinguser/df;->name:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 356
    :cond_2
    iget v0, p0, Lcom/kingroot/kinguser/df;->isbuildin:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 357
    iget-object v0, p0, Lcom/kingroot/kinguser/df;->newest_version:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 359
    iget-object v0, p0, Lcom/kingroot/kinguser/df;->newest_version:Ljava/lang/String;

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 361
    :cond_3
    iget v0, p0, Lcom/kingroot/kinguser/df;->old_versioncode:I

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 362
    iget v0, p0, Lcom/kingroot/kinguser/df;->categorytype:I

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 363
    iget v0, p0, Lcom/kingroot/kinguser/df;->category:I

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 364
    iget v0, p0, Lcom/kingroot/kinguser/df;->break_flag:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 365
    iget v0, p0, Lcom/kingroot/kinguser/df;->source:I

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 366
    iget v0, p0, Lcom/kingroot/kinguser/df;->sdk_version:I

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 367
    iget v0, p0, Lcom/kingroot/kinguser/df;->appid:I

    const/16 v1, 0xf

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 368
    iget v0, p0, Lcom/kingroot/kinguser/df;->filesize:I

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 369
    iget-object v0, p0, Lcom/kingroot/kinguser/df;->apkFileMd5:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 371
    iget-object v0, p0, Lcom/kingroot/kinguser/df;->apkFileMd5:Ljava/lang/String;

    const/16 v1, 0x11

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 373
    :cond_4
    iget v0, p0, Lcom/kingroot/kinguser/df;->partnerId:I

    const/16 v1, 0x12

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 374
    return-void
.end method

.method public x(I)V
    .locals 0

    .prologue
    .line 230
    iput p1, p0, Lcom/kingroot/kinguser/df;->partnerId:I

    .line 231
    return-void
.end method
