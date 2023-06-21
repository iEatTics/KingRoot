.class public Lcom/kingroot/kinguser/adl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static isInit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-boolean v0, Lcom/kingroot/kinguser/adl;->isInit:Z

    return-void
.end method

.method private static a(Lcom/kingroot/kinguser/util/protect/DeviceStat;)V
    .locals 1

    .prologue
    .line 148
    invoke-static {}, Lcom/kingroot/kinguser/adl;->ss()Ljava/io/File;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/kingroot/kinguser/sq;->a(Ljava/lang/Object;Ljava/io/File;)V

    .line 149
    return-void
.end method

.method private static bX()V
    .locals 0

    .prologue
    .line 56
    invoke-static {}, Lcom/kingroot/kinguser/adl;->sp()V

    .line 57
    return-void
.end method

.method public static init()V
    .locals 6

    .prologue
    .line 37
    sget-boolean v0, Lcom/kingroot/kinguser/adl;->isInit:Z

    if-eqz v0, :cond_0

    .line 49
    :goto_0
    return-void

    .line 41
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/adl;->so()V

    .line 42
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v4, 0x0

    new-instance v5, Lcom/kingroot/kinguser/adl$1;

    invoke-direct {v5}, Lcom/kingroot/kinguser/adl$1;-><init>()V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    goto :goto_0
.end method

.method static synthetic jJ()V
    .locals 0

    .prologue
    .line 29
    invoke-static {}, Lcom/kingroot/kinguser/adl;->bX()V

    return-void
.end method

.method private static so()V
    .locals 0

    .prologue
    .line 52
    return-void
.end method

.method private static sp()V
    .locals 6

    .prologue
    .line 62
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/bja;->adx()Ljava/util/List;

    move-result-object v0

    .line 64
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/abc;->isRootPermition(Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/aeu;->isWodAvailible()Z

    move-result v1

    .line 76
    if-eqz v1, :cond_2

    .line 77
    invoke-static {v0}, Lcom/kingroot/kinguser/aeu;->Y(Ljava/util/List;)V

    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    goto :goto_0

    .line 79
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/adl;->sq()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    const/4 v1, 0x0

    const-class v2, Lcom/kingroot/kinguser/aes;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "android.intent.action.SCREEN_OFF"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "android.intent.action.SCREEN_ON"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "com.kingroot.master.action.SCHEDUAL_EVENT"

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/kingroot/kinguser/tf;->a(ILjava/lang/Class;[Ljava/lang/String;)V

    .line 91
    invoke-static {v0}, Lcom/kingroot/kinguser/bja;->bW(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private static sq()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 102
    invoke-static {}, Lcom/kingroot/kinguser/adl;->sr()Lcom/kingroot/kinguser/util/protect/DeviceStat;

    move-result-object v1

    .line 103
    if-eqz v1, :cond_1

    .line 104
    invoke-virtual {v1}, Lcom/kingroot/kinguser/util/protect/DeviceStat;->acB()J

    move-result-wide v2

    .line 105
    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 108
    invoke-static {}, Lcom/kingroot/kinguser/util/protect/DeviceStat;->acx()Lcom/kingroot/kinguser/util/protect/DeviceStat;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/adl;->a(Lcom/kingroot/kinguser/util/protect/DeviceStat;)V

    .line 116
    :cond_0
    :goto_0
    return v0

    .line 113
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/util/protect/DeviceStat;->acx()Lcom/kingroot/kinguser/util/protect/DeviceStat;

    move-result-object v2

    .line 114
    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/kingroot/kinguser/util/protect/DeviceStat;->a(Lcom/kingroot/kinguser/util/protect/DeviceStat;Lcom/kingroot/kinguser/util/protect/DeviceStat;Ljava/util/List;)I

    move-result v1

    .line 115
    invoke-static {v2}, Lcom/kingroot/kinguser/adl;->a(Lcom/kingroot/kinguser/util/protect/DeviceStat;)V

    .line 116
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static sr()Lcom/kingroot/kinguser/util/protect/DeviceStat;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 125
    invoke-static {}, Lcom/kingroot/kinguser/adl;->ss()Ljava/io/File;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 127
    invoke-static {v0}, Lcom/kingroot/kinguser/sq;->u(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v0

    .line 129
    :goto_0
    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/kingroot/kinguser/util/protect/DeviceStat;

    if-eqz v2, :cond_0

    .line 130
    check-cast v0, Lcom/kingroot/kinguser/util/protect/DeviceStat;

    .line 132
    :goto_1
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private static ss()Ljava/io/File;
    .locals 3

    .prologue
    .line 140
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/autostat.dat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
