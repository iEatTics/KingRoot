.class public final Lcom/kingroot/kinguser/h;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static ea:[B

.field static er:[B

.field static es:[B


# instance fields
.field public dX:[B

.field public el:Z

.field public em:[B

.field public en:[B

.field public eo:I

.field public ep:J

.field public eq:I

.field public fileId:I

.field public fileSize:I

.field public timestamp:I

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 22
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    iput v2, p0, Lcom/kingroot/kinguser/h;->fileId:I

    .line 11
    iput-object v1, p0, Lcom/kingroot/kinguser/h;->dX:[B

    .line 12
    iput v2, p0, Lcom/kingroot/kinguser/h;->timestamp:I

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/h;->url:Ljava/lang/String;

    .line 14
    iput-boolean v2, p0, Lcom/kingroot/kinguser/h;->el:Z

    .line 15
    iput-object v1, p0, Lcom/kingroot/kinguser/h;->em:[B

    .line 16
    iput-object v1, p0, Lcom/kingroot/kinguser/h;->en:[B

    .line 17
    iput v2, p0, Lcom/kingroot/kinguser/h;->eo:I

    .line 18
    iput v2, p0, Lcom/kingroot/kinguser/h;->fileSize:I

    .line 19
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingroot/kinguser/h;->ep:J

    .line 20
    iput v2, p0, Lcom/kingroot/kinguser/h;->eq:I

    .line 23
    return-void
.end method


# virtual methods
.method public Y()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/kingroot/kinguser/h;->fileId:I

    return v0
.end method

.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 60
    iget v0, p0, Lcom/kingroot/kinguser/h;->fileId:I

    invoke-virtual {p1, v0, v3, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/h;->fileId:I

    .line 61
    sget-object v0, Lcom/kingroot/kinguser/h;->ea:[B

    if-nez v0, :cond_0

    .line 62
    new-array v0, v2, [B

    check-cast v0, [B

    sput-object v0, Lcom/kingroot/kinguser/h;->ea:[B

    .line 64
    sget-object v0, Lcom/kingroot/kinguser/h;->ea:[B

    check-cast v0, [B

    aput-byte v3, v0, v3

    .line 66
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/h;->ea:[B

    invoke-virtual {p1, v0, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read([BIZ)[B

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/kingroot/kinguser/h;->dX:[B

    .line 67
    iget v0, p0, Lcom/kingroot/kinguser/h;->timestamp:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/h;->timestamp:I

    .line 68
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/h;->url:Ljava/lang/String;

    .line 69
    iget-boolean v0, p0, Lcom/kingroot/kinguser/h;->el:Z

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(ZIZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/h;->el:Z

    .line 70
    sget-object v0, Lcom/kingroot/kinguser/h;->er:[B

    if-nez v0, :cond_1

    .line 71
    new-array v0, v2, [B

    check-cast v0, [B

    sput-object v0, Lcom/kingroot/kinguser/h;->er:[B

    .line 73
    sget-object v0, Lcom/kingroot/kinguser/h;->er:[B

    check-cast v0, [B

    aput-byte v3, v0, v3

    .line 75
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/h;->er:[B

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read([BIZ)[B

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/kingroot/kinguser/h;->em:[B

    .line 76
    sget-object v0, Lcom/kingroot/kinguser/h;->es:[B

    if-nez v0, :cond_2

    .line 77
    new-array v0, v2, [B

    check-cast v0, [B

    sput-object v0, Lcom/kingroot/kinguser/h;->es:[B

    .line 79
    sget-object v0, Lcom/kingroot/kinguser/h;->es:[B

    check-cast v0, [B

    aput-byte v3, v0, v3

    .line 81
    :cond_2
    sget-object v0, Lcom/kingroot/kinguser/h;->es:[B

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read([BIZ)[B

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/kingroot/kinguser/h;->en:[B

    .line 82
    iget v0, p0, Lcom/kingroot/kinguser/h;->eo:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/h;->eo:I

    .line 83
    iget v0, p0, Lcom/kingroot/kinguser/h;->fileSize:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/h;->fileSize:I

    .line 84
    iget-wide v0, p0, Lcom/kingroot/kinguser/h;->ep:J

    const/16 v2, 0x9

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/h;->ep:J

    .line 85
    iget v0, p0, Lcom/kingroot/kinguser/h;->eq:I

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/h;->eq:I

    .line 86
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 4

    .prologue
    .line 26
    iget v0, p0, Lcom/kingroot/kinguser/h;->fileId:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 27
    iget-object v0, p0, Lcom/kingroot/kinguser/h;->dX:[B

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write([BI)V

    .line 28
    iget v0, p0, Lcom/kingroot/kinguser/h;->timestamp:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 29
    iget-object v0, p0, Lcom/kingroot/kinguser/h;->url:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/kingroot/kinguser/h;->url:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 32
    :cond_0
    iget-boolean v0, p0, Lcom/kingroot/kinguser/h;->el:Z

    if-eqz v0, :cond_1

    .line 33
    iget-boolean v0, p0, Lcom/kingroot/kinguser/h;->el:Z

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(ZI)V

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/h;->em:[B

    if-eqz v0, :cond_2

    .line 36
    iget-object v0, p0, Lcom/kingroot/kinguser/h;->em:[B

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write([BI)V

    .line 38
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/h;->en:[B

    if-eqz v0, :cond_3

    .line 39
    iget-object v0, p0, Lcom/kingroot/kinguser/h;->en:[B

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write([BI)V

    .line 41
    :cond_3
    iget v0, p0, Lcom/kingroot/kinguser/h;->eo:I

    if-eqz v0, :cond_4

    .line 42
    iget v0, p0, Lcom/kingroot/kinguser/h;->eo:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 44
    :cond_4
    iget v0, p0, Lcom/kingroot/kinguser/h;->fileSize:I

    if-eqz v0, :cond_5

    .line 45
    iget v0, p0, Lcom/kingroot/kinguser/h;->fileSize:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 47
    :cond_5
    iget-wide v0, p0, Lcom/kingroot/kinguser/h;->ep:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    .line 48
    iget-wide v0, p0, Lcom/kingroot/kinguser/h;->ep:J

    const/16 v2, 0x9

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 50
    :cond_6
    iget v0, p0, Lcom/kingroot/kinguser/h;->eq:I

    if-eqz v0, :cond_7

    .line 51
    iget v0, p0, Lcom/kingroot/kinguser/h;->eq:I

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 53
    :cond_7
    return-void
.end method
