.class public final Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# static fields
.field static bPQ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static bPR:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CircleInfo;

.field static nj:[B


# instance fields
.field public autoalert:I

.field public categorytype:I

.field public count:I

.field public description:Ljava/lang/String;

.field public endtime:I

.field public expand:[B

.field public groupCircleInfo:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CircleInfo;

.field public icon:Ljava/lang/String;

.field public id:I

.field public name:Ljava/lang/String;

.field public rank:I

.field public showType:I

.field public sign:I

.field public source:I

.field public state:I

.field public update_num:I

.field public vecSubtitle:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public viewtimes:I

.field public welcome:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->bPQ:Ljava/util/ArrayList;

    .line 93
    const-string v0, ""

    .line 94
    sget-object v1, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->bPQ:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    const/4 v0, 0x1

    new-array v0, v0, [B

    sput-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->nj:[B

    .line 98
    sget-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->nj:[B

    aput-byte v2, v0, v2

    .line 100
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CircleInfo;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CircleInfo;-><init>()V

    sput-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->bPR:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CircleInfo;

    .line 102
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->id:I

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->name:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->icon:Ljava/lang/String;

    .line 13
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->count:I

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->welcome:Ljava/lang/String;

    .line 15
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->autoalert:I

    .line 16
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->endtime:I

    .line 17
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->categorytype:I

    .line 18
    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->source:I

    .line 19
    iput-object v2, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->vecSubtitle:Ljava/util/ArrayList;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->description:Ljava/lang/String;

    .line 21
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->sign:I

    .line 22
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->state:I

    .line 23
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->viewtimes:I

    .line 24
    iput-object v2, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->expand:[B

    .line 25
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->rank:I

    .line 26
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->update_num:I

    .line 27
    iput v1, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->showType:I

    .line 28
    iput-object v2, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->groupCircleInfo:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CircleInfo;

    .line 31
    return-void
.end method


# virtual methods
.method public newInit()Lcom/qq/taf/jce/JceStruct;
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;-><init>()V

    return-object v0
.end method

.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 105
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->id:I

    invoke-virtual {p1, v0, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->id:I

    .line 106
    invoke-virtual {p1, v3, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->name:Ljava/lang/String;

    .line 107
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->icon:Ljava/lang/String;

    .line 108
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->count:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->count:I

    .line 109
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->welcome:Ljava/lang/String;

    .line 110
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->autoalert:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->autoalert:I

    .line 111
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->endtime:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->endtime:I

    .line 112
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->categorytype:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->categorytype:I

    .line 113
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->source:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->source:I

    .line 114
    sget-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->bPQ:Ljava/util/ArrayList;

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->vecSubtitle:Ljava/util/ArrayList;

    .line 115
    const/16 v0, 0xa

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->description:Ljava/lang/String;

    .line 116
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->sign:I

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->sign:I

    .line 117
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->state:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->state:I

    .line 118
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->viewtimes:I

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->viewtimes:I

    .line 119
    sget-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->nj:[B

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read([BIZ)[B

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->expand:[B

    .line 120
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->rank:I

    const/16 v1, 0xf

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->rank:I

    .line 121
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->update_num:I

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->update_num:I

    .line 122
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->showType:I

    const/16 v1, 0x11

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->showType:I

    .line 123
    sget-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->bPR:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CircleInfo;

    const/16 v1, 0x12

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CircleInfo;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->groupCircleInfo:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CircleInfo;

    .line 124
    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 38
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->id:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 39
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 40
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->icon:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 41
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->count:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 42
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->welcome:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->welcome:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 45
    :cond_0
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->autoalert:I

    if-eqz v0, :cond_1

    .line 46
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->autoalert:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 48
    :cond_1
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->endtime:I

    if-eqz v0, :cond_2

    .line 49
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->endtime:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 51
    :cond_2
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->categorytype:I

    if-eqz v0, :cond_3

    .line 52
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->categorytype:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 54
    :cond_3
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->source:I

    if-eq v0, v2, :cond_4

    .line 55
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->source:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 57
    :cond_4
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->vecSubtitle:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 58
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->vecSubtitle:Ljava/util/ArrayList;

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    .line 60
    :cond_5
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->description:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 61
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->description:Ljava/lang/String;

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 63
    :cond_6
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->sign:I

    if-eqz v0, :cond_7

    .line 64
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->sign:I

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 66
    :cond_7
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->state:I

    if-eqz v0, :cond_8

    .line 67
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->state:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 69
    :cond_8
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->viewtimes:I

    if-eqz v0, :cond_9

    .line 70
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->viewtimes:I

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 72
    :cond_9
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->expand:[B

    if-eqz v0, :cond_a

    .line 73
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->expand:[B

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write([BI)V

    .line 75
    :cond_a
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->rank:I

    if-eqz v0, :cond_b

    .line 76
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->rank:I

    const/16 v1, 0xf

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 78
    :cond_b
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->update_num:I

    if-eqz v0, :cond_c

    .line 79
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->update_num:I

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 81
    :cond_c
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->showType:I

    const/16 v1, 0x11

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 82
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->groupCircleInfo:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CircleInfo;

    if-eqz v0, :cond_d

    .line 83
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/Category;->groupCircleInfo:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/CircleInfo;

    const/16 v1, 0x12

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    .line 85
    :cond_d
    return-void
.end method
