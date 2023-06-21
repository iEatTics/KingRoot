.class public final Lcom/kingx/cloudsdk/b;
.super Lcom/kingx/cloudsdk/cb;
.source "SourceFile"


# static fields
.field private static bBF:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingx/cloudsdk/a;",
            ">;"
        }
    .end annotation
.end field

.field private static bBG:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingx/cloudsdk/a;",
            ">;"
        }
    .end annotation
.end field

.field private static bBH:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingx/cloudsdk/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public ac:I

.field private ad:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingx/cloudsdk/a;",
            ">;"
        }
    .end annotation
.end field

.field private ae:Ljava/lang/String;

.field public af:Ljava/lang/String;

.field private ag:Ljava/lang/String;

.field private ah:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingx/cloudsdk/a;",
            ">;"
        }
    .end annotation
.end field

.field private ai:I

.field private aj:I

.field private ak:I

.field private al:I

.field public am:Ljava/lang/String;

.field public an:Ljava/lang/String;

.field private ao:I

.field private ap:I

.field public aq:I

.field public ar:I

.field private as:I

.field private at:J

.field private au:J

.field private av:I

.field private aw:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingx/cloudsdk/b;",
            ">;"
        }
    .end annotation
.end field

.field private ax:I

.field public id:I

