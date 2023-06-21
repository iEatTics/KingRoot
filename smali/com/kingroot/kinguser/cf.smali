.class public final Lcom/kingroot/kinguser/cf;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static lI:[B


# instance fields
.field public bl:Z

.field public i:I

.field public lD:I

.field public lE:J

.field public lF:Ljava/lang/String;

.field public lG:[B

.field public lH:S

.field public valueType:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 87
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 78
    iput v2, p0, Lcom/kingroot/kinguser/cf;->valueType:I

    .line 79
    iput v2, p0, Lcom/kingroot/kinguser/cf;->lD:I

    .line 80
    iput v2, p0, Lcom/kingroot/kinguser/cf;->i:I

    .line 81
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingroot/kinguser/cf;->lE:J

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/cf;->lF:Ljava/lang/String;

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/cf;->lG:[B

    .line 84
    iput-boolean v2, p0, Lcom/kingroot/kinguser/cf;->bl:Z

    .line 85
    iput-short v2, p0, Lcom/kingroot/kinguser/cf;->lH:S

    .line 88
    return-void
.end method


# virtual methods
.method public F(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/kingroot/kinguser/cf;->lF:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public a(S)V
    .locals 0

    .prologue
    .line 75
    iput-short p1, p0, Lcom/kingroot/kinguser/cf;->lH:S

    .line 76
    return-void
.end method

.method public display(Ljava/lang/StringBuilder;I)V
    .locals 0

    .prologue
    .line 139
    return-void
.end method

.method public e(Z)V
    .locals 0

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/kingroot/kinguser/cf;->bl:Z

    .line 68
    return-void
.end method

.method public f([B)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/kingroot/kinguser/cf;->lG:[B

    .line 60
    return-void
.end method

.method public h(I)V
    .locals 0

    .prologue
    .line 19
    iput p1, p0, Lcom/kingroot/kinguser/cf;->valueType:I

    .line 20
    return-void
.end method

.method public i(I)V
    .locals 0

    .prologue
    .line 27
    iput p1, p0, Lcom/kingroot/kinguser/cf;->lD:I

    .line 28
    return-void
.end method

.method public j(I)V
    .locals 0

    .prologue
    .line 35
    iput p1, p0, Lcom/kingroot/kinguser/cf;->i:I

    .line 36
    return-void
.end method

.method public l(J)V
    .locals 1

    .prologue
    .line 43
    iput-wide p1, p0, Lcom/kingroot/kinguser/cf;->lE:J

    .line 44
    return-void
.end method

.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 122
    iget v0, p0, Lcom/kingroot/kinguser/cf;->valueType:I

    invoke-virtual {p1, v0, v3, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/cf;->valueType:I

    .line 123
    iget v0, p0, Lcom/kingroot/kinguser/cf;->lD:I

    invoke-virtual {p1, v0, v4, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/cf;->lD:I

    .line 124
    iget v0, p0, Lcom/kingroot/kinguser/cf;->i:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/cf;->i:I

    .line 125
    iget-wide v0, p0, Lcom/kingroot/kinguser/cf;->lE:J

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/cf;->lE:J

    .line 126
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/cf;->lF:Ljava/lang/String;

    .line 127
    sget-object v0, Lcom/kingroot/kinguser/cf;->lI:[B

    if-nez v0, :cond_0

    .line 128
    new-array v0, v4, [B

    check-cast v0, [B

    sput-object v0, Lcom/kingroot/kinguser/cf;->lI:[B

    .line 130
    sget-object v0, Lcom/kingroot/kinguser/cf;->lI:[B

    check-cast v0, [B

    aput-byte v3, v0, v3

    .line 132
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/cf;->lI:[B

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read([BIZ)[B

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/kingroot/kinguser/cf;->lG:[B

    .line 133
    iget-boolean v0, p0, Lcom/kingroot/kinguser/cf;->bl:Z

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(ZIZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/cf;->bl:Z

    .line 134
    iget-short v0, p0, Lcom/kingroot/kinguser/cf;->lH:S

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(SIZ)S

    move-result v0

    iput-short v0, p0, Lcom/kingroot/kinguser/cf;->lH:S

    .line 135
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 4

    .prologue
    .line 94
    iget v0, p0, Lcom/kingroot/kinguser/cf;->valueType:I

    if-eqz v0, :cond_0

    .line 95
    iget v0, p0, Lcom/kingroot/kinguser/cf;->valueType:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 97
    :cond_0
    iget v0, p0, Lcom/kingroot/kinguser/cf;->lD:I

    if-eqz v0, :cond_1

    .line 98
    iget v0, p0, Lcom/kingroot/kinguser/cf;->lD:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 100
    :cond_1
    iget v0, p0, Lcom/kingroot/kinguser/cf;->i:I

    if-eqz v0, :cond_2

    .line 101
    iget v0, p0, Lcom/kingroot/kinguser/cf;->i:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 103
    :cond_2
    iget-wide v0, p0, Lcom/kingroot/kinguser/cf;->lE:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 104
    iget-wide v0, p0, Lcom/kingroot/kinguser/cf;->lE:J

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 106
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/cf;->lF:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 107
    iget-object v0, p0, Lcom/kingroot/kinguser/cf;->lF:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 109
    :cond_4
    iget-object v0, p0, Lcom/kingroot/kinguser/cf;->lG:[B

    if-eqz v0, :cond_5

    .line 110
    iget-object v0, p0, Lcom/kingroot/kinguser/cf;->lG:[B

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write([BI)V

    .line 112
    :cond_5
    iget-boolean v0, p0, Lcom/kingroot/kinguser/cf;->bl:Z

    if-eqz v0, :cond_6

    .line 113
    iget-boolean v0, p0, Lcom/kingroot/kinguser/cf;->bl:Z

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(ZI)V

    .line 115
    :cond_6
    iget-short v0, p0, Lcom/kingroot/kinguser/cf;->lH:S

    if-eqz v0, :cond_7

    .line 116
    iget-short v0, p0, Lcom/kingroot/kinguser/cf;->lH:S

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(SI)V

    .line 118
    :cond_7
    return-void
.end method
