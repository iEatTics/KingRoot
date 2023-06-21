.class public Lcom/kingroot/kinguser/cgf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bZj:I

.field private cei:Lcom/kingroot/kinguser/cch;

.field private cej:J

.field private cek:I

.field private cel:J

.field private cem:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JI)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput v2, p0, Lcom/kingroot/kinguser/cgf;->bZj:I

    .line 36
    iput-wide v0, p0, Lcom/kingroot/kinguser/cgf;->cej:J

    .line 38
    iput v2, p0, Lcom/kingroot/kinguser/cgf;->cek:I

    .line 39
    iput-wide v0, p0, Lcom/kingroot/kinguser/cgf;->cel:J

    .line 40
    iput-wide v0, p0, Lcom/kingroot/kinguser/cgf;->cem:J

    .line 49
    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    .line 50
    const-wide p2, 0x7fffffffffffffffL

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "freq_ctrl_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/ceb;->nH(Ljava/lang/String;)Lcom/kingroot/kinguser/cch;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/cgf;->cei:Lcom/kingroot/kinguser/cch;

    .line 53
    iput p4, p0, Lcom/kingroot/kinguser/cgf;->bZj:I

    .line 54
    iput-wide p2, p0, Lcom/kingroot/kinguser/cgf;->cej:J

    .line 55
    iget-object v0, p0, Lcom/kingroot/kinguser/cgf;->cei:Lcom/kingroot/kinguser/cch;

    const-string v1, "times_now"

    iget v2, p0, Lcom/kingroot/kinguser/cgf;->cek:I

    invoke-interface {v0, v1, v2}, Lcom/kingroot/kinguser/cch;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/cgf;->cek:I

    .line 56
    iget-object v0, p0, Lcom/kingroot/kinguser/cgf;->cei:Lcom/kingroot/kinguser/cch;

    const-string v1, "time_span_start"

    iget-wide v2, p0, Lcom/kingroot/kinguser/cgf;->cel:J

    invoke-interface {v0, v1, v2, v3}, Lcom/kingroot/kinguser/cch;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/cgf;->cel:J

    .line 57
    iget-object v0, p0, Lcom/kingroot/kinguser/cgf;->cei:Lcom/kingroot/kinguser/cch;

    const-string v1, "time_span_end"

    iget-wide v2, p0, Lcom/kingroot/kinguser/cgf;->cem:J

    invoke-interface {v0, v1, v2, v3}, Lcom/kingroot/kinguser/cch;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/cgf;->cem:J

    .line 59
    iget-object v0, p0, Lcom/kingroot/kinguser/cgf;->cei:Lcom/kingroot/kinguser/cch;

    const-string v1, "times"

    invoke-interface {v0, v1, p4}, Lcom/kingroot/kinguser/cch;->W(Ljava/lang/String;I)Z

    .line 60
    iget-object v0, p0, Lcom/kingroot/kinguser/cgf;->cei:Lcom/kingroot/kinguser/cch;

    const-string v1, "time_span"

    invoke-interface {v0, v1, p2, p3}, Lcom/kingroot/kinguser/cch;->p(Ljava/lang/String;J)Z

    .line 61
    return-void
.end method

.method private cS(J)V
    .locals 5

    .prologue
    .line 95
    iput-wide p1, p0, Lcom/kingroot/kinguser/cgf;->cel:J

    .line 96
    iget-wide v0, p0, Lcom/kingroot/kinguser/cgf;->cej:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/kingroot/kinguser/cgf;->cem:J

    .line 97
    iget-object v0, p0, Lcom/kingroot/kinguser/cgf;->cei:Lcom/kingroot/kinguser/cch;

    const-string v1, "time_span_start"

    iget-wide v2, p0, Lcom/kingroot/kinguser/cgf;->cel:J

    invoke-interface {v0, v1, v2, v3}, Lcom/kingroot/kinguser/cch;->p(Ljava/lang/String;J)Z

    .line 98
    iget-object v0, p0, Lcom/kingroot/kinguser/cgf;->cei:Lcom/kingroot/kinguser/cch;

    const-string v1, "time_span_end"

    iget-wide v2, p0, Lcom/kingroot/kinguser/cgf;->cem:J

    invoke-interface {v0, v1, v2, v3}, Lcom/kingroot/kinguser/cch;->p(Ljava/lang/String;J)Z

    .line 99
    return-void
.end method

.method private lt(I)V
    .locals 3

    .prologue
    .line 102
    iput p1, p0, Lcom/kingroot/kinguser/cgf;->cek:I

    .line 103
    iget-object v0, p0, Lcom/kingroot/kinguser/cgf;->cei:Lcom/kingroot/kinguser/cch;

    const-string v1, "times_now"

    iget v2, p0, Lcom/kingroot/kinguser/cgf;->cek:I

    invoke-interface {v0, v1, v2}, Lcom/kingroot/kinguser/cch;->W(Ljava/lang/String;I)Z

    .line 104
    return-void
.end method


# virtual methods
.method public amW()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 67
    iget-wide v2, p0, Lcom/kingroot/kinguser/cgf;->cel:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 74
    :cond_0
    :goto_0
    return v0

    .line 70
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 71
    iget v1, p0, Lcom/kingroot/kinguser/cgf;->cek:I

    iget v4, p0, Lcom/kingroot/kinguser/cgf;->bZj:I

    if-lt v1, v4, :cond_0

    iget-wide v4, p0, Lcom/kingroot/kinguser/cgf;->cem:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 72
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public amX()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 82
    iget-wide v2, p0, Lcom/kingroot/kinguser/cgf;->cel:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 83
    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/cgf;->cS(J)V

    .line 84
    invoke-direct {p0, v6}, Lcom/kingroot/kinguser/cgf;->lt(I)V

    .line 91
    :cond_0
    :goto_0
    iget v0, p0, Lcom/kingroot/kinguser/cgf;->cek:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/cgf;->lt(I)V

    .line 92
    return-void

    .line 86
    :cond_1
    iget-wide v2, p0, Lcom/kingroot/kinguser/cgf;->cem:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 87
    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/cgf;->cS(J)V

    .line 88
    invoke-direct {p0, v6}, Lcom/kingroot/kinguser/cgf;->lt(I)V

    goto :goto_0
.end method
