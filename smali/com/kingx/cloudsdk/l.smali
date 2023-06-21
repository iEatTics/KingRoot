.class public final Lcom/kingx/cloudsdk/l;
.super Lcom/kingx/cloudsdk/cb;
.source "SourceFile"


# static fields
.field private static bCX:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingx/cloudsdk/f;",
            ">;"
        }
    .end annotation
.end field

.field private static bCY:Lcom/kingx/cloudsdk/i;

.field private static bCZ:Lcom/kingx/cloudsdk/j;

.field private static bDa:Lcom/kingx/cloudsdk/c;

.field private static bDb:Lcom/kingx/cloudsdk/o;


# instance fields
.field public aM:Ljava/lang/String;

.field public aN:I

.field private aW:Ljava/lang/String;

.field private aX:I

.field private aY:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingx/cloudsdk/f;",
            ">;"
        }
    .end annotation
.end field

.field private aZ:Ljava/lang/String;

.field public ba:Ljava/lang/String;

.field public bb:I

.field public bc:Ljava/lang/String;

.field private bd:J

.field public be:Z

.field public bf:I

.field private bg:I

.field private bh:Lcom/kingx/cloudsdk/i;

.field public bi:Lcom/kingx/cloudsdk/j;

.field public bj:Z

.field private bk:I

.field private bl:Z

.field private bm:I

.field private bn:Z

.field private bo:Lcom/kingx/cloudsdk/c;

.field public bp:Lcom/kingx/cloudsdk/o;

.field public bq:J

.field private br:I

.field private bs:Ljava/lang/String;

.field public id:I

.field private initOrder:I

.field private level:I

.field private name:Ljava/lang/String;

.field public version:I

