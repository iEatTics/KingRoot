.class public final Lcom/kingx/cloudsdk/v;
.super Lcom/kingx/cloudsdk/cb;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public cA:Ljava/lang/String;

.field public cB:Ljava/lang/String;

.field public cC:I

.field public cD:Ljava/lang/String;

.field public cE:S

.field public cF:I

.field public cG:Ljava/lang/String;

.field public cH:Ljava/lang/String;

.field public cI:I

.field public cJ:Ljava/lang/String;

.field public cK:J

.field public cL:J

.field public cM:J

.field public cN:Ljava/lang/String;

.field public cO:Ljava/lang/String;

.field public cP:Ljava/lang/String;

.field private cQ:Ljava/lang/String;

.field private cR:Ljava/lang/String;

.field public cS:Ljava/lang/String;

.field public cT:Ljava/lang/String;

.field private cU:Ljava/lang/String;

.field private cV:I

.field private cW:I

.field private cX:Z

.field private cY:Ljava/lang/String;

.field private cZ:Ljava/lang/String;

.field public co:Ljava/lang/String;

.field public cp:Ljava/lang/String;

.field public cq:Ljava/lang/String;

.field public cr:Ljava/lang/String;

.field public cs:Ljava/lang/String;

.field public ct:I

.field public cu:Ljava/lang/String;

.field public cv:I

.field public cw:Ljava/lang/String;

.field public cx:I

.field public cy:I

.field public cz:Z

.field private da:Ljava/lang/String;

.field private db:Z

.field private dc:Z

.field public dd:I

.field public de:Ljava/lang/String;

.field private df:Ljava/lang/String;

.field private dg:Ljava/lang/String;

.field private dh:Ljava/lang/String;

.field private di:Ljava/lang/String;

.field public dj:Ljava/lang/String;

.field private dk:Ljava/lang/String;

.field private dl:Ljava/lang/String;

.field public dm:Ljava/lang/String;

.field private dn:J

.field public do:Ljava/lang/String;

.field public dp:Ljava/lang/String;

.field private dq:I

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Lcom/kingx/cloudsdk/cb;-><init>()V

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/kingx/cloudsdk/v;->co:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/kingx/cloudsdk/v;->cp:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/kingx/cloudsdk/v;->cq:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/kingx/cloudsdk/v;->cr:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/kingx/cloudsdk/v;->cs:Ljava/lang/String;

    .line 24
    iput v4, p0, Lcom/kingx/cloudsdk/v;->ct:I

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/kingx/cloudsdk/v;->cu:Ljava/lang/String;

    .line 26
    iput v1, p0, Lcom/kingx/cloudsdk/v;->cv:I

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/kingx/cloudsdk/v;->cw:Ljava/lang/String;

    .line 28
    iput v1, p0, Lcom/kingx/cloudsdk/v;->cx:I

    .line 29
    iput v1, p0, Lcom/kingx/cloudsdk/v;->cy:I

    .line 30
    iput-boolean v1, p0, Lcom/kingx/cloudsdk/v;->cz:Z

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/kingx/cloudsdk/v;->cA:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/kingx/cloudsdk/v;->cB:Ljava/lang/String;

    .line 33
    iput v1, p0, Lcom/kingx/cloudsdk/v;->cC:I

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/kingx/cloudsdk/v;->cD:Ljava/lang/String;

    .line 35
    iput-short v1, p0, Lcom/kingx/cloudsdk/v;->cE:S

    .line 36
    iput v1, p0, Lcom/kingx/cloudsdk/v;->cF:I

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/kingx/cloudsdk/v;->cG:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/kingx/cloudsdk/v;->cH:Ljava/lang/String;

    .line 39
    iput v1, p0, Lcom/kingx/cloudsdk/v;->cI:I

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/kingx/cloudsdk/v;->cJ:Ljava/lang/String;

    .line 41
    iput-wide v2, p0, Lcom/kingx/cloudsdk/v;->cK:J

    .line 42
    iput-wide v2, p0, Lcom/kingx/cloudsdk/v;->cL:J

    .line 43
    iput-wide v2, p0, Lcom/kingx/cloudsdk/v;->cM:J

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/kingx/cloudsdk/v;->cN:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/kingx/cloudsdk/v;->cO:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/kingx/cloudsdk/v;->cP:Ljava/lang/String;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/kingx/cloudsdk/v;->cQ:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/kingx/cloudsdk/v;->cR:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/kingx/cloudsdk/v;->cS:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/kingx/cloudsdk/v;->cT:Ljava/lang/String;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/kingx/cloudsdk/v;->cU:Ljava/lang/String;

    .line 52
    iput v1, p0, Lcom/kingx/cloudsdk/v;->cV:I

    .line 53
    iput v1, p0, Lcom/kingx/cloudsdk/v;->cW:I

    .line 54
    iput-boolean v1, p0, Lcom/kingx/cloudsdk/v;->cX:Z

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/kingx/cloudsdk/v;->cY:Ljava/lang/String;

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/kingx/cloudsdk/v;->cZ:Ljava/lang/String;

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/kingx/cloudsdk/v;->da:Ljava/lang/String;

    .line 58
    iput-boolean v1, p0, Lcom/kingx/cloudsdk/v;->db:Z

    .line 59
    iput-boolean v1, p0, Lcom/kingx/cloudsdk/v;->dc:Z

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/kingx/cloudsdk/v;->version:Ljava/lang/String;

    .line 61
    iput v4, p0, Lcom/kingx/cloudsdk/v;->dd:I

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lcom/kingx/cloudsdk/v;->de:Ljava/lang/String;

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/kingx/cloudsdk/v;->df:Ljava/lang/String;

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/kingx/cloudsdk/v;->dg:Ljava/lang/String;

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/kingx/cloudsdk/v;->dh:Ljava/lang/String;

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/kingx/cloudsdk/v;->di:Ljava/lang/String;

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lcom/kingx/cloudsdk/v;->dj:Ljava/lang/String;

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/kingx/cloudsdk/v;->dk:Ljava/lang/String;

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/kingx/cloudsdk/v;->dl:Ljava/lang/String;

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/kingx/cloudsdk/v;->dm:Ljava/lang/String;

    .line 71
    iput-wide v2, p0, Lcom/kingx/cloudsdk/v;->dn:J

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/kingx/cloudsdk/v;->do:Ljava/lang/String;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lcom/kingx/cloudsdk/v;->dp:Ljava/lang/String;

    .line 74
    iput v1, p0, Lcom/kingx/cloudsdk/v;->dq:I

    .line 77
    return-void
