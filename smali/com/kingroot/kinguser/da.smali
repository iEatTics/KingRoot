.class public final Lcom/kingroot/kinguser/da;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# static fields
.field static mQ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static mR:Lcom/kingroot/kinguser/cr;


# instance fields
.field public desc:Ljava/lang/String;

.field public fY:I

.field public id:I

.field public mN:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mO:Ljava/lang/String;

.field public mP:Lcom/kingroot/kinguser/cr;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    iput v0, p0, Lcom/kingroot/kinguser/da;->id:I

    .line 11
    iput v0, p0, Lcom/kingroot/kinguser/da;->fY:I

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/da;->desc:Ljava/lang/String;

    .line 13
    iput-object v1, p0, Lcom/kingroot/kinguser/da;->mN:Ljava/util/ArrayList;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/da;->mO:Ljava/lang/String;

    .line 15
    iput-object v1, p0, Lcom/kingroot/kinguser/da;->mP:Lcom/kingroot/kinguser/cr;

    .line 18
    return-void
.end method


# virtual methods
.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 39
    iget v0, p0, Lcom/kingroot/kinguser/da;->id:I

    invoke-virtual {p1, v0, v2, v1}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/da;->id:I

    .line 40
    iget v0, p0, Lcom/kingroot/kinguser/da;->fY:I

    invoke-virtual {p1, v0, v1, v1}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/da;->fY:I

    .line 41
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/da;->desc:Ljava/lang/String;

    .line 42
    sget-object v0, Lcom/kingroot/kinguser/da;->mQ:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/da;->mQ:Ljava/util/ArrayList;

    .line 44
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 45
    sget-object v1, Lcom/kingroot/kinguser/da;->mQ:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/da;->mQ:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/kingroot/kinguser/da;->mN:Ljava/util/ArrayList;

    .line 48
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/da;->mO:Ljava/lang/String;

    .line 49
    sget-object v0, Lcom/kingroot/kinguser/da;->mR:Lcom/kingroot/kinguser/cr;

    if-nez v0, :cond_1

    .line 50
    new-instance v0, Lcom/kingroot/kinguser/cr;

    invoke-direct {v0}, Lcom/kingroot/kinguser/cr;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/da;->mR:Lcom/kingroot/kinguser/cr;

    .line 52
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/da;->mR:Lcom/kingroot/kinguser/cr;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/cr;

    iput-object v0, p0, Lcom/kingroot/kinguser/da;->mP:Lcom/kingroot/kinguser/cr;

    .line 53
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 21
    iget v0, p0, Lcom/kingroot/kinguser/da;->id:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 22
    iget v0, p0, Lcom/kingroot/kinguser/da;->fY:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 23
    iget-object v0, p0, Lcom/kingroot/kinguser/da;->desc:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 24
    iget-object v0, p0, Lcom/kingroot/kinguser/da;->mN:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/kingroot/kinguser/da;->mN:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/da;->mO:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 28
    iget-object v0, p0, Lcom/kingroot/kinguser/da;->mO:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/da;->mP:Lcom/kingroot/kinguser/cr;

    if-eqz v0, :cond_2

    .line 31
    iget-object v0, p0, Lcom/kingroot/kinguser/da;->mP:Lcom/kingroot/kinguser/cr;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 33
    :cond_2
    return-void
.end method