.field private versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Lcom/kingx/cloudsdk/cb;-><init>()V

    .line 10
    iput v1, p0, Lcom/kingx/cloudsdk/l;->id:I

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/kingx/cloudsdk/l;->aM:Ljava/lang/String;

    .line 12
    iput v1, p0, Lcom/kingx/cloudsdk/l;->version:I

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/kingx/cloudsdk/l;->versionName:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/kingx/cloudsdk/l;->name:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/kingx/cloudsdk/l;->aW:Ljava/lang/String;

    .line 16
    iput v1, p0, Lcom/kingx/cloudsdk/l;->aX:I

    .line 17
    iput-object v2, p0, Lcom/kingx/cloudsdk/l;->aY:Ljava/util/ArrayList;

    .line 18
    iput v1, p0, Lcom/kingx/cloudsdk/l;->level:I

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/kingx/cloudsdk/l;->aZ:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/kingx/cloudsdk/l;->ba:Ljava/lang/String;

    .line 21
    iput v1, p0, Lcom/kingx/cloudsdk/l;->bb:I

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/kingx/cloudsdk/l;->bc:Ljava/lang/String;

    .line 23
    iput-wide v4, p0, Lcom/kingx/cloudsdk/l;->bd:J

    .line 24
    iput-boolean v3, p0, Lcom/kingx/cloudsdk/l;->be:Z

    .line 25
    iput v1, p0, Lcom/kingx/cloudsdk/l;->bf:I

    .line 26
    iput v1, p0, Lcom/kingx/cloudsdk/l;->bg:I

    .line 27
    iput-object v2, p0, Lcom/kingx/cloudsdk/l;->bh:Lcom/kingx/cloudsdk/i;

    .line 28
    iput-object v2, p0, Lcom/kingx/cloudsdk/l;->bi:Lcom/kingx/cloudsdk/j;

    .line 29
    iput-boolean v3, p0, Lcom/kingx/cloudsdk/l;->bj:Z

    .line 30
    iput v1, p0, Lcom/kingx/cloudsdk/l;->bk:I

    .line 31
    iput-boolean v3, p0, Lcom/kingx/cloudsdk/l;->bl:Z

    .line 32
    iput v1, p0, Lcom/kingx/cloudsdk/l;->bm:I

    .line 33
    iput-boolean v3, p0, Lcom/kingx/cloudsdk/l;->bn:Z

    .line 34
    iput v1, p0, Lcom/kingx/cloudsdk/l;->initOrder:I

    .line 35
    iput-object v2, p0, Lcom/kingx/cloudsdk/l;->bo:Lcom/kingx/cloudsdk/c;

    .line 36
    iput-object v2, p0, Lcom/kingx/cloudsdk/l;->bp:Lcom/kingx/cloudsdk/o;

    .line 37
    iput v1, p0, Lcom/kingx/cloudsdk/l;->aN:I

    .line 38
    iput-wide v4, p0, Lcom/kingx/cloudsdk/l;->bq:J

    .line 39
    iput v1, p0, Lcom/kingx/cloudsdk/l;->br:I

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/kingx/cloudsdk/l;->bs:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public final a(Lcom/kingroot/kinguser/bnc;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 108
    iget v0, p0, Lcom/kingx/cloudsdk/l;->id:I

    invoke-virtual {p1, v0, v3, v4}, Lcom/kingroot/kinguser/bnc;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingx/cloudsdk/l;->id:I

    .line 109
    invoke-virtual {p1, v4, v4}, Lcom/kingroot/kinguser/bnc;->z(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingx/cloudsdk/l;->aM:Ljava/lang/String;

    .line 110
    iget v0, p0, Lcom/kingx/cloudsdk/l;->version:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v4}, Lcom/kingroot/kinguser/bnc;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingx/cloudsdk/l;->version:I

    .line 111
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v4}, Lcom/kingroot/kinguser/bnc;->z(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingx/cloudsdk/l;->versionName:Ljava/lang/String;

    .line 112
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v4}, Lcom/kingroot/kinguser/bnc;->z(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingx/cloudsdk/l;->name:Ljava/lang/String;

    .line 113
    const/4 v0, 0x5

    invoke-virtual {p1, v0, v4}, Lcom/kingroot/kinguser/bnc;->z(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingx/cloudsdk/l;->aW:Ljava/lang/String;

    .line 114
    iget v0, p0, Lcom/kingx/cloudsdk/l;->aX:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1, v4}, Lcom/kingroot/kinguser/bnc;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingx/cloudsdk/l;->aX:I

    .line 115
    sget-object v0, Lcom/kingx/cloudsdk/l;->bCX:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/kingx/cloudsdk/l;->bCX:Ljava/util/ArrayList;

    .line 117
    new-instance v0, Lcom/kingx/cloudsdk/f;

    invoke-direct {v0}, Lcom/kingx/cloudsdk/f;-><init>()V

    .line 118
    sget-object v1, Lcom/kingx/cloudsdk/l;->bCX:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_0
    sget-object v0, Lcom/kingx/cloudsdk/l;->bCX:Ljava/util/ArrayList;

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1, v4}, Lcom/kingroot/kinguser/bnc;->d(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/kingx/cloudsdk/l;->aY:Ljava/util/ArrayList;

    .line 121
    iget v0, p0, Lcom/kingx/cloudsdk/l;->level:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1, v4}, Lcom/kingroot/kinguser/bnc;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingx/cloudsdk/l;->level:I

    .line 122
    const/16 v0, 0x9

    invoke-virtual {p1, v0, v4}, Lcom/kingroot/kinguser/bnc;->z(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingx/cloudsdk/l;->aZ:Ljava/lang/String;

    .line 123
    const/16 v0, 0xa

    invoke-virtual {p1, v0, v4}, Lcom/kingroot/kinguser/bnc;->z(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingx/cloudsdk/l;->ba:Ljava/lang/String;

    .line 124
    iget v0, p0, Lcom/kingx/cloudsdk/l;->bb:I

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1, v4}, Lcom/kingroot/kinguser/bnc;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingx/cloudsdk/l;->bb:I

    .line 125
    const/16 v0, 0xc

    invoke-virtual {p1, v0, v4}, Lcom/kingroot/kinguser/bnc;->z(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingx/cloudsdk/l;->bc:Ljava/lang/String;

    .line 126
    iget-wide v0, p0, Lcom/kingx/cloudsdk/l;->bd:J

    const/16 v2, 0xd

    invoke-virtual {p1, v0, v1, v2, v4}, Lcom/kingroot/kinguser/bnc;->a(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingx/cloudsdk/l;->bd:J

    .line 127
    iget-boolean v0, p0, Lcom/kingx/cloudsdk/l;->be:Z

    const/16 v0, 0xe

    invoke-virtual {p1, v0, v4}, Lcom/kingroot/kinguser/bnc;->y(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingx/cloudsdk/l;->be:Z

    .line 128
    iget v0, p0, Lcom/kingx/cloudsdk/l;->bf:I

    const/16 v1, 0xf

    invoke-virtual {p1, v0, v1, v3}, Lcom/kingroot/kinguser/bnc;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingx/cloudsdk/l;->bf:I

    .line 129
    iget v0, p0, Lcom/kingx/cloudsdk/l;->bg:I

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1, v3}, Lcom/kingroot/kinguser/bnc;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingx/cloudsdk/l;->bg:I

    .line 130
    sget-object v0, Lcom/kingx/cloudsdk/l;->bCY:Lcom/kingx/cloudsdk/i;

    if-nez v0, :cond_1

    .line 131
    new-instance v0, Lcom/kingx/cloudsdk/i;

    invoke-direct {v0}, Lcom/kingx/cloudsdk/i;-><init>()V

    sput-object v0, Lcom/kingx/cloudsdk/l;->bCY:Lcom/kingx/cloudsdk/i;

    .line 133
    :cond_1
    sget-object v0, Lcom/kingx/cloudsdk/l;->bCY:Lcom/kingx/cloudsdk/i;

    const/16 v1, 0x11

    invoke-virtual {p1, v0, v1, v3}, Lcom/kingroot/kinguser/bnc;->a(Lcom/kingx/cloudsdk/cb;IZ)Lcom/kingx/cloudsdk/cb;

    move-result-object v0

    check-cast v0, Lcom/kingx/cloudsdk/i;

    iput-object v0, p0, Lcom/kingx/cloudsdk/l;->bh:Lcom/kingx/cloudsdk/i;

    .line 134
    sget-object v0, Lcom/kingx/cloudsdk/l;->bCZ:Lcom/kingx/cloudsdk/j;

    if-nez v0, :cond_2

    .line 135
    new-instance v0, Lcom/kingx/cloudsdk/j;

    invoke-direct {v0}, Lcom/kingx/cloudsdk/j;-><init>()V

    sput-object v0, Lcom/kingx/cloudsdk/l;->bCZ:Lcom/kingx/cloudsdk/j;

    .line 137
    :cond_2
    sget-object v0, Lcom/kingx/cloudsdk/l;->bCZ:Lcom/kingx/cloudsdk/j;

    const/16 v1, 0x12

    invoke-virtual {p1, v0, v1, v3}, Lcom/kingroot/kinguser/bnc;->a(Lcom/kingx/cloudsdk/cb;IZ)Lcom/kingx/cloudsdk/cb;

    move-result-object v0

    check-cast v0, Lcom/kingx/cloudsdk/j;

    iput-object v0, p0, Lcom/kingx/cloudsdk/l;->bi:Lcom/kingx/cloudsdk/j;

    .line 138
    iget-boolean v0, p0, Lcom/kingx/cloudsdk/l;->bj:Z

    const/16 v0, 0x13

    invoke-virtual {p1, v0, v3}, Lcom/kingroot/kinguser/bnc;->y(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingx/cloudsdk/l;->bj:Z

    .line 139
    iget v0, p0, Lcom/kingx/cloudsdk/l;->bk:I

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1, v3}, Lcom/kingroot/kinguser/bnc;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingx/cloudsdk/l;->bk:I

    .line 140
    iget-boolean v0, p0, Lcom/kingx/cloudsdk/l;->bl:Z

    const/16 v0, 0x15

    invoke-virtual {p1, v0, v3}, Lcom/kingroot/kinguser/bnc;->y(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingx/cloudsdk/l;->bl:Z

    .line 141
    iget v0, p0, Lcom/kingx/cloudsdk/l;->bm:I

    const/16 v1, 0x16

    invoke-virtual {p1, v0, v1, v3}, Lcom/kingroot/kinguser/bnc;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingx/cloudsdk/l;->bm:I

    .line 142
    iget-boolean v0, p0, Lcom/kingx/cloudsdk/l;->bn:Z

    const/16 v0, 0x17

    invoke-virtual {p1, v0, v3}, Lcom/kingroot/kinguser/bnc;->y(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingx/cloudsdk/l;->bn:Z

    .line 143
    iget v0, p0, Lcom/kingx/cloudsdk/l;->initOrder:I

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1, v3}, Lcom/kingroot/kinguser/bnc;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingx/cloudsdk/l;->initOrder:I

    .line 144
    sget-object v0, Lcom/kingx/cloudsdk/l;->bDa:Lcom/kingx/cloudsdk/c;

    if-nez v0, :cond_3

    .line 145
    new-instance v0, Lcom/kingx/cloudsdk/c;

    invoke-direct {v0}, Lcom/kingx/cloudsdk/c;-><init>()V

    sput-object v0, Lcom/kingx/cloudsdk/l;->bDa:Lcom/kingx/cloudsdk/c;

    .line 147
    :cond_3
    sget-object v0, Lcom/kingx/cloudsdk/l;->bDa:Lcom/kingx/cloudsdk/c;

    const/16 v1, 0x19

    invoke-virtual {p1, v0, v1, v3}, Lcom/kingroot/kinguser/bnc;->a(Lcom/kingx/cloudsdk/cb;IZ)Lcom/kingx/cloudsdk/cb;

    move-result-object v0

    check-cast v0, Lcom/kingx/cloudsdk/c;

    iput-object v0, p0, Lcom/kingx/cloudsdk/l;->bo:Lcom/kingx/cloudsdk/c;

    .line 148
    sget-object v0, Lcom/kingx/cloudsdk/l;->bDb:Lcom/kingx/cloudsdk/o;

    if-nez v0, :cond_4

    .line 149
    new-instance v0, Lcom/kingx/cloudsdk/o;

    invoke-direct {v0}, Lcom/kingx/cloudsdk/o;-><init>()V

    sput-object v0, Lcom/kingx/cloudsdk/l;->bDb:Lcom/kingx/cloudsdk/o;

    .line 151
    :cond_4
    sget-object v0, Lcom/kingx/cloudsdk/l;->bDb:Lcom/kingx/cloudsdk/o;

    const/16 v1, 0x1a

    invoke-virtual {p1, v0, v1, v3}, Lcom/kingroot/kinguser/bnc;->a(Lcom/kingx/cloudsdk/cb;IZ)Lcom/kingx/cloudsdk/cb;

    move-result-object v0

    check-cast v0, Lcom/kingx/cloudsdk/o;

    iput-object v0, p0, Lcom/kingx/cloudsdk/l;->bp:Lcom/kingx/cloudsdk/o;

    .line 152
    iget v0, p0, Lcom/kingx/cloudsdk/l;->aN:I

    const/16 v1, 0x1b

    invoke-virtual {p1, v0, v1, v3}, Lcom/kingroot/kinguser/bnc;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingx/cloudsdk/l;->aN:I

    .line 153
    iget-wide v0, p0, Lcom/kingx/cloudsdk/l;->bq:J

    const/16 v2, 0x1c

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/kingroot/kinguser/bnc;->a(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingx/cloudsdk/l;->bq:J

    .line 154
    iget v0, p0, Lcom/kingx/cloudsdk/l;->br:I

    const/16 v1, 0x1d

    invoke-virtual {p1, v0, v1, v3}, Lcom/kingroot/kinguser/bnc;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingx/cloudsdk/l;->br:I

    .line 155
    const/16 v0, 0x1e

    invoke-virtual {p1, v0, v3}, Lcom/kingroot/kinguser/bnc;->z(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingx/cloudsdk/l;->bs:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public final a(Lcom/kingroot/kinguser/bnd;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 46
    iget v0, p0, Lcom/kingx/cloudsdk/l;->id:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->am(II)V

    .line 47
    iget-object v0, p0, Lcom/kingx/cloudsdk/l;->aM:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Lcom/kingroot/kinguser/bnd;->T(Ljava/lang/String;I)V

    .line 48
    iget v0, p0, Lcom/kingx/cloudsdk/l;->version:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->am(II)V

    .line 49
    iget-object v0, p0, Lcom/kingx/cloudsdk/l;->versionName:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->T(Ljava/lang/String;I)V

    .line 50
    iget-object v0, p0, Lcom/kingx/cloudsdk/l;->name:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->T(Ljava/lang/String;I)V

    .line 51
    iget-object v0, p0, Lcom/kingx/cloudsdk/l;->aW:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->T(Ljava/lang/String;I)V

    .line 52
    iget v0, p0, Lcom/kingx/cloudsdk/l;->aX:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->am(II)V

    .line 53
    iget-object v0, p0, Lcom/kingx/cloudsdk/l;->aY:Ljava/util/ArrayList;

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->a(Ljava/util/Collection;I)V

    .line 54
    iget v0, p0, Lcom/kingx/cloudsdk/l;->level:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->am(II)V

    .line 55
    iget-object v0, p0, Lcom/kingx/cloudsdk/l;->aZ:Ljava/lang/String;

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->T(Ljava/lang/String;I)V

    .line 56
    iget-object v0, p0, Lcom/kingx/cloudsdk/l;->ba:Ljava/lang/String;

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->T(Ljava/lang/String;I)V

    .line 57
    iget v0, p0, Lcom/kingx/cloudsdk/l;->bb:I

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->am(II)V

    .line 58
    iget-object v0, p0, Lcom/kingx/cloudsdk/l;->bc:Ljava/lang/String;

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->T(Ljava/lang/String;I)V

    .line 59
    iget-wide v0, p0, Lcom/kingx/cloudsdk/l;->bd:J

    const/16 v2, 0xd

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/bnd;->a(JI)V

    .line 60
    iget-boolean v0, p0, Lcom/kingx/cloudsdk/l;->be:Z

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->a(ZI)V

    .line 61
    iget v0, p0, Lcom/kingx/cloudsdk/l;->bf:I

    const/16 v1, 0xf

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->am(II)V

    .line 62
    iget v0, p0, Lcom/kingx/cloudsdk/l;->bg:I

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->am(II)V

    .line 63
    iget-object v0, p0, Lcom/kingx/cloudsdk/l;->bh:Lcom/kingx/cloudsdk/i;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/kingx/cloudsdk/l;->bh:Lcom/kingx/cloudsdk/i;

    const/16 v1, 0x11

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->a(Lcom/kingx/cloudsdk/cb;I)V

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/kingx/cloudsdk/l;->bi:Lcom/kingx/cloudsdk/j;

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/kingx/cloudsdk/l;->bi:Lcom/kingx/cloudsdk/j;

    const/16 v1, 0x12

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->a(Lcom/kingx/cloudsdk/cb;I)V

    .line 69
    :cond_1
    iget-boolean v0, p0, Lcom/kingx/cloudsdk/l;->bj:Z

    if-eq v0, v3, :cond_2

    .line 70
    iget-boolean v0, p0, Lcom/kingx/cloudsdk/l;->bj:Z

    const/16 v1, 0x13

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->a(ZI)V

    .line 72
    :cond_2
    iget v0, p0, Lcom/kingx/cloudsdk/l;->bk:I

    if-eqz v0, :cond_3

    .line 73
    iget v0, p0, Lcom/kingx/cloudsdk/l;->bk:I

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->am(II)V

    .line 75
    :cond_3
    iget-boolean v0, p0, Lcom/kingx/cloudsdk/l;->bl:Z

    if-eq v0, v3, :cond_4

    .line 76
    iget-boolean v0, p0, Lcom/kingx/cloudsdk/l;->bl:Z

    const/16 v1, 0x15

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->a(ZI)V

    .line 78
    :cond_4
    iget v0, p0, Lcom/kingx/cloudsdk/l;->bm:I

    const/16 v1, 0x16

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->am(II)V

    .line 79
    iget-boolean v0, p0, Lcom/kingx/cloudsdk/l;->bn:Z

    if-eq v0, v3, :cond_5

    .line 80
    iget-boolean v0, p0, Lcom/kingx/cloudsdk/l;->bn:Z

    const/16 v1, 0x17

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->a(ZI)V

    .line 82
    :cond_5
    iget v0, p0, Lcom/kingx/cloudsdk/l;->initOrder:I

    if-eqz v0, :cond_6

    .line 83
    iget v0, p0, Lcom/kingx/cloudsdk/l;->initOrder:I

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->am(II)V

    .line 85
    :cond_6
    iget-object v0, p0, Lcom/kingx/cloudsdk/l;->bo:Lcom/kingx/cloudsdk/c;

    if-eqz v0, :cond_7

    .line 86
    iget-object v0, p0, Lcom/kingx/cloudsdk/l;->bo:Lcom/kingx/cloudsdk/c;

    const/16 v1, 0x19

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->a(Lcom/kingx/cloudsdk/cb;I)V

    .line 88
    :cond_7
    iget-object v0, p0, Lcom/kingx/cloudsdk/l;->bp:Lcom/kingx/cloudsdk/o;

    if-eqz v0, :cond_8

    .line 89
    iget-object v0, p0, Lcom/kingx/cloudsdk/l;->bp:Lcom/kingx/cloudsdk/o;

    const/16 v1, 0x1a

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->a(Lcom/kingx/cloudsdk/cb;I)V

    .line 91
    :cond_8
    iget v0, p0, Lcom/kingx/cloudsdk/l;->aN:I

    const/16 v1, 0x1b

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->am(II)V

    .line 92
    iget-wide v0, p0, Lcom/kingx/cloudsdk/l;->bq:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_9

    .line 93
    iget-wide v0, p0, Lcom/kingx/cloudsdk/l;->bq:J

    const/16 v2, 0x1c

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/bnd;->a(JI)V

    .line 95
    :cond_9
    iget v0, p0, Lcom/kingx/cloudsdk/l;->br:I

    const/16 v1, 0x1d

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->am(II)V

    .line 96
    iget-object v0, p0, Lcom/kingx/cloudsdk/l;->bs:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 97
    iget-object v0, p0, Lcom/kingx/cloudsdk/l;->bs:Ljava/lang/String;

    const/16 v1, 0x1e

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->T(Ljava/lang/String;I)V

    .line 99
    :cond_a
    return-void
.end method
