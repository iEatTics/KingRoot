.class public Lcom/kingroot/kinguser/bgz;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/bgz;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bpj:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;",
            ">;"
        }
    .end annotation
.end field

.field private bpk:Lcom/kingroot/kinguser/apv$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/kingroot/kinguser/bgz$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bgz$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bgz;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    new-instance v0, Lcom/kingroot/kinguser/bgz$3;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/bgz$3;-><init>(Lcom/kingroot/kinguser/bgz;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bgz;->bpk:Lcom/kingroot/kinguser/apv$b;

    .line 57
    invoke-direct {p0}, Lcom/kingroot/kinguser/bgz;->acc()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bgz;->bpj:Ljava/util/List;

    .line 58
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/bgz$1;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/kingroot/kinguser/bgz;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bgz;)Ljava/util/List;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/kingroot/kinguser/bgz;->bpj:Ljava/util/List;

    return-object v0
.end method

.method public static aca()Lcom/kingroot/kinguser/bgz;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/kingroot/kinguser/bgz;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bgz;

    return-object v0
.end method

.method private acb()Ljava/io/File;
    .locals 3

    .prologue
    .line 161
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "splash_screen_list.dat"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private acc()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/kingroot/kinguser/bgz;->acb()Ljava/io/File;

    move-result-object v0

    .line 168
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    invoke-static {v0}, Lcom/kingroot/kinguser/sq;->u(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v0

    .line 170
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 171
    check-cast v0, Ljava/util/List;

    .line 174
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    goto :goto_0
.end method

.method private acd()V
    .locals 2

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/kingroot/kinguser/bgz;->ace()V

    .line 180
    iget-object v0, p0, Lcom/kingroot/kinguser/bgz;->bpj:Ljava/util/List;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bgz;->acb()Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/sq;->a(Ljava/lang/Object;Ljava/io/File;)V

    .line 181
    return-void
.end method

.method private ace()V
    .locals 4

    .prologue
    .line 185
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 186
    iget-object v0, p0, Lcom/kingroot/kinguser/bgz;->bpj:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;

    .line 187
    invoke-static {v0}, Lcom/kingroot/kinguser/bgz;->j(Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 188
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/bgz;->c(Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;)V

    .line 189
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bgz;->bpj:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 193
    return-void
.end method

.method private acf()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/ad/SplashDisplayModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 241
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 242
    iget-object v0, p0, Lcom/kingroot/kinguser/bgz;->bpj:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;

    .line 243
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/bgz;->h(Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;)Z

    move-result v3

    iget-wide v4, v0, Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;->taskID:J

    iget v6, v0, Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;->conchSeqno:I

    invoke-static {v3, v4, v5, v6}, Lcom/kingroot/kinguser/aea;->c(ZJI)V

    .line 244
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/bgz;->f(Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 245
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/bgz;->e(Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 246
    invoke-static {}, Lcom/kingroot/kinguser/apv;->LO()Lcom/kingroot/kinguser/apv;

    move-result-object v3

    iget-object v4, v0, Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;->picDownloadUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/kingroot/kinguser/apv;->ia(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 247
    new-instance v3, Lcom/kingroot/kinguser/ad/SplashDisplayModel;

    invoke-direct {v3, v0}, Lcom/kingroot/kinguser/ad/SplashDisplayModel;-><init>(Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;)V

    .line 248
    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 249
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    :cond_1
    sget-object v3, Lcom/kingroot/kinguser/aea$a;->aew:Lcom/kingroot/kinguser/aea$a;

    iget-wide v4, v0, Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;->taskID:J

    iget v0, v0, Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;->conchSeqno:I

    invoke-static {v3, v4, v5, v0}, Lcom/kingroot/kinguser/aea;->a(Lcom/kingroot/kinguser/aea$a;JI)V

    goto :goto_0

    .line 253
    :cond_2
    sget-object v3, Lcom/kingroot/kinguser/aea$a;->aex:Lcom/kingroot/kinguser/aea$a;

    iget-wide v4, v0, Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;->taskID:J

    iget v0, v0, Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;->conchSeqno:I

    invoke-static {v3, v4, v5, v0}, Lcom/kingroot/kinguser/aea;->a(Lcom/kingroot/kinguser/aea$a;JI)V

    goto :goto_0

    .line 256
    :cond_3
    sget-object v3, Lcom/kingroot/kinguser/aea$a;->aez:Lcom/kingroot/kinguser/aea$a;

    iget-wide v4, v0, Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;->taskID:J

    iget v0, v0, Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;->conchSeqno:I

    invoke-static {v3, v4, v5, v0}, Lcom/kingroot/kinguser/aea;->a(Lcom/kingroot/kinguser/aea$a;JI)V

    goto :goto_0

    .line 259
    :cond_4
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/bgz;->g(Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 260
    sget-object v3, Lcom/kingroot/kinguser/aea$a;->aey:Lcom/kingroot/kinguser/aea$a;

    iget-wide v4, v0, Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;->taskID:J

    iget v0, v0, Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;->conchSeqno:I

    invoke-static {v3, v4, v5, v0}, Lcom/kingroot/kinguser/aea;->a(Lcom/kingroot/kinguser/aea$a;JI)V

    goto :goto_0

    .line 265
    :cond_5
    return-object v1
.end method

.method private c(Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;)V
    .locals 2

    .prologue
    .line 152
    invoke-static {}, Lcom/kingroot/kinguser/apv;->LO()Lcom/kingroot/kinguser/apv;

    move-result-object v0

    iget-object v1, p1, Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;->picDownloadUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/apv;->ib(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 153
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 157
    :cond_0
    return-void
.end method

.method private d(Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;)V
    .locals 3

    .prologue
    .line 197
    invoke-static {}, Lcom/kingroot/kinguser/apv;->LO()Lcom/kingroot/kinguser/apv;

    move-result-object v0

    iget-object v1, p1, Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;->picDownloadUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/kingroot/kinguser/bgz;->bpk:Lcom/kingroot/kinguser/apv$b;

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/apv;->a(Ljava/lang/String;Lcom/kingroot/kinguser/apv$b;)V

    .line 200
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18847

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 203
    iget-wide v0, p1, Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;->taskID:J

    iget v2, p1, Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;->conchSeqno:I

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/aea;->d(JI)V

    .line 207
    return-void
.end method

.method private e(Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 270
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/zi;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 271
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 273
    const-string v3, "zh"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 274
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 275
    const-string v2, "CN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p1, Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;->language:I

    if-eq v2, v0, :cond_2

    :cond_0
    const-string v2, "TW"

    .line 276
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "HK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_1
    iget v1, p1, Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;->language:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_9

    .line 287
    :cond_2
    :goto_0
    return v0

    .line 279
    :cond_3
    const-string v1, "es"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p1, Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;->language:I

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    :cond_4
    const-string v1, "pt"

    .line 280
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p1, Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;->language:I

    const/4 v3, 0x4

    if-eq v1, v3, :cond_2

    :cond_5
    const-string v1, "in"

    .line 281
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget v1, p1, Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;->language:I

    const/4 v3, 0x5

    if-eq v1, v3, :cond_2

    :cond_6
    const-string v1, "hi"

    .line 282
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget v1, p1, Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;->language:I

    const/4 v3, 0x6

    if-eq v1, v3, :cond_2

    :cond_7
    const-string v1, "ru"

    .line 283
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget v1, p1, Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;->language:I

    const/4 v3, 0x7

    if-eq v1, v3, :cond_2

    :cond_8
    const-string v1, "en"

    .line 284
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget v1, p1, Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;->language:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_2

    .line 287
    :cond_9
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f(Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;)Z
    .locals 4

    .prologue
    .line 292
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 293
    iget-wide v2, p1, Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;->beginTime:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    iget-wide v2, p1, Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;->endTime:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g(Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;)Z
    .locals 4

    .prologue
    .line 297
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 298
    iget-wide v2, p1, Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;->beginTime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h(Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;)Z
    .locals 4

    .prologue
    .line 302
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 303
    iget-wide v2, p1, Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;->endTime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static i(Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;)Z
    .locals 4

    .prologue
    .line 308
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget-wide v2, p0, Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;->endTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static j(Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;)Z
    .locals 1

    .prologue
    .line 313
    iget v0, p0, Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;->showDuration:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;->picDownloadUrl:Ljava/lang/String;

    .line 314
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 315
    invoke-static {p0}, Lcom/kingroot/kinguser/bgz;->i(Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 313
    :goto_0
    return v0

    .line 315
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public b(Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;)V
    .locals 2

    .prologue
    .line 122
    invoke-static {p1}, Lcom/kingroot/kinguser/bgz;->j(Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    :goto_0
    return-void

    .line 126
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/afz;->vG()Lcom/kingroot/kinguser/afz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/afz;->clearAll()V

    .line 127
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    iget v1, p1, Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;->timeInterval:I

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aks;->eP(I)V

    .line 128
    iget-object v0, p0, Lcom/kingroot/kinguser/bgz;->bpj:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bgz;->d(Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;)V

    .line 130
    invoke-direct {p0}, Lcom/kingroot/kinguser/bgz;->acd()V

    goto :goto_0
.end method

.method public cy(J)V
    .locals 7

    .prologue
    .line 139
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 140
    iget-object v0, p0, Lcom/kingroot/kinguser/bgz;->bpj:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;

    .line 141
    iget-wide v4, v0, Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;->taskID:J

    cmp-long v3, v4, p1

    if-nez v3, :cond_0

    .line 142
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/bgz;->c(Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;)V

    .line 143
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bgz;->bpj:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 147
    invoke-direct {p0}, Lcom/kingroot/kinguser/bgz;->acd()V

    .line 148
    return-void
.end method

.method public f(Lcom/tencent/qqpim/discovery/AdDisplayModel;)Lcom/kingroot/kinguser/ad/SplashDisplayModel;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 75
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->FS()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    invoke-static {v0, v1, v2, v3}, Lcom/kingroot/kinguser/acu;->g(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/aks;->bH(J)V

    .line 77
    invoke-static {}, Lcom/kingroot/kinguser/afz;->vG()Lcom/kingroot/kinguser/afz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/afz;->clearAll()V

    .line 79
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 80
    invoke-direct {p0}, Lcom/kingroot/kinguser/bgz;->acf()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 82
    if-eqz p1, :cond_1

    invoke-static {}, Lcom/kingroot/kinguser/apv;->LO()Lcom/kingroot/kinguser/apv;

    move-result-object v1

    iget-object v2, p1, Lcom/tencent/qqpim/discovery/AdDisplayModel;->bJv:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/apv;->ia(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    new-instance v1, Lcom/kingroot/kinguser/ad/SplashDisplayModel;

    invoke-direct {v1, p1}, Lcom/kingroot/kinguser/ad/SplashDisplayModel;-><init>(Lcom/tencent/qqpim/discovery/AdDisplayModel;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    :cond_1
    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 87
    const/4 v0, 0x0

    .line 113
    :goto_0
    return-object v0

    .line 90
    :cond_2
    new-instance v1, Lcom/kingroot/kinguser/bgz$2;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/bgz$2;-><init>(Lcom/kingroot/kinguser/bgz;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 113
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ad/SplashDisplayModel;

    goto :goto_0
.end method
