.class public final Lcom/kingroot/kinguser/byr;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# static fields
.field static bUM:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/byt;",
            ">;"
        }
    .end annotation
.end field

.field static bUN:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/byu;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public action:I

.field public bJE:I

.field public bUI:J

.field public bUJ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/byt;",
            ">;"
        }
    .end annotation
.end field

.field public bUK:D

.field public bUL:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/byu;",
            ">;"
        }
    .end annotation
.end field

.field public nu:D


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 18
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingroot/kinguser/byr;->bUI:J

    .line 11
    iput-object v5, p0, Lcom/kingroot/kinguser/byr;->bUJ:Ljava/util/ArrayList;

    .line 12
    iput v4, p0, Lcom/kingroot/kinguser/byr;->bJE:I

    .line 13
    iput v4, p0, Lcom/kingroot/kinguser/byr;->action:I

    .line 14
    iput-wide v2, p0, Lcom/kingroot/kinguser/byr;->nu:D

    .line 15
    iput-wide v2, p0, Lcom/kingroot/kinguser/byr;->bUK:D

    .line 16
    iput-object v5, p0, Lcom/kingroot/kinguser/byr;->bUL:Ljava/util/ArrayList;

    .line 19
    return-void
.end method


# virtual methods
.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 45
    iget-wide v0, p0, Lcom/kingroot/kinguser/byr;->bUI:J

    invoke-virtual {p1, v0, v1, v3, v2}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/byr;->bUI:J

    .line 46
    sget-object v0, Lcom/kingroot/kinguser/byr;->bUM:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/byr;->bUM:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Lcom/kingroot/kinguser/byt;

    invoke-direct {v0}, Lcom/kingroot/kinguser/byt;-><init>()V

    .line 49
    sget-object v1, Lcom/kingroot/kinguser/byr;->bUM:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/byr;->bUM:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/kingroot/kinguser/byr;->bUJ:Ljava/util/ArrayList;

    .line 52
    iget v0, p0, Lcom/kingroot/kinguser/byr;->bJE:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/byr;->bJE:I

    .line 53
    iget v0, p0, Lcom/kingroot/kinguser/byr;->action:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/byr;->action:I

    .line 54
    iget-wide v0, p0, Lcom/kingroot/kinguser/byr;->nu:D

    const/4 v2, 0x4

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(DIZ)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/byr;->nu:D

    .line 55
    iget-wide v0, p0, Lcom/kingroot/kinguser/byr;->bUK:D

    const/4 v2, 0x5

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(DIZ)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/byr;->bUK:D

    .line 56
    sget-object v0, Lcom/kingroot/kinguser/byr;->bUN:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/byr;->bUN:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Lcom/kingroot/kinguser/byu;

    invoke-direct {v0}, Lcom/kingroot/kinguser/byu;-><init>()V

    .line 59
    sget-object v1, Lcom/kingroot/kinguser/byr;->bUN:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/byr;->bUN:Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/kingroot/kinguser/byr;->bUL:Ljava/util/ArrayList;

    .line 62
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 22
    iget-wide v0, p0, Lcom/kingroot/kinguser/byr;->bUI:J

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 23
    iget-object v0, p0, Lcom/kingroot/kinguser/byr;->bUJ:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    .line 24
    iget v0, p0, Lcom/kingroot/kinguser/byr;->bJE:I

    if-eqz v0, :cond_0

    .line 25
    iget v0, p0, Lcom/kingroot/kinguser/byr;->bJE:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 27
    :cond_0
    iget v0, p0, Lcom/kingroot/kinguser/byr;->action:I

    if-eqz v0, :cond_1

    .line 28
    iget v0, p0, Lcom/kingroot/kinguser/byr;->action:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 30
    :cond_1
    iget-wide v0, p0, Lcom/kingroot/kinguser/byr;->nu:D

    cmpl-double v0, v0, v4

    if-eqz v0, :cond_2

    .line 31
    iget-wide v0, p0, Lcom/kingroot/kinguser/byr;->nu:D

    const/4 v2, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(DI)V

    .line 33
    :cond_2
    iget-wide v0, p0, Lcom/kingroot/kinguser/byr;->bUK:D

    cmpl-double v0, v0, v4

    if-eqz v0, :cond_3

    .line 34
    iget-wide v0, p0, Lcom/kingroot/kinguser/byr;->bUK:D

    const/4 v2, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(DI)V

    .line 36
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/byr;->bUL:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 37
    iget-object v0, p0, Lcom/kingroot/kinguser/byr;->bUL:Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    .line 39
    :cond_4
    return-void
.end method
