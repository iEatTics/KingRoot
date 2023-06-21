.class public final Lcom/kingroot/kinguser/bsz;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# instance fields
.field public ret:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/bsz;->ret:I

    .line 13
    return-void
.end method


# virtual methods
.method public newInit()Lcom/qq/taf/jce/JceStruct;
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/kingroot/kinguser/bsz;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bsz;-><init>()V

    return-object v0
.end method

.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27
    iget v0, p0, Lcom/kingroot/kinguser/bsz;->ret:I

    invoke-virtual {p1, v0, v1, v1}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/bsz;->ret:I

    .line 28
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 20
    iget v0, p0, Lcom/kingroot/kinguser/bsz;->ret:I

    if-eqz v0, :cond_0

    .line 21
    iget v0, p0, Lcom/kingroot/kinguser/bsz;->ret:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 23
    :cond_0
    return-void
.end method
