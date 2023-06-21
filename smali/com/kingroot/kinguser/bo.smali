.class public final Lcom/kingroot/kinguser/bo;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# static fields
.field static kH:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/df;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public isbuildin:I

.field public kF:Ljava/lang/String;

.field public kG:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/df;",
            ">;"
        }
    .end annotation
.end field

.field public product:I

.field public token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 16
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/bo;->kF:Ljava/lang/String;

    .line 11
    iput v1, p0, Lcom/kingroot/kinguser/bo;->product:I

    .line 12
    iput v1, p0, Lcom/kingroot/kinguser/bo;->isbuildin:I

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/bo;->token:Ljava/lang/String;

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/bo;->kG:Ljava/util/ArrayList;

    .line 17
    return-void
.end method


# virtual methods
.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 38
    invoke-virtual {p1, v2, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bo;->kF:Ljava/lang/String;

    .line 39
    iget v0, p0, Lcom/kingroot/kinguser/bo;->product:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/bo;->product:I

    .line 40
    iget v0, p0, Lcom/kingroot/kinguser/bo;->isbuildin:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/bo;->isbuildin:I

    .line 41
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bo;->token:Ljava/lang/String;

    .line 42
    sget-object v0, Lcom/kingroot/kinguser/bo;->kH:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bo;->kH:Ljava/util/ArrayList;

    .line 44
    new-instance v0, Lcom/kingroot/kinguser/df;

    invoke-direct {v0}, Lcom/kingroot/kinguser/df;-><init>()V

    .line 45
    sget-object v1, Lcom/kingroot/kinguser/bo;->kH:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/bo;->kH:Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/kingroot/kinguser/bo;->kG:Ljava/util/ArrayList;

    .line 48
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/kingroot/kinguser/bo;->kF:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 21
    iget v0, p0, Lcom/kingroot/kinguser/bo;->product:I

    if-eqz v0, :cond_0

    .line 22
    iget v0, p0, Lcom/kingroot/kinguser/bo;->product:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 24
    :cond_0
    iget v0, p0, Lcom/kingroot/kinguser/bo;->isbuildin:I

    if-eqz v0, :cond_1

    .line 25
    iget v0, p0, Lcom/kingroot/kinguser/bo;->isbuildin:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bo;->token:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 28
    iget-object v0, p0, Lcom/kingroot/kinguser/bo;->token:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 30
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/bo;->kG:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 31
    iget-object v0, p0, Lcom/kingroot/kinguser/bo;->kG:Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    .line 33
    :cond_3
    return-void
.end method
