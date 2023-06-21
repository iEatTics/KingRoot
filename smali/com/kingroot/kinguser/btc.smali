.class public final Lcom/kingroot/kinguser/btc;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# static fields
.field static bME:Lcom/kingroot/kinguser/bss;

.field static bMF:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/bsy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bJA:I

.field public bLT:I

.field public bLU:I

.field public bMB:Lcom/kingroot/kinguser/bss;

.field public bMC:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/bsy;",
            ">;"
        }
    .end annotation
.end field

.field public bMD:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    new-instance v0, Lcom/kingroot/kinguser/bss;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bss;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/btc;->bME:Lcom/kingroot/kinguser/bss;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/btc;->bMF:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Lcom/kingroot/kinguser/bsy;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bsy;-><init>()V

    .line 53
    sget-object v1, Lcom/kingroot/kinguser/btc;->bMF:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 17
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    iput-object v2, p0, Lcom/kingroot/kinguser/btc;->bMB:Lcom/kingroot/kinguser/bss;

    .line 11
    iput-object v2, p0, Lcom/kingroot/kinguser/btc;->bMC:Ljava/util/ArrayList;

    .line 12
    iput v1, p0, Lcom/kingroot/kinguser/btc;->bJA:I

    .line 13
    iput v0, p0, Lcom/kingroot/kinguser/btc;->bLT:I

    .line 14
    iput v0, p0, Lcom/kingroot/kinguser/btc;->bLU:I

    .line 15
    iput v1, p0, Lcom/kingroot/kinguser/btc;->bMD:I

    .line 18
    return-void
.end method


# virtual methods
.method public newInit()Lcom/qq/taf/jce/JceStruct;
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/kingroot/kinguser/btc;

    invoke-direct {v0}, Lcom/kingroot/kinguser/btc;-><init>()V

    return-object v0
.end method

.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 58
    sget-object v0, Lcom/kingroot/kinguser/btc;->bME:Lcom/kingroot/kinguser/bss;

    invoke-virtual {p1, v0, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bss;

    iput-object v0, p0, Lcom/kingroot/kinguser/btc;->bMB:Lcom/kingroot/kinguser/bss;

    .line 59
    sget-object v0, Lcom/kingroot/kinguser/btc;->bMF:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/kingroot/kinguser/btc;->bMC:Ljava/util/ArrayList;

    .line 60
    iget v0, p0, Lcom/kingroot/kinguser/btc;->bJA:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/btc;->bJA:I

    .line 61
    iget v0, p0, Lcom/kingroot/kinguser/btc;->bLT:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/btc;->bLT:I

    .line 62
    iget v0, p0, Lcom/kingroot/kinguser/btc;->bLU:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/btc;->bLU:I

    .line 63
    iget v0, p0, Lcom/kingroot/kinguser/btc;->bMD:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/btc;->bMD:I

    .line 64
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    const-string v1, "SecureAdvertise [advertise="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    iget-object v1, p0, Lcom/kingroot/kinguser/btc;->bMB:Lcom/kingroot/kinguser/bss;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    const-string v1, ", vecNotifyBars="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    iget-object v1, p0, Lcom/kingroot/kinguser/btc;->bMC:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    const-string v1, ", percentSpent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    iget v1, p0, Lcom/kingroot/kinguser/btc;->bJA:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    const-string v1, ", displayMaxTimes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget v1, p0, Lcom/kingroot/kinguser/btc;->bLT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    const-string v1, ", clickMaxTimes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    iget v1, p0, Lcom/kingroot/kinguser/btc;->bLU:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    const-string v1, ", displayStartTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    iget v1, p0, Lcom/kingroot/kinguser/btc;->bMD:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 25
    iget-object v0, p0, Lcom/kingroot/kinguser/btc;->bMB:Lcom/kingroot/kinguser/bss;

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/kingroot/kinguser/btc;->bMB:Lcom/kingroot/kinguser/bss;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/btc;->bMC:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 29
    iget-object v0, p0, Lcom/kingroot/kinguser/btc;->bMC:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    .line 31
    :cond_1
    iget v0, p0, Lcom/kingroot/kinguser/btc;->bJA:I

    if-eqz v0, :cond_2

    .line 32
    iget v0, p0, Lcom/kingroot/kinguser/btc;->bJA:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 34
    :cond_2
    iget v0, p0, Lcom/kingroot/kinguser/btc;->bLT:I

    if-eq v0, v2, :cond_3

    .line 35
    iget v0, p0, Lcom/kingroot/kinguser/btc;->bLT:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 37
    :cond_3
    iget v0, p0, Lcom/kingroot/kinguser/btc;->bLU:I

    if-eq v0, v2, :cond_4

    .line 38
    iget v0, p0, Lcom/kingroot/kinguser/btc;->bLU:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 40
    :cond_4
    iget v0, p0, Lcom/kingroot/kinguser/btc;->bMD:I

    if-eqz v0, :cond_5

    .line 41
    iget v0, p0, Lcom/kingroot/kinguser/btc;->bMD:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 43
    :cond_5
    return-void
.end method
