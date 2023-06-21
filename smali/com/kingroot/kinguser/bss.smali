.class public final Lcom/kingroot/kinguser/bss;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# static fields
.field static bMa:[B

.field static bMi:Lcom/kingroot/kinguser/bsw;

.field static bMj:Lcom/kingroot/kinguser/bsv;

.field static bMk:Lcom/kingroot/kinguser/bsx;


# instance fields
.field public bLn:[B

.field public bMd:I

.field public bMe:Lcom/kingroot/kinguser/bsw;

.field public bMf:Lcom/kingroot/kinguser/bsv;

.field public bMg:J

.field public bMh:Lcom/kingroot/kinguser/bsx;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    new-instance v0, Lcom/kingroot/kinguser/bsw;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bsw;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bss;->bMi:Lcom/kingroot/kinguser/bsw;

    .line 55
    new-instance v0, Lcom/kingroot/kinguser/bsv;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bsv;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bss;->bMj:Lcom/kingroot/kinguser/bsv;

    .line 57
    const/4 v0, 0x1

    new-array v0, v0, [B

    sput-object v0, Lcom/kingroot/kinguser/bss;->bMa:[B

    .line 59
    sget-object v0, Lcom/kingroot/kinguser/bss;->bMa:[B

    aput-byte v1, v0, v1

    .line 61
    new-instance v0, Lcom/kingroot/kinguser/bsx;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bsx;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bss;->bMk:Lcom/kingroot/kinguser/bsx;

    .line 63
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 19
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/bss;->bMd:I

    .line 13
    iput-object v2, p0, Lcom/kingroot/kinguser/bss;->bMe:Lcom/kingroot/kinguser/bsw;

    .line 14
    iput-object v2, p0, Lcom/kingroot/kinguser/bss;->bMf:Lcom/kingroot/kinguser/bsv;

    .line 15
    iput-object v2, p0, Lcom/kingroot/kinguser/bss;->bLn:[B

    .line 16
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingroot/kinguser/bss;->bMg:J

    .line 17
    iput-object v2, p0, Lcom/kingroot/kinguser/bss;->bMh:Lcom/kingroot/kinguser/bsx;

    .line 20
    return-void
.end method


# virtual methods
.method public newInit()Lcom/qq/taf/jce/JceStruct;
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/kingroot/kinguser/bss;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bss;-><init>()V

    return-object v0
.end method

.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 66
    iget v0, p0, Lcom/kingroot/kinguser/bss;->bMd:I

    invoke-virtual {p1, v0, v3, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/bss;->bMd:I

    .line 67
    sget-object v0, Lcom/kingroot/kinguser/bss;->bMi:Lcom/kingroot/kinguser/bsw;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bsw;

    iput-object v0, p0, Lcom/kingroot/kinguser/bss;->bMe:Lcom/kingroot/kinguser/bsw;

    .line 68
    sget-object v0, Lcom/kingroot/kinguser/bss;->bMj:Lcom/kingroot/kinguser/bsv;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bsv;

    iput-object v0, p0, Lcom/kingroot/kinguser/bss;->bMf:Lcom/kingroot/kinguser/bsv;

    .line 69
    sget-object v0, Lcom/kingroot/kinguser/bss;->bMa:[B

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read([BIZ)[B

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bss;->bLn:[B

    .line 70
    iget-wide v0, p0, Lcom/kingroot/kinguser/bss;->bMg:J

    const/4 v2, 0x4

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/bss;->bMg:J

    .line 71
    sget-object v0, Lcom/kingroot/kinguser/bss;->bMk:Lcom/kingroot/kinguser/bsx;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bsx;

    iput-object v0, p0, Lcom/kingroot/kinguser/bss;->bMh:Lcom/kingroot/kinguser/bsx;

    .line 72
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    const-string v1, "Advertise [expireTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    iget v1, p0, Lcom/kingroot/kinguser/bss;->bMd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    const-string v1, ", displayInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    iget-object v1, p0, Lcom/kingroot/kinguser/bss;->bMe:Lcom/kingroot/kinguser/bsw;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    const-string v1, ", content="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    iget-object v1, p0, Lcom/kingroot/kinguser/bss;->bMf:Lcom/kingroot/kinguser/bsv;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    const-string v1, ", context="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    iget-object v1, p0, Lcom/kingroot/kinguser/bss;->bLn:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    const-string v1, ", advId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget-wide v2, p0, Lcom/kingroot/kinguser/bss;->bMg:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 87
    const-string v1, ", displayCtrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    iget-object v1, p0, Lcom/kingroot/kinguser/bss;->bMh:Lcom/kingroot/kinguser/bsx;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 89
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 4

    .prologue
    .line 27
    iget v0, p0, Lcom/kingroot/kinguser/bss;->bMd:I

    if-eqz v0, :cond_0

    .line 28
    iget v0, p0, Lcom/kingroot/kinguser/bss;->bMd:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bss;->bMe:Lcom/kingroot/kinguser/bsw;

    if-eqz v0, :cond_1

    .line 31
    iget-object v0, p0, Lcom/kingroot/kinguser/bss;->bMe:Lcom/kingroot/kinguser/bsw;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bss;->bMf:Lcom/kingroot/kinguser/bsv;

    if-eqz v0, :cond_2

    .line 34
    iget-object v0, p0, Lcom/kingroot/kinguser/bss;->bMf:Lcom/kingroot/kinguser/bsv;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 36
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/bss;->bLn:[B

    if-eqz v0, :cond_3

    .line 37
    iget-object v0, p0, Lcom/kingroot/kinguser/bss;->bLn:[B

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write([BI)V

    .line 39
    :cond_3
    iget-wide v0, p0, Lcom/kingroot/kinguser/bss;->bMg:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    .line 40
    iget-wide v0, p0, Lcom/kingroot/kinguser/bss;->bMg:J

    const/4 v2, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 42
    :cond_4
    iget-object v0, p0, Lcom/kingroot/kinguser/bss;->bMh:Lcom/kingroot/kinguser/bsx;

    if-eqz v0, :cond_5

    .line 43
    iget-object v0, p0, Lcom/kingroot/kinguser/bss;->bMh:Lcom/kingroot/kinguser/bsx;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 45
    :cond_5
    return-void
.end method
