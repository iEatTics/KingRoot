.class public final Lcom/kingroot/kinguser/el;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# static fields
.field static po:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/ek;",
            ">;"
        }
    .end annotation
.end field

.field static pp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/ej;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public id:I

.field public pm:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/ek;",
            ">;"
        }
    .end annotation
.end field

.field public pn:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/ej;",
            ">;"
        }
    .end annotation
.end field

.field public version:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    iput v0, p0, Lcom/kingroot/kinguser/el;->id:I

    .line 11
    iput v0, p0, Lcom/kingroot/kinguser/el;->version:I

    .line 12
    iput-object v1, p0, Lcom/kingroot/kinguser/el;->pm:Ljava/util/ArrayList;

    .line 13
    iput-object v1, p0, Lcom/kingroot/kinguser/el;->pn:Ljava/util/ArrayList;

    .line 16
    return-void
.end method


# virtual methods
.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 33
    iget v0, p0, Lcom/kingroot/kinguser/el;->id:I

    invoke-virtual {p1, v0, v2, v1}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/el;->id:I

    .line 34
    iget v0, p0, Lcom/kingroot/kinguser/el;->version:I

    invoke-virtual {p1, v0, v1, v1}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/el;->version:I

    .line 35
    sget-object v0, Lcom/kingroot/kinguser/el;->po:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/el;->po:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Lcom/kingroot/kinguser/ek;

    invoke-direct {v0}, Lcom/kingroot/kinguser/ek;-><init>()V

    .line 38
    sget-object v1, Lcom/kingroot/kinguser/el;->po:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/el;->po:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/kingroot/kinguser/el;->pm:Ljava/util/ArrayList;

    .line 41
    sget-object v0, Lcom/kingroot/kinguser/el;->pp:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/el;->pp:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Lcom/kingroot/kinguser/ej;

    invoke-direct {v0}, Lcom/kingroot/kinguser/ej;-><init>()V

    .line 44
    sget-object v1, Lcom/kingroot/kinguser/el;->pp:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/el;->pp:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/kingroot/kinguser/el;->pn:Ljava/util/ArrayList;

    .line 47
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 19
    iget v0, p0, Lcom/kingroot/kinguser/el;->id:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 20
    iget v0, p0, Lcom/kingroot/kinguser/el;->version:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 21
    iget-object v0, p0, Lcom/kingroot/kinguser/el;->pm:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/kingroot/kinguser/el;->pm:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/el;->pn:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 25
    iget-object v0, p0, Lcom/kingroot/kinguser/el;->pn:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    .line 27
    :cond_1
    return-void
.end method
