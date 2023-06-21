.class public final Lcom/kingroot/kinguser/db;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# static fields
.field static mU:Lcom/kingroot/kinguser/bi;

.field static mV:Lcom/kingroot/kinguser/cc;


# instance fields
.field public mS:Lcom/kingroot/kinguser/bi;

.field public mT:Lcom/kingroot/kinguser/cc;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    iput-object v0, p0, Lcom/kingroot/kinguser/db;->mS:Lcom/kingroot/kinguser/bi;

    .line 11
    iput-object v0, p0, Lcom/kingroot/kinguser/db;->mT:Lcom/kingroot/kinguser/cc;

    .line 14
    return-void
.end method


# virtual methods
.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 29
    sget-object v0, Lcom/kingroot/kinguser/db;->mU:Lcom/kingroot/kinguser/bi;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/kingroot/kinguser/bi;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bi;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/db;->mU:Lcom/kingroot/kinguser/bi;

    .line 32
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/db;->mU:Lcom/kingroot/kinguser/bi;

    invoke-virtual {p1, v0, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bi;

    iput-object v0, p0, Lcom/kingroot/kinguser/db;->mS:Lcom/kingroot/kinguser/bi;

    .line 33
    sget-object v0, Lcom/kingroot/kinguser/db;->mV:Lcom/kingroot/kinguser/cc;

    if-nez v0, :cond_1

    .line 34
    new-instance v0, Lcom/kingroot/kinguser/cc;

    invoke-direct {v0}, Lcom/kingroot/kinguser/cc;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/db;->mV:Lcom/kingroot/kinguser/cc;

    .line 36
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/db;->mV:Lcom/kingroot/kinguser/cc;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/cc;

    iput-object v0, p0, Lcom/kingroot/kinguser/db;->mT:Lcom/kingroot/kinguser/cc;

    .line 37
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 17
    iget-object v0, p0, Lcom/kingroot/kinguser/db;->mS:Lcom/kingroot/kinguser/bi;

    if-eqz v0, :cond_0

    .line 18
    iget-object v0, p0, Lcom/kingroot/kinguser/db;->mS:Lcom/kingroot/kinguser/bi;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/db;->mT:Lcom/kingroot/kinguser/cc;

    if-eqz v0, :cond_1

    .line 21
    iget-object v0, p0, Lcom/kingroot/kinguser/db;->mT:Lcom/kingroot/kinguser/cc;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 23
    :cond_1
    return-void
.end method
