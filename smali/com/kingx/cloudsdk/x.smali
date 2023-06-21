.class public final Lcom/kingx/cloudsdk/x;
.super Lcom/kingx/cloudsdk/cb;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static bDr:[B


# instance fields
.field private dA:I

.field private dB:J

.field private dC:Ljava/lang/String;

.field private dD:[B

.field private dE:Z

.field private dF:S

.field private dz:I

.field private valueType:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 86
    invoke-direct {p0}, Lcom/kingx/cloudsdk/cb;-><init>()V

    .line 77
    iput v2, p0, Lcom/kingx/cloudsdk/x;->valueType:I

    .line 78
    iput v2, p0, Lcom/kingx/cloudsdk/x;->dz:I

    .line 79
    iput v2, p0, Lcom/kingx/cloudsdk/x;->dA:I

    .line 80
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingx/cloudsdk/x;->dB:J

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lcom/kingx/cloudsdk/x;->dC:Ljava/lang/String;

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingx/cloudsdk/x;->dD:[B

    .line 83
    iput-boolean v2, p0, Lcom/kingx/cloudsdk/x;->dE:Z

    .line 84
    iput-short v2, p0, Lcom/kingx/cloudsdk/x;->dF:S

    .line 87
    return-void
.end method


# virtual methods
.method public final P(I)V
    .locals 0

    .prologue
    .line 18
    iput p1, p0, Lcom/kingx/cloudsdk/x;->valueType:I

    .line 19
    return-void
.end method

.method public final a(J)V
    .locals 1

    .prologue
    .line 42
    iput-wide p1, p0, Lcom/kingx/cloudsdk/x;->dB:J

    .line 43
    return-void
.end method

.method public final a(Lcom/kingroot/kinguser/bnc;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 121
    iget v0, p0, Lcom/kingx/cloudsdk/x;->valueType:I

    invoke-virtual {p1, v0, v3, v3}, Lcom/kingroot/kinguser/bnc;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingx/cloudsdk/x;->valueType:I

    .line 122
    iget v0, p0, Lcom/kingx/cloudsdk/x;->dz:I

    invoke-virtual {p1, v0, v4, v3}, Lcom/kingroot/kinguser/bnc;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingx/cloudsdk/x;->dz:I

    .line 123
    iget v0, p0, Lcom/kingx/cloudsdk/x;->dA:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v3}, Lcom/kingroot/kinguser/bnc;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/kingx/cloudsdk/x;->dA:I

    .line 124
    iget-wide v0, p0, Lcom/kingx/cloudsdk/x;->dB:J

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/kingroot/kinguser/bnc;->a(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingx/cloudsdk/x;->dB:J

    .line 125
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v3}, Lcom/kingroot/kinguser/bnc;->z(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingx/cloudsdk/x;->dC:Ljava/lang/String;

    .line 126
    sget-object v0, Lcom/kingx/cloudsdk/x;->bDr:[B

    if-nez v0, :cond_0

    .line 127
    new-array v0, v4, [B

    check-cast v0, [B

    .line 128
    sput-object v0, Lcom/kingx/cloudsdk/x;->bDr:[B

    check-cast v0, [B

    aput-byte v3, v0, v3

    .line 131
    :cond_0
    sget-object v0, Lcom/kingx/cloudsdk/x;->bDr:[B

    const/4 v0, 0x5

    invoke-virtual {p1, v0, v3}, Lcom/kingroot/kinguser/bnc;->B(IZ)[B

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/kingx/cloudsdk/x;->dD:[B

    .line 132
    iget-boolean v0, p0, Lcom/kingx/cloudsdk/x;->dE:Z

    const/4 v0, 0x6

    invoke-virtual {p1, v0, v3}, Lcom/kingroot/kinguser/bnc;->y(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kingx/cloudsdk/x;->dE:Z

    .line 133
    iget-short v0, p0, Lcom/kingx/cloudsdk/x;->dF:S

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1, v3}, Lcom/kingroot/kinguser/bnc;->a(SIZ)S

    move-result v0

    iput-short v0, p0, Lcom/kingx/cloudsdk/x;->dF:S

    .line 134
    return-void
.end method

.method public final a(Lcom/kingroot/kinguser/bnd;)V
    .locals 4

    .prologue
    .line 93
    iget v0, p0, Lcom/kingx/cloudsdk/x;->valueType:I

    if-eqz v0, :cond_0

    .line 94
    iget v0, p0, Lcom/kingx/cloudsdk/x;->valueType:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->am(II)V

    .line 96
    :cond_0
    iget v0, p0, Lcom/kingx/cloudsdk/x;->dz:I

    if-eqz v0, :cond_1

    .line 97
    iget v0, p0, Lcom/kingx/cloudsdk/x;->dz:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->am(II)V

    .line 99
    :cond_1
    iget v0, p0, Lcom/kingx/cloudsdk/x;->dA:I

    if-eqz v0, :cond_2

    .line 100
    iget v0, p0, Lcom/kingx/cloudsdk/x;->dA:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->am(II)V

    .line 102
    :cond_2
    iget-wide v0, p0, Lcom/kingx/cloudsdk/x;->dB:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 103
    iget-wide v0, p0, Lcom/kingx/cloudsdk/x;->dB:J

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/kingroot/kinguser/bnd;->a(JI)V

    .line 105
    :cond_3
    iget-object v0, p0, Lcom/kingx/cloudsdk/x;->dC:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 106
    iget-object v0, p0, Lcom/kingx/cloudsdk/x;->dC:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->T(Ljava/lang/String;I)V

    .line 108
    :cond_4
    iget-object v0, p0, Lcom/kingx/cloudsdk/x;->dD:[B

    if-eqz v0, :cond_5

    .line 109
    iget-object v0, p0, Lcom/kingx/cloudsdk/x;->dD:[B

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->a([BI)V

    .line 111
    :cond_5
    iget-boolean v0, p0, Lcom/kingx/cloudsdk/x;->dE:Z

    if-eqz v0, :cond_6

    .line 112
    iget-boolean v0, p0, Lcom/kingx/cloudsdk/x;->dE:Z

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->a(ZI)V

    .line 114
    :cond_6
    iget-short v0, p0, Lcom/kingx/cloudsdk/x;->dF:S

    if-eqz v0, :cond_7

    .line 115
    iget-short v0, p0, Lcom/kingx/cloudsdk/x;->dF:S

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/kingroot/kinguser/bnd;->a(SI)V

    .line 117
    :cond_7
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/kingx/cloudsdk/x;->dC:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public final a(Ljava/lang/StringBuilder;I)V
    .locals 0

    .prologue
    .line 138
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/kingx/cloudsdk/x;->dE:Z

    .line 67
    return-void
.end method

.method public final a([B)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/kingx/cloudsdk/x;->dD:[B

    .line 59
    return-void
.end method

.method public final c(S)V
    .locals 0

    .prologue
    .line 74
    iput-short p1, p0, Lcom/kingx/cloudsdk/x;->dF:S

    .line 75
    return-void
.end method

.method public final jX(I)V
    .locals 0

    .prologue
    .line 26
    iput p1, p0, Lcom/kingx/cloudsdk/x;->dz:I

    .line 27
    return-void
.end method

.method public final jY(I)V
    .locals 0

    .prologue
    .line 34
    iput p1, p0, Lcom/kingx/cloudsdk/x;->dA:I

    .line 35
    return-void
.end method
