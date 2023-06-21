.class public final Lcom/kingroot/kinguser/do;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# static fields
.field static nA:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/dr;",
            ">;"
        }
    .end annotation
.end field

.field static nB:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/dq;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public iE:Ljava/lang/String;

.field public it:Ljava/lang/String;

.field public lc:Ljava/lang/String;

.field public ny:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/dr;",
            ">;"
        }
    .end annotation
.end field

.field public nz:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/dq;",
            ">;"
        }
    .end annotation
.end field

.field public productId:I

.field public versionCode:I

.field public versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    iput-object v0, p0, Lcom/kingroot/kinguser/do;->ny:Ljava/util/ArrayList;

    .line 11
    iput-object v0, p0, Lcom/kingroot/kinguser/do;->nz:Ljava/util/ArrayList;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/do;->versionName:Ljava/lang/String;

    .line 13
    iput v1, p0, Lcom/kingroot/kinguser/do;->versionCode:I

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/do;->it:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/do;->iE:Ljava/lang/String;

    .line 16
    iput v1, p0, Lcom/kingroot/kinguser/do;->productId:I

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/do;->lc:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 49
    sget-object v0, Lcom/kingroot/kinguser/do;->nA:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/do;->nA:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Lcom/kingroot/kinguser/dr;

    invoke-direct {v0}, Lcom/kingroot/kinguser/dr;-><init>()V

    .line 52
    sget-object v1, Lcom/kingroot/kinguser/do;->nA:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/do;->nA:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/kingroot/kinguser/do;->ny:Ljava/util/ArrayList;

    .line 55
    sget-object v0, Lcom/kingroot/kinguser/do;->nB:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/do;->nB:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Lcom/kingroot/kinguser/dq;

    invoke-direct {v0}, Lcom/kingroot/kinguser/dq;-><init>()V

    .line 58
    sget-object v1, Lcom/kingroot/kinguser/do;->nB:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/do;->nB:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v3, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/kingroot/kinguser/do;->nz:Ljava/util/ArrayList;

    .line 61
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/do;->versionName:Ljava/lang/String;

    .line 62
    iget v0, p0, Lcom/kingroot/kinguser/do;->versionCode:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/do;->versionCode:I

    .line 63
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/do;->it:Ljava/lang/String;

    .line 64
    const/4 v0, 0x5

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/do;->iE:Ljava/lang/String;

    .line 65
    iget v0, p0, Lcom/kingroot/kinguser/do;->productId:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/do;->productId:I

    .line 66
    const/4 v0, 0x7

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/do;->lc:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/kingroot/kinguser/do;->ny:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    .line 24
    iget-object v0, p0, Lcom/kingroot/kinguser/do;->nz:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/kingroot/kinguser/do;->nz:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/do;->versionName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 28
    iget-object v0, p0, Lcom/kingroot/kinguser/do;->versionName:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 30
    :cond_1
    iget v0, p0, Lcom/kingroot/kinguser/do;->versionCode:I

    if-eqz v0, :cond_2

    .line 31
    iget v0, p0, Lcom/kingroot/kinguser/do;->versionCode:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 33
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/do;->it:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 34
    iget-object v0, p0, Lcom/kingroot/kinguser/do;->it:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 36
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/do;->iE:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 37
    iget-object v0, p0, Lcom/kingroot/kinguser/do;->iE:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 39
    :cond_4
    iget v0, p0, Lcom/kingroot/kinguser/do;->productId:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 40
    iget-object v0, p0, Lcom/kingroot/kinguser/do;->lc:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 41
    iget-object v0, p0, Lcom/kingroot/kinguser/do;->lc:Ljava/lang/String;

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 43
    :cond_5
    return-void
.end method
