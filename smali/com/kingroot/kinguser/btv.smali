.class public Lcom/kingroot/kinguser/btv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field bNB:[B

.field bNP:S

.field bNQ:[B

.field bNl:S

.field bNm:S

.field bNn:S

.field bNo:S

.field bNp:S

.field bNq:I

.field bNr:I

.field bNs:I

.field bNt:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/kingroot/kinguser/btp;Ljava/io/DataOutputStream;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 45
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->size()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/btp;->offset:I

    .line 49
    const v0, 0x504b0304

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 50
    iget-short v0, p0, Lcom/kingroot/kinguser/btp;->bNl:S

    invoke-static {v0}, Lcom/kingroot/kinguser/bto;->d(S)S

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 51
    iget-short v0, p0, Lcom/kingroot/kinguser/btp;->bNm:S

    invoke-static {v0}, Lcom/kingroot/kinguser/bto;->d(S)S

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 52
    iget-short v0, p0, Lcom/kingroot/kinguser/btp;->bNn:S

    invoke-static {v0}, Lcom/kingroot/kinguser/bto;->d(S)S

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 53
    iget-short v0, p0, Lcom/kingroot/kinguser/btp;->bNo:S

    invoke-static {v0}, Lcom/kingroot/kinguser/bto;->d(S)S

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 54
    iget-short v0, p0, Lcom/kingroot/kinguser/btp;->bNp:S

    invoke-static {v0}, Lcom/kingroot/kinguser/bto;->d(S)S

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 61
    iget-short v0, p0, Lcom/kingroot/kinguser/btp;->bNm:S

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 62
    invoke-static {v2}, Lcom/kingroot/kinguser/bto;->kj(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 63
    invoke-static {v2}, Lcom/kingroot/kinguser/bto;->kj(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 64
    invoke-static {v2}, Lcom/kingroot/kinguser/bto;->kj(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 71
    :goto_0
    iget-short v0, p0, Lcom/kingroot/kinguser/btp;->bNt:S

    invoke-static {v0}, Lcom/kingroot/kinguser/bto;->d(S)S

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 72
    iget-short v0, p0, Lcom/kingroot/kinguser/btp;->bNu:S

    invoke-static {v0}, Lcom/kingroot/kinguser/bto;->d(S)S

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 74
    iget-short v0, p0, Lcom/kingroot/kinguser/btp;->bNt:S

    if-lez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/kingroot/kinguser/btp;->bNB:[B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 78
    :cond_0
    iget-short v0, p0, Lcom/kingroot/kinguser/btp;->bNu:S

    if-lez v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/kingroot/kinguser/btp;->bNC:[B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 81
    :cond_1
    return-void

    .line 66
    :cond_2
    iget v0, p0, Lcom/kingroot/kinguser/btp;->bNq:I

    invoke-static {v0}, Lcom/kingroot/kinguser/bto;->kj(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 67
    iget v0, p0, Lcom/kingroot/kinguser/btp;->bNr:I

    invoke-static {v0}, Lcom/kingroot/kinguser/bto;->kj(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 68
    iget v0, p0, Lcom/kingroot/kinguser/btp;->bNs:I

    invoke-static {v0}, Lcom/kingroot/kinguser/bto;->kj(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/io/DataInputStream;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 84
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bto;->d(S)S

    move-result v0

    iput-short v0, p0, Lcom/kingroot/kinguser/btv;->bNl:S

    .line 85
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bto;->d(S)S

    move-result v0

    iput-short v0, p0, Lcom/kingroot/kinguser/btv;->bNm:S

    .line 86
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bto;->d(S)S

    move-result v0

    iput-short v0, p0, Lcom/kingroot/kinguser/btv;->bNn:S

    .line 87
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bto;->d(S)S

    move-result v0

    iput-short v0, p0, Lcom/kingroot/kinguser/btv;->bNo:S

    .line 88
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bto;->d(S)S

    move-result v0

    iput-short v0, p0, Lcom/kingroot/kinguser/btv;->bNp:S

    .line 89
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bto;->kj(I)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/btv;->bNq:I

    .line 90
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bto;->kj(I)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/btv;->bNr:I

    .line 91
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bto;->kj(I)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/btv;->bNs:I

    .line 92
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bto;->d(S)S

    move-result v0

    iput-short v0, p0, Lcom/kingroot/kinguser/btv;->bNt:S

    .line 93
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bto;->d(S)S

    move-result v0

    iput-short v0, p0, Lcom/kingroot/kinguser/btv;->bNP:S

    .line 94
    iget-short v0, p0, Lcom/kingroot/kinguser/btv;->bNt:S

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/kingroot/kinguser/btv;->bNB:[B

    .line 95
    iget-short v0, p0, Lcom/kingroot/kinguser/btv;->bNP:S

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/kingroot/kinguser/btv;->bNQ:[B

    .line 96
    iget-object v0, p0, Lcom/kingroot/kinguser/btv;->bNB:[B

    iget-short v1, p0, Lcom/kingroot/kinguser/btv;->bNt:S

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/DataInputStream;->read([BII)I

    .line 97
    iget-object v0, p0, Lcom/kingroot/kinguser/btv;->bNQ:[B

    iget-short v1, p0, Lcom/kingroot/kinguser/btv;->bNP:S

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/DataInputStream;->read([BII)I

    .line 98
    return-void
.end method
