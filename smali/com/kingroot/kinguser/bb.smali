.class public final Lcom/kingroot/kinguser/bb;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# instance fields
.field public ki:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/bb;->ki:I

    .line 13
    return-void
.end method


# virtual methods
.method public final newInit()Lcom/qq/taf/jce/JceStruct;
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/kingroot/kinguser/bb;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bb;-><init>()V

    return-object v0
.end method

.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    .prologue
    .line 25
    iget v0, p0, Lcom/kingroot/kinguser/bb;->ki:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/bb;->ki:I

    .line 26
    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 20
    iget v0, p0, Lcom/kingroot/kinguser/bb;->ki:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 21
    return-void
.end method
