.class public final Lcom/kingroot/kinguser/e;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# static fields
.field static dW:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/f;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public dU:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/f;",
            ">;"
        }
    .end annotation
.end field

.field public dV:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/e;->dU:Ljava/util/ArrayList;

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/e;->dV:I

    .line 14
    return-void
.end method


# virtual methods
.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    sget-object v0, Lcom/kingroot/kinguser/e;->dW:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/e;->dW:Ljava/util/ArrayList;

    .line 28
    new-instance v0, Lcom/kingroot/kinguser/f;

    invoke-direct {v0}, Lcom/kingroot/kinguser/f;-><init>()V

    .line 29
    sget-object v1, Lcom/kingroot/kinguser/e;->dW:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/e;->dW:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/kingroot/kinguser/e;->dU:Ljava/util/ArrayList;

    .line 32
    iget v0, p0, Lcom/kingroot/kinguser/e;->dV:I

    invoke-virtual {p1, v0, v3, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/e;->dV:I

    .line 33
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 17
    iget-object v0, p0, Lcom/kingroot/kinguser/e;->dU:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    .line 18
    iget v0, p0, Lcom/kingroot/kinguser/e;->dV:I

    if-eqz v0, :cond_0

    .line 19
    iget v0, p0, Lcom/kingroot/kinguser/e;->dV:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 21
    :cond_0
    return-void
.end method
