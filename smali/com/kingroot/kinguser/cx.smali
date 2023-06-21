.class public final Lcom/kingroot/kinguser/cx;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# instance fields
.field public lP:I

.field public mE:I

.field public mF:I

.field public mH:I

.field public mI:Ljava/lang/String;

.field public mJ:Ljava/lang/String;

.field public mK:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    iput v0, p0, Lcom/kingroot/kinguser/cx;->lP:I

    .line 11
    iput v0, p0, Lcom/kingroot/kinguser/cx;->mE:I

    .line 12
    iput v0, p0, Lcom/kingroot/kinguser/cx;->mF:I

    .line 13
    iput v0, p0, Lcom/kingroot/kinguser/cx;->mH:I

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/cx;->mI:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/cx;->mJ:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/cx;->mK:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    iget v0, p0, Lcom/kingroot/kinguser/cx;->lP:I

    invoke-virtual {p1, v0, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/cx;->lP:I

    .line 42
    iget v0, p0, Lcom/kingroot/kinguser/cx;->mE:I

    invoke-virtual {p1, v0, v3, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/cx;->mE:I

    .line 43
    iget v0, p0, Lcom/kingroot/kinguser/cx;->mF:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/cx;->mF:I

    .line 44
    iget v0, p0, Lcom/kingroot/kinguser/cx;->mH:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/cx;->mH:I

    .line 45
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/cx;->mI:Ljava/lang/String;

    .line 46
    const/4 v0, 0x5

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/cx;->mJ:Ljava/lang/String;

    .line 47
    const/4 v0, 0x6

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/cx;->mK:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 22
    iget v0, p0, Lcom/kingroot/kinguser/cx;->lP:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 23
    iget v0, p0, Lcom/kingroot/kinguser/cx;->mE:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 24
    iget v0, p0, Lcom/kingroot/kinguser/cx;->mF:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 25
    iget v0, p0, Lcom/kingroot/kinguser/cx;->mH:I

    if-eqz v0, :cond_0

    .line 26
    iget v0, p0, Lcom/kingroot/kinguser/cx;->mH:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cx;->mI:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 29
    iget-object v0, p0, Lcom/kingroot/kinguser/cx;->mI:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/cx;->mJ:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 32
    iget-object v0, p0, Lcom/kingroot/kinguser/cx;->mJ:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 34
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/cx;->mK:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 35
    iget-object v0, p0, Lcom/kingroot/kinguser/cx;->mK:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 37
    :cond_3
    return-void
.end method
