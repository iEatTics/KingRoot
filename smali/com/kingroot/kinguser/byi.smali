.class public final Lcom/kingroot/kinguser/byi;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# static fields
.field static bUm:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/byr;",
            ">;"
        }
    .end annotation
.end field

.field static bUn:Lcom/kingroot/kinguser/byk;

.field static bUo:Lcom/kingroot/kinguser/bym;

.field static bUp:Lcom/kingroot/kinguser/byh;

.field static bUq:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/byl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bQZ:I

.field public bTW:J

.field public bTX:Ljava/lang/String;

.field public bTY:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/byr;",
            ">;"
        }
    .end annotation
.end field

.field public bTZ:I

.field public bUa:I

.field public bUb:Ljava/lang/String;

.field public bUc:Ljava/lang/String;

.field public bUd:I

.field public bUe:Ljava/lang/String;

.field public bUf:Ljava/lang/String;

.field public bUg:I

.field public bUh:Lcom/kingroot/kinguser/byk;

.field public bUi:Lcom/kingroot/kinguser/bym;

.field public bUj:Lcom/kingroot/kinguser/byh;

.field public bUk:I

.field public bUl:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/byl;",
            ">;"
        }
    .end annotation
.end field

.field public iE:Ljava/lang/String;

.field public iF:Ljava/lang/String;

.field public iI:I

.field public kj:Ljava/lang/String;

.field public ko:Ljava/lang/String;

.field public kp:Ljava/lang/String;

.field public lc:Ljava/lang/String;

.field public sdkVer:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 36
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingroot/kinguser/byi;->bTW:J

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/byi;->bTX:Ljava/lang/String;

    .line 12
    iput-object v3, p0, Lcom/kingroot/kinguser/byi;->bTY:Ljava/util/ArrayList;

    .line 13
    iput v2, p0, Lcom/kingroot/kinguser/byi;->bTZ:I

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/byi;->lc:Ljava/lang/String;

    .line 15
    iput v2, p0, Lcom/kingroot/kinguser/byi;->bUa:I

    .line 16
    iput v2, p0, Lcom/kingroot/kinguser/byi;->bQZ:I

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/byi;->bUb:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/byi;->iE:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/byi;->iF:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/byi;->kp:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/byi;->ko:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/byi;->bUc:Ljava/lang/String;

    .line 23
    iput v2, p0, Lcom/kingroot/kinguser/byi;->bUd:I

    .line 24
    iput v2, p0, Lcom/kingroot/kinguser/byi;->sdkVer:I

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/byi;->bUe:Ljava/lang/String;

    .line 26
    iput v2, p0, Lcom/kingroot/kinguser/byi;->iI:I

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/byi;->bUf:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/byi;->kj:Ljava/lang/String;

    .line 29
    iput v2, p0, Lcom/kingroot/kinguser/byi;->bUg:I

    .line 30
    iput-object v3, p0, Lcom/kingroot/kinguser/byi;->bUh:Lcom/kingroot/kinguser/byk;

    .line 31
    iput-object v3, p0, Lcom/kingroot/kinguser/byi;->bUi:Lcom/kingroot/kinguser/bym;

    .line 32
    iput-object v3, p0, Lcom/kingroot/kinguser/byi;->bUj:Lcom/kingroot/kinguser/byh;

    .line 33
    iput v2, p0, Lcom/kingroot/kinguser/byi;->bUk:I

    .line 34
    iput-object v3, p0, Lcom/kingroot/kinguser/byi;->bUl:Ljava/util/ArrayList;

    .line 37
    return-void
.end method


