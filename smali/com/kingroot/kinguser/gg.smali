.class public final Lcom/kingroot/kinguser/gg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile qo:Lcom/kingroot/kinguser/gg;


# instance fields
.field private volatile qp:Z

.field private final qr:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/kingroot/kinguser/gg;->qo:Lcom/kingroot/kinguser/gg;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/gg;->qp:Z

    .line 31
    new-instance v0, Lcom/kingroot/kinguser/gh;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/gh;-><init>(Lcom/kingroot/kinguser/gg;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/gg;->qr:Ljava/lang/Runnable;

    .line 53
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/gg;)Z
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/kingroot/kinguser/gg;->av()Z

    move-result v0

    return v0
.end method

.method public static au()Lcom/kingroot/kinguser/gg;
    .locals 2

    .prologue
    .line 56
    sget-object v0, Lcom/kingroot/kinguser/gg;->qo:Lcom/kingroot/kinguser/gg;

    if-nez v0, :cond_1

    .line 57
    const-class v1, Lcom/kingroot/kinguser/gg;

    monitor-enter v1

    .line 58
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/gg;->qo:Lcom/kingroot/kinguser/gg;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/kingroot/kinguser/gg;

    invoke-direct {v0}, Lcom/kingroot/kinguser/gg;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/gg;->qo:Lcom/kingroot/kinguser/gg;

    .line 61
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/gg;->qo:Lcom/kingroot/kinguser/gg;

    return-object v0

    .line 61
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private av()Z
    .locals 4

    .prologue
    .line 77
    invoke-static {}, Lcom/kingroot/kinguser/gi;->aA()J

    move-result-wide v0

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x36ee800

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private aw()V
    .locals 3

    .prologue
    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/gi;->a(J)V

    .line 84
    invoke-static {}, Lcom/kingroot/kinguser/gb;->ao()Ljava/util/List;

    move-result-object v1

    .line 85
    const/4 v0, 0x1

    .line 87
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 88
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 89
    invoke-static {v1}, Lcom/kingroot/kinguser/gg;->d(Ljava/util/List;)Z

    move-result v0

    .line 93
    :cond_0
    if-nez v0, :cond_1

    .line 94
    invoke-static {v1}, Lcom/kingroot/kinguser/gb;->c(Ljava/util/List;)V

    .line 96
    :cond_1
    return-void
.end method

.method private ay()V
    .locals 3

    .prologue
    .line 104
    invoke-static {}, Lcom/kingroot/kinguser/gb;->ap()Ljava/util/List;

    move-result-object v1

    .line 106
    const/4 v0, 0x1

    .line 108
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 109
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 110
    invoke-static {v1}, Lcom/kingroot/kinguser/gg;->d(Ljava/util/List;)Z

    move-result v0

    .line 114
    :cond_0
    if-nez v0, :cond_1

    .line 115
    invoke-static {v1}, Lcom/kingroot/kinguser/gb;->c(Ljava/util/List;)V

    .line 117
    :cond_1
    return-void
.end method

.method private az()V
    .locals 3

    .prologue
    .line 121
    invoke-static {}, Lcom/kingroot/kinguser/gb;->ar()Ljava/util/List;

    move-result-object v1

    .line 123
    const/4 v0, 0x1

    .line 125
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 126
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 127
    invoke-static {v1}, Lcom/kingroot/kinguser/gg;->d(Ljava/util/List;)Z

    move-result v0

    .line 129
    :cond_0
    if-eqz v0, :cond_1

    .line 130
    invoke-static {}, Lcom/kingroot/kinguser/gb;->as()V

    .line 133
    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/kingroot/kinguser/gg;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/kingroot/kinguser/gg;->aw()V

    return-void
.end method

.method static synthetic c(Lcom/kingroot/kinguser/gg;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/kingroot/kinguser/gg;->ay()V

    return-void
.end method

.method static synthetic d(Lcom/kingroot/kinguser/gg;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/kingroot/kinguser/gg;->az()V

    return-void
.end method

.method private static d(Ljava/util/List;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/ew;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 138
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    move v0, v2

    .line 197
    :goto_0
    return v0

    .line 171
    :cond_0
    const-string v1, ""

    .line 172
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 173
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ew;

    .line 174
    if-eqz v0, :cond_1

    .line 177
    new-instance v5, Lcom/tencent/tps/client/kr/XModFeature;

    invoke-direct {v5}, Lcom/tencent/tps/client/kr/XModFeature;-><init>()V

    .line 178
    invoke-virtual {v0}, Lcom/kingroot/kinguser/ew;->getId()I

    move-result v6

    iput v6, v5, Lcom/tencent/tps/client/kr/XModFeature;->featureId:I

    .line 180
    const-string v6, ""

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 181
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ew;->getId()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 186
    :goto_2
    iput v2, v5, Lcom/tencent/tps/client/kr/XModFeature;->count:I

    .line 187
    iget-wide v6, v0, Lcom/kingroot/kinguser/ew;->timestamp:J

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-int v6, v6

    iput v6, v5, Lcom/tencent/tps/client/kr/XModFeature;->timestamp:I

    .line 188
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v5, Lcom/tencent/tps/client/kr/XModFeature;->strValues:Ljava/util/ArrayList;

    .line 189
    invoke-static {v0}, Lcom/kingroot/kinguser/gj;->g(Lcom/kingroot/kinguser/ew;)Ljava/lang/String;

    move-result-object v0

    .line 190
    if-eqz v0, :cond_2

    .line 191
    invoke-static {v0}, Lcom/kingroot/kinguser/gj;->aj(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 192
    iget-object v6, v5, Lcom/tencent/tps/client/kr/XModFeature;->strValues:Ljava/util/ArrayList;

    invoke-static {v6, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 194
    :cond_2
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 183
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ew;->getId()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 197
    :cond_4
    invoke-static {}, Lcom/kingroot/kinguser/fz;->ak()Lcom/kingroot/kinguser/fz;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/fz;->b(Ljava/util/List;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method static synthetic e(Lcom/kingroot/kinguser/gg;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/kingroot/kinguser/gg;->qr:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method ax()V
    .locals 2

    .prologue
    .line 99
    invoke-static {}, Lcom/kingroot/kinguser/fz;->ak()Lcom/kingroot/kinguser/fz;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/gg;->qr:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/fz;->b(Ljava/lang/Runnable;)V

    .line 100
    return-void
.end method

.method public declared-synchronized start()V
    .locals 2

    .prologue
    .line 67
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/kingroot/kinguser/gg;->qp:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 74
    :goto_0
    monitor-exit p0

    return-void

    .line 71
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/kingroot/kinguser/fz;->ak()Lcom/kingroot/kinguser/fz;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/gg;->qr:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/fz;->a(Ljava/lang/Runnable;)V

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/gg;->qp:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
