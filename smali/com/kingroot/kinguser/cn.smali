.class public final Lcom/kingroot/kinguser/cn;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# static fields
.field static a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/by;",
            ">;"
        }
    .end annotation
.end field

.field static b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/by;",
            ">;"
        }
    .end annotation
.end field

.field static c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/cn;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public id:I

.field public kd:I

.field public lV:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/by;",
            ">;"
        }
    .end annotation
.end field

.field public lW:Ljava/lang/String;

.field public lX:Ljava/lang/String;

.field public lY:Ljava/lang/String;

.field public lZ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/by;",
            ">;"
        }
    .end annotation
.end field

.field public ma:I

.field public mb:I

.field public mc:I

.field public md:I

.field public me:Ljava/lang/String;

.field public mf:Ljava/lang/String;

.field public mg:I

.field public mh:I

.field public mi:I

.field public mj:I

.field public mk:I

.field public ml:J

.field public mm:J

.field public mn:I

.field public mo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/cn;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/cn;->a:Ljava/util/ArrayList;

    .line 111
    new-instance v0, Lcom/kingroot/kinguser/by;

    invoke-direct {v0}, Lcom/kingroot/kinguser/by;-><init>()V

    .line 112
    sget-object v1, Lcom/kingroot/kinguser/cn;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/cn;->b:Ljava/util/ArrayList;

    .line 115
    new-instance v0, Lcom/kingroot/kinguser/by;

    invoke-direct {v0}, Lcom/kingroot/kinguser/by;-><init>()V

    .line 116
    sget-object v1, Lcom/kingroot/kinguser/cn;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/cn;->c:Ljava/util/ArrayList;

    .line 119
    new-instance v0, Lcom/kingroot/kinguser/cn;

    invoke-direct {v0}, Lcom/kingroot/kinguser/cn;-><init>()V

    .line 120
    sget-object v1, Lcom/kingroot/kinguser/cn;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    iput v1, p0, Lcom/kingroot/kinguser/cn;->id:I

    .line 11
    iput v1, p0, Lcom/kingroot/kinguser/cn;->kd:I

    .line 12
    iput-object v2, p0, Lcom/kingroot/kinguser/cn;->lV:Ljava/util/ArrayList;

    .line 13
    iput v1, p0, Lcom/kingroot/kinguser/cn;->type:I

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/cn;->lW:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/cn;->lX:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/cn;->lY:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/cn;->name:Ljava/lang/String;

    .line 18
    iput-object v2, p0, Lcom/kingroot/kinguser/cn;->lZ:Ljava/util/ArrayList;

    .line 19
    iput v1, p0, Lcom/kingroot/kinguser/cn;->ma:I

    .line 20
    iput v1, p0, Lcom/kingroot/kinguser/cn;->mb:I

    .line 21
    iput v1, p0, Lcom/kingroot/kinguser/cn;->mc:I

    .line 22
    iput v1, p0, Lcom/kingroot/kinguser/cn;->md:I

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/cn;->me:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/cn;->mf:Ljava/lang/String;

    .line 25
    iput v1, p0, Lcom/kingroot/kinguser/cn;->mg:I

    .line 26
    iput v1, p0, Lcom/kingroot/kinguser/cn;->mh:I

    .line 27
    iput v1, p0, Lcom/kingroot/kinguser/cn;->mi:I

    .line 28
    iput v1, p0, Lcom/kingroot/kinguser/cn;->mj:I

    .line 29
    iput v1, p0, Lcom/kingroot/kinguser/cn;->mk:I

    .line 30
    iput-wide v4, p0, Lcom/kingroot/kinguser/cn;->ml:J

    .line 31
    iput-wide v4, p0, Lcom/kingroot/kinguser/cn;->mm:J

    .line 32
    iput v1, p0, Lcom/kingroot/kinguser/cn;->mn:I

    .line 33
    iput-object v2, p0, Lcom/kingroot/kinguser/cn;->mo:Ljava/util/ArrayList;

    .line 36
    return-void
.end method


