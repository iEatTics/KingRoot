.class public Lcom/kingroot/kinguser/bts;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field bNE:[B

.field bNG:S

.field bNH:S

.field bNI:S

.field bNJ:S

.field bNK:I

.field bNL:I

.field bNw:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/DataInputStream;)V
    .locals 3

    .prologue
    .line 43
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bto;->d(S)S

    move-result v0

    iput-short v0, p0, Lcom/kingroot/kinguser/bts;->bNG:S

    .line 44
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bto;->d(S)S

    move-result v0

    iput-short v0, p0, Lcom/kingroot/kinguser/bts;->bNH:S

    .line 45
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bto;->d(S)S

    move-result v0

    iput-short v0, p0, Lcom/kingroot/kinguser/bts;->bNI:S

    .line 46
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bto;->d(S)S

    move-result v0

    iput-short v0, p0, Lcom/kingroot/kinguser/bts;->bNJ:S

    .line 47
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bto;->kj(I)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/bts;->bNK:I

    .line 48
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bto;->kj(I)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/bts;->bNL:I

    .line 49
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bto;->d(S)S

    move-result v0

    iput-short v0, p0, Lcom/kingroot/kinguser/bts;->bNw:S

    .line 50
    iget-short v0, p0, Lcom/kingroot/kinguser/bts;->bNw:S

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/kingroot/kinguser/bts;->bNE:[B

    .line 51
    iget-object v0, p0, Lcom/kingroot/kinguser/bts;->bNE:[B

    const/4 v1, 0x0

    iget-short v2, p0, Lcom/kingroot/kinguser/bts;->bNw:S

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/DataInputStream;->read([BII)I

    .line 52
    return-void
.end method

.method public a(Ljava/io/DataOutputStream;)V
    .locals 1

    .prologue
    .line 29
    const v0, 0x504b0506

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 30
    iget-short v0, p0, Lcom/kingroot/kinguser/bts;->bNG:S

    invoke-static {v0}, Lcom/kingroot/kinguser/bto;->d(S)S

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 31
    iget-short v0, p0, Lcom/kingroot/kinguser/bts;->bNH:S

    invoke-static {v0}, Lcom/kingroot/kinguser/bto;->d(S)S

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 32
    iget-short v0, p0, Lcom/kingroot/kinguser/bts;->bNI:S

    invoke-static {v0}, Lcom/kingroot/kinguser/bto;->d(S)S

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 33
    iget-short v0, p0, Lcom/kingroot/kinguser/bts;->bNJ:S

    invoke-static {v0}, Lcom/kingroot/kinguser/bto;->d(S)S

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 34
    iget v0, p0, Lcom/kingroot/kinguser/bts;->bNK:I

    invoke-static {v0}, Lcom/kingroot/kinguser/bto;->kj(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 35
    iget v0, p0, Lcom/kingroot/kinguser/bts;->bNL:I

    invoke-static {v0}, Lcom/kingroot/kinguser/bto;->kj(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 36
    iget-short v0, p0, Lcom/kingroot/kinguser/bts;->bNw:S

    invoke-static {v0}, Lcom/kingroot/kinguser/bto;->d(S)S

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 37
    iget-short v0, p0, Lcom/kingroot/kinguser/bts;->bNw:S

    if-lez v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/kingroot/kinguser/bts;->bNE:[B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 40
    :cond_0
    return-void
.end method
