.class public final Lcom/kingroot/kinguser/au;
.super Lcom/qq/taf/jce/JceStruct;
.source "SourceFile"


# instance fields
.field public dS:I

.field public dT:Ljava/lang/String;

.field public iE:Ljava/lang/String;

.field public iF:Ljava/lang/String;

.field public iG:Ljava/lang/String;

.field public iH:Ljava/lang/String;

.field public iI:I

.field public iJ:I

.field public iK:Z

.field public iL:Ljava/lang/String;

.field public iM:Ljava/lang/String;

.field public iN:I

.field public iO:Ljava/lang/String;

.field public iP:S

.field public jA:Ljava/lang/String;

.field public jB:Ljava/lang/String;

.field public jC:Ljava/lang/String;

.field public jD:Ljava/lang/String;

.field public jE:Ljava/lang/String;

.field public jF:Ljava/lang/String;

.field public jG:Ljava/lang/String;

.field public jH:Ljava/lang/String;

.field public jI:J

.field public jJ:Ljava/lang/String;

.field public jK:Ljava/lang/String;

.field public jL:I

.field public jM:Ljava/lang/String;

.field public jN:Ljava/lang/String;

.field public jO:Ljava/lang/String;

.field public ja:I

.field public jb:Ljava/lang/String;

.field public jc:Ljava/lang/String;

.field public jd:I

.field public je:Ljava/lang/String;

.field public jf:J

.field public jg:J

.field public jh:J

.field public ji:Ljava/lang/String;

.field public jj:Ljava/lang/String;

.field public jk:Ljava/lang/String;

.field public jl:Ljava/lang/String;

.field public jm:Ljava/lang/String;

.field public jn:Ljava/lang/String;

.field public jo:Ljava/lang/String;

.field public jp:Ljava/lang/String;

.field public jq:I

.field public jr:I

.field public js:Z

.field public jt:Ljava/lang/String;

.field public ju:Ljava/lang/String;

.field public jv:Ljava/lang/String;

.field public jw:Z

.field public jx:Z

.field public jy:I

.field public jz:Ljava/lang/String;

.field public lc:Ljava/lang/String;

.field public product:I

.field public qq:Ljava/lang/String;

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/au;->iE:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/au;->iF:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/au;->iG:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/au;->qq:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/au;->iH:Ljava/lang/String;

    .line 15
    iput v4, p0, Lcom/kingroot/kinguser/au;->product:I

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/au;->lc:Ljava/lang/String;

    .line 17
    iput v1, p0, Lcom/kingroot/kinguser/au;->dS:I

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/au;->dT:Ljava/lang/String;

    .line 19
    iput v1, p0, Lcom/kingroot/kinguser/au;->iI:I

    .line 20
    iput v1, p0, Lcom/kingroot/kinguser/au;->iJ:I

    .line 21
    iput-boolean v1, p0, Lcom/kingroot/kinguser/au;->iK:Z

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/au;->iL:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/au;->iM:Ljava/lang/String;

    .line 24
    iput v1, p0, Lcom/kingroot/kinguser/au;->iN:I

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/au;->iO:Ljava/lang/String;

    .line 26
    iput-short v1, p0, Lcom/kingroot/kinguser/au;->iP:S

    .line 27
    iput v1, p0, Lcom/kingroot/kinguser/au;->ja:I

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/au;->jb:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/au;->jc:Ljava/lang/String;

    .line 30
    iput v1, p0, Lcom/kingroot/kinguser/au;->jd:I

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/au;->je:Ljava/lang/String;

    .line 32
    iput-wide v2, p0, Lcom/kingroot/kinguser/au;->jf:J

    .line 33
    iput-wide v2, p0, Lcom/kingroot/kinguser/au;->jg:J

    .line 34
    iput-wide v2, p0, Lcom/kingroot/kinguser/au;->jh:J

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/au;->ji:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/au;->jj:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/au;->jk:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/au;->jl:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/au;->jm:Ljava/lang/String;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/au;->jn:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/au;->jo:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/au;->jp:Ljava/lang/String;

    .line 43
    iput v1, p0, Lcom/kingroot/kinguser/au;->jq:I

    .line 44
    iput v1, p0, Lcom/kingroot/kinguser/au;->jr:I

    .line 45
    iput-boolean v1, p0, Lcom/kingroot/kinguser/au;->js:Z

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/au;->jt:Ljava/lang/String;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/au;->ju:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/au;->jv:Ljava/lang/String;

    .line 49
    iput-boolean v1, p0, Lcom/kingroot/kinguser/au;->jw:Z

    .line 50
    iput-boolean v1, p0, Lcom/kingroot/kinguser/au;->jx:Z

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/au;->version:Ljava/lang/String;

    .line 52
    iput v4, p0, Lcom/kingroot/kinguser/au;->jy:I

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/au;->jz:Ljava/lang/String;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/au;->jA:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/au;->jB:Ljava/lang/String;

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/au;->jC:Ljava/lang/String;

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/au;->jD:Ljava/lang/String;

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/au;->jE:Ljava/lang/String;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/au;->jF:Ljava/lang/String;

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/au;->jG:Ljava/lang/String;

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/au;->jH:Ljava/lang/String;

    .line 62
    iput-wide v2, p0, Lcom/kingroot/kinguser/au;->jI:J

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/au;->jJ:Ljava/lang/String;

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/au;->jK:Ljava/lang/String;

    .line 65
    iput v1, p0, Lcom/kingroot/kinguser/au;->jL:I

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/au;->jM:Ljava/lang/String;

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/au;->jN:Ljava/lang/String;

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/au;->jO:Ljava/lang/String;

    .line 71
    return-void
