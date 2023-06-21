.class public final Lcom/kingroot/kinguser/aq;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# instance fields
.field public dS:I

.field public hT:I

.field public ii:I

.field public it:Ljava/lang/String;

.field public iu:Ljava/lang/String;

.field public iv:Ljava/lang/String;

.field public iw:I

.field public ix:J

.field public iy:I

.field public iz:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 21
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    const/4 v0, 0x2

    iput v0, p0, Lcom/kingroot/kinguser/aq;->hT:I

    .line 11
    iput v2, p0, Lcom/kingroot/kinguser/aq;->ii:I

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/aq;->it:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/aq;->iu:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/aq;->iv:Ljava/lang/String;

    .line 15
    iput v2, p0, Lcom/kingroot/kinguser/aq;->dS:I

    .line 16
    iput v2, p0, Lcom/kingroot/kinguser/aq;->iw:I

    .line 17
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingroot/kinguser/aq;->ix:J

    .line 18
    iput v2, p0, Lcom/kingroot/kinguser/aq;->iy:I

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/aq;->iz:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public final newInit()Lcom/qq/taf/jce/JceStruct;
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/kingroot/kinguser/aq;

    invoke-direct {v0}, Lcom/kingroot/kinguser/aq;-><init>()V

    return-object v0
.end method

.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 59
    iget v0, p0, Lcom/kingroot/kinguser/aq;->hT:I

    invoke-virtual {p1, v0, v3, v1}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/aq;->hT:I

    .line 60
    iget v0, p0, Lcom/kingroot/kinguser/aq;->ii:I

    invoke-virtual {p1, v0, v1, v1}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/aq;->ii:I

    .line 61
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/aq;->it:Ljava/lang/String;

    .line 62
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/aq;->iu:Ljava/lang/String;

    .line 63
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/aq;->iv:Ljava/lang/String;

    .line 64
    iget v0, p0, Lcom/kingroot/kinguser/aq;->dS:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/aq;->dS:I

    .line 65
    iget v0, p0, Lcom/kingroot/kinguser/aq;->iw:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/aq;->iw:I

    .line 66
    iget-wide v0, p0, Lcom/kingroot/kinguser/aq;->ix:J

    const/4 v2, 0x7

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/aq;->ix:J

    .line 67
    iget v0, p0, Lcom/kingroot/kinguser/aq;->iy:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/aq;->iy:I

    .line 68
    const/16 v0, 0x9

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/aq;->iz:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 4

    .prologue
    .line 29
    iget v0, p0, Lcom/kingroot/kinguser/aq;->hT:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 30
    iget v0, p0, Lcom/kingroot/kinguser/aq;->ii:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 31
    iget-object v0, p0, Lcom/kingroot/kinguser/aq;->it:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/kingroot/kinguser/aq;->it:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/aq;->iu:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 35
    iget-object v0, p0, Lcom/kingroot/kinguser/aq;->iu:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/aq;->iv:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 38
    iget-object v0, p0, Lcom/kingroot/kinguser/aq;->iv:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 40
    :cond_2
    iget v0, p0, Lcom/kingroot/kinguser/aq;->dS:I

    if-eqz v0, :cond_3

    .line 41
    iget v0, p0, Lcom/kingroot/kinguser/aq;->dS:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 43
    :cond_3
    iget v0, p0, Lcom/kingroot/kinguser/aq;->iw:I

    if-eqz v0, :cond_4

    .line 44
    iget v0, p0, Lcom/kingroot/kinguser/aq;->iw:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 46
    :cond_4
    iget-wide v0, p0, Lcom/kingroot/kinguser/aq;->ix:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    .line 47
    iget-wide v0, p0, Lcom/kingroot/kinguser/aq;->ix:J

    const/4 v2, 0x7

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 49
    :cond_5
    iget v0, p0, Lcom/kingroot/kinguser/aq;->iy:I

    if-eqz v0, :cond_6

    .line 50
    iget v0, p0, Lcom/kingroot/kinguser/aq;->iy:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 52
    :cond_6
    iget-object v0, p0, Lcom/kingroot/kinguser/aq;->iz:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 53
    iget-object v0, p0, Lcom/kingroot/kinguser/aq;->iz:Ljava/lang/String;

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 55
    :cond_7
    return-void
.end method
