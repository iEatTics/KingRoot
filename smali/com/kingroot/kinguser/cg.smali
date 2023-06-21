.class public final Lcom/kingroot/kinguser/cg;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static lQ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field


# instance fields
.field public lJ:I

.field public lK:I

.field public lL:I

.field public lM:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field public lN:I

.field public lO:Z

.field public lP:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 73
    iput v1, p0, Lcom/kingroot/kinguser/cg;->lJ:I

    .line 74
    iput v1, p0, Lcom/kingroot/kinguser/cg;->lK:I

    .line 75
    iput v1, p0, Lcom/kingroot/kinguser/cg;->lL:I

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/cg;->lM:Ljava/util/ArrayList;

    .line 77
    iput v1, p0, Lcom/kingroot/kinguser/cg;->lN:I

    .line 78
    iput-boolean v1, p0, Lcom/kingroot/kinguser/cg;->lO:Z

    .line 79
    iput v1, p0, Lcom/kingroot/kinguser/cg;->lP:I

    .line 82
    return-void
.end method


# virtual methods
.method public b(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .line 46
    iput-object p1, p0, Lcom/kingroot/kinguser/cg;->lM:Ljava/util/ArrayList;

    .line 47
    return-void
.end method

.method public display(Ljava/lang/StringBuilder;I)V
    .locals 0

    .prologue
    .line 123
    return-void
.end method

.method public k(I)V
    .locals 0

    .prologue
    .line 22
    iput p1, p0, Lcom/kingroot/kinguser/cg;->lJ:I

    .line 23
    return-void
.end method

.method public l(I)V
    .locals 0

    .prologue
    .line 30
    iput p1, p0, Lcom/kingroot/kinguser/cg;->lK:I

    .line 31
    return-void
.end method

.method public m(I)V
    .locals 0

    .prologue
    .line 38
    iput p1, p0, Lcom/kingroot/kinguser/cg;->lL:I

    .line 39
    return-void
.end method

.method public n(I)V
    .locals 0

    .prologue
    .line 54
    iput p1, p0, Lcom/kingroot/kinguser/cg;->lN:I

    .line 55
    return-void
.end method

.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 105
    iget v0, p0, Lcom/kingroot/kinguser/cg;->lJ:I

    invoke-virtual {p1, v0, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/cg;->lJ:I

    .line 106
    iget v0, p0, Lcom/kingroot/kinguser/cg;->lK:I

    invoke-virtual {p1, v0, v3, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/cg;->lK:I

    .line 107
    iget v0, p0, Lcom/kingroot/kinguser/cg;->lL:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/cg;->lL:I

    .line 108
    sget-object v0, Lcom/kingroot/kinguser/cg;->lQ:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/cg;->lQ:Ljava/util/ArrayList;

    .line 110
    new-array v0, v3, [B

    check-cast v0, [B

    move-object v1, v0

    .line 112
    check-cast v1, [B

    aput-byte v2, v1, v2

    .line 113
    sget-object v1, Lcom/kingroot/kinguser/cg;->lQ:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/cg;->lQ:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/kingroot/kinguser/cg;->lM:Ljava/util/ArrayList;

    .line 116
    iget v0, p0, Lcom/kingroot/kinguser/cg;->lN:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/cg;->lN:I

    .line 117
    iget-boolean v0, p0, Lcom/kingroot/kinguser/cg;->lO:Z

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(ZIZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/cg;->lO:Z

    .line 118
    iget v0, p0, Lcom/kingroot/kinguser/cg;->lP:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/cg;->lP:I

    .line 119
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 88
    iget v0, p0, Lcom/kingroot/kinguser/cg;->lJ:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 89
    iget v0, p0, Lcom/kingroot/kinguser/cg;->lK:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 90
    iget v0, p0, Lcom/kingroot/kinguser/cg;->lL:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 91
    iget-object v0, p0, Lcom/kingroot/kinguser/cg;->lM:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    .line 92
    iget v0, p0, Lcom/kingroot/kinguser/cg;->lN:I

    if-eqz v0, :cond_0

    .line 93
    iget v0, p0, Lcom/kingroot/kinguser/cg;->lN:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 95
    :cond_0
    iget-boolean v0, p0, Lcom/kingroot/kinguser/cg;->lO:Z

    if-eqz v0, :cond_1

    .line 96
    iget-boolean v0, p0, Lcom/kingroot/kinguser/cg;->lO:Z

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(ZI)V

    .line 98
    :cond_1
    iget v0, p0, Lcom/kingroot/kinguser/cg;->lP:I

    if-eqz v0, :cond_2

    .line 99
    iget v0, p0, Lcom/kingroot/kinguser/cg;->lP:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 101
    :cond_2
    return-void
.end method
