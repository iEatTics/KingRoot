.class public final Lcom/kingroot/kinguser/bh;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# static fields
.field static kn:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/bg;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public jX:I

.field public km:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/bg;",
            ">;"
        }
    .end annotation
.end field

.field public seqNo:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bh;->kn:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Lcom/kingroot/kinguser/bg;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bg;-><init>()V

    .line 38
    sget-object v1, Lcom/kingroot/kinguser/bh;->kn:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    iput v0, p0, Lcom/kingroot/kinguser/bh;->seqNo:I

    .line 11
    iput v0, p0, Lcom/kingroot/kinguser/bh;->jX:I

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/bh;->km:Ljava/util/ArrayList;

    .line 15
    return-void
.end method


# virtual methods
.method public final newInit()Lcom/qq/taf/jce/JceStruct;
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/kingroot/kinguser/bh;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bh;-><init>()V

    return-object v0
.end method

.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 43
    iget v0, p0, Lcom/kingroot/kinguser/bh;->seqNo:I

    invoke-virtual {p1, v0, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/bh;->seqNo:I

    .line 44
    iget v0, p0, Lcom/kingroot/kinguser/bh;->jX:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/bh;->jX:I

    .line 45
    sget-object v0, Lcom/kingroot/kinguser/bh;->kn:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/kingroot/kinguser/bh;->km:Ljava/util/ArrayList;

    .line 46
    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 22
    iget v0, p0, Lcom/kingroot/kinguser/bh;->seqNo:I

    if-eqz v0, :cond_0

    .line 23
    iget v0, p0, Lcom/kingroot/kinguser/bh;->seqNo:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 25
    :cond_0
    iget v0, p0, Lcom/kingroot/kinguser/bh;->jX:I

    if-eqz v0, :cond_1

    .line 26
    iget v0, p0, Lcom/kingroot/kinguser/bh;->jX:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 28
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bh;->km:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 29
    iget-object v0, p0, Lcom/kingroot/kinguser/bh;->km:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    .line 31
    :cond_2
    return-void
.end method
