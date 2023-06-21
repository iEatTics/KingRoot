.class public final Lcom/kingroot/kinguser/ba;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# static fields
.field static kg:Lcom/kingroot/kinguser/aq;

.field static kh:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/az;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public jX:I

.field public kd:I

.field public ke:Lcom/kingroot/kinguser/aq;

.field public kf:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/az;",
            ">;"
        }
    .end annotation
.end field

.field public seqNo:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Lcom/kingroot/kinguser/aq;

    invoke-direct {v0}, Lcom/kingroot/kinguser/aq;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/ba;->kg:Lcom/kingroot/kinguser/aq;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/ba;->kh:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Lcom/kingroot/kinguser/az;

    invoke-direct {v0}, Lcom/kingroot/kinguser/az;-><init>()V

    .line 49
    sget-object v1, Lcom/kingroot/kinguser/ba;->kh:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    iput v0, p0, Lcom/kingroot/kinguser/ba;->seqNo:I

    .line 11
    iput v0, p0, Lcom/kingroot/kinguser/ba;->jX:I

    .line 12
    const/4 v0, 0x1

    iput v0, p0, Lcom/kingroot/kinguser/ba;->kd:I

    .line 13
    iput-object v1, p0, Lcom/kingroot/kinguser/ba;->ke:Lcom/kingroot/kinguser/aq;

    .line 14
    iput-object v1, p0, Lcom/kingroot/kinguser/ba;->kf:Ljava/util/ArrayList;

    .line 17
    return-void
.end method


# virtual methods
.method public final newInit()Lcom/qq/taf/jce/JceStruct;
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/kingroot/kinguser/ba;

    invoke-direct {v0}, Lcom/kingroot/kinguser/ba;-><init>()V

    return-object v0
.end method

.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 54
    iget v0, p0, Lcom/kingroot/kinguser/ba;->seqNo:I

    invoke-virtual {p1, v0, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/ba;->seqNo:I

    .line 55
    iget v0, p0, Lcom/kingroot/kinguser/ba;->jX:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/ba;->jX:I

    .line 56
    iget v0, p0, Lcom/kingroot/kinguser/ba;->kd:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/ba;->kd:I

    .line 57
    sget-object v0, Lcom/kingroot/kinguser/ba;->kg:Lcom/kingroot/kinguser/aq;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aq;

    iput-object v0, p0, Lcom/kingroot/kinguser/ba;->ke:Lcom/kingroot/kinguser/aq;

    .line 58
    sget-object v0, Lcom/kingroot/kinguser/ba;->kh:Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/kingroot/kinguser/ba;->kf:Ljava/util/ArrayList;

    .line 59
    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 24
    iget v0, p0, Lcom/kingroot/kinguser/ba;->seqNo:I

    if-eqz v0, :cond_0

    .line 25
    iget v0, p0, Lcom/kingroot/kinguser/ba;->seqNo:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 27
    :cond_0
    iget v0, p0, Lcom/kingroot/kinguser/ba;->jX:I

    if-eqz v0, :cond_1

    .line 28
    iget v0, p0, Lcom/kingroot/kinguser/ba;->jX:I

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 30
    :cond_1
    iget v0, p0, Lcom/kingroot/kinguser/ba;->kd:I

    if-eq v0, v2, :cond_2

    .line 31
    iget v0, p0, Lcom/kingroot/kinguser/ba;->kd:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 33
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/ba;->ke:Lcom/kingroot/kinguser/aq;

    if-eqz v0, :cond_3

    .line 34
    iget-object v0, p0, Lcom/kingroot/kinguser/ba;->ke:Lcom/kingroot/kinguser/aq;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 36
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/ba;->kf:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 37
    iget-object v0, p0, Lcom/kingroot/kinguser/ba;->kf:Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    .line 39
    :cond_4
    return-void
.end method