# virtual methods
.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 125
    iget v0, p0, Lcom/kingroot/kinguser/cn;->id:I

    invoke-virtual {p1, v0, v3, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/cn;->id:I

    .line 126
    iget v0, p0, Lcom/kingroot/kinguser/cn;->kd:I

    invoke-virtual {p1, v0, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/cn;->kd:I

    .line 127
    sget-object v0, Lcom/kingroot/kinguser/cn;->a:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/kingroot/kinguser/cn;->lV:Ljava/util/ArrayList;

    .line 128
    iget v0, p0, Lcom/kingroot/kinguser/cn;->type:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/cn;->type:I

    .line 129
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/cn;->lW:Ljava/lang/String;

    .line 130
    const/4 v0, 0x5

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/cn;->lX:Ljava/lang/String;

    .line 131
    const/4 v0, 0x6

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/cn;->lY:Ljava/lang/String;

    .line 132
    const/4 v0, 0x7

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/cn;->name:Ljava/lang/String;

    .line 133
    sget-object v0, Lcom/kingroot/kinguser/cn;->b:Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/kingroot/kinguser/cn;->lZ:Ljava/util/ArrayList;

    .line 134
    iget v0, p0, Lcom/kingroot/kinguser/cn;->ma:I

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/cn;->ma:I

    .line 135
    iget v0, p0, Lcom/kingroot/kinguser/cn;->mb:I

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/cn;->mb:I

    .line 136
    iget v0, p0, Lcom/kingroot/kinguser/cn;->mc:I

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/cn;->mc:I

    .line 137
    iget v0, p0, Lcom/kingroot/kinguser/cn;->md:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/cn;->md:I

    .line 138
    const/16 v0, 0xd

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/cn;->me:Ljava/lang/String;

    .line 139
    const/16 v0, 0xe

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/cn;->mf:Ljava/lang/String;

    .line 140
    iget v0, p0, Lcom/kingroot/kinguser/cn;->mg:I

    const/16 v1, 0xf

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/cn;->mg:I

    .line 141
    iget v0, p0, Lcom/kingroot/kinguser/cn;->mh:I

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/cn;->mh:I

    .line 142
    iget v0, p0, Lcom/kingroot/kinguser/cn;->mi:I

    const/16 v1, 0x11

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/cn;->mi:I

    .line 143
    iget v0, p0, Lcom/kingroot/kinguser/cn;->mj:I

    const/16 v1, 0x12

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/cn;->mj:I

    .line 144
    iget v0, p0, Lcom/kingroot/kinguser/cn;->mk:I

    const/16 v1, 0x13

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/cn;->mk:I

    .line 145
    iget-wide v0, p0, Lcom/kingroot/kinguser/cn;->ml:J

    const/16 v2, 0x14

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/cn;->ml:J

    .line 146
    iget-wide v0, p0, Lcom/kingroot/kinguser/cn;->mm:J

    const/16 v2, 0x15

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/cn;->mm:J

    .line 147
    iget v0, p0, Lcom/kingroot/kinguser/cn;->mn:I

    const/16 v1, 0x16

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/cn;->mn:I

    .line 148
    sget-object v0, Lcom/kingroot/kinguser/cn;->c:Ljava/util/ArrayList;

    const/16 v1, 0x17

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/kingroot/kinguser/cn;->mo:Ljava/util/ArrayList;

    .line 149
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 39
    iget v0, p0, Lcom/kingroot/kinguser/cn;->id:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 40
    iget v0, p0, Lcom/kingroot/kinguser/cn;->kd:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 41
    iget-object v0, p0, Lcom/kingroot/kinguser/cn;->lV:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    .line 42
    iget v0, p0, Lcom/kingroot/kinguser/cn;->type:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 43
    iget-object v0, p0, Lcom/kingroot/kinguser/cn;->lW:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/kingroot/kinguser/cn;->lW:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cn;->lX:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 47
    iget-object v0, p0, Lcom/kingroot/kinguser/cn;->lX:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/cn;->lY:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 50
    iget-object v0, p0, Lcom/kingroot/kinguser/cn;->lY:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 52
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/cn;->name:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 53
    iget-object v0, p0, Lcom/kingroot/kinguser/cn;->name:Ljava/lang/String;

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 55
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/cn;->lZ:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 56
    iget-object v0, p0, Lcom/kingroot/kinguser/cn;->lZ:Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    .line 58
    :cond_4
    iget v0, p0, Lcom/kingroot/kinguser/cn;->ma:I

    if-eqz v0, :cond_5

    .line 59
    iget v0, p0, Lcom/kingroot/kinguser/cn;->ma:I

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 61
    :cond_5
    iget v0, p0, Lcom/kingroot/kinguser/cn;->mb:I

    if-eqz v0, :cond_6

    .line 62
    iget v0, p0, Lcom/kingroot/kinguser/cn;->mb:I

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 64
    :cond_6
    iget v0, p0, Lcom/kingroot/kinguser/cn;->mc:I

    if-eqz v0, :cond_7

    .line 65
    iget v0, p0, Lcom/kingroot/kinguser/cn;->mc:I

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 67
    :cond_7
    iget v0, p0, Lcom/kingroot/kinguser/cn;->md:I

    if-eqz v0, :cond_8

    .line 68
    iget v0, p0, Lcom/kingroot/kinguser/cn;->md:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 70
    :cond_8
    iget-object v0, p0, Lcom/kingroot/kinguser/cn;->me:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 71
    iget-object v0, p0, Lcom/kingroot/kinguser/cn;->me:Ljava/lang/String;

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 73
    :cond_9
    iget-object v0, p0, Lcom/kingroot/kinguser/cn;->mf:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 74
    iget-object v0, p0, Lcom/kingroot/kinguser/cn;->mf:Ljava/lang/String;

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 76
    :cond_a
    iget v0, p0, Lcom/kingroot/kinguser/cn;->mg:I

    if-eqz v0, :cond_b

    .line 77
    iget v0, p0, Lcom/kingroot/kinguser/cn;->mg:I

    const/16 v1, 0xf

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 79
    :cond_b
    iget v0, p0, Lcom/kingroot/kinguser/cn;->mh:I

    if-eqz v0, :cond_c

    .line 80
    iget v0, p0, Lcom/kingroot/kinguser/cn;->mh:I

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 82
    :cond_c
    iget v0, p0, Lcom/kingroot/kinguser/cn;->mi:I

    if-eqz v0, :cond_d

    .line 83
    iget v0, p0, Lcom/kingroot/kinguser/cn;->mi:I

    const/16 v1, 0x11

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 85
    :cond_d
    iget v0, p0, Lcom/kingroot/kinguser/cn;->mj:I

    if-eqz v0, :cond_e

    .line 86
    iget v0, p0, Lcom/kingroot/kinguser/cn;->mj:I

    const/16 v1, 0x12

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 88
    :cond_e
    iget v0, p0, Lcom/kingroot/kinguser/cn;->mk:I

    if-eqz v0, :cond_f

    .line 89
    iget v0, p0, Lcom/kingroot/kinguser/cn;->mk:I

    const/16 v1, 0x13

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 91
    :cond_f
    iget-wide v0, p0, Lcom/kingroot/kinguser/cn;->ml:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_10

    .line 92
    iget-wide v0, p0, Lcom/kingroot/kinguser/cn;->ml:J

    const/16 v2, 0x14

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 94
    :cond_10
    iget-wide v0, p0, Lcom/kingroot/kinguser/cn;->mm:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_11

    .line 95
    iget-wide v0, p0, Lcom/kingroot/kinguser/cn;->mm:J

    const/16 v2, 0x15

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 97
    :cond_11
    iget v0, p0, Lcom/kingroot/kinguser/cn;->mn:I

    if-eqz v0, :cond_12

    .line 98
    iget v0, p0, Lcom/kingroot/kinguser/cn;->mn:I

    const/16 v1, 0x16

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 100
    :cond_12
    iget-object v0, p0, Lcom/kingroot/kinguser/cn;->mo:Ljava/util/ArrayList;

    if-eqz v0, :cond_13

    .line 101
    iget-object v0, p0, Lcom/kingroot/kinguser/cn;->mo:Ljava/util/ArrayList;

    const/16 v1, 0x17

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    .line 103
    :cond_13
    return-void
.end method
