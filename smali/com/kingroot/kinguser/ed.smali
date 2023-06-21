.class public final Lcom/kingroot/kinguser/ed;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# static fields
.field static oA:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/dx;",
            ">;"
        }
    .end annotation
.end field

.field static oB:Lcom/kingroot/kinguser/ea;

.field static oC:Lcom/kingroot/kinguser/eb;

.field static oD:Lcom/kingroot/kinguser/du;

.field static oE:Lcom/kingroot/kinguser/eg;


# instance fields
.field public groupId:I

.field public iconUrl:Ljava/lang/String;

.field public id:I

.field public initOrder:I

.field public level:I

.field public nW:I

.field public name:Ljava/lang/String;

.field public of:Ljava/lang/String;

.field public og:I

.field public oh:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/dx;",
            ">;"
        }
    .end annotation
.end field

.field public oi:Ljava/lang/String;

.field public oj:I

.field public ok:Ljava/lang/String;

.field public ol:J

.field public om:Z

.field public on:I

.field public oo:I

.field public op:Lcom/kingroot/kinguser/ea;

.field public oq:Lcom/kingroot/kinguser/eb;

.field public or:Z

.field public os:Z

.field public ot:I

.field public ou:Z

.field public ov:Lcom/kingroot/kinguser/du;

.field public ow:Lcom/kingroot/kinguser/eg;

.field public ox:J

.field public oy:I

.field public oz:Ljava/lang/String;

.field public pkgName:Ljava/lang/String;

.field public version:I

