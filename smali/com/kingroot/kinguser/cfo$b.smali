.class Lcom/kingroot/kinguser/cfo$b;
.super Lcom/kingroot/kinguser/cfo$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/cfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic cdp:Lcom/kingroot/kinguser/cfo;

.field private cdq:I

.field private cdr:B

.field private mReason:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/cfo;IILjava/lang/String;B)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 152
    iput-object p1, p0, Lcom/kingroot/kinguser/cfo$b;->cdp:Lcom/kingroot/kinguser/cfo;

    .line 153
    const/16 v0, 0x2af7

    invoke-direct {p0, p1, v0, p2}, Lcom/kingroot/kinguser/cfo$c;-><init>(Lcom/kingroot/kinguser/cfo;II)V

    .line 148
    iput v1, p0, Lcom/kingroot/kinguser/cfo$b;->cdq:I

    .line 149
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/cfo$b;->mReason:Ljava/lang/String;

    .line 150
    iput-byte v1, p0, Lcom/kingroot/kinguser/cfo$b;->cdr:B

    .line 154
    iput p3, p0, Lcom/kingroot/kinguser/cfo$b;->cdq:I

    .line 155
    iput-object p4, p0, Lcom/kingroot/kinguser/cfo$b;->mReason:Ljava/lang/String;

    .line 156
    iput-byte p5, p0, Lcom/kingroot/kinguser/cfo$b;->cdr:B

    .line 158
    return-void
.end method


# virtual methods
.method protected aB(II)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 175
    iget v0, p0, Lcom/kingroot/kinguser/cfo$b;->cdq:I

    if-lez v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/kingroot/kinguser/cfo$b;->cdp:Lcom/kingroot/kinguser/cfo;

    invoke-static {v0, v8}, Lcom/kingroot/kinguser/cfo;->a(Lcom/kingroot/kinguser/cfo;Z)Z

    .line 178
    iget-object v0, p0, Lcom/kingroot/kinguser/cfo$b;->cdp:Lcom/kingroot/kinguser/cfo;

    invoke-static {v0, v9}, Lcom/kingroot/kinguser/cfo;->a(Lcom/kingroot/kinguser/cfo;B)B

    .line 181
    :cond_0
    iget v0, p0, Lcom/kingroot/kinguser/cfo$b;->cdq:I

    if-gtz v0, :cond_3

    invoke-static {p1}, Lcom/kingroot/kinguser/cen;->kZ(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/kingroot/kinguser/cfo$b;->cdp:Lcom/kingroot/kinguser/cfo;

    invoke-static {v0}, Lcom/kingroot/kinguser/cfo;->a(Lcom/kingroot/kinguser/cfo;)I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_3

    iget-object v0, p0, Lcom/kingroot/kinguser/cfo$b;->cdp:Lcom/kingroot/kinguser/cfo;

    invoke-static {v0}, Lcom/kingroot/kinguser/cfo;->b(Lcom/kingroot/kinguser/cfo;)Lcom/kingroot/kinguser/cfk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cfk;->amg()I

    move-result v0

    if-lez v0, :cond_3

    move v7, v8

    .line 186
    :goto_0
    invoke-static {}, Lcom/kingroot/kinguser/cfc;->alC()Lcom/kingroot/kinguser/cfc;

    move-result-object v0

    const-string v1, "TmsTcpManager"

    const/16 v2, 0x3e7

    iget v3, p0, Lcom/kingroot/kinguser/cfo$b;->seqNo:I

    const/4 v4, 0x0

    const/16 v5, 0x1e

    move v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/kingroot/kinguser/cfc;->a(Ljava/lang/String;IILcom/kingroot/kinguser/bg;II)V

    .line 187
    invoke-static {}, Lcom/kingroot/kinguser/cfc;->alC()Lcom/kingroot/kinguser/cfc;

    move-result-object v0

    iget v1, p0, Lcom/kingroot/kinguser/cfo$b;->seqNo:I

    if-nez v7, :cond_1

    move v9, v8

    :cond_1
    invoke-virtual {v0, v1, v9}, Lcom/kingroot/kinguser/cfc;->K(IZ)Z

    .line 188
    invoke-static {}, Lcom/kingroot/kinguser/cfc;->alC()Lcom/kingroot/kinguser/cfc;

    move-result-object v0

    iget-byte v1, p0, Lcom/kingroot/kinguser/cfo$b;->cdr:B

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/cfc;->c(B)V

    .line 190
    if-eqz v7, :cond_2

    .line 192
    iget-object v0, p0, Lcom/kingroot/kinguser/cfo$b;->cdp:Lcom/kingroot/kinguser/cfo;

    const/16 v1, 0xd

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "hb_retry:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/kingroot/kinguser/cfo$b;->mReason:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/kingroot/kinguser/cfo$b;->cdq:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/kingroot/kinguser/cfo$b;->cdq:I

    const-wide/16 v4, 0x7d0

    move v6, v8

    invoke-static/range {v0 .. v6}, Lcom/kingroot/kinguser/cfo;->a(Lcom/kingroot/kinguser/cfo;ILjava/lang/Object;IJZ)V

    .line 194
    :cond_2
    return-void

    :cond_3
    move v7, v9

    .line 181
    goto :goto_0
.end method

.method protected e(Lcom/kingroot/kinguser/bg;)V
    .locals 7

    .prologue
    .line 164
    invoke-static {}, Lcom/kingroot/kinguser/cfc;->alC()Lcom/kingroot/kinguser/cfc;

    move-result-object v0

    const-string v1, "TmsTcpManager"

    const/16 v2, 0x3e7

    iget v3, p0, Lcom/kingroot/kinguser/cfo$b;->seqNo:I

    const/16 v5, 0x1e

    const/4 v6, 0x0

    move-object v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/kingroot/kinguser/cfc;->a(Ljava/lang/String;IILcom/kingroot/kinguser/bg;II)V

    .line 166
    invoke-static {}, Lcom/kingroot/kinguser/cfc;->alC()Lcom/kingroot/kinguser/cfc;

    move-result-object v0

    iget v1, p0, Lcom/kingroot/kinguser/cfo$b;->seqNo:I

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/cfc;->lf(I)Z

    .line 167
    invoke-static {}, Lcom/kingroot/kinguser/cfc;->alC()Lcom/kingroot/kinguser/cfc;

    move-result-object v0

    iget-byte v1, p0, Lcom/kingroot/kinguser/cfo$b;->cdr:B

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/cfc;->c(B)V

    .line 168
    return-void
.end method
