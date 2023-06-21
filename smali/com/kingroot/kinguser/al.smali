.class public final Lcom/kingroot/kinguser/al;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# static fields
.field static ht:Lcom/kingroot/kinguser/am;


# instance fields
.field public hr:I

.field public hs:Lcom/kingroot/kinguser/am;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/kingroot/kinguser/am;

    invoke-direct {v0}, Lcom/kingroot/kinguser/am;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/al;->ht:Lcom/kingroot/kinguser/am;

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/al;->hr:I

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/al;->hs:Lcom/kingroot/kinguser/am;

    .line 14
    return-void
.end method


# virtual methods
.method public final newInit()Lcom/qq/taf/jce/JceStruct;
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/kingroot/kinguser/al;

    invoke-direct {v0}, Lcom/kingroot/kinguser/al;-><init>()V

    return-object v0
.end method

.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 35
    iget v0, p0, Lcom/kingroot/kinguser/al;->hr:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/al;->hr:I

    .line 36
    sget-object v0, Lcom/kingroot/kinguser/al;->ht:Lcom/kingroot/kinguser/am;

    invoke-virtual {p1, v0, v2, v1}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/am;

    iput-object v0, p0, Lcom/kingroot/kinguser/al;->hs:Lcom/kingroot/kinguser/am;

    .line 37
    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 21
    iget v0, p0, Lcom/kingroot/kinguser/al;->hr:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 22
    iget-object v0, p0, Lcom/kingroot/kinguser/al;->hs:Lcom/kingroot/kinguser/am;

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/kingroot/kinguser/al;->hs:Lcom/kingroot/kinguser/am;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 25
    :cond_0
    return-void
.end method
