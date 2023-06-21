.class public final Lcom/kingroot/kinguser/byo;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# instance fields
.field public bTW:J

.field public bTX:Ljava/lang/String;

.field public bUD:I

.field public bUE:F

.field public bUF:Ljava/lang/String;

.field public bUe:Ljava/lang/String;

.field public reserved:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/byo;->bTX:Ljava/lang/String;

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/byo;->bUD:I

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/byo;->bUE:F

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/byo;->bUe:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/byo;->bUF:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/byo;->reserved:Ljava/lang/String;

    .line 16
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingroot/kinguser/byo;->bTW:J

    .line 19
    return-void
.end method


# virtual methods
.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 41
    invoke-virtual {p1, v3, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/byo;->bTX:Ljava/lang/String;

    .line 42
    iget v0, p0, Lcom/kingroot/kinguser/byo;->bUD:I

    invoke-virtual {p1, v0, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/byo;->bUD:I

    .line 43
    iget v0, p0, Lcom/kingroot/kinguser/byo;->bUE:F

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(FIZ)F

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/byo;->bUE:F

    .line 44
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/byo;->bUe:Ljava/lang/String;

    .line 45
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/byo;->bUF:Ljava/lang/String;

    .line 46
    const/4 v0, 0x5

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/byo;->reserved:Ljava/lang/String;

    .line 47
    iget-wide v0, p0, Lcom/kingroot/kinguser/byo;->bTW:J

    const/4 v2, 0x6

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/byo;->bTW:J

    .line 48
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 4

    .prologue
    .line 22
    iget-object v0, p0, Lcom/kingroot/kinguser/byo;->bTX:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 23
    iget v0, p0, Lcom/kingroot/kinguser/byo;->bUD:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 24
    iget v0, p0, Lcom/kingroot/kinguser/byo;->bUE:F

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(FI)V

    .line 25
    iget-object v0, p0, Lcom/kingroot/kinguser/byo;->bUe:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/kingroot/kinguser/byo;->bUe:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/byo;->bUF:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 29
    iget-object v0, p0, Lcom/kingroot/kinguser/byo;->bUF:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/byo;->reserved:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 32
    iget-object v0, p0, Lcom/kingroot/kinguser/byo;->reserved:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 34
    :cond_2
    iget-wide v0, p0, Lcom/kingroot/kinguser/byo;->bTW:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 35
    iget-wide v0, p0, Lcom/kingroot/kinguser/byo;->bTW:J

    const/4 v2, 0x6

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 37
    :cond_3
    return-void
.end method