.end method


# virtual methods
.method public final newInit()Lcom/qq/taf/jce/JceStruct;
    .locals 1

    .prologue
    .line 74
    new-instance v0, Lcom/kingroot/kinguser/au;

    invoke-direct {v0}, Lcom/kingroot/kinguser/au;-><init>()V

    return-object v0
.end method

.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 249
    invoke-virtual {p1, v3, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/au;->iE:Ljava/lang/String;

    .line 250
    invoke-virtual {p1, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/au;->iF:Ljava/lang/String;

    .line 251
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/au;->iG:Ljava/lang/String;

    .line 252
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/au;->qq:Ljava/lang/String;

    .line 253
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/au;->iH:Ljava/lang/String;

    .line 254
    iget v0, p0, Lcom/kingroot/kinguser/au;->product:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/au;->product:I

    .line 255
    const/4 v0, 0x6

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/au;->lc:Ljava/lang/String;

    .line 256
    iget v0, p0, Lcom/kingroot/kinguser/au;->dS:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/au;->dS:I

    .line 257
    const/16 v0, 0x8

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/au;->dT:Ljava/lang/String;

    .line 258
    iget v0, p0, Lcom/kingroot/kinguser/au;->iI:I

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/au;->iI:I

    .line 259
    iget v0, p0, Lcom/kingroot/kinguser/au;->iJ:I

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/au;->iJ:I

    .line 260
    iget-boolean v0, p0, Lcom/kingroot/kinguser/au;->iK:Z

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(ZIZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/au;->iK:Z

    .line 261
    const/16 v0, 0xc

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/au;->iL:Ljava/lang/String;

    .line 262
    const/16 v0, 0xd

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/au;->iM:Ljava/lang/String;

    .line 263
    iget v0, p0, Lcom/kingroot/kinguser/au;->iN:I

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/au;->iN:I

    .line 264
    const/16 v0, 0xf

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/au;->iO:Ljava/lang/String;

    .line 265
    iget-short v0, p0, Lcom/kingroot/kinguser/au;->iP:S

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(SIZ)S

    move-result v0

    iput-short v0, p0, Lcom/kingroot/kinguser/au;->iP:S

    .line 266
    iget v0, p0, Lcom/kingroot/kinguser/au;->ja:I

    const/16 v1, 0x11

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/au;->ja:I

    .line 267
    const/16 v0, 0x12

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/au;->jb:Ljava/lang/String;

    .line 268
    const/16 v0, 0x13

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/au;->jc:Ljava/lang/String;

    .line 269
    iget v0, p0, Lcom/kingroot/kinguser/au;->jd:I

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/au;->jd:I

    .line 270
    const/16 v0, 0x15

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/au;->je:Ljava/lang/String;

    .line 271
    iget-wide v0, p0, Lcom/kingroot/kinguser/au;->jf:J

    const/16 v2, 0x16

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/au;->jf:J

    .line 272
    iget-wide v0, p0, Lcom/kingroot/kinguser/au;->jg:J

    const/16 v2, 0x17

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/au;->jg:J

    .line 273
    iget-wide v0, p0, Lcom/kingroot/kinguser/au;->jh:J

    const/16 v2, 0x18

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/au;->jh:J

    .line 274
    const/16 v0, 0x19

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/au;->ji:Ljava/lang/String;

    .line 275
    const/16 v0, 0x1a

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/au;->jj:Ljava/lang/String;

    .line 276
    const/16 v0, 0x1b

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/au;->jk:Ljava/lang/String;

    .line 277
    const/16 v0, 0x1c

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/au;->jl:Ljava/lang/String;

    .line 278
    const/16 v0, 0x1d

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/au;->jm:Ljava/lang/String;

    .line 279
    const/16 v0, 0x1e

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/au;->jn:Ljava/lang/String;

    .line 280
    const/16 v0, 0x1f

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/au;->jo:Ljava/lang/String;

    .line 281
    const/16 v0, 0x20

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/au;->jp:Ljava/lang/String;

    .line 282
    iget v0, p0, Lcom/kingroot/kinguser/au;->jq:I

    const/16 v1, 0x21

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/au;->jq:I

    .line 283
    iget v0, p0, Lcom/kingroot/kinguser/au;->jr:I

    const/16 v1, 0x22

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/au;->jr:I

    .line 284
    iget-boolean v0, p0, Lcom/kingroot/kinguser/au;->js:Z

    const/16 v1, 0x23

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(ZIZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/au;->js:Z

    .line 285
    const/16 v0, 0x24

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/au;->jt:Ljava/lang/String;

    .line 286
    const/16 v0, 0x25

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/au;->ju:Ljava/lang/String;

    .line 287
    const/16 v0, 0x26

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/au;->jv:Ljava/lang/String;

    .line 288
    iget-boolean v0, p0, Lcom/kingroot/kinguser/au;->jw:Z

    const/16 v1, 0x27

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(ZIZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/au;->jw:Z

    .line 289
    iget-boolean v0, p0, Lcom/kingroot/kinguser/au;->jx:Z

    const/16 v1, 0x28

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(ZIZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/au;->jx:Z

    .line 290
    const/16 v0, 0x29

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/au;->version:Ljava/lang/String;

    .line 291
    iget v0, p0, Lcom/kingroot/kinguser/au;->jy:I

    const/16 v1, 0x2a

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/au;->jy:I

    .line 292
    const/16 v0, 0x2b

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/au;->jz:Ljava/lang/String;

    .line 293
    const/16 v0, 0x2c

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/au;->jA:Ljava/lang/String;

    .line 294
    const/16 v0, 0x2d

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/au;->jB:Ljava/lang/String;

    .line 295
    const/16 v0, 0x2e

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/au;->jC:Ljava/lang/String;

    .line 296
    const/16 v0, 0x2f

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/au;->jD:Ljava/lang/String;

    .line 297
    const/16 v0, 0x30

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/au;->jE:Ljava/lang/String;

    .line 298
    const/16 v0, 0x31

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/au;->jF:Ljava/lang/String;

    .line 299
    const/16 v0, 0x32

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/au;->jG:Ljava/lang/String;

    .line 300
    const/16 v0, 0x33

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/au;->jH:Ljava/lang/String;

    .line 301
    iget-wide v0, p0, Lcom/kingroot/kinguser/au;->jI:J

    const/16 v2, 0x34

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/au;->jI:J

    .line 302
    const/16 v0, 0x35

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/au;->jJ:Ljava/lang/String;

    .line 303
    const/16 v0, 0x36

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/au;->jK:Ljava/lang/String;

    .line 304
    iget v0, p0, Lcom/kingroot/kinguser/au;->jL:I

    const/16 v1, 0x37

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/au;->jL:I

    .line 305
    const/16 v0, 0x38

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/au;->jM:Ljava/lang/String;

    .line 306
    const/16 v0, 0x39

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/au;->jN:Ljava/lang/String;

    .line 307
    const/16 v0, 0x3a

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/au;->jO:Ljava/lang/String;

    .line 308
    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    .line 78
    iget-object v0, p0, Lcom/kingroot/kinguser/au;->iE:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 79
    iget-object v0, p0, Lcom/kingroot/kinguser/au;->iF:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/kingroot/kinguser/au;->iF:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/au;->iG:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/kingroot/kinguser/au;->iG:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/au;->qq:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 86
    iget-object v0, p0, Lcom/kingroot/kinguser/au;->qq:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 88
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/au;->iH:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 89
    iget-object v0, p0, Lcom/kingroot/kinguser/au;->iH:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 91
    :cond_3
    iget v0, p0, Lcom/kingroot/kinguser/au;->product:I

    if-eq v3, v0, :cond_4

    .line 92
    iget v0, p0, Lcom/kingroot/kinguser/au;->product:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 94
    :cond_4
    iget-object v0, p0, Lcom/kingroot/kinguser/au;->lc:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 95
    iget-object v0, p0, Lcom/kingroot/kinguser/au;->lc:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 97
    :cond_5
    iget v0, p0, Lcom/kingroot/kinguser/au;->dS:I

    if-eqz v0, :cond_6

    .line 98
    iget v0, p0, Lcom/kingroot/kinguser/au;->dS:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 100
    :cond_6
    iget-object v0, p0, Lcom/kingroot/kinguser/au;->dT:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 101
    iget-object v0, p0, Lcom/kingroot/kinguser/au;->dT:Ljava/lang/String;

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 103
    :cond_7
    iget v0, p0, Lcom/kingroot/kinguser/au;->iI:I

    if-eqz v0, :cond_8

    .line 104
    iget v0, p0, Lcom/kingroot/kinguser/au;->iI:I

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 106
    :cond_8
    iget v0, p0, Lcom/kingroot/kinguser/au;->iJ:I

    if-eqz v0, :cond_9

    .line 107
    iget v0, p0, Lcom/kingroot/kinguser/au;->iJ:I

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 109
    :cond_9
    iget-boolean v0, p0, Lcom/kingroot/kinguser/au;->iK:Z

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(ZI)V

    .line 110
    iget-object v0, p0, Lcom/kingroot/kinguser/au;->iL:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 111
    iget-object v0, p0, Lcom/kingroot/kinguser/au;->iL:Ljava/lang/String;

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 113
    :cond_a
    iget-object v0, p0, Lcom/kingroot/kinguser/au;->iM:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 114
    iget-object v0, p0, Lcom/kingroot/kinguser/au;->iM:Ljava/lang/String;

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 116
    :cond_b
    iget v0, p0, Lcom/kingroot/kinguser/au;->iN:I

    if-eqz v0, :cond_c

    .line 117
    iget v0, p0, Lcom/kingroot/kinguser/au;->iN:I

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 119
    :cond_c
    iget-object v0, p0, Lcom/kingroot/kinguser/au;->iO:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 120
    iget-object v0, p0, Lcom/kingroot/kinguser/au;->iO:Ljava/lang/String;

    const/16 v1, 0xf

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 122
    :cond_d
    iget-short v0, p0, Lcom/kingroot/kinguser/au;->iP:S

    if-eqz v0, :cond_e

    .line 123
    iget-short v0, p0, Lcom/kingroot/kinguser/au;->iP:S

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(SI)V

    .line 125
    :cond_e
    iget v0, p0, Lcom/kingroot/kinguser/au;->ja:I

    if-eqz v0, :cond_f

    .line 126
    iget v0, p0, Lcom/kingroot/kinguser/au;->ja:I

    const/16 v1, 0x11

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 128
    :cond_f
    iget-object v0, p0, Lcom/kingroot/kinguser/au;->jb:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 129
    iget-object v0, p0, Lcom/kingroot/kinguser/au;->jb:Ljava/lang/String;

    const/16 v1, 0x12

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 131
    :cond_10
    iget-object v0, p0, Lcom/kingroot/kinguser/au;->jc:Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 132
    iget-object v0, p0, Lcom/kingroot/kinguser/au;->jc:Ljava/lang/String;

    const/16 v1, 0x13

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 134
    :cond_11
    iget v0, p0, Lcom/kingroot/kinguser/au;->jd:I

    if-eqz v0, :cond_12

    .line 135
    iget v0, p0, Lcom/kingroot/kinguser/au;->jd:I

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 137
    :cond_12
    iget-object v0, p0, Lcom/kingroot/kinguser/au;->je:Ljava/lang/String;

    if-eqz v0, :cond_13

    .line 138
    iget-object v0, p0, Lcom/kingroot/kinguser/au;->je:Ljava/lang/String;

    const/16 v1, 0x15

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 140
    :cond_13
    iget-wide v0, p0, Lcom/kingroot/kinguser/au;->jf:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_14

    .line 141
    iget-wide v0, p0, Lcom/kingroot/kinguser/au;->jf:J

    const/16 v2, 0x16

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 143
    :cond_14
    iget-wide v0, p0, Lcom/kingroot/kinguser/au;->jg:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_15

    .line 144
    iget-wide v0, p0, Lcom/kingroot/kinguser/au;->jg:J

    const/16 v2, 0x17

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 146
    :cond_15
    iget-wide v0, p0, Lcom/kingroot/kinguser/au;->jh:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_16

    .line 147
    iget-wide v0, p0, Lcom/kingroot/kinguser/au;->jh:J

    const/16 v2, 0x18

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 149
    :cond_16
    iget-object v0, p0, Lcom/kingroot/kinguser/au;->ji:Ljava/lang/String;

    if-eqz v0, :cond_17

    .line 150
    iget-object v0, p0, Lcom/kingroot/kinguser/au;->ji:Ljava/lang/String;

    const/16 v1, 0x19

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 152
    :cond_17
    iget-object v0, p0, Lcom/kingroot/kinguser/au;->jj:Ljava/lang/String;

    if-eqz v0, :cond_18

    .line 153
    iget-object v0, p0, Lcom/kingroot/kinguser/au;->jj:Ljava/lang/String;

    const/16 v1, 0x1a

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 155
    :cond_18
    iget-object v0, p0, Lcom/kingroot/kinguser/au;->jk:Ljava/lang/String;

    if-eqz v0, :cond_19

    .line 156
    iget-object v0, p0, Lcom/kingroot/kinguser/au;->jk:Ljava/lang/String;

    const/16 v1, 0x1b

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 158
    :cond_19
    iget-object v0, p0, Lcom/kingroot/kinguser/au;->jl:Ljava/lang/String;

    if-eqz v0, :cond_1a

    .line 159
    iget-object v0, p0, Lcom/kingroot/kinguser/au;->jl:Ljava/lang/String;

    const/16 v1, 0x1c

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 161
    :cond_1a
    iget-object v0, p0, Lcom/kingroot/kinguser/au;->jm:Ljava/lang/String;

    if-eqz v0, :cond_1b

    .line 162
    iget-object v0, p0, Lcom/kingroot/kinguser/au;->jm:Ljava/lang/String;

    const/16 v1, 0x1d

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 164
    :cond_1b
    iget-object v0, p0, Lcom/kingroot/kinguser/au;->jn:Ljava/lang/String;

    if-eqz v0, :cond_1c

    .line 165
    iget-object v0, p0, Lcom/kingroot/kinguser/au;->jn:Ljava/lang/String;

    const/16 v1, 0x1e

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 167
    :cond_1c
    iget-object v0, p0, Lcom/kingroot/kinguser/au;->jo:Ljava/lang/String;

    if-eqz v0, :cond_1d

    .line 168
    iget-object v0, p0, Lcom/kingroot/kinguser/au;->jo:Ljava/lang/String;

    const/16 v1, 0x1f

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 170
    :cond_1d
    iget-object v0, p0, Lcom/kingroot/kinguser/au;->jp:Ljava/lang/String;

    if-eqz v0, :cond_1e

    .line 171
    iget-object v0, p0, Lcom/kingroot/kinguser/au;->jp:Ljava/lang/String;

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 173
    :cond_1e
    iget v0, p0, Lcom/kingroot/kinguser/au;->jq:I

    if-eqz v0, :cond_1f

    .line 174
    iget v0, p0, Lcom/kingroot/kinguser/au;->jq:I

    const/16 v1, 0x21

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 176
    :cond_1f
    iget v0, p0, Lcom/kingroot/kinguser/au;->jr:I

    if-eqz v0, :cond_20

    .line 177
    iget v0, p0, Lcom/kingroot/kinguser/au;->jr:I

    const/16 v1, 0x22

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 179
    :cond_20
    iget-boolean v0, p0, Lcom/kingroot/kinguser/au;->js:Z

    const/16 v1, 0x23

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(ZI)V

    .line 180
    iget-object v0, p0, Lcom/kingroot/kinguser/au;->jt:Ljava/lang/String;

    if-eqz v0, :cond_21

    .line 181
    iget-object v0, p0, Lcom/kingroot/kinguser/au;->jt:Ljava/lang/String;

    const/16 v1, 0x24

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 183
    :cond_21
    iget-object v0, p0, Lcom/kingroot/kinguser/au;->ju:Ljava/lang/String;

    if-eqz v0, :cond_22

    .line 184
    iget-object v0, p0, Lcom/kingroot/kinguser/au;->ju:Ljava/lang/String;

    const/16 v1, 0x25

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 186
    :cond_22
    iget-object v0, p0, Lcom/kingroot/kinguser/au;->jv:Ljava/lang/String;

    if-eqz v0, :cond_23

    .line 187
    iget-object v0, p0, Lcom/kingroot/kinguser/au;->jv:Ljava/lang/String;

    const/16 v1, 0x26

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 189
    :cond_23
    iget-boolean v0, p0, Lcom/kingroot/kinguser/au;->jw:Z

    const/16 v1, 0x27

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(ZI)V

    .line 190
    iget-boolean v0, p0, Lcom/kingroot/kinguser/au;->jx:Z

    const/16 v1, 0x28

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(ZI)V

    .line 191
    iget-object v0, p0, Lcom/kingroot/kinguser/au;->version:Ljava/lang/String;

    if-eqz v0, :cond_24

    .line 192
    iget-object v0, p0, Lcom/kingroot/kinguser/au;->version:Ljava/lang/String;

    const/16 v1, 0x29

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 194
    :cond_24
    iget v0, p0, Lcom/kingroot/kinguser/au;->jy:I

    if-eq v0, v3, :cond_25

    .line 195
    iget v0, p0, Lcom/kingroot/kinguser/au;->jy:I

    const/16 v1, 0x2a

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 197
    :cond_25
    iget-object v0, p0, Lcom/kingroot/kinguser/au;->jz:Ljava/lang/String;

    if-eqz v0, :cond_26

    .line 198
    iget-object v0, p0, Lcom/kingroot/kinguser/au;->jz:Ljava/lang/String;

    const/16 v1, 0x2b

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 200
    :cond_26
    iget-object v0, p0, Lcom/kingroot/kinguser/au;->jA:Ljava/lang/String;

    if-eqz v0, :cond_27

    .line 201
    iget-object v0, p0, Lcom/kingroot/kinguser/au;->jA:Ljava/lang/String;

    const/16 v1, 0x2c

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 203
    :cond_27
    iget-object v0, p0, Lcom/kingroot/kinguser/au;->jB:Ljava/lang/String;

    if-eqz v0, :cond_28

    .line 204
    iget-object v0, p0, Lcom/kingroot/kinguser/au;->jB:Ljava/lang/String;

    const/16 v1, 0x2d

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 206
    :cond_28
    iget-object v0, p0, Lcom/kingroot/kinguser/au;->jC:Ljava/lang/String;

    if-eqz v0, :cond_29

    .line 207
    iget-object v0, p0, Lcom/kingroot/kinguser/au;->jC:Ljava/lang/String;

    const/16 v1, 0x2e

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 209
    :cond_29
    iget-object v0, p0, Lcom/kingroot/kinguser/au;->jD:Ljava/lang/String;

    if-eqz v0, :cond_2a

    .line 210
    iget-object v0, p0, Lcom/kingroot/kinguser/au;->jD:Ljava/lang/String;

    const/16 v1, 0x2f

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 212
    :cond_2a
    iget-object v0, p0, Lcom/kingroot/kinguser/au;->jE:Ljava/lang/String;

    if-eqz v0, :cond_2b

    .line 213
    iget-object v0, p0, Lcom/kingroot/kinguser/au;->jE:Ljava/lang/String;

    const/16 v1, 0x30

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 215
    :cond_2b
    iget-object v0, p0, Lcom/kingroot/kinguser/au;->jF:Ljava/lang/String;

    if-eqz v0, :cond_2c

    .line 216
    iget-object v0, p0, Lcom/kingroot/kinguser/au;->jF:Ljava/lang/String;

    const/16 v1, 0x31

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 218
    :cond_2c
    iget-object v0, p0, Lcom/kingroot/kinguser/au;->jG:Ljava/lang/String;

    if-eqz v0, :cond_2d

    .line 219
    iget-object v0, p0, Lcom/kingroot/kinguser/au;->jG:Ljava/lang/String;

    const/16 v1, 0x32

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 221
    :cond_2d
    iget-object v0, p0, Lcom/kingroot/kinguser/au;->jH:Ljava/lang/String;

    if-eqz v0, :cond_2e

    .line 222
    iget-object v0, p0, Lcom/kingroot/kinguser/au;->jH:Ljava/lang/String;

    const/16 v1, 0x33

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 224
    :cond_2e
    iget-wide v0, p0, Lcom/kingroot/kinguser/au;->jI:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2f

    .line 225
    iget-wide v0, p0, Lcom/kingroot/kinguser/au;->jI:J

    const/16 v2, 0x34

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    .line 227
    :cond_2f
    iget-object v0, p0, Lcom/kingroot/kinguser/au;->jJ:Ljava/lang/String;

    if-eqz v0, :cond_30

    .line 228
    iget-object v0, p0, Lcom/kingroot/kinguser/au;->jJ:Ljava/lang/String;

    const/16 v1, 0x35

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 230
    :cond_30
    iget-object v0, p0, Lcom/kingroot/kinguser/au;->jK:Ljava/lang/String;

    if-eqz v0, :cond_31

    .line 231
    iget-object v0, p0, Lcom/kingroot/kinguser/au;->jK:Ljava/lang/String;

    const/16 v1, 0x36

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 233
    :cond_31
    iget v0, p0, Lcom/kingroot/kinguser/au;->jL:I

    if-eqz v0, :cond_32

    .line 234
    iget v0, p0, Lcom/kingroot/kinguser/au;->jL:I

    const/16 v1, 0x37

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    .line 236
    :cond_32
    iget-object v0, p0, Lcom/kingroot/kinguser/au;->jM:Ljava/lang/String;

    if-eqz v0, :cond_33

    .line 237
    iget-object v0, p0, Lcom/kingroot/kinguser/au;->jM:Ljava/lang/String;

    const/16 v1, 0x38

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 239
    :cond_33
    iget-object v0, p0, Lcom/kingroot/kinguser/au;->jN:Ljava/lang/String;

    if-eqz v0, :cond_34

    .line 240
    iget-object v0, p0, Lcom/kingroot/kinguser/au;->jN:Ljava/lang/String;

    const/16 v1, 0x39

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 242
    :cond_34
    iget-object v0, p0, Lcom/kingroot/kinguser/au;->jO:Ljava/lang/String;

    if-eqz v0, :cond_35

    .line 243
    iget-object v0, p0, Lcom/kingroot/kinguser/au;->jO:Ljava/lang/String;

    const/16 v1, 0x3a

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    .line 245
    :cond_35
    return-void
.end method
