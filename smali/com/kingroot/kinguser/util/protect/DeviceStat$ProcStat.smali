.class public Lcom/kingroot/kinguser/util/protect/DeviceStat$ProcStat;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/rr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/util/protect/DeviceStat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProcStat"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field cstime:J

.field cutime:J

.field name:Ljava/lang/String;

.field pid:I

.field starttime:J

.field stime:J

.field utime:J


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 345
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/util/protect/DeviceStat$ProcStat;->pid:I

    .line 346
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/util/protect/DeviceStat$ProcStat;->name:Ljava/lang/String;

    .line 347
    iput-wide v2, p0, Lcom/kingroot/kinguser/util/protect/DeviceStat$ProcStat;->starttime:J

    .line 348
    iput-wide v2, p0, Lcom/kingroot/kinguser/util/protect/DeviceStat$ProcStat;->utime:J

    .line 349
    iput-wide v2, p0, Lcom/kingroot/kinguser/util/protect/DeviceStat$ProcStat;->stime:J

    .line 350
    iput-wide v2, p0, Lcom/kingroot/kinguser/util/protect/DeviceStat$ProcStat;->cutime:J

    .line 351
    iput-wide v2, p0, Lcom/kingroot/kinguser/util/protect/DeviceStat$ProcStat;->cstime:J

    .line 352
    return-void
.end method

.method public static k(Ljava/lang/String;Ljava/io/File;)Lcom/kingroot/kinguser/util/protect/DeviceStat$ProcStat;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 355
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_1

    .line 381
    :cond_0
    :goto_0
    return-object v0

    .line 358
    :cond_1
    invoke-static {p1}, Lcom/kingroot/kinguser/rs;->t(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 362
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 365
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 366
    array-length v1, v2

    const/16 v3, 0x28

    if-le v1, v3, :cond_0

    .line 368
    :try_start_0
    new-instance v1, Lcom/kingroot/kinguser/util/protect/DeviceStat$ProcStat;

    invoke-direct {v1}, Lcom/kingroot/kinguser/util/protect/DeviceStat$ProcStat;-><init>()V

    .line 369
    iput-object p0, v1, Lcom/kingroot/kinguser/util/protect/DeviceStat$ProcStat;->name:Ljava/lang/String;

    .line 370
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/kingroot/kinguser/util/protect/DeviceStat$ProcStat;->pid:I

    .line 371
    const/16 v3, 0x15

    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/kingroot/kinguser/util/protect/DeviceStat$ProcStat;->starttime:J

    .line 372
    const/16 v3, 0xd

    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/kingroot/kinguser/util/protect/DeviceStat$ProcStat;->utime:J

    .line 373
    const/16 v3, 0xe

    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/kingroot/kinguser/util/protect/DeviceStat$ProcStat;->stime:J

    .line 374
    const/16 v3, 0xf

    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/kingroot/kinguser/util/protect/DeviceStat$ProcStat;->cutime:J

    .line 375
    const/16 v3, 0x10

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/kingroot/kinguser/util/protect/DeviceStat$ProcStat;->cstime:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 376
    goto :goto_0

    .line 377
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/util/protect/DeviceStat$ProcStat;)Z
    .locals 4

    .prologue
    .line 389
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/kingroot/kinguser/util/protect/DeviceStat$ProcStat;->pid:I

    iget v1, p1, Lcom/kingroot/kinguser/util/protect/DeviceStat$ProcStat;->pid:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/kingroot/kinguser/util/protect/DeviceStat$ProcStat;->starttime:J

    iget-wide v2, p1, Lcom/kingroot/kinguser/util/protect/DeviceStat$ProcStat;->starttime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/util/protect/DeviceStat$ProcStat;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/kingroot/kinguser/util/protect/DeviceStat$ProcStat;->name:Ljava/lang/String;

    .line 392
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    const/4 v0, 0x1

    .line 395
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lcom/kingroot/kinguser/util/protect/DeviceStat$ProcStat;)Z
    .locals 4

    .prologue
    .line 402
    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/kingroot/kinguser/util/protect/DeviceStat$ProcStat;->utime:J

    iget-wide v2, p1, Lcom/kingroot/kinguser/util/protect/DeviceStat$ProcStat;->utime:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-wide v0, p0, Lcom/kingroot/kinguser/util/protect/DeviceStat$ProcStat;->stime:J

    iget-wide v2, p1, Lcom/kingroot/kinguser/util/protect/DeviceStat$ProcStat;->stime:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-wide v0, p0, Lcom/kingroot/kinguser/util/protect/DeviceStat$ProcStat;->cutime:J

    iget-wide v2, p1, Lcom/kingroot/kinguser/util/protect/DeviceStat$ProcStat;->cutime:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-wide v0, p0, Lcom/kingroot/kinguser/util/protect/DeviceStat$ProcStat;->cstime:J

    iget-wide v2, p1, Lcom/kingroot/kinguser/util/protect/DeviceStat$ProcStat;->cstime:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 407
    const/4 v0, 0x1

    .line 409
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
