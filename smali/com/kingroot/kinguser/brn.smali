.class public Lcom/kingroot/kinguser/brn;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/brn$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string v0, "AdNetMgr()"

    invoke-static {v0}, Lcom/kingroot/kinguser/bth;->i(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method private i(IJ)Ljava/lang/String;
    .locals 2

    .prologue
    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 287
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 288
    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 294
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/btf;->ne(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/btf;->X([B)Ljava/lang/String;

    move-result-object v0

    .line 295
    return-object v0
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/btc;I)Lcom/kingroot/kinguser/bso;
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 213
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 215
    iget-object v1, p1, Lcom/kingroot/kinguser/btc;->bMB:Lcom/kingroot/kinguser/bss;

    iget v1, v1, Lcom/kingroot/kinguser/bss;->bMd:I

    if-ge v1, v0, :cond_0

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/kingroot/kinguser/btc;->bMB:Lcom/kingroot/kinguser/bss;

    iget-wide v2, v1, Lcom/kingroot/kinguser/bss;->bMg:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " \u5e7f\u544a\u65f6\u95f4\u8fc7\u671f,\u8bf7\u8c03\u6574\u624b\u673a\u672c\u5730\u65f6\u95f4\u4e3a\u5317\u4eac\u65f6\u95f4\uff01\uff01\uff01"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bth;->aG(Ljava/lang/String;)V

    .line 217
    const/4 v0, 0x0

    .line 277
    :goto_0
    return-object v0

    .line 219
    :cond_0
    new-instance v1, Lcom/kingroot/kinguser/bso;

    invoke-direct {v1}, Lcom/kingroot/kinguser/bso;-><init>()V

    .line 220
    new-instance v2, Lcom/kingroot/kinguser/bsp;

    invoke-direct {v2}, Lcom/kingroot/kinguser/bsp;-><init>()V

    .line 221
    iput-object v2, v1, Lcom/kingroot/kinguser/bso;->bLV:Lcom/kingroot/kinguser/bsp;

    .line 222
    iput p2, v2, Lcom/kingroot/kinguser/bsp;->bJp:I

    .line 223
    iput v6, v1, Lcom/kingroot/kinguser/bso;->gw:I

    .line 224
    iget v0, p1, Lcom/kingroot/kinguser/btc;->bLT:I

    iput v0, v1, Lcom/kingroot/kinguser/bso;->bLT:I

    .line 225
    iget v0, p1, Lcom/kingroot/kinguser/btc;->bLU:I

    iput v0, v1, Lcom/kingroot/kinguser/bso;->bLU:I

    .line 226
    iget v0, p1, Lcom/kingroot/kinguser/btc;->bJA:I

    iput v0, v2, Lcom/kingroot/kinguser/bsp;->bJA:I

    .line 227
    iget v0, p1, Lcom/kingroot/kinguser/btc;->bMD:I

    iput v0, v2, Lcom/kingroot/kinguser/bsp;->bJB:I

    .line 228
    iget-object v0, p1, Lcom/kingroot/kinguser/btc;->bMB:Lcom/kingroot/kinguser/bss;

    .line 229
    iget v3, v0, Lcom/kingroot/kinguser/bss;->bMd:I

    iput v3, v2, Lcom/kingroot/kinguser/bsp;->bKb:I

    .line 230
    iget-object v3, v0, Lcom/kingroot/kinguser/bss;->bMe:Lcom/kingroot/kinguser/bsw;

    if-eqz v3, :cond_1

    .line 231
    iget-object v3, v0, Lcom/kingroot/kinguser/bss;->bMe:Lcom/kingroot/kinguser/bsw;

    iget-object v3, v3, Lcom/kingroot/kinguser/bsw;->bJr:Ljava/lang/String;

    iput-object v3, v2, Lcom/kingroot/kinguser/bsp;->bJr:Ljava/lang/String;

    .line 232
    iget-object v3, v0, Lcom/kingroot/kinguser/bss;->bMe:Lcom/kingroot/kinguser/bsw;

    iget-object v3, v3, Lcom/kingroot/kinguser/bsw;->bJs:Ljava/lang/String;

    iput-object v3, v2, Lcom/kingroot/kinguser/bsp;->bJs:Ljava/lang/String;

    .line 233
    iget-object v3, v0, Lcom/kingroot/kinguser/bss;->bMe:Lcom/kingroot/kinguser/bsw;

    iget-object v3, v3, Lcom/kingroot/kinguser/bsw;->bJt:Ljava/lang/String;

    iput-object v3, v2, Lcom/kingroot/kinguser/bsp;->bJt:Ljava/lang/String;

    .line 234
    iget-object v3, v0, Lcom/kingroot/kinguser/bss;->bMe:Lcom/kingroot/kinguser/bsw;

    iget-object v3, v3, Lcom/kingroot/kinguser/bsw;->bJu:Ljava/lang/String;

    iput-object v3, v2, Lcom/kingroot/kinguser/bsp;->bJu:Ljava/lang/String;

    .line 235
    iget-object v3, v0, Lcom/kingroot/kinguser/bss;->bMe:Lcom/kingroot/kinguser/bsw;

    iget-object v3, v3, Lcom/kingroot/kinguser/bsw;->bMq:Ljava/lang/String;

    iput-object v3, v2, Lcom/kingroot/kinguser/bsp;->bJv:Ljava/lang/String;

    .line 236
    iget-object v3, v0, Lcom/kingroot/kinguser/bss;->bMe:Lcom/kingroot/kinguser/bsw;

    iget-object v3, v3, Lcom/kingroot/kinguser/bsw;->bMr:Ljava/lang/String;

    iput-object v3, v2, Lcom/kingroot/kinguser/bsp;->bJw:Ljava/lang/String;

    .line 237
    iget-object v3, v0, Lcom/kingroot/kinguser/bss;->bMe:Lcom/kingroot/kinguser/bsw;

    iget-object v3, v3, Lcom/kingroot/kinguser/bsw;->bMs:Ljava/lang/String;

    iput-object v3, v2, Lcom/kingroot/kinguser/bsp;->bJx:Ljava/lang/String;

    .line 238
    iget-object v3, v0, Lcom/kingroot/kinguser/bss;->bMe:Lcom/kingroot/kinguser/bsw;

    iget-object v3, v3, Lcom/kingroot/kinguser/bsw;->videoUrl:Ljava/lang/String;

    iput-object v3, v2, Lcom/kingroot/kinguser/bsp;->videoUrl:Ljava/lang/String;

    .line 239
    iget-object v3, v0, Lcom/kingroot/kinguser/bss;->bMe:Lcom/kingroot/kinguser/bsw;

    iget-object v3, v3, Lcom/kingroot/kinguser/bsw;->bJJ:Ljava/lang/String;

    iput-object v3, v2, Lcom/kingroot/kinguser/bsp;->bJJ:Ljava/lang/String;

    .line 240
    iget-object v3, v0, Lcom/kingroot/kinguser/bss;->bMe:Lcom/kingroot/kinguser/bsw;

    iget v3, v3, Lcom/kingroot/kinguser/bsw;->bMt:I

    iput v3, v2, Lcom/kingroot/kinguser/bsp;->bJq:I

    .line 242
    :cond_1
    iget-object v3, v0, Lcom/kingroot/kinguser/bss;->bMf:Lcom/kingroot/kinguser/bsv;

    if-eqz v3, :cond_2

    .line 243
    iget-object v3, v0, Lcom/kingroot/kinguser/bss;->bMf:Lcom/kingroot/kinguser/bsv;

    iget v3, v3, Lcom/kingroot/kinguser/bsv;->bLY:I

    iput v3, v2, Lcom/kingroot/kinguser/bsp;->bLY:I

    .line 244
    iget-object v3, v0, Lcom/kingroot/kinguser/bss;->bMf:Lcom/kingroot/kinguser/bsv;

    iget-object v3, v3, Lcom/kingroot/kinguser/bsv;->jumpUrl:Ljava/lang/String;

    iput-object v3, v2, Lcom/kingroot/kinguser/bsp;->jumpUrl:Ljava/lang/String;

    .line 245
    iget-object v3, v0, Lcom/kingroot/kinguser/bss;->bMf:Lcom/kingroot/kinguser/bsv;

    iget-object v3, v3, Lcom/kingroot/kinguser/bsv;->packageName:Ljava/lang/String;

    iput-object v3, v2, Lcom/kingroot/kinguser/bsp;->packageName:Ljava/lang/String;

    .line 247
    :cond_2
    iget-object v3, v0, Lcom/kingroot/kinguser/bss;->bMh:Lcom/kingroot/kinguser/bsx;

    if-eqz v3, :cond_3

    .line 248
    iget-object v3, v0, Lcom/kingroot/kinguser/bss;->bMh:Lcom/kingroot/kinguser/bsx;

    iget v3, v3, Lcom/kingroot/kinguser/bsx;->bMu:I

    iput v3, v2, Lcom/kingroot/kinguser/bsp;->bJC:I

    .line 249
    iget-object v3, v0, Lcom/kingroot/kinguser/bss;->bMh:Lcom/kingroot/kinguser/bsx;

    iget v3, v3, Lcom/kingroot/kinguser/bsx;->bMv:I

    iput v3, v2, Lcom/kingroot/kinguser/bsp;->bJD:I

    .line 250
    iget-object v3, v0, Lcom/kingroot/kinguser/bss;->bMh:Lcom/kingroot/kinguser/bsx;

    iget v3, v3, Lcom/kingroot/kinguser/bsx;->bJE:I

    iput v3, v2, Lcom/kingroot/kinguser/bsp;->bJE:I

    .line 252
    :cond_3
    iget-object v3, v0, Lcom/kingroot/kinguser/bss;->bLn:[B

    iput-object v3, v2, Lcom/kingroot/kinguser/bsp;->bLn:[B

    .line 260
    iget-wide v4, v0, Lcom/kingroot/kinguser/bss;->bMg:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/kingroot/kinguser/bsp;->activityId:Ljava/lang/String;

    .line 263
    iget-wide v4, v0, Lcom/kingroot/kinguser/bss;->bMg:J

    invoke-direct {p0, p2, v4, v5}, Lcom/kingroot/kinguser/brn;->i(IJ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/kingroot/kinguser/bsp;->uniqueKey:Ljava/lang/String;

    .line 266
    iget-object v0, p1, Lcom/kingroot/kinguser/btc;->bMC:Ljava/util/ArrayList;

    .line 267
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 268
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/kingroot/kinguser/bsp;->bLW:Z

    .line 269
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    :goto_1
    move-object v0, v1

    .line 277
    goto/16 :goto_0

    .line 269
    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bsy;

    .line 270
    iget v4, v0, Lcom/kingroot/kinguser/bsy;->bMw:I

    if-ne v4, v6, :cond_4

    .line 271
    iget-object v0, v0, Lcom/kingroot/kinguser/bsy;->text:Ljava/lang/String;

    iput-object v0, v2, Lcom/kingroot/kinguser/bsp;->bJz:Ljava/lang/String;

    .line 272
    const/16 v0, 0x12c

    iput v0, v2, Lcom/kingroot/kinguser/bsp;->bJy:I

    goto :goto_1
.end method

.method public a(Lcom/tencent/qqpim/discovery/AdRequestData;Lcom/kingroot/kinguser/brq$b;)V
    .locals 4

    .prologue
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AdNetMgr_getAds():"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tencent/qqpim/discovery/AdRequestData;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bth;->i(Ljava/lang/String;)V

    .line 43
    new-instance v0, Lcom/kingroot/kinguser/brn$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/kingroot/kinguser/brn$1;-><init>(Lcom/kingroot/kinguser/brn;Lcom/kingroot/kinguser/brq$b;Lcom/tencent/qqpim/discovery/AdRequestData;)V

    .line 110
    const-wide/16 v2, 0x2710

    .line 43
    invoke-static {p1, v0, v2, v3}, Lcom/kingroot/kinguser/bte;->a(Lcom/tencent/qqpim/discovery/AdRequestData;Lcom/kingroot/kinguser/brj;J)V

    .line 123
    return-void
.end method
