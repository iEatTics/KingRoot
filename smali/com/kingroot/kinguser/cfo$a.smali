.class Lcom/kingroot/kinguser/cfo$a;
.super Lcom/kingroot/kinguser/cfo$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/cfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic cdp:Lcom/kingroot/kinguser/cfo;

.field private cdq:I

.field private mReason:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/cfo;IILjava/lang/String;)V
    .locals 1

    .prologue
    .line 208
    iput-object p1, p0, Lcom/kingroot/kinguser/cfo$a;->cdp:Lcom/kingroot/kinguser/cfo;

    .line 209
    const/16 v0, 0x2af5

    invoke-direct {p0, p1, v0, p2}, Lcom/kingroot/kinguser/cfo$c;-><init>(Lcom/kingroot/kinguser/cfo;II)V

    .line 205
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/cfo$a;->cdq:I

    .line 206
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/cfo$a;->mReason:Ljava/lang/String;

    .line 210
    iput p3, p0, Lcom/kingroot/kinguser/cfo$a;->cdq:I

    .line 211
    iput-object p4, p0, Lcom/kingroot/kinguser/cfo$a;->mReason:Ljava/lang/String;

    .line 212
    return-void
.end method


# virtual methods
.method protected aB(II)V
    .locals 11

    .prologue
    .line 231
    invoke-static {p1}, Lcom/kingroot/kinguser/cen;->kY(I)I

    move-result v6

    .line 233
    iget v0, p0, Lcom/kingroot/kinguser/cfo$a;->cdq:I

    if-gtz v0, :cond_1

    invoke-static {v6}, Lcom/kingroot/kinguser/cen;->kZ(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kingroot/kinguser/cfo$a;->cdp:Lcom/kingroot/kinguser/cfo;

    invoke-static {v0}, Lcom/kingroot/kinguser/cfo;->a(Lcom/kingroot/kinguser/cfo;)I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/kingroot/kinguser/cfo$a;->cdp:Lcom/kingroot/kinguser/cfo;

    invoke-static {v0}, Lcom/kingroot/kinguser/cfo;->b(Lcom/kingroot/kinguser/cfo;)Lcom/kingroot/kinguser/cfk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cfk;->amg()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    move v10, v0

    .line 239
    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cfo$a;->cdp:Lcom/kingroot/kinguser/cfo;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/cfo;->a(Lcom/kingroot/kinguser/cfo;Z)Z

    .line 240
    iget-object v0, p0, Lcom/kingroot/kinguser/cfo$a;->cdp:Lcom/kingroot/kinguser/cfo;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/cfo;->a(Lcom/kingroot/kinguser/cfo;B)B

    .line 241
    iget-object v0, p0, Lcom/kingroot/kinguser/cfo$a;->cdp:Lcom/kingroot/kinguser/cfo;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/cfo;->b(Lcom/kingroot/kinguser/cfo;Z)Z

    .line 243
    invoke-static {}, Lcom/kingroot/kinguser/cfc;->alC()Lcom/kingroot/kinguser/cfc;

    move-result-object v0

    const-string v1, "TmsTcpManager"

    const/16 v2, 0x3e5

    iget v3, p0, Lcom/kingroot/kinguser/cfo$a;->seqNo:I

    const/4 v4, 0x0

    const/16 v5, 0x1e

    invoke-virtual/range {v0 .. v6}, Lcom/kingroot/kinguser/cfc;->a(Ljava/lang/String;IILcom/kingroot/kinguser/bg;II)V

    .line 244
    invoke-static {}, Lcom/kingroot/kinguser/cfc;->alC()Lcom/kingroot/kinguser/cfc;

    move-result-object v1

    iget v2, p0, Lcom/kingroot/kinguser/cfo$a;->seqNo:I

    if-nez v10, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v2, v0}, Lcom/kingroot/kinguser/cfc;->K(IZ)Z

    .line 247
    iget-object v3, p0, Lcom/kingroot/kinguser/cfo$a;->cdp:Lcom/kingroot/kinguser/cfo;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    invoke-static/range {v3 .. v9}, Lcom/kingroot/kinguser/cfo;->a(Lcom/kingroot/kinguser/cfo;ILjava/lang/Object;IJZ)V

    .line 250
    if-eqz v10, :cond_0

    .line 252
    iget-object v0, p0, Lcom/kingroot/kinguser/cfo$a;->cdp:Lcom/kingroot/kinguser/cfo;

    invoke-static {v0}, Lcom/kingroot/kinguser/cfo;->c(Lcom/kingroot/kinguser/cfo;)I

    .line 253
    iget-object v0, p0, Lcom/kingroot/kinguser/cfo$a;->cdp:Lcom/kingroot/kinguser/cfo;

    const/16 v1, 0xb

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "delay_fp_retry:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/kingroot/kinguser/cfo$a;->mReason:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/kingroot/kinguser/cfo$a;->cdq:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/kingroot/kinguser/cfo$a;->cdq:I

    const-wide/16 v4, 0x3e8

    iget-object v6, p0, Lcom/kingroot/kinguser/cfo$a;->cdp:Lcom/kingroot/kinguser/cfo;

    invoke-static {v6}, Lcom/kingroot/kinguser/cfo;->b(Lcom/kingroot/kinguser/cfo;)Lcom/kingroot/kinguser/cfk;

    move-result-object v6

    invoke-virtual {v6}, Lcom/kingroot/kinguser/cfk;->fD()Lcom/kingroot/kinguser/ap;

    move-result-object v6

    iget v6, v6, Lcom/kingroot/kinguser/ap;->ie:I

    int-to-long v6, v6

    mul-long/2addr v4, v6

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Lcom/kingroot/kinguser/cfo;->a(Lcom/kingroot/kinguser/cfo;ILjava/lang/Object;IJZ)V

    .line 257
    :cond_0
    return-void

    .line 233
    :cond_1
    const/4 v0, 0x0

    move v10, v0

    goto :goto_0

    .line 244
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected e(Lcom/kingroot/kinguser/bg;)V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v7, 0x0

    .line 218
    iget-object v1, p0, Lcom/kingroot/kinguser/cfo$a;->cdp:Lcom/kingroot/kinguser/cfo;

    invoke-static {v1, v7}, Lcom/kingroot/kinguser/cfo;->a(Lcom/kingroot/kinguser/cfo;Z)Z

    .line 219
    iget-object v1, p0, Lcom/kingroot/kinguser/cfo$a;->cdp:Lcom/kingroot/kinguser/cfo;

    invoke-static {v1, v10}, Lcom/kingroot/kinguser/cfo;->a(Lcom/kingroot/kinguser/cfo;B)B

    .line 220
    iget-object v1, p0, Lcom/kingroot/kinguser/cfo$a;->cdp:Lcom/kingroot/kinguser/cfo;

    invoke-static {v1, v7}, Lcom/kingroot/kinguser/cfo;->b(Lcom/kingroot/kinguser/cfo;Z)Z

    .line 222
    invoke-static {}, Lcom/kingroot/kinguser/cfc;->alC()Lcom/kingroot/kinguser/cfc;

    move-result-object v1

    const-string v2, "TmsTcpManager"

    const/16 v3, 0x3e5

    iget v4, p0, Lcom/kingroot/kinguser/cfo$a;->seqNo:I

    const/16 v6, 0x1e

    move-object v5, p1

    invoke-virtual/range {v1 .. v7}, Lcom/kingroot/kinguser/cfc;->a(Ljava/lang/String;IILcom/kingroot/kinguser/bg;II)V

    .line 223
    invoke-static {}, Lcom/kingroot/kinguser/cfc;->alC()Lcom/kingroot/kinguser/cfc;

    move-result-object v1

    iget v2, p0, Lcom/kingroot/kinguser/cfo$a;->seqNo:I

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/cfc;->lf(I)Z

    .line 226
    iget-object v4, p0, Lcom/kingroot/kinguser/cfo$a;->cdp:Lcom/kingroot/kinguser/cfo;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-wide/16 v8, 0x0

    invoke-static/range {v4 .. v10}, Lcom/kingroot/kinguser/cfo;->a(Lcom/kingroot/kinguser/cfo;ILjava/lang/Object;IJZ)V

    .line 227
    return-void
.end method
