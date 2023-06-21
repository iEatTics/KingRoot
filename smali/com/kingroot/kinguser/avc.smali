.class Lcom/kingroot/kinguser/avc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/ave;


# static fields
.field private static final sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/avc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private aTm:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;",
            ">;"
        }
    .end annotation
.end field

.field private azs:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/kingroot/kinguser/avc$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/avc$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/avc;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-boolean v5, p0, Lcom/kingroot/kinguser/avc;->azs:Z

    .line 55
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    new-instance v4, Lcom/kingroot/kinguser/avc$2;

    invoke-direct {v4, p0}, Lcom/kingroot/kinguser/avc$2;-><init>(Lcom/kingroot/kinguser/avc;)V

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 65
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/avc$1;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/kingroot/kinguser/avc;-><init>()V

    return-void
.end method

.method private HS()V
    .locals 1

    .prologue
    .line 205
    :goto_0
    iget-boolean v0, p0, Lcom/kingroot/kinguser/avc;->azs:Z

    if-nez v0, :cond_0

    .line 207
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 208
    :catch_0
    move-exception v0

    goto :goto_0

    .line 212
    :cond_0
    return-void
.end method

.method private HT()V
    .locals 1

    .prologue
    .line 253
    new-instance v0, Lcom/kingroot/kinguser/avc$3;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/avc$3;-><init>(Lcom/kingroot/kinguser/avc;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wp;->e(Ljava/lang/Runnable;)V

    .line 260
    return-void
.end method

.method public static Ri()Lcom/kingroot/kinguser/avc;
    .locals 1
    .annotation runtime Lcom/kingroot/kinguser/ut;
    .end annotation

    .prologue
    .line 51
    sget-object v0, Lcom/kingroot/kinguser/avc;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/avc;

    return-object v0
.end method

.method private Rj()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    monitor-enter p0

    .line 123
    :try_start_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/avc;->HS()V

    .line 124
    iget-object v0, p0, Lcom/kingroot/kinguser/avc;->aTm:Ljava/util/List;

    monitor-exit p0

    return-object v0

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private Rm()V
    .locals 2

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/kingroot/kinguser/avc;->azs:Z

    if-eqz v0, :cond_0

    .line 202
    :goto_0
    return-void

    .line 186
    :cond_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/avc;->Rn()Ljava/io/File;

    move-result-object v0

    .line 187
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 188
    invoke-static {v0}, Lcom/kingroot/kinguser/sq;->u(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v0

    .line 189
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 190
    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/kingroot/kinguser/avc;->aTm:Ljava/util/List;

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/avc;->aTm:Ljava/util/List;

    if-nez v0, :cond_2

    .line 195
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/avc;->aTm:Ljava/util/List;

    .line 197
    :cond_2
    monitor-enter p0

    .line 198
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/kingroot/kinguser/avc;->azs:Z

    .line 199
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 200
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private Rn()Ljava/io/File;
    .locals 3

    .prologue
    .line 249
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "cloud_guide.data"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private Ro()V
    .locals 4

    .prologue
    .line 264
    monitor-enter p0

    .line 265
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 266
    invoke-direct {p0}, Lcom/kingroot/kinguser/avc;->Rj()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;

    .line 267
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/avc;->h(Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 268
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 272
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 271
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/kingroot/kinguser/avc;->Rj()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 272
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 273
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/avc;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/kingroot/kinguser/avc;->Rm()V

    return-void
.end method

.method static synthetic b(Lcom/kingroot/kinguser/avc;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/kingroot/kinguser/avc;->Ro()V

    return-void
.end method

.method static synthetic c(Lcom/kingroot/kinguser/avc;)Ljava/util/List;
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/kingroot/kinguser/avc;->Rj()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/kingroot/kinguser/avc;)Ljava/io/File;
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/kingroot/kinguser/avc;->Rn()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static d(Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 101
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/zi;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 102
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 104
    const-string v3, "zh"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 105
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 106
    const-string v2, "CN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->language:I

    if-eq v2, v0, :cond_2

    :cond_0
    const-string v2, "TW"

    .line 107
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "HK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_1
    iget v1, p0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->language:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_9

    .line 118
    :cond_2
    :goto_0
    return v0

    .line 110
    :cond_3
    const-string v1, "es"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->language:I

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    :cond_4
    const-string v1, "pt"

    .line 111
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->language:I

    const/4 v3, 0x4

    if-eq v1, v3, :cond_2

    :cond_5
    const-string v1, "in"

    .line 112
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->language:I

    const/4 v3, 0x5

    if-eq v1, v3, :cond_2

    :cond_6
    const-string v1, "hi"

    .line 113
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget v1, p0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->language:I

    const/4 v3, 0x6

    if-eq v1, v3, :cond_2

    :cond_7
    const-string v1, "ru"

    .line 114
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget v1, p0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->language:I

    const/4 v3, 0x7

    if-eq v1, v3, :cond_2

    :cond_8
    const-string v1, "en"

    .line 115
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget v1, p0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->language:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_2

    .line 118
    :cond_9
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e(Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;)V
    .locals 6

    .prologue
    .line 162
    if-nez p1, :cond_1

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    iget v0, p1, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->downloadTime:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 167
    invoke-static {}, Lcom/kingroot/kinguser/apv;->LO()Lcom/kingroot/kinguser/apv;

    move-result-object v0

    iget-object v1, p1, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->picDownloadUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/apv;->ia(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p1, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->lastDownloadTime:J

    .line 169
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xdbba00

    .line 168
    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/adk;->b(JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    invoke-static {}, Lcom/kingroot/kinguser/apv;->LO()Lcom/kingroot/kinguser/apv;

    move-result-object v0

    iget-object v1, p1, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->picDownloadUrl:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/apv;->a(Ljava/lang/String;Lcom/kingroot/kinguser/apv$b;)V

    .line 174
    iget v0, p1, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->downloadTime:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->downloadTime:I

    .line 175
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->lastDownloadTime:J

    .line 176
    invoke-direct {p0}, Lcom/kingroot/kinguser/avc;->HT()V

    goto :goto_0
.end method

.method private h(Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;)Z
    .locals 1

    .prologue
    .line 277
    if-eqz p1, :cond_0

    iget v0, p1, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->maxShowTime:I

    if-lez v0, :cond_0

    iget-object v0, p1, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->picDownloadUrl:Ljava/lang/String;

    .line 278
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 277
    :goto_0
    return v0

    .line 278
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public Rk()Ljava/util/List;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 137
    invoke-direct {p0}, Lcom/kingroot/kinguser/avc;->Rj()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;

    .line 139
    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/avc;->c(Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 140
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 144
    :cond_1
    return-object v1
.end method

.method public Rl()V
    .locals 2

    .prologue
    .line 152
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/vb;->S(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 159
    :cond_0
    return-void

    .line 155
    :cond_1
    invoke-direct {p0}, Lcom/kingroot/kinguser/avc;->Rj()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;

    .line 156
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/avc;->e(Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;)V

    goto :goto_0
.end method

.method public c(Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;)Z
    .locals 14

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 70
    const/4 v6, 0x0

    .line 71
    invoke-direct {p0}, Lcom/kingroot/kinguser/avc;->Rj()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;

    .line 72
    iget-wide v2, v0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->taskID:J

    iget-wide v4, p1, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->taskID:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    iget v2, v0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->seqNo:I

    iget v3, p1, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->seqNo:I

    if-ne v2, v3, :cond_5

    :goto_1
    move-object v6, v0

    .line 75
    goto :goto_0

    .line 76
    :cond_0
    if-eqz v6, :cond_1

    move v0, v8

    .line 77
    :goto_2
    if-nez v0, :cond_2

    .line 93
    :goto_3
    return v9

    :cond_1
    move v0, v9

    .line 76
    goto :goto_2

    .line 81
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/apv;->LO()Lcom/kingroot/kinguser/apv;

    move-result-object v0

    iget-object v1, v6, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->picDownloadUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/apv;->ia(Ljava/lang/String;)Z

    move-result v10

    .line 82
    iget v0, v6, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->showTime:I

    iget v1, v6, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->maxShowTime:I

    if-ge v0, v1, :cond_3

    move v7, v8

    .line 83
    :goto_4
    iget-wide v0, v6, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->lastShowTime:J

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget v4, v6, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->timeInterval:I

    int-to-long v4, v4

    const-wide/32 v12, 0x36ee80

    mul-long/2addr v4, v12

    .line 83
    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/adk;->b(JJJ)Z

    move-result v0

    .line 86
    invoke-static {v6}, Lcom/kingroot/kinguser/avc;->d(Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;)Z

    move-result v1

    .line 93
    if-eqz v1, :cond_4

    if-eqz v10, :cond_4

    if-eqz v7, :cond_4

    if-eqz v0, :cond_4

    :goto_5
    move v9, v8

    goto :goto_3

    :cond_3
    move v7, v9

    .line 82
    goto :goto_4

    :cond_4
    move v8, v9

    .line 93
    goto :goto_5

    :cond_5
    move-object v0, v6

    goto :goto_1
.end method

.method public f(Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;)V
    .locals 1

    .prologue
    .line 220
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/avc;->h(Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    :goto_0
    return-void

    .line 225
    :cond_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/avc;->Rj()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/avc;->e(Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;)V

    .line 227
    invoke-direct {p0}, Lcom/kingroot/kinguser/avc;->HT()V

    goto :goto_0
.end method

.method public g(Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;)V
    .locals 6

    .prologue
    .line 237
    monitor-enter p0

    .line 238
    :try_start_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/avc;->Rj()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;

    .line 239
    iget-wide v2, v0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->taskID:J

    iget-wide v4, p1, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->taskID:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget v2, v0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->seqNo:I

    iget v3, p1, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->seqNo:I

    if-ne v2, v3, :cond_0

    .line 240
    iget v2, v0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->showTime:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->showTime:I

    .line 241
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/kingroot/kinguser/net/clcmd/CloudGuideEntity;->lastShowTime:J

    goto :goto_0

    .line 244
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 245
    invoke-direct {p0}, Lcom/kingroot/kinguser/avc;->HT()V

    .line 246
    return-void
.end method
