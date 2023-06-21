.class public Lcom/kingroot/kinguser/akw;
.super Lcom/kingroot/kinguser/akm;
.source "SourceFile"


# static fields
.field private static sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/akw;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/kingroot/kinguser/akw$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/akw$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/akw;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "QQPimSettingDao"

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/akm;-><init>(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/akw$1;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/kingroot/kinguser/akw;-><init>()V

    return-void
.end method

.method public static Gx()Lcom/kingroot/kinguser/akw;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/kingroot/kinguser/akw;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/akw;

    return-object v0
.end method


# virtual methods
.method public GA()I
    .locals 3

    .prologue
    .line 118
    iget-object v0, p0, Lcom/kingroot/kinguser/akw;->avA:Landroid/content/SharedPreferences;

    const-string v1, "VER:5.0.4_20170316_11:46:44.911"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public GB()Z
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x1

    return v0
.end method

.method public GC()V
    .locals 3

    .prologue
    .line 134
    iget-object v0, p0, Lcom/kingroot/kinguser/akw;->avB:Lcom/kingroot/kinguser/ako;

    const-string v1, "VER:5.0.4_20170316_11:55:07.004"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/ako;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 135
    return-void
.end method

.method public GD()J
    .locals 4

    .prologue
    .line 141
    iget-object v0, p0, Lcom/kingroot/kinguser/akw;->avA:Landroid/content/SharedPreferences;

    const-string v1, "VER:5.0.4_20170321_10:31:09.048"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public Gy()[I
    .locals 6
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 56
    iget-object v1, p0, Lcom/kingroot/kinguser/akw;->avA:Landroid/content/SharedPreferences;

    const-string v2, "VER:5.0.4_20170221_11:16:02.042"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 57
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 58
    array-length v1, v3

    new-array v4, v1, [I

    .line 60
    array-length v5, v3

    move v1, v0

    move v2, v0

    :goto_0
    if-ge v1, v5, :cond_0

    aget-object v0, v3, v1

    .line 62
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aput v0, v4, v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    add-int/lit8 v0, v2, 0x1

    .line 60
    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    const/4 v0, 0x0

    :try_start_1
    aput v0, v4, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    add-int/lit8 v0, v2, 0x1

    .line 67
    goto :goto_1

    .line 66
    :catchall_0
    move-exception v0

    add-int/lit8 v1, v2, 0x1

    throw v0

    .line 69
    :cond_0
    return-object v4
.end method

.method public Gz()[I
    .locals 6
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 87
    iget-object v1, p0, Lcom/kingroot/kinguser/akw;->avA:Landroid/content/SharedPreferences;

    const-string v2, "VER:5.0.4_20170221_11:19:05.195"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 88
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 89
    array-length v1, v3

    new-array v4, v1, [I

    .line 91
    array-length v5, v3

    move v1, v0

    move v2, v0

    :goto_0
    if-ge v1, v5, :cond_0

    aget-object v0, v3, v1

    .line 93
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aput v0, v4, v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    add-int/lit8 v0, v2, 0x1

    .line 91
    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    const/4 v0, 0x0

    :try_start_1
    aput v0, v4, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    add-int/lit8 v0, v2, 0x1

    .line 98
    goto :goto_1

    .line 97
    :catchall_0
    move-exception v0

    add-int/lit8 v1, v2, 0x1

    throw v0

    .line 100
    :cond_0
    return-object v4
.end method

.method public bO(J)V
    .locals 3

    .prologue
    .line 145
    iget-object v0, p0, Lcom/kingroot/kinguser/akw;->avB:Lcom/kingroot/kinguser/ako;

    const-string v1, "VER:5.0.4_20170321_10:31:09.048"

    invoke-virtual {v0, v1, p1, p2}, Lcom/kingroot/kinguser/ako;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 146
    return-void
.end method

.method public eT(I)V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/kingroot/kinguser/akw;->avB:Lcom/kingroot/kinguser/ako;

    const-string v1, "VER:5.0.4_20170316_11:46:44.911"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/ako;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 123
    return-void
.end method

.method public h([I)V
    .locals 5

    .prologue
    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    if-eqz p1, :cond_1

    .line 75
    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget v3, p1, v0

    .line 76
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/akw;->avB:Lcom/kingroot/kinguser/ako;

    const-string v2, "VER:5.0.4_20170221_11:16:02.042"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/kingroot/kinguser/ako;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 81
    return-void
.end method

.method public i([I)V
    .locals 5

    .prologue
    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    if-eqz p1, :cond_1

    .line 106
    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget v3, p1, v0

    .line 107
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 111
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/akw;->avB:Lcom/kingroot/kinguser/ako;

    const-string v2, "VER:5.0.4_20170221_11:19:05.195"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/kingroot/kinguser/ako;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 113
    return-void
.end method
