.class public Lcom/kingroot/kinguser/bho;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final arM:Ljava/lang/Object;

.field public static final bqT:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bho;->arM:Ljava/lang/Object;

    .line 18
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bho;->bqT:Ljava/lang/Object;

    return-void
.end method

.method public static S(Ljava/lang/String;I)Lcom/kingroot/kinguser/util/protect/RebootStat;
    .locals 1

    .prologue
    .line 26
    invoke-static {p0}, Lcom/kingroot/kinguser/bho;->lI(Ljava/lang/String;)Lcom/kingroot/kinguser/util/protect/RebootStat;

    move-result-object v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/kingroot/kinguser/util/protect/RebootStat;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/util/protect/RebootStat;-><init>(Ljava/lang/String;I)V

    .line 29
    invoke-static {v0}, Lcom/kingroot/kinguser/bho;->g(Lcom/kingroot/kinguser/util/protect/RebootStat;)V

    .line 32
    :cond_0
    return-object v0
.end method

.method public static a(Lcom/kingroot/kinguser/util/protect/RebootStat;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 158
    if-nez p0, :cond_0

    .line 166
    :goto_0
    return-void

    .line 162
    :cond_0
    monitor-enter p0

    .line 163
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/kingroot/kinguser/util/protect/RebootStat;->R(ILjava/lang/String;)V

    .line 164
    invoke-static {p0}, Lcom/kingroot/kinguser/bho;->g(Lcom/kingroot/kinguser/util/protect/RebootStat;)V

    .line 165
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a(Lcom/kingroot/kinguser/util/protect/RebootStat;Lcom/kingroot/kinguser/bhn;)V
    .locals 2

    .prologue
    .line 45
    if-nez p0, :cond_0

    .line 65
    :goto_0
    return-void

    .line 49
    :cond_0
    iget v0, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->initStep:I

    iget v1, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->currentStep:I

    if-ne v0, v1, :cond_1

    .line 50
    monitor-enter p0

    .line 52
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/util/protect/RebootStat;->acD()V

    .line 53
    invoke-static {p0}, Lcom/kingroot/kinguser/bho;->g(Lcom/kingroot/kinguser/util/protect/RebootStat;)V

    .line 54
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 58
    :cond_1
    monitor-enter p0

    .line 59
    :try_start_1
    invoke-static {p0, p1}, Lcom/kingroot/kinguser/bho;->b(Lcom/kingroot/kinguser/util/protect/RebootStat;Lcom/kingroot/kinguser/bhn;)V

    .line 62
    invoke-virtual {p0}, Lcom/kingroot/kinguser/util/protect/RebootStat;->acD()V

    .line 63
    invoke-static {p0}, Lcom/kingroot/kinguser/bho;->g(Lcom/kingroot/kinguser/util/protect/RebootStat;)V

    .line 64
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method public static b(Lcom/kingroot/kinguser/util/protect/RebootStat;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 211
    if-nez p0, :cond_0

    .line 222
    :goto_0
    return-void

    .line 215
    :cond_0
    monitor-enter p0

    .line 216
    :try_start_0
    iput p1, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->currentStep:I

    .line 217
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 218
    invoke-virtual {p0, p1, p2}, Lcom/kingroot/kinguser/util/protect/RebootStat;->Q(ILjava/lang/String;)V

    .line 220
    :cond_1
    invoke-static {p0}, Lcom/kingroot/kinguser/bho;->g(Lcom/kingroot/kinguser/util/protect/RebootStat;)V

    .line 221
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static b(Lcom/kingroot/kinguser/util/protect/RebootStat;Lcom/kingroot/kinguser/bhn;)V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    .line 74
    iget-object v0, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->deviceStat:Lcom/kingroot/kinguser/util/protect/DeviceStat;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->deviceStat:Lcom/kingroot/kinguser/util/protect/DeviceStat;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/util/protect/DeviceStat;->acB()J

    move-result-wide v0

    .line 78
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 88
    invoke-static {}, Lcom/kingroot/kinguser/util/protect/DeviceStat;->acx()Lcom/kingroot/kinguser/util/protect/DeviceStat;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->deviceStat:Lcom/kingroot/kinguser/util/protect/DeviceStat;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/kingroot/kinguser/util/protect/DeviceStat;->a(Lcom/kingroot/kinguser/util/protect/DeviceStat;Lcom/kingroot/kinguser/util/protect/DeviceStat;Ljava/util/List;)I

    move-result v0

    .line 90
    if-eq v0, v7, :cond_2

    if-ne v0, v6, :cond_5

    .line 92
    :cond_2
    iget v1, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->failCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->failCount:I

    .line 93
    iget v1, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->failPeekCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->failPeekCount:I

    .line 94
    const/4 v1, 0x0

    iput v1, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->successPeekCount:I

    .line 95
    if-ne v0, v7, :cond_3

    .line 96
    iget v1, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->androidRebootCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->androidRebootCount:I

    .line 97
    iget v1, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->androidRebootPeekCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->androidRebootPeekCount:I

    .line 99
    :cond_3
    if-ne v0, v6, :cond_4

    .line 100
    iget v1, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->linuxRebootCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->linuxRebootCount:I

    .line 101
    iget v1, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->linuxRebootPeekCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->linuxRebootPeekCount:I

    .line 105
    :cond_4
    if-eqz p1, :cond_0

    .line 106
    invoke-interface {p1, p0, v0}, Lcom/kingroot/kinguser/bhn;->a(Lcom/kingroot/kinguser/util/protect/RebootStat;I)V

    goto :goto_0

    .line 111
    :cond_5
    if-eqz p1, :cond_0

    .line 112
    invoke-interface {p1, p0}, Lcom/kingroot/kinguser/bhn;->b(Lcom/kingroot/kinguser/util/protect/RebootStat;)V

    goto :goto_0
.end method

.method public static c(Lcom/kingroot/kinguser/util/protect/RebootStat;Lcom/kingroot/kinguser/bhn;)V
    .locals 3

    .prologue
    .line 125
    if-nez p0, :cond_0

    .line 151
    :goto_0
    return-void

    .line 129
    :cond_0
    monitor-enter p0

    .line 131
    :try_start_0
    iget v0, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->currentStep:I

    .line 132
    iget-object v1, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->deviceStat:Lcom/kingroot/kinguser/util/protect/DeviceStat;

    .line 133
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->deviceStat:Lcom/kingroot/kinguser/util/protect/DeviceStat;

    .line 134
    iget v2, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->initStep:I

    iput v2, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->currentStep:I

    .line 135
    iget v2, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->failCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->failCount:I

    .line 136
    iget v2, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->failPeekCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->failPeekCount:I

    .line 137
    const/4 v2, 0x0

    iput v2, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->successPeekCount:I

    .line 138
    const/4 v2, 0x0

    iput v2, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->androidRebootPeekCount:I

    .line 139
    const/4 v2, 0x0

    iput v2, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->linuxRebootPeekCount:I

    .line 140
    invoke-static {p0}, Lcom/kingroot/kinguser/bho;->g(Lcom/kingroot/kinguser/util/protect/RebootStat;)V

    .line 143
    iput-object v1, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->deviceStat:Lcom/kingroot/kinguser/util/protect/DeviceStat;

    .line 144
    iput v0, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->currentStep:I

    .line 145
    if-eqz p1, :cond_1

    .line 146
    invoke-interface {p1, p0}, Lcom/kingroot/kinguser/bhn;->d(Lcom/kingroot/kinguser/util/protect/RebootStat;)V

    .line 148
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->deviceStat:Lcom/kingroot/kinguser/util/protect/DeviceStat;

    .line 149
    iget v0, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->initStep:I

    iput v0, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->currentStep:I

    .line 150
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static d(Lcom/kingroot/kinguser/util/protect/RebootStat;Lcom/kingroot/kinguser/bhn;)V
    .locals 3

    .prologue
    .line 174
    if-nez p0, :cond_0

    .line 201
    :goto_0
    return-void

    .line 178
    :cond_0
    monitor-enter p0

    .line 180
    :try_start_0
    iget v0, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->currentStep:I

    .line 181
    iget-object v1, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->deviceStat:Lcom/kingroot/kinguser/util/protect/DeviceStat;

    .line 182
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->deviceStat:Lcom/kingroot/kinguser/util/protect/DeviceStat;

    .line 183
    iget v2, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->initStep:I

    iput v2, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->currentStep:I

    .line 184
    iget v2, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->successCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->successCount:I

    .line 185
    iget v2, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->successPeekCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->successPeekCount:I

    .line 186
    const/4 v2, 0x0

    iput v2, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->failPeekCount:I

    .line 187
    const/4 v2, 0x0

    iput v2, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->androidRebootPeekCount:I

    .line 188
    const/4 v2, 0x0

    iput v2, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->linuxRebootPeekCount:I

    .line 189
    invoke-static {p0}, Lcom/kingroot/kinguser/bho;->g(Lcom/kingroot/kinguser/util/protect/RebootStat;)V

    .line 192
    iput-object v1, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->deviceStat:Lcom/kingroot/kinguser/util/protect/DeviceStat;

    .line 193
    iput v0, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->currentStep:I

    .line 194
    if-eqz p1, :cond_1

    .line 195
    invoke-interface {p1, p0}, Lcom/kingroot/kinguser/bhn;->c(Lcom/kingroot/kinguser/util/protect/RebootStat;)V

    .line 197
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->deviceStat:Lcom/kingroot/kinguser/util/protect/DeviceStat;

    .line 198
    iget v0, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->initStep:I

    iput v0, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->currentStep:I

    .line 199
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static f(Lcom/kingroot/kinguser/util/protect/RebootStat;)Lcom/kingroot/kinguser/util/protect/RebootStat;
    .locals 3

    .prologue
    .line 36
    new-instance v0, Lcom/kingroot/kinguser/util/protect/RebootStat;

    iget-object v1, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->key:Ljava/lang/String;

    iget v2, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->initStep:I

    invoke-direct {v0, v1, v2}, Lcom/kingroot/kinguser/util/protect/RebootStat;-><init>(Ljava/lang/String;I)V

    .line 37
    invoke-static {v0}, Lcom/kingroot/kinguser/bho;->g(Lcom/kingroot/kinguser/util/protect/RebootStat;)V

    .line 38
    return-object v0
.end method

.method private static g(Lcom/kingroot/kinguser/util/protect/RebootStat;)V
    .locals 2

    .prologue
    .line 230
    sget-object v1, Lcom/kingroot/kinguser/bho;->arM:Ljava/lang/Object;

    monitor-enter v1

    .line 231
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/util/protect/RebootStat;->key:Ljava/lang/String;

    invoke-static {v0}, Lcom/kingroot/kinguser/bhp;->lF(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/kingroot/kinguser/sq;->a(Ljava/lang/Object;Ljava/io/File;)V

    .line 232
    monitor-exit v1

    .line 233
    return-void

    .line 232
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static lI(Ljava/lang/String;)Lcom/kingroot/kinguser/util/protect/RebootStat;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 237
    .line 238
    invoke-static {p0}, Lcom/kingroot/kinguser/bhp;->lF(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 239
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 240
    sget-object v2, Lcom/kingroot/kinguser/bho;->arM:Ljava/lang/Object;

    monitor-enter v2

    .line 241
    :try_start_0
    invoke-static {v0}, Lcom/kingroot/kinguser/sq;->u(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v0

    .line 242
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    :goto_0
    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/kingroot/kinguser/util/protect/RebootStat;

    if-eqz v2, :cond_0

    .line 246
    check-cast v0, Lcom/kingroot/kinguser/util/protect/RebootStat;

    .line 248
    :goto_1
    return-object v0

    .line 242
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    move-object v0, v1

    .line 248
    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method
