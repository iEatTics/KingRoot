.class public Lcom/kingroot/kinguser/btq;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/kingroot/kinguser/btp;Ljava/io/DataOutputStream;)V
    .locals 1

    .prologue
    .line 11
    const v0, 0x504b0708

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 12
    iget v0, p0, Lcom/kingroot/kinguser/btp;->bNq:I

    invoke-static {v0}, Lcom/kingroot/kinguser/bto;->kj(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 13
    iget v0, p0, Lcom/kingroot/kinguser/btp;->bNr:I

    invoke-static {v0}, Lcom/kingroot/kinguser/bto;->kj(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 14
    iget v0, p0, Lcom/kingroot/kinguser/btp;->bNs:I

    invoke-static {v0}, Lcom/kingroot/kinguser/bto;->kj(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 15
    return-void
.end method
