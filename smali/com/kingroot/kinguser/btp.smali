.class public Lcom/kingroot/kinguser/btp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field bNA:Z

.field bNB:[B

.field bNC:[B

.field bND:[B

.field bNE:[B

.field bNk:S

.field bNl:S

.field bNm:S

.field bNn:S

.field bNo:S

.field bNp:S

.field bNq:I

.field bNr:I

.field bNs:I

.field bNt:S

.field bNu:S

.field bNv:S

.field bNw:S

.field bNx:S

.field bNy:S

.field bNz:I

.field offset:I


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
    const/4 v2, 0x0

    .line 72
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bto;->d(S)S

    move-result v0

    iput-short v0, p0, Lcom/kingroot/kinguser/btp;->bNk:S

    .line 73
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bto;->d(S)S

    move-result v0

    iput-short v0, p0, Lcom/kingroot/kinguser/btp;->bNl:S

    .line 74
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bto;->d(S)S

    move-result v0

    iput-short v0, p0, Lcom/kingroot/kinguser/btp;->bNm:S

    .line 75
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bto;->d(S)S

    move-result v0

    iput-short v0, p0, Lcom/kingroot/kinguser/btp;->bNn:S

    .line 76
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bto;->d(S)S

    move-result v0

    iput-short v0, p0, Lcom/kingroot/kinguser/btp;->bNo:S

    .line 77
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bto;->d(S)S

    move-result v0

    iput-short v0, p0, Lcom/kingroot/kinguser/btp;->bNp:S

    .line 78
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bto;->kj(I)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/btp;->bNq:I

    .line 79
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bto;->kj(I)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/btp;->bNr:I

    .line 80
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bto;->kj(I)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/btp;->bNs:I

    .line 81
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bto;->d(S)S

    move-result v0

    iput-short v0, p0, Lcom/kingroot/kinguser/btp;->bNt:S

    .line 82
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bto;->d(S)S

    move-result v0

    iput-short v0, p0, Lcom/kingroot/kinguser/btp;->bNv:S

    .line 83
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bto;->d(S)S

    move-result v0

    iput-short v0, p0, Lcom/kingroot/kinguser/btp;->bNw:S

    .line 84
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bto;->d(S)S

    move-result v0

    iput-short v0, p0, Lcom/kingroot/kinguser/btp;->bNx:S

    .line 85
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bto;->d(S)S

    move-result v0

    iput-short v0, p0, Lcom/kingroot/kinguser/btp;->bNy:S

    .line 86
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bto;->kj(I)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/btp;->bNz:I

    .line 87
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bto;->kj(I)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/btp;->offset:I

    .line 89
    iput-boolean v2, p0, Lcom/kingroot/kinguser/btp;->bNA:Z

    .line 90
    iget-short v0, p0, Lcom/kingroot/kinguser/btp;->bNt:S

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/kingroot/kinguser/btp;->bNB:[B

    .line 91
    iget-short v0, p0, Lcom/kingroot/kinguser/btp;->bNv:S

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/kingroot/kinguser/btp;->bND:[B

    .line 92
    iget-short v0, p0, Lcom/kingroot/kinguser/btp;->bNw:S

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/kingroot/kinguser/btp;->bNE:[B

    .line 94
    iget-object v0, p0, Lcom/kingroot/kinguser/btp;->bNB:[B

    iget-short v1, p0, Lcom/kingroot/kinguser/btp;->bNt:S

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/DataInputStream;->read([BII)I

    .line 95
    iget-object v0, p0, Lcom/kingroot/kinguser/btp;->bND:[B

    iget-short v1, p0, Lcom/kingroot/kinguser/btp;->bNv:S

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/DataInputStream;->read([BII)I

    .line 96
    iget-object v0, p0, Lcom/kingroot/kinguser/btp;->bNE:[B

    iget-short v1, p0, Lcom/kingroot/kinguser/btp;->bNw:S

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/DataInputStream;->read([BII)I

    .line 97
    return-void
.end method

.method public a(Ljava/io/DataOutputStream;)V
    .locals 1

    .prologue
    .line 39
    const v0, 0x504b0102

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 40
    iget-short v0, p0, Lcom/kingroot/kinguser/btp;->bNk:S

    invoke-static {v0}, Lcom/kingroot/kinguser/bto;->d(S)S

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 41
    iget-short v0, p0, Lcom/kingroot/kinguser/btp;->bNl:S

    invoke-static {v0}, Lcom/kingroot/kinguser/bto;->d(S)S

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 42
    iget-short v0, p0, Lcom/kingroot/kinguser/btp;->bNm:S

    invoke-static {v0}, Lcom/kingroot/kinguser/bto;->d(S)S

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 43
    iget-short v0, p0, Lcom/kingroot/kinguser/btp;->bNn:S

    invoke-static {v0}, Lcom/kingroot/kinguser/bto;->d(S)S

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 44
    iget-short v0, p0, Lcom/kingroot/kinguser/btp;->bNo:S

    invoke-static {v0}, Lcom/kingroot/kinguser/bto;->d(S)S

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 45
    iget-short v0, p0, Lcom/kingroot/kinguser/btp;->bNp:S

    invoke-static {v0}, Lcom/kingroot/kinguser/bto;->d(S)S

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 47
    iget v0, p0, Lcom/kingroot/kinguser/btp;->bNq:I

    invoke-static {v0}, Lcom/kingroot/kinguser/bto;->kj(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 48
    iget v0, p0, Lcom/kingroot/kinguser/btp;->bNr:I

    invoke-static {v0}, Lcom/kingroot/kinguser/bto;->kj(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 49
    iget v0, p0, Lcom/kingroot/kinguser/btp;->bNs:I

    invoke-static {v0}, Lcom/kingroot/kinguser/bto;->kj(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 51
    iget-short v0, p0, Lcom/kingroot/kinguser/btp;->bNt:S

    invoke-static {v0}, Lcom/kingroot/kinguser/bto;->d(S)S

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 52
    iget-short v0, p0, Lcom/kingroot/kinguser/btp;->bNv:S

    invoke-static {v0}, Lcom/kingroot/kinguser/bto;->d(S)S

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 53
    iget-short v0, p0, Lcom/kingroot/kinguser/btp;->bNw:S

    invoke-static {v0}, Lcom/kingroot/kinguser/bto;->d(S)S

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 54
    iget-short v0, p0, Lcom/kingroot/kinguser/btp;->bNx:S

    invoke-static {v0}, Lcom/kingroot/kinguser/bto;->d(S)S

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 55
    iget-short v0, p0, Lcom/kingroot/kinguser/btp;->bNy:S

    invoke-static {v0}, Lcom/kingroot/kinguser/bto;->d(S)S

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 57
    iget v0, p0, Lcom/kingroot/kinguser/btp;->bNz:I

    invoke-static {v0}, Lcom/kingroot/kinguser/bto;->kj(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 58
    iget v0, p0, Lcom/kingroot/kinguser/btp;->offset:I

    invoke-static {v0}, Lcom/kingroot/kinguser/bto;->kj(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 60
    iget-short v0, p0, Lcom/kingroot/kinguser/btp;->bNt:S

    if-lez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/kingroot/kinguser/btp;->bNB:[B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 63
    :cond_0
    iget-short v0, p0, Lcom/kingroot/kinguser/btp;->bNv:S

    if-lez v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/kingroot/kinguser/btp;->bND:[B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 66
    :cond_1
    iget-short v0, p0, Lcom/kingroot/kinguser/btp;->bNw:S

    if-lez v0, :cond_2

    .line 67
    iget-object v0, p0, Lcom/kingroot/kinguser/btp;->bNE:[B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 69
    :cond_2
    return-void
.end method

.method public aia()Z
    .locals 1

    .prologue
    .line 178
    iget-short v0, p0, Lcom/kingroot/kinguser/btp;->bNm:S

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 179
    const/4 v0, 0x1

    .line 181
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/io/DataInputStream;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 143
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lcom/kingroot/kinguser/btp;->bNk:S

    .line 144
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lcom/kingroot/kinguser/btp;->bNl:S

    .line 145
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lcom/kingroot/kinguser/btp;->bNm:S

    .line 146
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lcom/kingroot/kinguser/btp;->bNn:S

    .line 147
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lcom/kingroot/kinguser/btp;->bNo:S

    .line 148
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lcom/kingroot/kinguser/btp;->bNp:S

    .line 150
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/btp;->bNq:I

    .line 151
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/btp;->bNr:I

    .line 152
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/btp;->bNs:I

    .line 153
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lcom/kingroot/kinguser/btp;->bNt:S

    .line 155
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lcom/kingroot/kinguser/btp;->bNu:S

    .line 156
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lcom/kingroot/kinguser/btp;->bNv:S

    .line 158
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lcom/kingroot/kinguser/btp;->bNw:S

    .line 159
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lcom/kingroot/kinguser/btp;->bNx:S

    .line 160
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lcom/kingroot/kinguser/btp;->bNy:S

    .line 161
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/btp;->bNz:I

    .line 162
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/btp;->offset:I

    .line 164
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/btp;->bNA:Z

    .line 166
    iget-short v0, p0, Lcom/kingroot/kinguser/btp;->bNt:S

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/kingroot/kinguser/btp;->bNB:[B

    .line 167
    iget-short v0, p0, Lcom/kingroot/kinguser/btp;->bNu:S

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/kingroot/kinguser/btp;->bNC:[B

    .line 168
    iget-short v0, p0, Lcom/kingroot/kinguser/btp;->bNv:S

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/kingroot/kinguser/btp;->bND:[B

    .line 169
    iget-short v0, p0, Lcom/kingroot/kinguser/btp;->bNw:S

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/kingroot/kinguser/btp;->bNE:[B

    .line 171
    iget-object v0, p0, Lcom/kingroot/kinguser/btp;->bNB:[B

    iget-short v1, p0, Lcom/kingroot/kinguser/btp;->bNt:S

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/DataInputStream;->read([BII)I

    .line 172
    iget-object v0, p0, Lcom/kingroot/kinguser/btp;->bNC:[B

    iget-short v1, p0, Lcom/kingroot/kinguser/btp;->bNu:S

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/DataInputStream;->read([BII)I

    .line 173
    iget-object v0, p0, Lcom/kingroot/kinguser/btp;->bND:[B

    iget-short v1, p0, Lcom/kingroot/kinguser/btp;->bNv:S

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/DataInputStream;->read([BII)I

    .line 174
    iget-object v0, p0, Lcom/kingroot/kinguser/btp;->bNE:[B

    iget-short v1, p0, Lcom/kingroot/kinguser/btp;->bNw:S

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/DataInputStream;->read([BII)I

    .line 175
    return-void
.end method