.end method


# virtual methods
.method public final a(Lcom/kingroot/kinguser/bnc;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 264
    invoke-virtual {p1, v3, v1}, Lcom/kingroot/kinguser/bnc;->z(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingx/cloudsdk/v;->co:Ljava/lang/String;

    .line 265
    invoke-virtual {p1, v1, v3}, Lcom/kingroot/kinguser/bnc;->z(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingx/cloudsdk/v;->cp:Ljava/lang/String;

    .line 266
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v3}, Lcom/kingroot/kinguser/bnc;->z(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingx/cloudsdk/v;->cq:Ljava/lang/String;

    .line 267
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v3}, Lcom/kingroot/kinguser/bnc;->z(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingx/cloudsdk/v;->cr:Ljava/lang/String;

    .line 268
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v3}, Lcom/kingroot/kinguser/bnc;->z(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingx/cloudsdk/v;->cs:Ljava/lang/String;

    .line 269
    iget v0, p0, Lcom/kingx/cloudsdk/v;->ct:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v3}, Lcom/kingroot/kinguser/bnc;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingx/cloudsdk/v;->ct:I

    .line 270
    const/4 v0, 0x6

    invoke-virtual {p1, v0, v3}, Lcom/kingroot/kinguser/bnc;->z(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingx/cloudsdk/v;->cu:Ljava/lang/String;

    .line 271
    iget v0, p0, Lcom/kingx/cloudsdk/v;->cv:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1, v3}, Lcom/kingroot/kinguser/bnc;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingx/cloudsdk/v;->cv:I

    .line 272
    const/16 v0, 0x8

    invoke-virtual {p1, v0, v3}, Lcom/kingroot/kinguser/bnc;->z(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingx/cloudsdk/v;->cw:Ljava/lang/String;

    .line 273
    iget v0, p0, Lcom/kingx/cloudsdk/v;->cx:I

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1, v3}, Lcom/kingroot/kinguser/bnc;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingx/cloudsdk/v;->cx:I

    .line 274
    iget v0, p0, Lcom/kingx/cloudsdk/v;->cy:I

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1, v3}, Lcom/kingroot/kinguser/bnc;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingx/cloudsdk/v;->cy:I

    .line 275
    iget-boolean v0, p0, Lcom/kingx/cloudsdk/v;->cz:Z

    const/16 v0, 0xb

    invoke-virtual {p1, v0, v3}, Lcom/kingroot/kinguser/bnc;->y(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingx/cloudsdk/v;->cz:Z

    .line 276
    const/16 v0, 0xc

    invoke-virtual {p1, v0, v3}, Lcom/kingroot/kinguser/bnc;->z(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingx/cloudsdk/v;->cA:Ljava/lang/String;

    .line 277
    const/16 v0, 0xd

    invoke-virtual {p1, v0, v3}, Lcom/kingroot/kinguser/bnc;->z(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingx/cloudsdk/v;->cB:Ljava/lang/String;

    .line 278
    iget v0, p0, Lcom/kingx/cloudsdk/v;->cC:I

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1, v3}, Lcom/kingroot/kinguser/bnc;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingx/cloudsdk/v;->cC:I

    .line 279
    const/16 v0, 0xf

    invoke-virtual {p1, v0, v3}, Lcom/kingroot/kinguser/bnc;->z(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingx/cloudsdk/v;->cD:Ljava/lang/String;

    .line 280
    iget-short v0, p0, Lcom/kingx/cloudsdk/v;->cE:S

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1, v3}, Lcom/kingroot/kinguser/bnc;->a(SIZ)S

    move-result v0

    iput-short v0, p0, Lcom/kingx/cloudsdk/v;->cE:S

    .line 281
    iget v0, p0, Lcom/kingx/cloudsdk/v;->cF:I

    const/16 v1, 0x11

    invoke-virtual {p1, v0, v1, v3}, Lcom/kingroot/kinguser/bnc;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingx/cloudsdk/v;->cF:I

    .line 282
    const/16 v0, 0x12

    invoke-virtual {p1, v0, v3}, Lcom/kingroot/kinguser/bnc;->z(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingx/cloudsdk/v;->cG:Ljava/lang/String;

    .line 283
    const/16 v0, 0x13

    invoke-virtual {p1, v0, v3}, Lcom/kingroot/kinguser/bnc;->z(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingx/cloudsdk/v;->cH:Ljava/lang/String;

    .line 284
    iget v0, p0, Lcom/kingx/cloudsdk/v;->cI:I

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1, v3}, Lcom/kingroot/kinguser/bnc;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingx/cloudsdk/v;->cI:I

    .line 285
    const/16 v0, 0x15

    invoke-virtual {p1, v0, v3}, Lcom/kingroot/kinguser/bnc;->z(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingx/cloudsdk/v;->cJ:Ljava/lang/String;

    .line 286
    iget-wide v0, p0, Lcom/kingx/cloudsdk/v;->cK:J

    const/16 v2, 0x16

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/kingroot/kinguser/bnc;->a(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingx/cloudsdk/v;->cK:J

    .line 287
    iget-wide v0, p0, Lcom/kingx/cloudsdk/v;->cL:J

    const/16 v2, 0x17

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/kingroot/kinguser/bnc;->a(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingx/cloudsdk/v;->cL:J

    .line 288
    iget-wide v0, p0, Lcom/kingx/cloudsdk/v;->cM:J

    const/16 v2, 0x18

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/kingroot/kinguser/bnc;->a(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingx/cloudsdk/v;->cM:J

    .line 289
    const/16 v0, 0x19

    invoke-virtual {p1, v0, v3}, Lcom/kingroot/kinguser/bnc;->z(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingx/cloudsdk/v;->cN:Ljava/lang/String;

    .line 290
    const/16 v0, 0x1a

    invoke-virtual {p1, v0, v3}, Lcom/kingroot/kinguser/bnc;->z(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingx/cloudsdk/v;->cO:Ljava/lang/String;

    .line 291
    const/16 v0, 0x1b

    invoke-virtual {p1, v0, v3}, Lcom/kingroot/kinguser/bnc;->z(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingx/cloudsdk/v;->cP:Ljava/lang/String;

    .line 292
    const/16 v0, 0x1c

    invoke-virtual {p1, v0, v3}, Lcom/kingroot/kinguser/bnc;->z(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingx/cloudsdk/v;->cQ:Ljava/lang/String;

    .line 293
    const/16 v0, 0x1d

    invoke-virtual {p1, v0, v3}, Lcom/kingroot/kinguser/bnc;->z(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingx/cloudsdk/v;->cR:Ljava/lang/String;

    .line 294
    const/16 v0, 0x1e

    invoke-virtual {p1, v0, v3}, Lcom/kingroot/kinguser/bnc;->z(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingx/cloudsdk/v;->cS:Ljava/lang/String;

    .line 295
    const/16 v0, 0x1f

    invoke-virtual {p1, v0, v3}, Lcom/kingroot/kinguser/bnc;->z(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingx/cloudsdk/v;->cT:Ljava/lang/String;

    .line 296
    const/16 v0, 0x20

    invoke-virtual {p1, v0, v3}, Lcom/kingroot/kinguser/bnc;->z(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingx/cloudsdk/v;->cU:Ljava/lang/String;

    .line 297
    iget v0, p0, Lcom/kingx/cloudsdk/v;->cV:I

    const/16 v1, 0x21

    invoke-virtual {p1, v0, v1, v3}, Lcom/kingroot/kinguser/bnc;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingx/cloudsdk/v;->cV:I

    .line 298
    iget v0, p0, Lcom/kingx/cloudsdk/v;->cW:I

    const/16 v1, 0x22

    invoke-virtual {p1, v0, v1, v3}, Lcom/kingroot/kinguser/bnc;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingx/cloudsdk/v;->cW:I

    .line 299
    iget-boolean v0, p0, Lcom/kingx/cloudsdk/v;->cX:Z

    const/16 v0, 0x23

    invoke-virtual {p1, v0, v3}, Lcom/kingroot/kinguser/bnc;->y(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingx/cloudsdk/v;->cX:Z

    .line 300
    const/16 v0, 0x24

    invoke-virtual {p1, v0, v3}, Lcom/kingroot/kinguser/bnc;->z(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingx/cloudsdk/v;->cY:Ljava/lang/String;

    .line 301
    const/16 v0, 0x25

    invoke-virtual {p1, v0, v3}, Lcom/kingroot/kinguser/bnc;->z(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingx/cloudsdk/v;->cZ:Ljava/lang/String;

    .line 302
    const/16 v0, 0x26

    invoke-virtual {p1, v0, v3}, Lcom/kingroot/kinguser/bnc;->z(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingx/cloudsdk/v;->da:Ljava/lang/String;

    .line 303
    iget-boolean v0, p0, Lcom/kingx/cloudsdk/v;->db:Z

    const/16 v0, 0x27

    invoke-virtual {p1, v0, v3}, Lcom/kingroot/kinguser/bnc;->y(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingx/cloudsdk/v;->db:Z

    .line 304
    iget-boolean v0, p0, Lcom/kingx/cloudsdk/v;->dc:Z

    const/16 v0, 0x28

    invoke-virtual {p1, v0, v3}, Lcom/kingroot/kinguser/bnc;->y(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingx/cloudsdk/v;->dc:Z

    .line 305
    const/16 v0, 0x29

    invoke-virtual {p1, v0, v3}, Lcom/kingroot/kinguser/bnc;->z(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingx/cloudsdk/v;->version:Ljava/lang/String;

    .line 306
    iget v0, p0, Lcom/kingx/cloudsdk/v;->dd:I

    const/16 v1, 0x2a

    invoke-virtual {p1, v0, v1, v3}, Lcom/kingroot/kinguser/bnc;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingx/cloudsdk/v;->dd:I

    .line 307
    const/16 v0, 0x2b

    invoke-virtual {p1, v0, v3}, Lcom/kingroot/kinguser/bnc;->z(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingx/cloudsdk/v;->de:Ljava/lang/String;

    .line 308
    const/16 v0, 0x2c

    invoke-virtual {p1, v0, v3}, Lcom/kingroot/kinguser/bnc;->z(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingx/cloudsdk/v;->df:Ljava/lang/String;

    .line 309
    const/16 v0, 0x2d

    invoke-virtual {p1, v0, v3}, Lcom/kingroot/kinguser/bnc;->z(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingx/cloudsdk/v;->dg:Ljava/lang/String;

    .line 310
    const/16 v0, 0x2e

    invoke-virtual {p1, v0, v3}, Lcom/kingroot/kinguser/bnc;->z(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingx/cloudsdk/v;->dh:Ljava/lang/String;

    .line 311
    const/16 v0, 0x2f

    invoke-virtual {p1, v0, v3}, Lcom/kingroot/kinguser/bnc;->z(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingx/cloudsdk/v;->di:Ljava/lang/String;

    .line 312
    const/16 v0, 0x30

    invoke-virtual {p1, v0, v3}, Lcom/kingroot/kinguser/bnc;->z(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingx/cloudsdk/v;->dj:Ljava/lang/String;

    .line 313
    const/16 v0, 0x31

    invoke-virtual {p1, v0, v3}, Lcom/kingroot/kinguser/bnc;->z(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingx/cloudsdk/v;->dk:Ljava/lang/String;

    .line 314
    const/16 v0, 0x32

    invoke-virtual {p1, v0, v3}, Lcom/kingroot/kinguser/bnc;->z(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingx/cloudsdk/v;->dl:Ljava/lang/String;

    .line 315
    const/16 v0, 0x33

    invoke-virtual {p1, v0, v3}, Lcom/kingroot/kinguser/bnc;->z(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingx/cloudsdk/v;->dm:Ljava/lang/String;

    .line 316
    iget-wide v0, p0, Lcom/kingx/cloudsdk/v;->dn:J

    const/16 v2, 0x34

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/kingroot/kinguser/bnc;->a(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingx/cloudsdk/v;->dn:J

    .line 317
    const/16 v0, 0x35

    invoke-virtual {p1, v0, v3}, Lcom/kingroot/kinguser/bnc;->z(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingx/cloudsdk/v;->do:Ljava/lang/String;

    .line 318
    const/16 v0, 0x36

    invoke-virtual {p1, v0, v3}, Lcom/kingroot/kinguser/bnc;->z(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingx/cloudsdk/v;->dp:Ljava/lang/String;

    .line 319
    iget v0, p0, Lcom/kingx/cloudsdk/v;->dq:I

    const/16 v1, 0x37

    invoke-virtual {p1, v0, v1, v3}, Lcom/kingroot/kinguser/bnc;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingx/cloudsdk/v;->dq:I

    .line 320
    return-void
.end method

.method public final a(Lcom/kingroot/kinguser/bnd;)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    .line 92
    iget-object v0, p0, Lcom/kingx/cloudsdk/v;->co:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/kingx/cloudsdk/v;->co:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->T(Ljava/lang/String;I)V

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/kingx/cloudsdk/v;->cp:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/kingx/cloudsdk/v;->cp:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Lcom/kingroot/kinguser/bnd;->T(Ljava/lang/String;I)V

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/kingx/cloudsdk/v;->cq:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 99
    iget-object v0, p0, Lcom/kingx/cloudsdk/v;->cq:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->T(Ljava/lang/String;I)V

    .line 101
    :cond_2
    iget-object v0, p0, Lcom/kingx/cloudsdk/v;->cr:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 102
    iget-object v0, p0, Lcom/kingx/cloudsdk/v;->cr:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->T(Ljava/lang/String;I)V

    .line 104
    :cond_3
    iget-object v0, p0, Lcom/kingx/cloudsdk/v;->cs:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 105
    iget-object v0, p0, Lcom/kingx/cloudsdk/v;->cs:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->T(Ljava/lang/String;I)V

    .line 107
    :cond_4
    iget v0, p0, Lcom/kingx/cloudsdk/v;->ct:I

    if-eq v3, v0, :cond_5

    .line 108
    iget v0, p0, Lcom/kingx/cloudsdk/v;->ct:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->am(II)V

    .line 110
    :cond_5
    iget-object v0, p0, Lcom/kingx/cloudsdk/v;->cu:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 111
    iget-object v0, p0, Lcom/kingx/cloudsdk/v;->cu:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->T(Ljava/lang/String;I)V

    .line 113
    :cond_6
    iget v0, p0, Lcom/kingx/cloudsdk/v;->cv:I

    if-eqz v0, :cond_7

    .line 114
    iget v0, p0, Lcom/kingx/cloudsdk/v;->cv:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->am(II)V

    .line 116
    :cond_7
    iget-object v0, p0, Lcom/kingx/cloudsdk/v;->cw:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 117
    iget-object v0, p0, Lcom/kingx/cloudsdk/v;->cw:Ljava/lang/String;

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->T(Ljava/lang/String;I)V

    .line 119
    :cond_8
    iget v0, p0, Lcom/kingx/cloudsdk/v;->cx:I

    if-eqz v0, :cond_9

    .line 120
    iget v0, p0, Lcom/kingx/cloudsdk/v;->cx:I

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->am(II)V

    .line 122
    :cond_9
    iget v0, p0, Lcom/kingx/cloudsdk/v;->cy:I

    if-eqz v0, :cond_a

    .line 123
    iget v0, p0, Lcom/kingx/cloudsdk/v;->cy:I

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->am(II)V

    .line 125
    :cond_a
    iget-boolean v0, p0, Lcom/kingx/cloudsdk/v;->cz:Z

    if-eqz v0, :cond_b

    .line 126
    iget-boolean v0, p0, Lcom/kingx/cloudsdk/v;->cz:Z

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->a(ZI)V

    .line 128
    :cond_b
    iget-object v0, p0, Lcom/kingx/cloudsdk/v;->cA:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 129
    iget-object v0, p0, Lcom/kingx/cloudsdk/v;->cA:Ljava/lang/String;

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->T(Ljava/lang/String;I)V

    .line 131
    :cond_c
    iget-object v0, p0, Lcom/kingx/cloudsdk/v;->cB:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 132
    iget-object v0, p0, Lcom/kingx/cloudsdk/v;->cB:Ljava/lang/String;

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->T(Ljava/lang/String;I)V

    .line 134
    :cond_d
    iget v0, p0, Lcom/kingx/cloudsdk/v;->cC:I

    if-eqz v0, :cond_e

    .line 135
    iget v0, p0, Lcom/kingx/cloudsdk/v;->cC:I

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->am(II)V

    .line 137
    :cond_e
    iget-object v0, p0, Lcom/kingx/cloudsdk/v;->cD:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 138
    iget-object v0, p0, Lcom/kingx/cloudsdk/v;->cD:Ljava/lang/String;

    const/16 v1, 0xf

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->T(Ljava/lang/String;I)V

    .line 140
    :cond_f
    iget-short v0, p0, Lcom/kingx/cloudsdk/v;->cE:S

    if-eqz v0, :cond_10

    .line 141
    iget-short v0, p0, Lcom/kingx/cloudsdk/v;->cE:S

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->a(SI)V

    .line 143
    :cond_10
    iget v0, p0, Lcom/kingx/cloudsdk/v;->cF:I

    if-eqz v0, :cond_11

    .line 144
    iget v0, p0, Lcom/kingx/cloudsdk/v;->cF:I

    const/16 v1, 0x11

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->am(II)V

    .line 146
    :cond_11
    iget-object v0, p0, Lcom/kingx/cloudsdk/v;->cG:Ljava/lang/String;

    if-eqz v0, :cond_12

    .line 147
    iget-object v0, p0, Lcom/kingx/cloudsdk/v;->cG:Ljava/lang/String;

    const/16 v1, 0x12

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->T(Ljava/lang/String;I)V

    .line 149
    :cond_12
    iget-object v0, p0, Lcom/kingx/cloudsdk/v;->cH:Ljava/lang/String;

    if-eqz v0, :cond_13

    .line 150
    iget-object v0, p0, Lcom/kingx/cloudsdk/v;->cH:Ljava/lang/String;

    const/16 v1, 0x13

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->T(Ljava/lang/String;I)V

    .line 152
    :cond_13
    iget v0, p0, Lcom/kingx/cloudsdk/v;->cI:I

    if-eqz v0, :cond_14

    .line 153
    iget v0, p0, Lcom/kingx/cloudsdk/v;->cI:I

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->am(II)V

    .line 155
    :cond_14
    iget-object v0, p0, Lcom/kingx/cloudsdk/v;->cJ:Ljava/lang/String;

    if-eqz v0, :cond_15

    .line 156
    iget-object v0, p0, Lcom/kingx/cloudsdk/v;->cJ:Ljava/lang/String;

    const/16 v1, 0x15

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->T(Ljava/lang/String;I)V

    .line 158
    :cond_15
    iget-wide v0, p0, Lcom/kingx/cloudsdk/v;->cK:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_16

    .line 159
    iget-wide v0, p0, Lcom/kingx/cloudsdk/v;->cK:J

    const/16 v2, 0x16

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/bnd;->a(JI)V

    .line 161
    :cond_16
    iget-wide v0, p0, Lcom/kingx/cloudsdk/v;->cL:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_17

    .line 162
    iget-wide v0, p0, Lcom/kingx/cloudsdk/v;->cL:J

    const/16 v2, 0x17

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/bnd;->a(JI)V

    .line 164
    :cond_17
    iget-wide v0, p0, Lcom/kingx/cloudsdk/v;->cM:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_18

    .line 165
    iget-wide v0, p0, Lcom/kingx/cloudsdk/v;->cM:J

    const/16 v2, 0x18

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/bnd;->a(JI)V

    .line 167
    :cond_18
    iget-object v0, p0, Lcom/kingx/cloudsdk/v;->cN:Ljava/lang/String;

    if-eqz v0, :cond_19

    .line 168
    iget-object v0, p0, Lcom/kingx/cloudsdk/v;->cN:Ljava/lang/String;

    const/16 v1, 0x19

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->T(Ljava/lang/String;I)V

    .line 170
    :cond_19
    iget-object v0, p0, Lcom/kingx/cloudsdk/v;->cO:Ljava/lang/String;

    if-eqz v0, :cond_1a

    .line 171
    iget-object v0, p0, Lcom/kingx/cloudsdk/v;->cO:Ljava/lang/String;

    const/16 v1, 0x1a

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->T(Ljava/lang/String;I)V

    .line 173
    :cond_1a
    iget-object v0, p0, Lcom/kingx/cloudsdk/v;->cP:Ljava/lang/String;

    if-eqz v0, :cond_1b

    .line 174
    iget-object v0, p0, Lcom/kingx/cloudsdk/v;->cP:Ljava/lang/String;

    const/16 v1, 0x1b

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->T(Ljava/lang/String;I)V

    .line 176
    :cond_1b
    iget-object v0, p0, Lcom/kingx/cloudsdk/v;->cQ:Ljava/lang/String;

    if-eqz v0, :cond_1c

    .line 177
    iget-object v0, p0, Lcom/kingx/cloudsdk/v;->cQ:Ljava/lang/String;

    const/16 v1, 0x1c

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->T(Ljava/lang/String;I)V

    .line 179
    :cond_1c
    iget-object v0, p0, Lcom/kingx/cloudsdk/v;->cR:Ljava/lang/String;

    if-eqz v0, :cond_1d

    .line 180
    iget-object v0, p0, Lcom/kingx/cloudsdk/v;->cR:Ljava/lang/String;

    const/16 v1, 0x1d

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->T(Ljava/lang/String;I)V

    .line 182
    :cond_1d
    iget-object v0, p0, Lcom/kingx/cloudsdk/v;->cS:Ljava/lang/String;

    if-eqz v0, :cond_1e

    .line 183
    iget-object v0, p0, Lcom/kingx/cloudsdk/v;->cS:Ljava/lang/String;

    const/16 v1, 0x1e

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->T(Ljava/lang/String;I)V

    .line 185
    :cond_1e
    iget-object v0, p0, Lcom/kingx/cloudsdk/v;->cT:Ljava/lang/String;

    if-eqz v0, :cond_1f

    .line 186
    iget-object v0, p0, Lcom/kingx/cloudsdk/v;->cT:Ljava/lang/String;

    const/16 v1, 0x1f

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->T(Ljava/lang/String;I)V

    .line 188
    :cond_1f
    iget-object v0, p0, Lcom/kingx/cloudsdk/v;->cU:Ljava/lang/String;

    if-eqz v0, :cond_20

    .line 189
    iget-object v0, p0, Lcom/kingx/cloudsdk/v;->cU:Ljava/lang/String;

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->T(Ljava/lang/String;I)V

    .line 191
    :cond_20
    iget v0, p0, Lcom/kingx/cloudsdk/v;->cV:I

    if-eqz v0, :cond_21

    .line 192
    iget v0, p0, Lcom/kingx/cloudsdk/v;->cV:I

    const/16 v1, 0x21

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->am(II)V

    .line 194
    :cond_21
    iget v0, p0, Lcom/kingx/cloudsdk/v;->cW:I

    if-eqz v0, :cond_22

    .line 195
    iget v0, p0, Lcom/kingx/cloudsdk/v;->cW:I

    const/16 v1, 0x22

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->am(II)V

    .line 197
    :cond_22
    iget-boolean v0, p0, Lcom/kingx/cloudsdk/v;->cX:Z

    if-eqz v0, :cond_23

    .line 198
    iget-boolean v0, p0, Lcom/kingx/cloudsdk/v;->cX:Z

    const/16 v1, 0x23

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->a(ZI)V

    .line 200
    :cond_23
    iget-object v0, p0, Lcom/kingx/cloudsdk/v;->cY:Ljava/lang/String;

    if-eqz v0, :cond_24

    .line 201
    iget-object v0, p0, Lcom/kingx/cloudsdk/v;->cY:Ljava/lang/String;

    const/16 v1, 0x24

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->T(Ljava/lang/String;I)V

    .line 203
    :cond_24
    iget-object v0, p0, Lcom/kingx/cloudsdk/v;->cZ:Ljava/lang/String;

    if-eqz v0, :cond_25

    .line 204
    iget-object v0, p0, Lcom/kingx/cloudsdk/v;->cZ:Ljava/lang/String;

    const/16 v1, 0x25

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->T(Ljava/lang/String;I)V

    .line 206
    :cond_25
    iget-object v0, p0, Lcom/kingx/cloudsdk/v;->da:Ljava/lang/String;

    if-eqz v0, :cond_26

    .line 207
    iget-object v0, p0, Lcom/kingx/cloudsdk/v;->da:Ljava/lang/String;

    const/16 v1, 0x26

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->T(Ljava/lang/String;I)V

    .line 209
    :cond_26
    iget-boolean v0, p0, Lcom/kingx/cloudsdk/v;->db:Z

    if-eqz v0, :cond_27

    .line 210
    iget-boolean v0, p0, Lcom/kingx/cloudsdk/v;->db:Z

    const/16 v1, 0x27

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->a(ZI)V

    .line 212
    :cond_27
    iget-boolean v0, p0, Lcom/kingx/cloudsdk/v;->dc:Z

    if-eqz v0, :cond_28

    .line 213
    iget-boolean v0, p0, Lcom/kingx/cloudsdk/v;->dc:Z

    const/16 v1, 0x28

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->a(ZI)V

    .line 215
    :cond_28
    iget-object v0, p0, Lcom/kingx/cloudsdk/v;->version:Ljava/lang/String;

    if-eqz v0, :cond_29

    .line 216
    iget-object v0, p0, Lcom/kingx/cloudsdk/v;->version:Ljava/lang/String;

    const/16 v1, 0x29

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->T(Ljava/lang/String;I)V

    .line 218
    :cond_29
    iget v0, p0, Lcom/kingx/cloudsdk/v;->dd:I

    if-eq v0, v3, :cond_2a

    .line 219
    iget v0, p0, Lcom/kingx/cloudsdk/v;->dd:I

    const/16 v1, 0x2a

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->am(II)V

    .line 221
    :cond_2a
    iget-object v0, p0, Lcom/kingx/cloudsdk/v;->de:Ljava/lang/String;

    if-eqz v0, :cond_2b

    .line 222
    iget-object v0, p0, Lcom/kingx/cloudsdk/v;->de:Ljava/lang/String;

    const/16 v1, 0x2b

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->T(Ljava/lang/String;I)V

    .line 224
    :cond_2b
    iget-object v0, p0, Lcom/kingx/cloudsdk/v;->df:Ljava/lang/String;

    if-eqz v0, :cond_2c

    .line 225
    iget-object v0, p0, Lcom/kingx/cloudsdk/v;->df:Ljava/lang/String;

    const/16 v1, 0x2c

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->T(Ljava/lang/String;I)V

    .line 227
    :cond_2c
    iget-object v0, p0, Lcom/kingx/cloudsdk/v;->dg:Ljava/lang/String;

    if-eqz v0, :cond_2d

    .line 228
    iget-object v0, p0, Lcom/kingx/cloudsdk/v;->dg:Ljava/lang/String;

    const/16 v1, 0x2d

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->T(Ljava/lang/String;I)V

    .line 230
    :cond_2d
    iget-object v0, p0, Lcom/kingx/cloudsdk/v;->dh:Ljava/lang/String;

    if-eqz v0, :cond_2e

    .line 231
    iget-object v0, p0, Lcom/kingx/cloudsdk/v;->dh:Ljava/lang/String;

    const/16 v1, 0x2e

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->T(Ljava/lang/String;I)V

    .line 233
    :cond_2e
    iget-object v0, p0, Lcom/kingx/cloudsdk/v;->di:Ljava/lang/String;

    if-eqz v0, :cond_2f

    .line 234
    iget-object v0, p0, Lcom/kingx/cloudsdk/v;->di:Ljava/lang/String;

    const/16 v1, 0x2f

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->T(Ljava/lang/String;I)V

    .line 236
    :cond_2f
    iget-object v0, p0, Lcom/kingx/cloudsdk/v;->dj:Ljava/lang/String;

    if-eqz v0, :cond_30

    .line 237
    iget-object v0, p0, Lcom/kingx/cloudsdk/v;->dj:Ljava/lang/String;

    const/16 v1, 0x30

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->T(Ljava/lang/String;I)V

    .line 239
    :cond_30
    iget-object v0, p0, Lcom/kingx/cloudsdk/v;->dk:Ljava/lang/String;

    if-eqz v0, :cond_31

    .line 240
    iget-object v0, p0, Lcom/kingx/cloudsdk/v;->dk:Ljava/lang/String;

    const/16 v1, 0x31

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->T(Ljava/lang/String;I)V

    .line 242
    :cond_31
    iget-object v0, p0, Lcom/kingx/cloudsdk/v;->dl:Ljava/lang/String;

    if-eqz v0, :cond_32

    .line 243
    iget-object v0, p0, Lcom/kingx/cloudsdk/v;->dl:Ljava/lang/String;

    const/16 v1, 0x32

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->T(Ljava/lang/String;I)V

    .line 245
    :cond_32
    iget-object v0, p0, Lcom/kingx/cloudsdk/v;->dm:Ljava/lang/String;

    if-eqz v0, :cond_33

    .line 246
    iget-object v0, p0, Lcom/kingx/cloudsdk/v;->dm:Ljava/lang/String;

    const/16 v1, 0x33

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->T(Ljava/lang/String;I)V

    .line 248
    :cond_33
    iget-wide v0, p0, Lcom/kingx/cloudsdk/v;->dn:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_34

    .line 249
    iget-wide v0, p0, Lcom/kingx/cloudsdk/v;->dn:J

    const/16 v2, 0x34

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/bnd;->a(JI)V

    .line 251
    :cond_34
    iget-object v0, p0, Lcom/kingx/cloudsdk/v;->do:Ljava/lang/String;

    if-eqz v0, :cond_35

    .line 252
    iget-object v0, p0, Lcom/kingx/cloudsdk/v;->do:Ljava/lang/String;

    const/16 v1, 0x35

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->T(Ljava/lang/String;I)V

    .line 254
    :cond_35
    iget-object v0, p0, Lcom/kingx/cloudsdk/v;->dp:Ljava/lang/String;

    if-eqz v0, :cond_36

    .line 255
    iget-object v0, p0, Lcom/kingx/cloudsdk/v;->dp:Ljava/lang/String;

    const/16 v1, 0x36

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->T(Ljava/lang/String;I)V

    .line 257
    :cond_36
    iget v0, p0, Lcom/kingx/cloudsdk/v;->dq:I

    if-eqz v0, :cond_37

    .line 258
    iget v0, p0, Lcom/kingx/cloudsdk/v;->dq:I

    const/16 v1, 0x37

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->am(II)V

    .line 260
    :cond_37
    return-void
.end method

.method public final a(Ljava/lang/StringBuilder;I)V
    .locals 3

    .prologue
    .line 81
    new-instance v0, Lcom/kingroot/kinguser/bnb;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/kingroot/kinguser/bnb;-><init>(Ljava/lang/StringBuilder;I)V

    .line 82
    iget-object v1, p0, Lcom/kingx/cloudsdk/v;->co:Ljava/lang/String;

    const-string v2, "imei"

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/bnb;->aR(Ljava/lang/String;Ljava/lang/String;)Lcom/kingroot/kinguser/bnb;

    .line 83
    iget-object v1, p0, Lcom/kingx/cloudsdk/v;->cq:Ljava/lang/String;

    const-string v2, "mac"

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/bnb;->aR(Ljava/lang/String;Ljava/lang/String;)Lcom/kingroot/kinguser/bnb;

    .line 84
    iget-object v1, p0, Lcom/kingx/cloudsdk/v;->cr:Ljava/lang/String;

    const-string v2, "qq"

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/bnb;->aR(Ljava/lang/String;Ljava/lang/String;)Lcom/kingroot/kinguser/bnb;

    .line 85
    iget-object v1, p0, Lcom/kingx/cloudsdk/v;->cs:Ljava/lang/String;

    const-string v2, "phone"

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/bnb;->aR(Ljava/lang/String;Ljava/lang/String;)Lcom/kingroot/kinguser/bnb;

    .line 86
    iget v1, p0, Lcom/kingx/cloudsdk/v;->ct:I

    const-string v2, "product"

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/bnb;->S(ILjava/lang/String;)Lcom/kingroot/kinguser/bnb;

    .line 87
    iget v1, p0, Lcom/kingx/cloudsdk/v;->cv:I

    const-string v2, "buildno"

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/bnb;->S(ILjava/lang/String;)Lcom/kingroot/kinguser/bnb;

    .line 88
    return-void
.end method
