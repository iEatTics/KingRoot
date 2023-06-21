.class public final Lcom/kingroot/kinguser/btb;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# static fields
.field static bMA:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/btc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bJp:I

.field public bMz:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/btc;",
            ">;"
        }
    .end annotation
.end field

.field public gc:Ljava/lang/String;

.field public ret:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/btb;->bMA:Ljava/util/ArrayList;

    .line 41
    new-instance v0, Lcom/kingroot/kinguser/btc;

    invoke-direct {v0}, Lcom/kingroot/kinguser/btc;-><init>()V

    .line 42
    sget-object v1, Lcom/kingroot/kinguser/btb;->bMA:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 15
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    iput v1, p0, Lcom/kingroot/kinguser/btb;->ret:I

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/btb;->gc:Ljava/lang/String;

    .line 12
    iput v1, p0, Lcom/kingroot/kinguser/btb;->bJp:I

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/btb;->bMz:Ljava/util/ArrayList;

    .line 16
    return-void
.end method


# virtual methods
.method public newInit()Lcom/qq/taf/jce/JceStruct;
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/kingroot/kinguser/btb;

    invoke-direct {v0}, Lcom/kingroot/kinguser/btb;-><init>()V

    return-object v0
.end method

.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 47
    iget v0, p0, Lcom/kingroot/kinguser/btb;->ret:I

    invoke-virtual {p1, v0, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/btb;->ret:I

    .line 48
    const/4 v0, 0x1

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/btb;->gc:Ljava/lang/String;

    .line 49
    iget v0, p0, Lcom/kingroot/kinguser/btb;->bJp:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/btb;->bJp:I

    .line 50
    sget-object v0, Lcom/kingroot/kinguser/btb;->bMA:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/kingroot/kinguser/btb;->bMz:Ljava/util/ArrayList;

    .line 51
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 23
    iget v0, p0, Lcom/kingroot/kinguser/btb;->ret:I

    if-eqz v0, :cond_0

    .line 24
    iget v0, p0, Lcom/kingroot/kinguser/btb;->ret:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/btb;->gc:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 27
    iget-object v0, p0, Lcom/kingroot/kinguser/btb;->gc:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 29
    :cond_1
    iget v0, p0, Lcom/kingroot/kinguser/btb;->bJp:I

    if-eqz v0, :cond_2

    .line 30
    iget v0, p0, Lcom/kingroot/kinguser/btb;->bJp:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 32
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/btb;->bMz:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 33
    iget-object v0, p0, Lcom/kingroot/kinguser/btb;->bMz:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    .line 35
    :cond_3
    return-void
.end method
