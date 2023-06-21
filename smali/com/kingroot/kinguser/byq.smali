.class public final Lcom/kingroot/kinguser/byq;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# static fields
.field static bUH:Lcom/kingroot/kinguser/byo;


# instance fields
.field public bUG:Lcom/kingroot/kinguser/byo;

.field public errorCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/byq;->errorCode:I

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/byq;->bUG:Lcom/kingroot/kinguser/byo;

    .line 14
    return-void
.end method


# virtual methods
.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 26
    iget v0, p0, Lcom/kingroot/kinguser/byq;->errorCode:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/byq;->errorCode:I

    .line 27
    sget-object v0, Lcom/kingroot/kinguser/byq;->bUH:Lcom/kingroot/kinguser/byo;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/kingroot/kinguser/byo;

    invoke-direct {v0}, Lcom/kingroot/kinguser/byo;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/byq;->bUH:Lcom/kingroot/kinguser/byo;

    .line 30
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/byq;->bUH:Lcom/kingroot/kinguser/byo;

    invoke-virtual {p1, v0, v2, v1}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/byo;

    iput-object v0, p0, Lcom/kingroot/kinguser/byq;->bUG:Lcom/kingroot/kinguser/byo;

    .line 31
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 17
    iget v0, p0, Lcom/kingroot/kinguser/byq;->errorCode:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 18
    iget-object v0, p0, Lcom/kingroot/kinguser/byq;->bUG:Lcom/kingroot/kinguser/byo;

    if-eqz v0, :cond_0

    .line 19
    iget-object v0, p0, Lcom/kingroot/kinguser/byq;->bUG:Lcom/kingroot/kinguser/byo;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 21
    :cond_0
    return-void
.end method