# virtual methods
.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 106
    iget-wide v0, p0, Lcom/kingroot/kinguser/byi;->bTW:J

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/byi;->bTW:J

    .line 107
    invoke-virtual {p1, v3, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/byi;->bTX:Ljava/lang/String;

    .line 108
    sget-object v0, Lcom/kingroot/kinguser/byi;->bUm:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/byi;->bUm:Ljava/util/ArrayList;

    .line 110
    new-instance v0, Lcom/kingroot/kinguser/byr;

    invoke-direct {v0}, Lcom/kingroot/kinguser/byr;-><init>()V

    .line 111
    sget-object v1, Lcom/kingroot/kinguser/byi;->bUm:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/byi;->bUm:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/kingroot/kinguser/byi;->bTY:Ljava/util/ArrayList;

    .line 114
    iget v0, p0, Lcom/kingroot/kinguser/byi;->bTZ:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/byi;->bTZ:I

    .line 115
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/byi;->lc:Ljava/lang/String;

    .line 116
    iget v0, p0, Lcom/kingroot/kinguser/byi;->bUa:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/byi;->bUa:I

    .line 117
    iget v0, p0, Lcom/kingroot/kinguser/byi;->bQZ:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/byi;->bQZ:I

    .line 118
    const/4 v0, 0x7

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/byi;->bUb:Ljava/lang/String;

    .line 119
    const/16 v0, 0x8

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/byi;->iE:Ljava/lang/String;

    .line 120
    const/16 v0, 0x9

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/byi;->iF:Ljava/lang/String;

    .line 121
    const/16 v0, 0xa

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/byi;->kp:Ljava/lang/String;

    .line 122
    const/16 v0, 0xb

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/byi;->ko:Ljava/lang/String;

    .line 123
    const/16 v0, 0xc

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/byi;->bUc:Ljava/lang/String;

    .line 124
    iget v0, p0, Lcom/kingroot/kinguser/byi;->bUd:I

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/byi;->bUd:I

    .line 125
    iget v0, p0, Lcom/kingroot/kinguser/byi;->sdkVer:I

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/byi;->sdkVer:I

    .line 126
    const/16 v0, 0xf

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/byi;->bUe:Ljava/lang/String;

    .line 127
    iget v0, p0, Lcom/kingroot/kinguser/byi;->iI:I

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/byi;->iI:I

    .line 128
    const/16 v0, 0x11

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/byi;->bUf:Ljava/lang/String;

    .line 129
    const/16 v0, 0x12

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/byi;->kj:Ljava/lang/String;

    .line 130
    iget v0, p0, Lcom/kingroot/kinguser/byi;->bUg:I

    const/16 v1, 0x13

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/byi;->bUg:I

    .line 131
    sget-object v0, Lcom/kingroot/kinguser/byi;->bUn:Lcom/kingroot/kinguser/byk;

    if-nez v0, :cond_1

    .line 132
    new-instance v0, Lcom/kingroot/kinguser/byk;

    invoke-direct {v0}, Lcom/kingroot/kinguser/byk;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/byi;->bUn:Lcom/kingroot/kinguser/byk;

    .line 134
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/byi;->bUn:Lcom/kingroot/kinguser/byk;

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/byk;

    iput-object v0, p0, Lcom/kingroot/kinguser/byi;->bUh:Lcom/kingroot/kinguser/byk;

    .line 135
    sget-object v0, Lcom/kingroot/kinguser/byi;->bUo:Lcom/kingroot/kinguser/bym;

    if-nez v0, :cond_2

    .line 136
    new-instance v0, Lcom/kingroot/kinguser/bym;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bym;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/byi;->bUo:Lcom/kingroot/kinguser/bym;

    .line 138
    :cond_2
    sget-object v0, Lcom/kingroot/kinguser/byi;->bUo:Lcom/kingroot/kinguser/bym;

    const/16 v1, 0x15

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bym;

    iput-object v0, p0, Lcom/kingroot/kinguser/byi;->bUi:Lcom/kingroot/kinguser/bym;

    .line 139
    sget-object v0, Lcom/kingroot/kinguser/byi;->bUp:Lcom/kingroot/kinguser/byh;

    if-nez v0, :cond_3

    .line 140
    new-instance v0, Lcom/kingroot/kinguser/byh;

    invoke-direct {v0}, Lcom/kingroot/kinguser/byh;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/byi;->bUp:Lcom/kingroot/kinguser/byh;

    .line 142
    :cond_3
    sget-object v0, Lcom/kingroot/kinguser/byi;->bUp:Lcom/kingroot/kinguser/byh;

    const/16 v1, 0x16

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/byh;

    iput-object v0, p0, Lcom/kingroot/kinguser/byi;->bUj:Lcom/kingroot/kinguser/byh;

    .line 143
    iget v0, p0, Lcom/kingroot/kinguser/byi;->bUk:I

    const/16 v1, 0x17

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/byi;->bUk:I

    .line 144
    sget-object v0, Lcom/kingroot/kinguser/byi;->bUq:Ljava/util/ArrayList;

    if-nez v0, :cond_4

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/byi;->bUq:Ljava/util/ArrayList;

    .line 146
    new-instance v0, Lcom/kingroot/kinguser/byl;

    invoke-direct {v0}, Lcom/kingroot/kinguser/byl;-><init>()V

    .line 147
    sget-object v1, Lcom/kingroot/kinguser/byi;->bUq:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    :cond_4
    sget-object v0, Lcom/kingroot/kinguser/byi;->bUq:Ljava/util/ArrayList;

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/kingroot/kinguser/byi;->bUl:Ljava/util/ArrayList;

    .line 150
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 3

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/kingroot/kinguser/byi;->bTW:J

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 41
    iget-object v0, p0, Lcom/kingroot/kinguser/byi;->bTX:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 42
    iget-object v0, p0, Lcom/kingroot/kinguser/byi;->bTY:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    .line 43
    iget v0, p0, Lcom/kingroot/kinguser/byi;->bTZ:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 44
    iget-object v0, p0, Lcom/kingroot/kinguser/byi;->lc:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 45
    iget v0, p0, Lcom/kingroot/kinguser/byi;->bUa:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 46
    iget v0, p0, Lcom/kingroot/kinguser/byi;->bQZ:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 47
    iget-object v0, p0, Lcom/kingroot/kinguser/byi;->bUb:Ljava/lang/String;

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 48
    iget-object v0, p0, Lcom/kingroot/kinguser/byi;->iE:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/kingroot/kinguser/byi;->iE:Ljava/lang/String;

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/byi;->iF:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/kingroot/kinguser/byi;->iF:Ljava/lang/String;

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/byi;->kp:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 55
    iget-object v0, p0, Lcom/kingroot/kinguser/byi;->kp:Ljava/lang/String;

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 57
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/byi;->ko:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 58
    iget-object v0, p0, Lcom/kingroot/kinguser/byi;->ko:Ljava/lang/String;

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 60
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/byi;->bUc:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 61
    iget-object v0, p0, Lcom/kingroot/kinguser/byi;->bUc:Ljava/lang/String;

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 63
    :cond_4
    iget v0, p0, Lcom/kingroot/kinguser/byi;->bUd:I

    if-eqz v0, :cond_5

    .line 64
    iget v0, p0, Lcom/kingroot/kinguser/byi;->bUd:I

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 66
    :cond_5
    iget v0, p0, Lcom/kingroot/kinguser/byi;->sdkVer:I

    if-eqz v0, :cond_6

    .line 67
    iget v0, p0, Lcom/kingroot/kinguser/byi;->sdkVer:I

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 69
    :cond_6
    iget-object v0, p0, Lcom/kingroot/kinguser/byi;->bUe:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 70
    iget-object v0, p0, Lcom/kingroot/kinguser/byi;->bUe:Ljava/lang/String;

    const/16 v1, 0xf

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 72
    :cond_7
    iget v0, p0, Lcom/kingroot/kinguser/byi;->iI:I

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 73
    iget-object v0, p0, Lcom/kingroot/kinguser/byi;->bUf:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 74
    iget-object v0, p0, Lcom/kingroot/kinguser/byi;->bUf:Ljava/lang/String;

    const/16 v1, 0x11

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 76
    :cond_8
    iget-object v0, p0, Lcom/kingroot/kinguser/byi;->kj:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 77
    iget-object v0, p0, Lcom/kingroot/kinguser/byi;->kj:Ljava/lang/String;

    const/16 v1, 0x12

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 79
    :cond_9
    iget v0, p0, Lcom/kingroot/kinguser/byi;->bUg:I

    if-eqz v0, :cond_a

    .line 80
    iget v0, p0, Lcom/kingroot/kinguser/byi;->bUg:I

    const/16 v1, 0x13

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 82
    :cond_a
    iget-object v0, p0, Lcom/kingroot/kinguser/byi;->bUh:Lcom/kingroot/kinguser/byk;

    if-eqz v0, :cond_b

    .line 83
    iget-object v0, p0, Lcom/kingroot/kinguser/byi;->bUh:Lcom/kingroot/kinguser/byk;

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 85
    :cond_b
    iget-object v0, p0, Lcom/kingroot/kinguser/byi;->bUi:Lcom/kingroot/kinguser/bym;

    if-eqz v0, :cond_c

    .line 86
    iget-object v0, p0, Lcom/kingroot/kinguser/byi;->bUi:Lcom/kingroot/kinguser/bym;

    const/16 v1, 0x15

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 88
    :cond_c
    iget-object v0, p0, Lcom/kingroot/kinguser/byi;->bUj:Lcom/kingroot/kinguser/byh;

    if-eqz v0, :cond_d

    .line 89
    iget-object v0, p0, Lcom/kingroot/kinguser/byi;->bUj:Lcom/kingroot/kinguser/byh;

    const/16 v1, 0x16

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 91
    :cond_d
    iget v0, p0, Lcom/kingroot/kinguser/byi;->bUk:I

    if-eqz v0, :cond_e

    .line 92
    iget v0, p0, Lcom/kingroot/kinguser/byi;->bUk:I

    const/16 v1, 0x17

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 94
    :cond_e
    iget-object v0, p0, Lcom/kingroot/kinguser/byi;->bUl:Ljava/util/ArrayList;

    if-eqz v0, :cond_f

    .line 95
    iget-object v0, p0, Lcom/kingroot/kinguser/byi;->bUl:Ljava/util/ArrayList;

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    .line 97
    :cond_f
    return-void
.end method
