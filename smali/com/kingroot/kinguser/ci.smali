.class public final Lcom/kingroot/kinguser/ci;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# instance fields
.field public lR:Ljava/lang/String;

.field public lS:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/ci;->lR:Ljava/lang/String;

    .line 11
    const/4 v0, 0x1

    iput v0, p0, Lcom/kingroot/kinguser/ci;->lS:I

    .line 14
    return-void
.end method


# virtual methods
.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 25
    invoke-virtual {p1, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ci;->lR:Ljava/lang/String;

    .line 26
    iget v0, p0, Lcom/kingroot/kinguser/ci;->lS:I

    invoke-virtual {p1, v0, v2, v1}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/ci;->lS:I

    .line 27
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 17
    iget-object v0, p0, Lcom/kingroot/kinguser/ci;->lR:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 18
    iget v0, p0, Lcom/kingroot/kinguser/ci;->lS:I

    if-eq v0, v2, :cond_0

    .line 19
    iget v0, p0, Lcom/kingroot/kinguser/ci;->lS:I

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 21
    :cond_0
    return-void
.end method
