.class public final Lcom/kingroot/kinguser/byj;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# instance fields
.field public bJE:I

.field public bUr:I

.field public bUs:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 14
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    iput v2, p0, Lcom/kingroot/kinguser/byj;->bUr:I

    .line 11
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingroot/kinguser/byj;->bUs:J

    .line 12
    iput v2, p0, Lcom/kingroot/kinguser/byj;->bJE:I

    .line 15
    return-void
.end method


# virtual methods
.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 25
    iget v0, p0, Lcom/kingroot/kinguser/byj;->bUr:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/byj;->bUr:I

    .line 26
    iget-wide v0, p0, Lcom/kingroot/kinguser/byj;->bUs:J

    invoke-virtual {p1, v0, v1, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/byj;->bUs:J

    .line 27
    iget v0, p0, Lcom/kingroot/kinguser/byj;->bJE:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/byj;->bJE:I

    .line 28
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 3

    .prologue
    .line 18
    iget v0, p0, Lcom/kingroot/kinguser/byj;->bUr:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 19
    iget-wide v0, p0, Lcom/kingroot/kinguser/byj;->bUs:J

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 20
    iget v0, p0, Lcom/kingroot/kinguser/byj;->bJE:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 21
    return-void
.end method
