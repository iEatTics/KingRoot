.class public final Lcom/kingroot/kinguser/bti;
.super Lcom/qq/taf/jce/JceStruct;


# static fields
.field static bMX:[B

.field static t:I

.field static v:[B


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public bGq:J

.field public bMW:S

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:[B

.field public j:[B

.field public l:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:I

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    sput v1, Lcom/kingroot/kinguser/bti;->t:I

    new-array v0, v2, [B

    check-cast v0, [B

    sput-object v0, Lcom/kingroot/kinguser/bti;->bMX:[B

    sget-object v0, Lcom/kingroot/kinguser/bti;->bMX:[B

    check-cast v0, [B

    aput-byte v1, v0, v1

    new-array v0, v2, [B

    check-cast v0, [B

    sput-object v0, Lcom/kingroot/kinguser/bti;->v:[B

    sget-object v0, Lcom/kingroot/kinguser/bti;->v:[B

    check-cast v0, [B

    aput-byte v1, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput v2, p0, Lcom/kingroot/kinguser/bti;->a:I

    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/bti;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/bti;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/bti;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/bti;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/bti;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/bti;->g:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/bti;->h:Ljava/lang/String;

    iput-object v1, p0, Lcom/kingroot/kinguser/bti;->i:[B

    iput-object v1, p0, Lcom/kingroot/kinguser/bti;->j:[B

    iput-short v2, p0, Lcom/kingroot/kinguser/bti;->bMW:S

    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/bti;->l:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingroot/kinguser/bti;->bGq:J

    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/bti;->n:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/bti;->o:Ljava/lang/String;

    iput v2, p0, Lcom/kingroot/kinguser/bti;->p:I

    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/bti;->q:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/bti;->r:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/bti;->s:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v3, 0x0

    iget v0, p0, Lcom/kingroot/kinguser/bti;->a:I

    invoke-virtual {p1, v0, v3, v1}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/bti;->a:I

    invoke-virtual {p1, v1, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bti;->b:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bti;->c:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bti;->d:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bti;->e:Ljava/lang/String;

    const/4 v0, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bti;->f:Ljava/lang/String;

    const/4 v0, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bti;->g:Ljava/lang/String;

    const/4 v0, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bti;->h:Ljava/lang/String;

    sget-object v0, Lcom/kingroot/kinguser/bti;->bMX:[B

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read([BIZ)[B

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/kingroot/kinguser/bti;->i:[B

    sget-object v0, Lcom/kingroot/kinguser/bti;->v:[B

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read([BIZ)[B

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/kingroot/kinguser/bti;->j:[B

    iget-short v0, p0, Lcom/kingroot/kinguser/bti;->bMW:S

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(SIZ)S

    move-result v0

    iput-short v0, p0, Lcom/kingroot/kinguser/bti;->bMW:S

    const/16 v0, 0xb

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bti;->l:Ljava/lang/String;

    iget-wide v0, p0, Lcom/kingroot/kinguser/bti;->bGq:J

    const/16 v2, 0xc

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/bti;->bGq:J

    const/16 v0, 0xd

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bti;->n:Ljava/lang/String;

    const/16 v0, 0xe

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bti;->o:Ljava/lang/String;

    iget v0, p0, Lcom/kingroot/kinguser/bti;->p:I

    const/16 v1, 0xf

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/bti;->p:I

    const/16 v0, 0x10

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bti;->q:Ljava/lang/String;

    const/16 v0, 0x11

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bti;->r:Ljava/lang/String;

    const/16 v0, 0x12

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bti;->s:Ljava/lang/String;

    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 3

    iget v0, p0, Lcom/kingroot/kinguser/bti;->a:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, Lcom/kingroot/kinguser/bti;->b:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/kingroot/kinguser/bti;->c:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/kingroot/kinguser/bti;->d:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/kingroot/kinguser/bti;->e:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/kingroot/kinguser/bti;->f:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/kingroot/kinguser/bti;->g:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/kingroot/kinguser/bti;->h:Ljava/lang/String;

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/kingroot/kinguser/bti;->i:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/bti;->i:[B

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write([BI)V

    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bti;->j:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kingroot/kinguser/bti;->j:[B

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write([BI)V

    :cond_1
    iget-short v0, p0, Lcom/kingroot/kinguser/bti;->bMW:S

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(SI)V

    iget-object v0, p0, Lcom/kingroot/kinguser/bti;->l:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/kingroot/kinguser/bti;->l:Ljava/lang/String;

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_2
    iget-wide v0, p0, Lcom/kingroot/kinguser/bti;->bGq:J

    const/16 v2, 0xc

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    iget-object v0, p0, Lcom/kingroot/kinguser/bti;->n:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/kingroot/kinguser/bti;->n:Ljava/lang/String;

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/bti;->o:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/kingroot/kinguser/bti;->o:Ljava/lang/String;

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_4
    iget v0, p0, Lcom/kingroot/kinguser/bti;->p:I

    const/16 v1, 0xf

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, Lcom/kingroot/kinguser/bti;->q:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/kingroot/kinguser/bti;->q:Ljava/lang/String;

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_5
    iget-object v0, p0, Lcom/kingroot/kinguser/bti;->r:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/kingroot/kinguser/bti;->r:Ljava/lang/String;

    const/16 v1, 0x11

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_6
    iget-object v0, p0, Lcom/kingroot/kinguser/bti;->s:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/kingroot/kinguser/bti;->s:Ljava/lang/String;

    const/16 v1, 0x12

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_7
    return-void
.end method