.field private name:Ljava/lang/String;

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/kingx/cloudsdk/b;->bBF:Ljava/util/ArrayList;

    .line 115
    new-instance v0, Lcom/kingx/cloudsdk/a;

    invoke-direct {v0}, Lcom/kingx/cloudsdk/a;-><init>()V

    .line 116
    sget-object v1, Lcom/kingx/cloudsdk/b;->bBF:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/kingx/cloudsdk/b;->bBG:Ljava/util/ArrayList;

    .line 119
    new-instance v0, Lcom/kingx/cloudsdk/a;

    invoke-direct {v0}, Lcom/kingx/cloudsdk/a;-><init>()V

    .line 120
    sget-object v1, Lcom/kingx/cloudsdk/b;->bBG:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/kingx/cloudsdk/b;->bBH:Ljava/util/ArrayList;

    .line 123
    new-instance v0, Lcom/kingx/cloudsdk/b;

    invoke-direct {v0}, Lcom/kingx/cloudsdk/b;-><init>()V

    .line 124
    sget-object v1, Lcom/kingx/cloudsdk/b;->bBH:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 11
    invoke-direct {p0}, Lcom/kingx/cloudsdk/cb;-><init>()V

    .line 12
    iput v1, p0, Lcom/kingx/cloudsdk/b;->id:I

    .line 13
    iput v1, p0, Lcom/kingx/cloudsdk/b;->ac:I

    .line 14
    iput-object v2, p0, Lcom/kingx/cloudsdk/b;->ad:Ljava/util/ArrayList;

    .line 15
    iput v1, p0, Lcom/kingx/cloudsdk/b;->type:I

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/kingx/cloudsdk/b;->ae:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/kingx/cloudsdk/b;->af:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/kingx/cloudsdk/b;->ag:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/kingx/cloudsdk/b;->name:Ljava/lang/String;

    .line 20
    iput-object v2, p0, Lcom/kingx/cloudsdk/b;->ah:Ljava/util/ArrayList;

    .line 21
    iput v1, p0, Lcom/kingx/cloudsdk/b;->ai:I

    .line 22
    iput v1, p0, Lcom/kingx/cloudsdk/b;->aj:I

    .line 23
    iput v1, p0, Lcom/kingx/cloudsdk/b;->ak:I

    .line 24
    iput v1, p0, Lcom/kingx/cloudsdk/b;->al:I

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/kingx/cloudsdk/b;->am:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/kingx/cloudsdk/b;->an:Ljava/lang/String;

    .line 27
    iput v1, p0, Lcom/kingx/cloudsdk/b;->ao:I

    .line 28
    iput v1, p0, Lcom/kingx/cloudsdk/b;->ap:I

    .line 29
    iput v1, p0, Lcom/kingx/cloudsdk/b;->aq:I

    .line 30
    iput v1, p0, Lcom/kingx/cloudsdk/b;->ar:I

    .line 31
    iput v1, p0, Lcom/kingx/cloudsdk/b;->as:I

    .line 32
    iput-wide v4, p0, Lcom/kingx/cloudsdk/b;->at:J

    .line 33
    iput-wide v4, p0, Lcom/kingx/cloudsdk/b;->au:J

    .line 34
    iput v1, p0, Lcom/kingx/cloudsdk/b;->av:I

    .line 35
    iput-object v2, p0, Lcom/kingx/cloudsdk/b;->aw:Ljava/util/ArrayList;

    .line 38
    iput v1, p0, Lcom/kingx/cloudsdk/b;->ax:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/kingroot/kinguser/bnc;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 128
    iget v0, p0, Lcom/kingx/cloudsdk/b;->id:I

    invoke-virtual {p1, v0, v3, v2}, Lcom/kingroot/kinguser/bnc;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingx/cloudsdk/b;->id:I

    .line 129
    iget v0, p0, Lcom/kingx/cloudsdk/b;->ac:I

    invoke-virtual {p1, v0, v2, v2}, Lcom/kingroot/kinguser/bnc;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingx/cloudsdk/b;->ac:I

    .line 130
    sget-object v0, Lcom/kingx/cloudsdk/b;->bBF:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/bnc;->d(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/kingx/cloudsdk/b;->ad:Ljava/util/ArrayList;

    .line 131
    iget v0, p0, Lcom/kingx/cloudsdk/b;->type:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/bnc;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingx/cloudsdk/b;->type:I

    .line 132
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v3}, Lcom/kingroot/kinguser/bnc;->z(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingx/cloudsdk/b;->ae:Ljava/lang/String;

    .line 133
    const/4 v0, 0x5

    invoke-virtual {p1, v0, v3}, Lcom/kingroot/kinguser/bnc;->z(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingx/cloudsdk/b;->af:Ljava/lang/String;

    .line 134
    const/4 v0, 0x6

    invoke-virtual {p1, v0, v3}, Lcom/kingroot/kinguser/bnc;->z(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingx/cloudsdk/b;->ag:Ljava/lang/String;

    .line 135
    const/4 v0, 0x7

    invoke-virtual {p1, v0, v3}, Lcom/kingroot/kinguser/bnc;->z(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingx/cloudsdk/b;->name:Ljava/lang/String;

    .line 136
    sget-object v0, Lcom/kingx/cloudsdk/b;->bBG:Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1, v3}, Lcom/kingroot/kinguser/bnc;->d(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/kingx/cloudsdk/b;->ah:Ljava/util/ArrayList;

    .line 137
    iget v0, p0, Lcom/kingx/cloudsdk/b;->ai:I

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1, v3}, Lcom/kingroot/kinguser/bnc;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingx/cloudsdk/b;->ai:I

    .line 138
    iget v0, p0, Lcom/kingx/cloudsdk/b;->aj:I

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1, v3}, Lcom/kingroot/kinguser/bnc;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingx/cloudsdk/b;->aj:I

    .line 139
    iget v0, p0, Lcom/kingx/cloudsdk/b;->ak:I

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1, v3}, Lcom/kingroot/kinguser/bnc;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingx/cloudsdk/b;->ak:I

    .line 140
    iget v0, p0, Lcom/kingx/cloudsdk/b;->al:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1, v3}, Lcom/kingroot/kinguser/bnc;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingx/cloudsdk/b;->al:I

    .line 141
    const/16 v0, 0xd

    invoke-virtual {p1, v0, v3}, Lcom/kingroot/kinguser/bnc;->z(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingx/cloudsdk/b;->am:Ljava/lang/String;

    .line 142
    const/16 v0, 0xe

    invoke-virtual {p1, v0, v3}, Lcom/kingroot/kinguser/bnc;->z(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingx/cloudsdk/b;->an:Ljava/lang/String;

    .line 143
    iget v0, p0, Lcom/kingx/cloudsdk/b;->ao:I

    const/16 v1, 0xf

    invoke-virtual {p1, v0, v1, v3}, Lcom/kingroot/kinguser/bnc;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingx/cloudsdk/b;->ao:I

    .line 144
    iget v0, p0, Lcom/kingx/cloudsdk/b;->ap:I

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1, v3}, Lcom/kingroot/kinguser/bnc;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingx/cloudsdk/b;->ap:I

    .line 145
    iget v0, p0, Lcom/kingx/cloudsdk/b;->aq:I

    const/16 v1, 0x11

    invoke-virtual {p1, v0, v1, v3}, Lcom/kingroot/kinguser/bnc;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingx/cloudsdk/b;->aq:I

    .line 146
    iget v0, p0, Lcom/kingx/cloudsdk/b;->ar:I

    const/16 v1, 0x12

    invoke-virtual {p1, v0, v1, v3}, Lcom/kingroot/kinguser/bnc;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingx/cloudsdk/b;->ar:I

    .line 147
    iget v0, p0, Lcom/kingx/cloudsdk/b;->as:I

    const/16 v1, 0x13

    invoke-virtual {p1, v0, v1, v3}, Lcom/kingroot/kinguser/bnc;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingx/cloudsdk/b;->as:I

    .line 148
    iget-wide v0, p0, Lcom/kingx/cloudsdk/b;->at:J

    const/16 v2, 0x14

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/kingroot/kinguser/bnc;->a(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingx/cloudsdk/b;->at:J

    .line 149
    iget-wide v0, p0, Lcom/kingx/cloudsdk/b;->au:J

    const/16 v2, 0x15

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/kingroot/kinguser/bnc;->a(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingx/cloudsdk/b;->au:J

    .line 150
    iget v0, p0, Lcom/kingx/cloudsdk/b;->av:I

    const/16 v1, 0x16

    invoke-virtual {p1, v0, v1, v3}, Lcom/kingroot/kinguser/bnc;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingx/cloudsdk/b;->av:I

    .line 151
    sget-object v0, Lcom/kingx/cloudsdk/b;->bBH:Ljava/util/ArrayList;

    const/16 v1, 0x17

    invoke-virtual {p1, v0, v1, v3}, Lcom/kingroot/kinguser/bnc;->d(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/kingx/cloudsdk/b;->aw:Ljava/util/ArrayList;

    .line 152
    iget v0, p0, Lcom/kingx/cloudsdk/b;->ax:I

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1, v3}, Lcom/kingroot/kinguser/bnc;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingx/cloudsdk/b;->ax:I

    .line 153
    return-void
.end method

.method public final a(Lcom/kingroot/kinguser/bnd;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 41
    iget v0, p0, Lcom/kingx/cloudsdk/b;->id:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->am(II)V

    .line 42
    iget v0, p0, Lcom/kingx/cloudsdk/b;->ac:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->am(II)V

    .line 43
    iget-object v0, p0, Lcom/kingx/cloudsdk/b;->ad:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->a(Ljava/util/Collection;I)V

    .line 44
    iget v0, p0, Lcom/kingx/cloudsdk/b;->type:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->am(II)V

    .line 45
    iget-object v0, p0, Lcom/kingx/cloudsdk/b;->ae:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/kingx/cloudsdk/b;->ae:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->T(Ljava/lang/String;I)V

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/kingx/cloudsdk/b;->af:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/kingx/cloudsdk/b;->af:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->T(Ljava/lang/String;I)V

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/kingx/cloudsdk/b;->ag:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 52
    iget-object v0, p0, Lcom/kingx/cloudsdk/b;->ag:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->T(Ljava/lang/String;I)V

    .line 54
    :cond_2
    iget-object v0, p0, Lcom/kingx/cloudsdk/b;->name:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 55
    iget-object v0, p0, Lcom/kingx/cloudsdk/b;->name:Ljava/lang/String;

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->T(Ljava/lang/String;I)V

    .line 57
    :cond_3
    iget-object v0, p0, Lcom/kingx/cloudsdk/b;->ah:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 58
    iget-object v0, p0, Lcom/kingx/cloudsdk/b;->ah:Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->a(Ljava/util/Collection;I)V

    .line 60
    :cond_4
    iget v0, p0, Lcom/kingx/cloudsdk/b;->ai:I

    if-eqz v0, :cond_5

    .line 61
    iget v0, p0, Lcom/kingx/cloudsdk/b;->ai:I

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->am(II)V

    .line 63
    :cond_5
    iget v0, p0, Lcom/kingx/cloudsdk/b;->aj:I

    if-eqz v0, :cond_6

    .line 64
    iget v0, p0, Lcom/kingx/cloudsdk/b;->aj:I

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->am(II)V

    .line 66
    :cond_6
    iget v0, p0, Lcom/kingx/cloudsdk/b;->ak:I

    if-eqz v0, :cond_7

    .line 67
    iget v0, p0, Lcom/kingx/cloudsdk/b;->ak:I

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->am(II)V

    .line 69
    :cond_7
    iget v0, p0, Lcom/kingx/cloudsdk/b;->al:I

    if-eqz v0, :cond_8

    .line 70
    iget v0, p0, Lcom/kingx/cloudsdk/b;->al:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->am(II)V

    .line 72
    :cond_8
    iget-object v0, p0, Lcom/kingx/cloudsdk/b;->am:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 73
    iget-object v0, p0, Lcom/kingx/cloudsdk/b;->am:Ljava/lang/String;

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->T(Ljava/lang/String;I)V

    .line 75
    :cond_9
    iget-object v0, p0, Lcom/kingx/cloudsdk/b;->an:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 76
    iget-object v0, p0, Lcom/kingx/cloudsdk/b;->an:Ljava/lang/String;

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->T(Ljava/lang/String;I)V

    .line 78
    :cond_a
    iget v0, p0, Lcom/kingx/cloudsdk/b;->ao:I

    if-eqz v0, :cond_b

    .line 79
    iget v0, p0, Lcom/kingx/cloudsdk/b;->ao:I

    const/16 v1, 0xf

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->am(II)V

    .line 81
    :cond_b
    iget v0, p0, Lcom/kingx/cloudsdk/b;->ap:I

    if-eqz v0, :cond_c

    .line 82
    iget v0, p0, Lcom/kingx/cloudsdk/b;->ap:I

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->am(II)V

    .line 84
    :cond_c
    iget v0, p0, Lcom/kingx/cloudsdk/b;->aq:I

    if-eqz v0, :cond_d

    .line 85
    iget v0, p0, Lcom/kingx/cloudsdk/b;->aq:I

    const/16 v1, 0x11

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->am(II)V

    .line 87
    :cond_d
    iget v0, p0, Lcom/kingx/cloudsdk/b;->ar:I

    if-eqz v0, :cond_e

    .line 88
    iget v0, p0, Lcom/kingx/cloudsdk/b;->ar:I

    const/16 v1, 0x12

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->am(II)V

    .line 90
    :cond_e
    iget v0, p0, Lcom/kingx/cloudsdk/b;->as:I

    if-eqz v0, :cond_f

    .line 91
    iget v0, p0, Lcom/kingx/cloudsdk/b;->as:I

    const/16 v1, 0x13

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->am(II)V

    .line 93
    :cond_f
    iget-wide v0, p0, Lcom/kingx/cloudsdk/b;->at:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_10

    .line 94
    iget-wide v0, p0, Lcom/kingx/cloudsdk/b;->at:J

    const/16 v2, 0x14

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/bnd;->a(JI)V

    .line 96
    :cond_10
    iget-wide v0, p0, Lcom/kingx/cloudsdk/b;->au:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_11

    .line 97
    iget-wide v0, p0, Lcom/kingx/cloudsdk/b;->au:J

    const/16 v2, 0x15

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/bnd;->a(JI)V

    .line 99
    :cond_11
    iget v0, p0, Lcom/kingx/cloudsdk/b;->av:I

    if-eqz v0, :cond_12

    .line 100
    iget v0, p0, Lcom/kingx/cloudsdk/b;->av:I

    const/16 v1, 0x16

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->am(II)V

    .line 102
    :cond_12
    iget-object v0, p0, Lcom/kingx/cloudsdk/b;->aw:Ljava/util/ArrayList;

    if-eqz v0, :cond_13

    .line 103
    iget-object v0, p0, Lcom/kingx/cloudsdk/b;->aw:Ljava/util/ArrayList;

    const/16 v1, 0x17

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->a(Ljava/util/Collection;I)V

    .line 105
    :cond_13
    iget v0, p0, Lcom/kingx/cloudsdk/b;->ax:I

    if-eqz v0, :cond_14

    .line 106
    iget v0, p0, Lcom/kingx/cloudsdk/b;->ax:I

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->am(II)V

    .line 108
    :cond_14
    return-void
.end method
