.class public final Lcom/king/uranus/B;
.super Lcom/king/uranus/cS;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static qF:[B

.field static qG:[B

.field static qH:[B


# instance fields
.field public am:I

.field public an:[B

.field public ao:I

.field public bV:Z

.field public bW:[B

.field public bX:[B

.field public bY:I

.field public bZ:I

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 96
    invoke-direct {p0}, Lcom/king/uranus/cS;-><init>()V

    .line 86
    iput v1, p0, Lcom/king/uranus/B;->am:I

    .line 87
    iput-object v2, p0, Lcom/king/uranus/B;->an:[B

    .line 88
    iput v1, p0, Lcom/king/uranus/B;->ao:I

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lcom/king/uranus/B;->url:Ljava/lang/String;

    .line 90
    iput-boolean v1, p0, Lcom/king/uranus/B;->bV:Z

    .line 91
    iput-object v2, p0, Lcom/king/uranus/B;->bW:[B

    .line 92
    iput-object v2, p0, Lcom/king/uranus/B;->bX:[B

    .line 93
    iput v1, p0, Lcom/king/uranus/B;->bY:I

    .line 94
    iput v1, p0, Lcom/king/uranus/B;->bZ:I

    .line 97
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/king/uranus/B;->am:I

    return v0
.end method

.method public a(Lcom/kingroot/kinguser/mq;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 130
    iget v0, p0, Lcom/king/uranus/B;->am:I

    invoke-virtual {p1, v0, v2, v3}, Lcom/kingroot/kinguser/mq;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/king/uranus/B;->am:I

    .line 131
    sget-object v0, Lcom/king/uranus/B;->qF:[B

    if-nez v0, :cond_0

    .line 132
    new-array v0, v3, [B

    sput-object v0, Lcom/king/uranus/B;->qF:[B

    .line 134
    sget-object v0, Lcom/king/uranus/B;->qF:[B

    aput-byte v2, v0, v2

    .line 136
    :cond_0
    sget-object v0, Lcom/king/uranus/B;->qF:[B

    invoke-virtual {p1, v0, v3, v3}, Lcom/kingroot/kinguser/mq;->a([BIZ)[B

    move-result-object v0

    iput-object v0, p0, Lcom/king/uranus/B;->an:[B

    .line 137
    iget v0, p0, Lcom/king/uranus/B;->ao:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v3}, Lcom/kingroot/kinguser/mq;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/king/uranus/B;->ao:I

    .line 138
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v2}, Lcom/kingroot/kinguser/mq;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/king/uranus/B;->url:Ljava/lang/String;

    .line 139
    iget-boolean v0, p0, Lcom/king/uranus/B;->bV:Z

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/mq;->a(ZIZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/king/uranus/B;->bV:Z

    .line 140
    sget-object v0, Lcom/king/uranus/B;->qG:[B

    if-nez v0, :cond_1

    .line 141
    new-array v0, v3, [B

    sput-object v0, Lcom/king/uranus/B;->qG:[B

    .line 143
    sget-object v0, Lcom/king/uranus/B;->qG:[B

    aput-byte v2, v0, v2

    .line 145
    :cond_1
    sget-object v0, Lcom/king/uranus/B;->qG:[B

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/mq;->a([BIZ)[B

    move-result-object v0

    iput-object v0, p0, Lcom/king/uranus/B;->bW:[B

    .line 146
    sget-object v0, Lcom/king/uranus/B;->qH:[B

    if-nez v0, :cond_2

    .line 147
    new-array v0, v3, [B

    sput-object v0, Lcom/king/uranus/B;->qH:[B

    .line 149
    sget-object v0, Lcom/king/uranus/B;->qH:[B

    aput-byte v2, v0, v2

    .line 151
    :cond_2
    sget-object v0, Lcom/king/uranus/B;->qH:[B

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/mq;->a([BIZ)[B

    move-result-object v0

    iput-object v0, p0, Lcom/king/uranus/B;->bX:[B

    .line 152
    iget v0, p0, Lcom/king/uranus/B;->bY:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/mq;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/king/uranus/B;->bY:I

    .line 153
    iget v0, p0, Lcom/king/uranus/B;->bZ:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/mq;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/king/uranus/B;->bZ:I

    .line 154
    return-void
.end method

.method public a(Lcom/kingroot/kinguser/mr;)V
    .locals 2

    .prologue
    .line 105
    iget v0, p0, Lcom/king/uranus/B;->am:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->e(II)V

    .line 106
    iget-object v0, p0, Lcom/king/uranus/B;->an:[B

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->a([BI)V

    .line 107
    iget v0, p0, Lcom/king/uranus/B;->ao:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->e(II)V

    .line 108
    iget-object v0, p0, Lcom/king/uranus/B;->url:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/king/uranus/B;->url:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->f(Ljava/lang/String;I)V

    .line 111
    :cond_0
    iget-boolean v0, p0, Lcom/king/uranus/B;->bV:Z

    if-eqz v0, :cond_1

    .line 112
    iget-boolean v0, p0, Lcom/king/uranus/B;->bV:Z

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->a(ZI)V

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/king/uranus/B;->bW:[B

    if-eqz v0, :cond_2

    .line 115
    iget-object v0, p0, Lcom/king/uranus/B;->bW:[B

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->a([BI)V

    .line 117
    :cond_2
    iget-object v0, p0, Lcom/king/uranus/B;->bX:[B

    if-eqz v0, :cond_3

    .line 118
    iget-object v0, p0, Lcom/king/uranus/B;->bX:[B

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->a([BI)V

    .line 120
    :cond_3
    iget v0, p0, Lcom/king/uranus/B;->bY:I

    if-eqz v0, :cond_4

    .line 121
    iget v0, p0, Lcom/king/uranus/B;->bY:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->e(II)V

    .line 123
    :cond_4
    iget v0, p0, Lcom/king/uranus/B;->bZ:I

    if-eqz v0, :cond_5

    .line 124
    iget v0, p0, Lcom/king/uranus/B;->bZ:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/mr;->e(II)V

    .line 126
    :cond_5
    return-void
.end method

.method public a(Ljava/lang/StringBuilder;I)V
    .locals 0

    .prologue
    .line 158
    return-void
.end method
