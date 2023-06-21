.class public final Lcom/kingroot/kinguser/byu;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# static fields
.field static bUV:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/byv;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bUT:J

.field public bUU:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/byv;",
            ">;"
        }
    .end annotation
.end field

.field public duration:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingroot/kinguser/byu;->bUT:J

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/byu;->duration:I

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/byu;->bUU:Ljava/util/ArrayList;

    .line 15
    return-void
.end method


# virtual methods
.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 26
    iget-wide v0, p0, Lcom/kingroot/kinguser/byu;->bUT:J

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/byu;->bUT:J

    .line 27
    iget v0, p0, Lcom/kingroot/kinguser/byu;->duration:I

    invoke-virtual {p1, v0, v3, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/byu;->duration:I

    .line 28
    sget-object v0, Lcom/kingroot/kinguser/byu;->bUV:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/byu;->bUV:Ljava/util/ArrayList;

    .line 30
    new-instance v0, Lcom/kingroot/kinguser/byv;

    invoke-direct {v0}, Lcom/kingroot/kinguser/byv;-><init>()V

    .line 31
    sget-object v1, Lcom/kingroot/kinguser/byu;->bUV:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/byu;->bUV:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/kingroot/kinguser/byu;->bUU:Ljava/util/ArrayList;

    .line 34
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 3

    .prologue
    .line 18
    iget-wide v0, p0, Lcom/kingroot/kinguser/byu;->bUT:J

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 19
    iget v0, p0, Lcom/kingroot/kinguser/byu;->duration:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 20
    iget-object v0, p0, Lcom/kingroot/kinguser/byu;->bUU:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    .line 21
    return-void
.end method
