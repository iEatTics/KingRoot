.class public Lcom/kingroot/kinguser/brz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/brp$a;


# instance fields
.field private bLi:I

.field private bLj:Z

.field private bLk:Z

.field private mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput v1, p0, Lcom/kingroot/kinguser/brz;->bLi:I

    .line 21
    iput-boolean v1, p0, Lcom/kingroot/kinguser/brz;->bLj:Z

    .line 125
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/brz;->mLock:Ljava/lang/Object;

    .line 126
    iput-boolean v1, p0, Lcom/kingroot/kinguser/brz;->bLk:Z

    .line 17
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/brz;)I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/kingroot/kinguser/brz;->bLi:I

    return v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/brz;I)V
    .locals 0

    .prologue
    .line 20
    iput p1, p0, Lcom/kingroot/kinguser/brz;->bLi:I

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/brz;Z)V
    .locals 0

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/kingroot/kinguser/brz;->bLk:Z

    return-void
.end method

.method private a(Ljava/util/ArrayList;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/bsq;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/bsc;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 146
    const-string v0, "LogReportService"

    const-string v1, "asyncReportDBQiantuData,run"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bth;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    new-instance v0, Lcom/kingroot/kinguser/brp;

    new-instance v1, Lcom/kingroot/kinguser/brz$1;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/brz$1;-><init>(Lcom/kingroot/kinguser/brz;)V

    invoke-direct {v0, p2, v1}, Lcom/kingroot/kinguser/brp;-><init>(Ljava/util/List;Lcom/kingroot/kinguser/brp$a;)V

    invoke-static {p1, v0}, Lcom/kingroot/kinguser/bte;->a(Ljava/util/ArrayList;Lcom/kingroot/kinguser/brj;)V

    .line 163
    return-void
.end method

.method static synthetic b(Lcom/kingroot/kinguser/brz;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/kingroot/kinguser/brz;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method private b(Ljava/util/List;IJ)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/bsp;",
            ">;IJ)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/bsc;",
            ">;"
        }
    .end annotation

    .prologue
    .line 194
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 195
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    return-object v1

    .line 195
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bsp;

    .line 196
    new-instance v3, Lcom/kingroot/kinguser/bsc;

    invoke-direct {v3}, Lcom/kingroot/kinguser/bsc;-><init>()V

    .line 197
    iget-object v4, v0, Lcom/kingroot/kinguser/bsp;->bLn:[B

    iput-object v4, v3, Lcom/kingroot/kinguser/bsc;->bLn:[B

    .line 198
    iput p2, v3, Lcom/kingroot/kinguser/bsc;->gw:I

    .line 199
    iget v0, v0, Lcom/kingroot/kinguser/bsp;->bJp:I

    iput v0, v3, Lcom/kingroot/kinguser/bsc;->bJp:I

    .line 200
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    iput-wide v4, v3, Lcom/kingroot/kinguser/bsc;->bLo:J

    .line 201
    iput-wide p3, v3, Lcom/kingroot/kinguser/bsc;->bLp:J

    .line 202
    const-string v0, "LogReportService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u94b1\u9014\u5e7f\u544a\u5e73\u53f0\u6570\u636e\u4e0a\u62a5\uff1apositionID="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v3, Lcom/kingroot/kinguser/bsc;->bJp:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",phase="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Lcom/kingroot/kinguser/bsc;->gw:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private ce(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/bsc;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 70
    const-string v0, "LogReportService"

    const-string v1, "asyncReportQiantuData,run"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bth;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/brz;->ci(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    .line 72
    new-instance v1, Lcom/kingroot/kinguser/brp;

    invoke-direct {v1, p1, p0}, Lcom/kingroot/kinguser/brp;-><init>(Ljava/util/List;Lcom/kingroot/kinguser/brp$a;)V

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bte;->a(Ljava/util/ArrayList;Lcom/kingroot/kinguser/brj;)V

    .line 73
    return-void
.end method

.method private cf(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/bsc;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 140
    const-string v0, "LogReportService"

    const-string v1, "\u51c6\u5907\u4e0a\u62a5\u6570\u636e\u5e93\u91cc\u94b1\u9014\u7684\u6570\u636e..."

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bth;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/brz;->cg(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    .line 142
    invoke-direct {p0, v0, p1}, Lcom/kingroot/kinguser/brz;->a(Ljava/util/ArrayList;Ljava/util/List;)V

    .line 143
    return-void
.end method

.method private cg(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/bsc;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/bsq;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 167
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    return-object v1

    .line 167
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bsc;

    .line 168
    new-instance v3, Lcom/kingroot/kinguser/bsq;

    invoke-direct {v3}, Lcom/kingroot/kinguser/bsq;-><init>()V

    .line 169
    iget-object v4, v0, Lcom/kingroot/kinguser/bsc;->bLn:[B

    iput-object v4, v3, Lcom/kingroot/kinguser/bsq;->bLn:[B

    .line 170
    iget v4, v0, Lcom/kingroot/kinguser/bsc;->gw:I

    iput v4, v3, Lcom/kingroot/kinguser/bsq;->gw:I

    .line 171
    iget v4, v0, Lcom/kingroot/kinguser/bsc;->bJp:I

    iput v4, v3, Lcom/kingroot/kinguser/bsq;->bJp:I

    .line 172
    iget-wide v4, v0, Lcom/kingroot/kinguser/bsc;->bLo:J

    iput-wide v4, v3, Lcom/kingroot/kinguser/bsq;->bLo:J

    .line 173
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private ch(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/bso;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/bsc;",
            ">;"
        }
    .end annotation

    .prologue
    .line 180
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 181
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    return-object v1

    .line 181
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bso;

    .line 182
    new-instance v3, Lcom/kingroot/kinguser/bsc;

    invoke-direct {v3}, Lcom/kingroot/kinguser/bsc;-><init>()V

    .line 183
    iget-object v4, v0, Lcom/kingroot/kinguser/bso;->bLV:Lcom/kingroot/kinguser/bsp;

    iget-object v4, v4, Lcom/kingroot/kinguser/bsp;->bLn:[B

    iput-object v4, v3, Lcom/kingroot/kinguser/bsc;->bLn:[B

    .line 184
    iget v4, v0, Lcom/kingroot/kinguser/bso;->gw:I

    iput v4, v3, Lcom/kingroot/kinguser/bsc;->gw:I

    .line 185
    iget-object v0, v0, Lcom/kingroot/kinguser/bso;->bLV:Lcom/kingroot/kinguser/bsp;

    iget v0, v0, Lcom/kingroot/kinguser/bsp;->bJp:I

    iput v0, v3, Lcom/kingroot/kinguser/bsc;->bJp:I

    .line 186
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    iput-wide v4, v3, Lcom/kingroot/kinguser/bsc;->bLo:J

    .line 187
    const-string v0, "LogReportService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u94b1\u9014\u5e7f\u544a\u5e73\u53f0\u6570\u636e\u4e0a\u62a5\uff1apositionID="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v3, Lcom/kingroot/kinguser/bsc;->bJp:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",phase="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Lcom/kingroot/kinguser/bsc;->gw:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private ci(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/bsc;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/bsq;",
            ">;"
        }
    .end annotation

    .prologue
    .line 209
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 210
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    return-object v1

    .line 210
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bsc;

    .line 211
    new-instance v3, Lcom/kingroot/kinguser/bsq;

    invoke-direct {v3}, Lcom/kingroot/kinguser/bsq;-><init>()V

    .line 212
    iget-object v4, v0, Lcom/kingroot/kinguser/bsc;->bLn:[B

    iput-object v4, v3, Lcom/kingroot/kinguser/bsq;->bLn:[B

    .line 213
    iget v4, v0, Lcom/kingroot/kinguser/bsc;->gw:I

    iput v4, v3, Lcom/kingroot/kinguser/bsq;->gw:I

    .line 214
    iget v4, v0, Lcom/kingroot/kinguser/bsc;->bJp:I

    iput v4, v3, Lcom/kingroot/kinguser/bsq;->bJp:I

    .line 215
    iget-wide v4, v0, Lcom/kingroot/kinguser/bsc;->bLo:J

    iput-wide v4, v3, Lcom/kingroot/kinguser/bsq;->bLo:J

    .line 216
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/bsp;I)V
    .locals 2

    .prologue
    .line 53
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/kingroot/kinguser/brz;->a(Lcom/kingroot/kinguser/bsp;IJ)V

    .line 54
    return-void
.end method

.method public a(Lcom/kingroot/kinguser/bsp;IJ)V
    .locals 5

    .prologue
    .line 30
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 31
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/kingroot/kinguser/brz;->b(Ljava/util/List;IJ)Ljava/util/ArrayList;

    move-result-object v0

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v1, v2, p3

    if-ltz v1, :cond_0

    .line 34
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/brz;->ce(Ljava/util/List;)V

    .line 40
    :goto_0
    return-void

    .line 36
    :cond_0
    const-string v1, "LogReportService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u76f4\u63a5\u5199\u5165\u6570\u636e\u5e93\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-static {}, Lcom/kingroot/kinguser/brs;->ahJ()Lcom/kingroot/kinguser/brs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/brs;->ahL()Lcom/kingroot/kinguser/bsb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/bsb;->cj(Ljava/util/List;)V

    .line 38
    iget v1, p0, Lcom/kingroot/kinguser/brz;->bLi:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/kingroot/kinguser/brz;->bLi:I

    goto :goto_0
.end method

.method public ahQ()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    .line 76
    iget-object v1, p0, Lcom/kingroot/kinguser/brz;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 77
    :try_start_0
    iget-boolean v0, p0, Lcom/kingroot/kinguser/brz;->bLk:Z

    if-eqz v0, :cond_0

    .line 78
    const-string v0, "LogReportService"

    const-string v2, "\u6b63\u5728\u4e0a\u62a5\u6570\u636e\u5e93\u91cc\u7684\u6570\u636e\uff0c\u5f53\u524d\u4e0d\u80fd\u4e0a\u62a5"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    monitor-exit v1

    .line 123
    :goto_0
    return-void

    .line 81
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/brz;->bLk:Z

    .line 76
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 84
    const/4 v1, 0x0

    .line 85
    iget v0, p0, Lcom/kingroot/kinguser/brz;->bLi:I

    .line 86
    iget-boolean v2, p0, Lcom/kingroot/kinguser/brz;->bLj:Z

    if-eqz v2, :cond_1

    if-gtz v0, :cond_1

    .line 87
    const-string v0, "LogReportService"

    const-string v1, "\u6570\u636e\u5e93\u91cc\u6ca1\u6709\u94b1\u9014\u7684\u6570\u636e\uff0c\u505c\u6b62\u4e0a\u62a5"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bth;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v1, p0, Lcom/kingroot/kinguser/brz;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 89
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/kingroot/kinguser/brz;->bLk:Z

    .line 88
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 76
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 93
    :cond_1
    iget-boolean v0, p0, Lcom/kingroot/kinguser/brz;->bLj:Z

    if-nez v0, :cond_2

    .line 94
    iput-boolean v3, p0, Lcom/kingroot/kinguser/brz;->bLj:Z

    .line 96
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/brs;->ahJ()Lcom/kingroot/kinguser/brs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/brs;->ahL()Lcom/kingroot/kinguser/bsb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bsb;->getActions()Ljava/util/List;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_4

    .line 98
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Lcom/kingroot/kinguser/brz;->bLi:I

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 100
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    .line 115
    :cond_4
    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 116
    :cond_5
    const-string v0, "LogReportService"

    const-string v1, "\u6570\u636e\u5e93\u91cc\u6ca1\u6709\u94b1\u9014\u7684\u6570\u636e\uff0c\u505c\u6b62\u4e0a\u62a5"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bth;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v1, p0, Lcom/kingroot/kinguser/brz;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 118
    const/4 v0, 0x0

    :try_start_3
    iput-boolean v0, p0, Lcom/kingroot/kinguser/brz;->bLk:Z

    .line 117
    monitor-exit v1

    goto :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    .line 100
    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bsc;

    .line 101
    iget-wide v6, v0, Lcom/kingroot/kinguser/bsc;->bLp:J

    cmp-long v5, v6, v2

    if-gtz v5, :cond_3

    .line 102
    if-nez v1, :cond_7

    .line 103
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 105
    :cond_7
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 122
    :cond_8
    invoke-direct {p0, v1}, Lcom/kingroot/kinguser/brz;->cf(Ljava/util/List;)V

    goto :goto_0
.end method

.method public cd(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/bso;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    invoke-static {p1}, Lcom/kingroot/kinguser/btf;->cn(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    :goto_0
    return-void

    .line 64
    :cond_0
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/brz;->ch(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    .line 65
    const-string v1, "LogReportService"

    const-string v2, "try to async Report QiantuData..."

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/bth;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/brz;->ce(Ljava/util/List;)V

    goto :goto_0
.end method

.method public m(Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/bsc;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 223
    if-eqz p2, :cond_0

    .line 224
    invoke-virtual {p0}, Lcom/kingroot/kinguser/brz;->ahQ()V

    .line 230
    :goto_0
    return-void

    .line 226
    :cond_0
    const-string v0, "LogReportService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u94b1\u9014\u4e0a\u62a5\u5931\u8d25\uff0c\u4ee5\u4e0b\u6570\u636e\u5c06\u5199\u5165\u6570\u636e\u5e93\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-static {}, Lcom/kingroot/kinguser/brs;->ahJ()Lcom/kingroot/kinguser/brs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/brs;->ahL()Lcom/kingroot/kinguser/bsb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/bsb;->cj(Ljava/util/List;)V

    .line 228
    iget v0, p0, Lcom/kingroot/kinguser/brz;->bLi:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/kingroot/kinguser/brz;->bLi:I

    goto :goto_0
.end method