.field public versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    iput v1, p0, Lcom/kingroot/kinguser/ed;->id:I

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/ed;->pkgName:Ljava/lang/String;

    .line 12
    iput v1, p0, Lcom/kingroot/kinguser/ed;->version:I

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/ed;->versionName:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/ed;->name:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/ed;->of:Ljava/lang/String;

    .line 16
    iput v1, p0, Lcom/kingroot/kinguser/ed;->og:I

    .line 17
    iput-object v2, p0, Lcom/kingroot/kinguser/ed;->oh:Ljava/util/ArrayList;

    .line 18
    iput v1, p0, Lcom/kingroot/kinguser/ed;->level:I

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/ed;->iconUrl:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/ed;->oi:Ljava/lang/String;

    .line 21
    iput v1, p0, Lcom/kingroot/kinguser/ed;->oj:I

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/ed;->ok:Ljava/lang/String;

    .line 23
    iput-wide v4, p0, Lcom/kingroot/kinguser/ed;->ol:J

    .line 24
    iput-boolean v3, p0, Lcom/kingroot/kinguser/ed;->om:Z

    .line 25
    iput v1, p0, Lcom/kingroot/kinguser/ed;->on:I

    .line 26
    iput v1, p0, Lcom/kingroot/kinguser/ed;->oo:I

    .line 27
    iput-object v2, p0, Lcom/kingroot/kinguser/ed;->op:Lcom/kingroot/kinguser/ea;

    .line 28
    iput-object v2, p0, Lcom/kingroot/kinguser/ed;->oq:Lcom/kingroot/kinguser/eb;

    .line 29
    iput-boolean v3, p0, Lcom/kingroot/kinguser/ed;->or:Z

    .line 30
    iput v1, p0, Lcom/kingroot/kinguser/ed;->groupId:I

    .line 31
    iput-boolean v3, p0, Lcom/kingroot/kinguser/ed;->os:Z

    .line 32
    iput v1, p0, Lcom/kingroot/kinguser/ed;->ot:I

    .line 33
    iput-boolean v3, p0, Lcom/kingroot/kinguser/ed;->ou:Z

    .line 34
    iput v1, p0, Lcom/kingroot/kinguser/ed;->initOrder:I

    .line 35
    iput-object v2, p0, Lcom/kingroot/kinguser/ed;->ov:Lcom/kingroot/kinguser/du;

    .line 36
    iput-object v2, p0, Lcom/kingroot/kinguser/ed;->ow:Lcom/kingroot/kinguser/eg;

    .line 37
    iput v1, p0, Lcom/kingroot/kinguser/ed;->nW:I

    .line 38
    iput-wide v4, p0, Lcom/kingroot/kinguser/ed;->ox:J

    .line 39
    iput v1, p0, Lcom/kingroot/kinguser/ed;->oy:I

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/ed;->oz:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 108
    iget v0, p0, Lcom/kingroot/kinguser/ed;->id:I

    invoke-virtual {p1, v0, v3, v4}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/ed;->id:I

    .line 109
    invoke-virtual {p1, v4, v4}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ed;->pkgName:Ljava/lang/String;

    .line 110
    iget v0, p0, Lcom/kingroot/kinguser/ed;->version:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v4}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/ed;->version:I

    .line 111
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v4}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ed;->versionName:Ljava/lang/String;

    .line 112
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v4}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ed;->name:Ljava/lang/String;

    .line 113
    const/4 v0, 0x5

    invoke-virtual {p1, v0, v4}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ed;->of:Ljava/lang/String;

    .line 114
    iget v0, p0, Lcom/kingroot/kinguser/ed;->og:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1, v4}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/ed;->og:I

    .line 115
    sget-object v0, Lcom/kingroot/kinguser/ed;->oA:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/ed;->oA:Ljava/util/ArrayList;

    .line 117
    new-instance v0, Lcom/kingroot/kinguser/dx;

    invoke-direct {v0}, Lcom/kingroot/kinguser/dx;-><init>()V

    .line 118
    sget-object v1, Lcom/kingroot/kinguser/ed;->oA:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/ed;->oA:Ljava/util/ArrayList;

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1, v4}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/kingroot/kinguser/ed;->oh:Ljava/util/ArrayList;

    .line 121
    iget v0, p0, Lcom/kingroot/kinguser/ed;->level:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1, v4}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/ed;->level:I

    .line 122
    const/16 v0, 0x9

    invoke-virtual {p1, v0, v4}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ed;->iconUrl:Ljava/lang/String;

    .line 123
    const/16 v0, 0xa

    invoke-virtual {p1, v0, v4}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ed;->oi:Ljava/lang/String;

    .line 124
    iget v0, p0, Lcom/kingroot/kinguser/ed;->oj:I

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1, v4}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/ed;->oj:I

    .line 125
    const/16 v0, 0xc

    invoke-virtual {p1, v0, v4}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ed;->ok:Ljava/lang/String;

    .line 126
    iget-wide v0, p0, Lcom/kingroot/kinguser/ed;->ol:J

    const/16 v2, 0xd

    invoke-virtual {p1, v0, v1, v2, v4}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/ed;->ol:J

    .line 127
    iget-boolean v0, p0, Lcom/kingroot/kinguser/ed;->om:Z

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1, v4}, Lcom/qq/taf/jce/JceInputStream;->read(ZIZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/ed;->om:Z

    .line 128
    iget v0, p0, Lcom/kingroot/kinguser/ed;->on:I

    const/16 v1, 0xf

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/ed;->on:I

    .line 129
    iget v0, p0, Lcom/kingroot/kinguser/ed;->oo:I

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/ed;->oo:I

    .line 130
    sget-object v0, Lcom/kingroot/kinguser/ed;->oB:Lcom/kingroot/kinguser/ea;

    if-nez v0, :cond_1

    .line 131
    new-instance v0, Lcom/kingroot/kinguser/ea;

    invoke-direct {v0}, Lcom/kingroot/kinguser/ea;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/ed;->oB:Lcom/kingroot/kinguser/ea;

    .line 133
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/ed;->oB:Lcom/kingroot/kinguser/ea;

    const/16 v1, 0x11

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ea;

    iput-object v0, p0, Lcom/kingroot/kinguser/ed;->op:Lcom/kingroot/kinguser/ea;

    .line 134
    sget-object v0, Lcom/kingroot/kinguser/ed;->oC:Lcom/kingroot/kinguser/eb;

    if-nez v0, :cond_2

    .line 135
    new-instance v0, Lcom/kingroot/kinguser/eb;

    invoke-direct {v0}, Lcom/kingroot/kinguser/eb;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/ed;->oC:Lcom/kingroot/kinguser/eb;

    .line 137
    :cond_2
    sget-object v0, Lcom/kingroot/kinguser/ed;->oC:Lcom/kingroot/kinguser/eb;

    const/16 v1, 0x12

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/eb;

    iput-object v0, p0, Lcom/kingroot/kinguser/ed;->oq:Lcom/kingroot/kinguser/eb;

    .line 138
    iget-boolean v0, p0, Lcom/kingroot/kinguser/ed;->or:Z

    const/16 v1, 0x13

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(ZIZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/ed;->or:Z

    .line 139
    iget v0, p0, Lcom/kingroot/kinguser/ed;->groupId:I

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/ed;->groupId:I

    .line 140
    iget-boolean v0, p0, Lcom/kingroot/kinguser/ed;->os:Z

    const/16 v1, 0x15

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(ZIZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/ed;->os:Z

    .line 141
    iget v0, p0, Lcom/kingroot/kinguser/ed;->ot:I

    const/16 v1, 0x16

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/ed;->ot:I

    .line 142
    iget-boolean v0, p0, Lcom/kingroot/kinguser/ed;->ou:Z

    const/16 v1, 0x17

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(ZIZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/ed;->ou:Z

    .line 143
    iget v0, p0, Lcom/kingroot/kinguser/ed;->initOrder:I

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/ed;->initOrder:I

    .line 144
    sget-object v0, Lcom/kingroot/kinguser/ed;->oD:Lcom/kingroot/kinguser/du;

    if-nez v0, :cond_3

    .line 145
    new-instance v0, Lcom/kingroot/kinguser/du;

    invoke-direct {v0}, Lcom/kingroot/kinguser/du;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/ed;->oD:Lcom/kingroot/kinguser/du;

    .line 147
    :cond_3
    sget-object v0, Lcom/kingroot/kinguser/ed;->oD:Lcom/kingroot/kinguser/du;

    const/16 v1, 0x19

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/du;

    iput-object v0, p0, Lcom/kingroot/kinguser/ed;->ov:Lcom/kingroot/kinguser/du;

    .line 148
    sget-object v0, Lcom/kingroot/kinguser/ed;->oE:Lcom/kingroot/kinguser/eg;

    if-nez v0, :cond_4

    .line 149
    new-instance v0, Lcom/kingroot/kinguser/eg;

    invoke-direct {v0}, Lcom/kingroot/kinguser/eg;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/ed;->oE:Lcom/kingroot/kinguser/eg;

    .line 151
    :cond_4
    sget-object v0, Lcom/kingroot/kinguser/ed;->oE:Lcom/kingroot/kinguser/eg;

    const/16 v1, 0x1a

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/eg;

    iput-object v0, p0, Lcom/kingroot/kinguser/ed;->ow:Lcom/kingroot/kinguser/eg;

    .line 152
    iget v0, p0, Lcom/kingroot/kinguser/ed;->nW:I

    const/16 v1, 0x1b

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/ed;->nW:I

    .line 153
    iget-wide v0, p0, Lcom/kingroot/kinguser/ed;->ox:J

    const/16 v2, 0x1c

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/ed;->ox:J

    .line 154
    iget v0, p0, Lcom/kingroot/kinguser/ed;->oy:I

    const/16 v1, 0x1d

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/ed;->oy:I

    .line 155
    const/16 v0, 0x1e

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ed;->oz:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 46
    iget v0, p0, Lcom/kingroot/kinguser/ed;->id:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 47
    iget-object v0, p0, Lcom/kingroot/kinguser/ed;->pkgName:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 48
    iget v0, p0, Lcom/kingroot/kinguser/ed;->version:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 49
    iget-object v0, p0, Lcom/kingroot/kinguser/ed;->versionName:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 50
    iget-object v0, p0, Lcom/kingroot/kinguser/ed;->name:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 51
    iget-object v0, p0, Lcom/kingroot/kinguser/ed;->of:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 52
    iget v0, p0, Lcom/kingroot/kinguser/ed;->og:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 53
    iget-object v0, p0, Lcom/kingroot/kinguser/ed;->oh:Ljava/util/ArrayList;

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    .line 54
    iget v0, p0, Lcom/kingroot/kinguser/ed;->level:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 55
    iget-object v0, p0, Lcom/kingroot/kinguser/ed;->iconUrl:Ljava/lang/String;

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 56
    iget-object v0, p0, Lcom/kingroot/kinguser/ed;->oi:Ljava/lang/String;

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 57
    iget v0, p0, Lcom/kingroot/kinguser/ed;->oj:I

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 58
    iget-object v0, p0, Lcom/kingroot/kinguser/ed;->ok:Ljava/lang/String;

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 59
    iget-wide v0, p0, Lcom/kingroot/kinguser/ed;->ol:J

    const/16 v2, 0xd

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 60
    iget-boolean v0, p0, Lcom/kingroot/kinguser/ed;->om:Z

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(ZI)V

    .line 61
    iget v0, p0, Lcom/kingroot/kinguser/ed;->on:I

    const/16 v1, 0xf

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 62
    iget v0, p0, Lcom/kingroot/kinguser/ed;->oo:I

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 63
    iget-object v0, p0, Lcom/kingroot/kinguser/ed;->op:Lcom/kingroot/kinguser/ea;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/kingroot/kinguser/ed;->op:Lcom/kingroot/kinguser/ea;

    const/16 v1, 0x11

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ed;->oq:Lcom/kingroot/kinguser/eb;

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/kingroot/kinguser/ed;->oq:Lcom/kingroot/kinguser/eb;

    const/16 v1, 0x12

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 69
    :cond_1
    iget-boolean v0, p0, Lcom/kingroot/kinguser/ed;->or:Z

    if-eq v0, v3, :cond_2

    .line 70
    iget-boolean v0, p0, Lcom/kingroot/kinguser/ed;->or:Z

    const/16 v1, 0x13

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(ZI)V

    .line 72
    :cond_2
    iget v0, p0, Lcom/kingroot/kinguser/ed;->groupId:I

    if-eqz v0, :cond_3

    .line 73
    iget v0, p0, Lcom/kingroot/kinguser/ed;->groupId:I

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 75
    :cond_3
    iget-boolean v0, p0, Lcom/kingroot/kinguser/ed;->os:Z

    if-eq v0, v3, :cond_4

    .line 76
    iget-boolean v0, p0, Lcom/kingroot/kinguser/ed;->os:Z

    const/16 v1, 0x15

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(ZI)V

    .line 78
    :cond_4
    iget v0, p0, Lcom/kingroot/kinguser/ed;->ot:I

    const/16 v1, 0x16

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 79
    iget-boolean v0, p0, Lcom/kingroot/kinguser/ed;->ou:Z

    if-eq v0, v3, :cond_5

    .line 80
    iget-boolean v0, p0, Lcom/kingroot/kinguser/ed;->ou:Z

    const/16 v1, 0x17

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(ZI)V

    .line 82
    :cond_5
    iget v0, p0, Lcom/kingroot/kinguser/ed;->initOrder:I

    if-eqz v0, :cond_6

    .line 83
    iget v0, p0, Lcom/kingroot/kinguser/ed;->initOrder:I

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 85
    :cond_6
    iget-object v0, p0, Lcom/kingroot/kinguser/ed;->ov:Lcom/kingroot/kinguser/du;

    if-eqz v0, :cond_7

    .line 86
    iget-object v0, p0, Lcom/kingroot/kinguser/ed;->ov:Lcom/kingroot/kinguser/du;

    const/16 v1, 0x19

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 88
    :cond_7
    iget-object v0, p0, Lcom/kingroot/kinguser/ed;->ow:Lcom/kingroot/kinguser/eg;

    if-eqz v0, :cond_8

    .line 89
    iget-object v0, p0, Lcom/kingroot/kinguser/ed;->ow:Lcom/kingroot/kinguser/eg;

    const/16 v1, 0x1a

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 91
    :cond_8
    iget v0, p0, Lcom/kingroot/kinguser/ed;->nW:I

    const/16 v1, 0x1b

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 92
    iget-wide v0, p0, Lcom/kingroot/kinguser/ed;->ox:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_9

    .line 93
    iget-wide v0, p0, Lcom/kingroot/kinguser/ed;->ox:J

    const/16 v2, 0x1c

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 95
    :cond_9
    iget v0, p0, Lcom/kingroot/kinguser/ed;->oy:I

    const/16 v1, 0x1d

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 96
    iget-object v0, p0, Lcom/kingroot/kinguser/ed;->oz:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 97
    iget-object v0, p0, Lcom/kingroot/kinguser/ed;->oz:Ljava/lang/String;

    const/16 v1, 0x1e

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 99
    :cond_a
    return-void
.end method
