.class public Lcom/kingroot/kinguser/akl;
.super Lcom/kingroot/kinguser/akm;
.source "SourceFile"


# static fields
.field private static sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/akl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    new-instance v0, Lcom/kingroot/kinguser/akl$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/akl$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/akl;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 91
    const-string v0, "AppMarket"

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/akm;-><init>(Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/akl$1;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/kingroot/kinguser/akl;-><init>()V

    return-void
.end method

.method public static AS()Lcom/kingroot/kinguser/akl;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/kingroot/kinguser/akl;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/akl;

    return-object v0
.end method


# virtual methods
.method public AT()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 98
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 99
    iget-object v2, p0, Lcom/kingroot/kinguser/akl;->avA:Landroid/content/SharedPreferences;

    const-string v3, "VER:5.10_20170320_11:30:20.072"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 100
    :goto_0
    if-ge v0, v2, :cond_0

    .line 101
    iget-object v3, p0, Lcom/kingroot/kinguser/akl;->avA:Landroid/content/SharedPreferences;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VER:5.10_20170320_11:25:02.781"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    :cond_0
    return-object v1
.end method

.method public AU()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 132
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 133
    iget-object v2, p0, Lcom/kingroot/kinguser/akl;->avA:Landroid/content/SharedPreferences;

    const-string v3, "VER:5.10_20170329_05:15:21.441"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 134
    :goto_0
    if-ge v0, v2, :cond_0

    .line 135
    iget-object v3, p0, Lcom/kingroot/kinguser/akl;->avA:Landroid/content/SharedPreferences;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VER:5.10_20170329_05:12:44.901"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 138
    :cond_0
    return-object v1
.end method

.method public AV()V
    .locals 1

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/kingroot/kinguser/akl;->AU()Ljava/util/List;

    move-result-object v0

    .line 171
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 172
    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/akl;->au(Ljava/util/List;)V

    .line 173
    return-void
.end method

.method public AW()V
    .locals 3

    .prologue
    .line 180
    iget-object v0, p0, Lcom/kingroot/kinguser/akl;->avB:Lcom/kingroot/kinguser/ako;

    const-string v1, "VER:5.1.0_20170313_04:51:44.292"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/ako;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 181
    return-void
.end method

.method public AX()Z
    .locals 3

    .prologue
    .line 187
    iget-object v0, p0, Lcom/kingroot/kinguser/akl;->avA:Landroid/content/SharedPreferences;

    const-string v1, "VER:5.1.0_20170313_04:51:44.292"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public AY()V
    .locals 3

    .prologue
    .line 194
    iget-object v0, p0, Lcom/kingroot/kinguser/akl;->avB:Lcom/kingroot/kinguser/ako;

    const-string v1, "VER:5.10_20170407_09:11:23.093"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/ako;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 195
    return-void
.end method

.method public AZ()Z
    .locals 3

    .prologue
    .line 201
    iget-object v0, p0, Lcom/kingroot/kinguser/akl;->avA:Landroid/content/SharedPreferences;

    const-string v1, "VER:5.10_20170407_09:11:23.093"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public BA()J
    .locals 4

    .prologue
    .line 479
    iget-object v0, p0, Lcom/kingroot/kinguser/akl;->avA:Landroid/content/SharedPreferences;

    const-string v1, "VER:5.3.3_20180110_09:56:20.637"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public BB()J
    .locals 4

    .prologue
    .line 483
    iget-object v0, p0, Lcom/kingroot/kinguser/akl;->avA:Landroid/content/SharedPreferences;

    const-string v1, "VER:5.3.3_20180111_05:13:37.647"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public BC()J
    .locals 4

    .prologue
    .line 491
    iget-object v0, p0, Lcom/kingroot/kinguser/akl;->avA:Landroid/content/SharedPreferences;

    const-string v1, "VER:5.3.3_20180115_11:03:28.907"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public BD()J
    .locals 4

    .prologue
    .line 500
    iget-object v0, p0, Lcom/kingroot/kinguser/akl;->avA:Landroid/content/SharedPreferences;

    const-string v1, "VER:5.3.5_20180125_09:53:26.707"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public BE()Z
    .locals 3

    .prologue
    .line 512
    iget-object v0, p0, Lcom/kingroot/kinguser/akl;->avA:Landroid/content/SharedPreferences;

    const-string v1, "VER:5.35_20180117_04:18:18.050"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public BF()V
    .locals 3

    .prologue
    .line 519
    iget-object v0, p0, Lcom/kingroot/kinguser/akl;->avB:Lcom/kingroot/kinguser/ako;

    const-string v1, "VER:5.35_20180117_04:18:18.050"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/ako;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 520
    return-void
.end method

.method public BG()J
    .locals 4

    .prologue
    .line 540
    iget-object v0, p0, Lcom/kingroot/kinguser/akl;->avA:Landroid/content/SharedPreferences;

    const-string v1, "VER:5.3.5_20180124_04:34:22.432"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public Ba()J
    .locals 4

    .prologue
    .line 209
    iget-object v0, p0, Lcom/kingroot/kinguser/akl;->avA:Landroid/content/SharedPreferences;

    const-string v1, "VER:5.1.0_20170401_05:01:57.270"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public Bb()I
    .locals 3

    .prologue
    .line 217
    iget-object v0, p0, Lcom/kingroot/kinguser/akl;->avA:Landroid/content/SharedPreferences;

    const-string v1, "VER:5.21_20170613_05:32:16.739"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public Bc()J
    .locals 4

    .prologue
    .line 225
    iget-object v0, p0, Lcom/kingroot/kinguser/akl;->avA:Landroid/content/SharedPreferences;

    const-string v1, "VER:5.21_20170613_05:27:28.336"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public Bd()J
    .locals 4

    .prologue
    .line 233
    iget-object v0, p0, Lcom/kingroot/kinguser/akl;->avA:Landroid/content/SharedPreferences;

    const-string v1, "VER:5.21_20170626_03:15:01.822"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public Be()V
    .locals 3

    .prologue
    .line 245
    iget-object v0, p0, Lcom/kingroot/kinguser/akl;->avB:Lcom/kingroot/kinguser/ako;

    const-string v1, "VER:5.2.2_20170815_05:56:43.977"

    invoke-virtual {p0}, Lcom/kingroot/kinguser/akl;->Bf()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/ako;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 246
    return-void
.end method

.method public Bf()I
    .locals 3

    .prologue
    .line 249
    iget-object v0, p0, Lcom/kingroot/kinguser/akl;->avA:Landroid/content/SharedPreferences;

    const-string v1, "VER:5.2.2_20170815_05:56:43.977"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public Bg()V
    .locals 3

    .prologue
    .line 253
    iget-object v0, p0, Lcom/kingroot/kinguser/akl;->avB:Lcom/kingroot/kinguser/ako;

    const-string v1, "VER:5.2.2_20170815_07:50:02.818"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/ako;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 254
    return-void
.end method

.method public Bh()Z
    .locals 3

    .prologue
    .line 257
    iget-object v0, p0, Lcom/kingroot/kinguser/akl;->avA:Landroid/content/SharedPreferences;

    const-string v1, "VER:5.2.2_20170815_07:50:02.818"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public Bi()J
    .locals 4

    .prologue
    .line 261
    iget-object v0, p0, Lcom/kingroot/kinguser/akl;->avA:Landroid/content/SharedPreferences;

    const-string v1, "VER:5.2.2_20170815_08:18:10.618"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public Bj()J
    .locals 4

    .prologue
    .line 269
    iget-object v0, p0, Lcom/kingroot/kinguser/akl;->avA:Landroid/content/SharedPreferences;

    const-string v1, "VER:5.2.2_20170821_05:06:06.753"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public Bk()Z
    .locals 3

    .prologue
    .line 281
    iget-object v0, p0, Lcom/kingroot/kinguser/akl;->avA:Landroid/content/SharedPreferences;

    const-string v1, "VER:5.2.2_20170821_07:04:48.845"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public Bl()J
    .locals 4

    .prologue
    .line 285
    iget-object v0, p0, Lcom/kingroot/kinguser/akl;->avA:Landroid/content/SharedPreferences;

    const-string v1, "VER:5.3.0_20170912_04:26:48.433"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public Bm()V
    .locals 3

    .prologue
    .line 320
    iget-object v0, p0, Lcom/kingroot/kinguser/akl;->avB:Lcom/kingroot/kinguser/ako;

    const-string v1, "VER:5.3.0_20170918_05:33:36.605"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/ako;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 321
    return-void
.end method

.method public Bn()Z
    .locals 3

    .prologue
    .line 329
    iget-object v0, p0, Lcom/kingroot/kinguser/akl;->avA:Landroid/content/SharedPreferences;

    const-string v1, "VER:5.3.0_20170918_05:33:36.605"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public Bo()J
    .locals 4

    .prologue
    .line 350
    iget-object v0, p0, Lcom/kingroot/kinguser/akl;->avA:Landroid/content/SharedPreferences;

    const-string v1, "VER:5.3.0_20171009_08:52:12.640"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public Bp()J
    .locals 4

    .prologue
    .line 370
    iget-object v0, p0, Lcom/kingroot/kinguser/akl;->avA:Landroid/content/SharedPreferences;

    const-string v1, "VER:5.3.2_20171116_04:56:24.983"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public Bq()Ljava/lang/String;
    .locals 3

    .prologue
    .line 374
    iget-object v0, p0, Lcom/kingroot/kinguser/akl;->avA:Landroid/content/SharedPreferences;

    const-string v1, "VER:5.3.2_20171114_08:38:22.393"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Br()V
    .locals 2

    .prologue
    .line 383
    iget-object v0, p0, Lcom/kingroot/kinguser/akl;->avB:Lcom/kingroot/kinguser/ako;

    const-string v1, "VER:5.3.2_20171114_08:38:22.393"

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ako;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 384
    iget-object v0, p0, Lcom/kingroot/kinguser/akl;->avB:Lcom/kingroot/kinguser/ako;

    const-string v1, "VER:5.3.2_20171116_04:56:24.983"

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ako;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 385
    return-void
.end method

.method public Bs()J
    .locals 4

    .prologue
    .line 400
    iget-object v0, p0, Lcom/kingroot/kinguser/akl;->avA:Landroid/content/SharedPreferences;

    const-string v1, "VER:5.3.2_20171113_05:24:43.033"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public Bt()I
    .locals 3

    .prologue
    .line 409
    iget-object v0, p0, Lcom/kingroot/kinguser/akl;->avA:Landroid/content/SharedPreferences;

    const-string v1, "VER:5.3.2_20171113_05:23:46.542"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public Bu()J
    .locals 4

    .prologue
    .line 419
    iget-object v0, p0, Lcom/kingroot/kinguser/akl;->avA:Landroid/content/SharedPreferences;

    const-string v1, "VER:5.3.2_20171117_04:21:29.077"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public Bv()J
    .locals 4

    .prologue
    .line 438
    iget-object v0, p0, Lcom/kingroot/kinguser/akl;->avA:Landroid/content/SharedPreferences;

    const-string v1, "VER:5.3.2_20171120_11:38:00.763"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public Bw()I
    .locals 3

    .prologue
    .line 447
    iget-object v0, p0, Lcom/kingroot/kinguser/akl;->avA:Landroid/content/SharedPreferences;

    const-string v1, "VER:5.3.2_20171124_03:56:06.805"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public Bx()J
    .locals 4

    .prologue
    .line 455
    iget-object v0, p0, Lcom/kingroot/kinguser/akl;->avA:Landroid/content/SharedPreferences;

    const-string v1, "VER:5.3.2_20171124_03:56:40.901"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public By()I
    .locals 3

    .prologue
    .line 463
    iget-object v0, p0, Lcom/kingroot/kinguser/akl;->avA:Landroid/content/SharedPreferences;

    const-string v1, "VER:5.3.2_20171124_03:57:39.646"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public Bz()J
    .locals 4

    .prologue
    .line 471
    iget-object v0, p0, Lcom/kingroot/kinguser/akl;->avA:Landroid/content/SharedPreferences;

    const-string v1, "VER:5.3.3_20180108_08:09:17.125"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public aA(J)V
    .locals 3

    .prologue
    .line 451
    iget-object v0, p0, Lcom/kingroot/kinguser/akl;->avB:Lcom/kingroot/kinguser/ako;

    const-string v1, "VER:5.3.2_20171124_03:56:40.901"

    invoke-virtual {v0, v1, p1, p2}, Lcom/kingroot/kinguser/ako;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 452
    return-void
.end method

.method public aB(J)V
    .locals 3

    .prologue
    .line 467
    iget-object v0, p0, Lcom/kingroot/kinguser/akl;->avB:Lcom/kingroot/kinguser/ako;

    const-string v1, "VER:5.3.3_20180108_08:09:17.125"

    invoke-virtual {v0, v1, p1, p2}, Lcom/kingroot/kinguser/ako;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 468
    return-void
.end method

.method public aC(J)V
    .locals 3

    .prologue
    .line 475
    iget-object v0, p0, Lcom/kingroot/kinguser/akl;->avB:Lcom/kingroot/kinguser/ako;

    const-string v1, "VER:5.3.3_20180110_09:56:20.637"

    invoke-virtual {v0, v1, p1, p2}, Lcom/kingroot/kinguser/ako;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 476
    return-void
.end method

.method public aD(J)V
    .locals 3

    .prologue
    .line 487
    iget-object v0, p0, Lcom/kingroot/kinguser/akl;->avB:Lcom/kingroot/kinguser/ako;

    const-string v1, "VER:5.3.3_20180111_05:13:37.647"

    invoke-virtual {v0, v1, p1, p2}, Lcom/kingroot/kinguser/ako;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 488
    return-void
.end method

.method public aE(J)V
    .locals 3

    .prologue
    .line 495
    iget-object v0, p0, Lcom/kingroot/kinguser/akl;->avB:Lcom/kingroot/kinguser/ako;

    const-string v1, "VER:5.3.3_20180115_11:03:28.907"

    invoke-virtual {v0, v1, p1, p2}, Lcom/kingroot/kinguser/ako;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 496
    return-void
.end method

.method public aF(J)V
    .locals 3

    .prologue
    .line 504
    iget-object v0, p0, Lcom/kingroot/kinguser/akl;->avB:Lcom/kingroot/kinguser/ako;

    const-string v1, "VER:5.3.5_20180125_09:53:26.707"

    invoke-virtual {v0, v1, p1, p2}, Lcom/kingroot/kinguser/ako;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 505
    return-void
.end method

.method public aG(J)V
    .locals 3

    .prologue
    .line 548
    iget-object v0, p0, Lcom/kingroot/kinguser/akl;->avB:Lcom/kingroot/kinguser/ako;

    const-string v1, "VER:5.3.5_20180124_04:34:22.432"

    invoke-virtual {v0, v1, p1, p2}, Lcom/kingroot/kinguser/ako;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 549
    return-void
.end method

.method public ao(J)V
    .locals 3

    .prologue
    .line 205
    iget-object v0, p0, Lcom/kingroot/kinguser/akl;->avB:Lcom/kingroot/kinguser/ako;

    const-string v1, "VER:5.1.0_20170401_05:01:57.270"

    invoke-virtual {v0, v1, p1, p2}, Lcom/kingroot/kinguser/ako;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 206
    return-void
.end method

.method public ap(J)V
    .locals 3

    .prologue
    .line 221
    iget-object v0, p0, Lcom/kingroot/kinguser/akl;->avB:Lcom/kingroot/kinguser/ako;

    const-string v1, "VER:5.21_20170613_05:27:28.336"

    invoke-virtual {v0, v1, p1, p2}, Lcom/kingroot/kinguser/ako;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 222
    return-void
.end method

.method public aq(J)V
    .locals 3

    .prologue
    .line 229
    iget-object v0, p0, Lcom/kingroot/kinguser/akl;->avB:Lcom/kingroot/kinguser/ako;

    const-string v1, "VER:5.21_20170626_03:15:01.822"

    invoke-virtual {v0, v1, p1, p2}, Lcom/kingroot/kinguser/ako;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 230
    return-void
.end method

.method public ar(J)V
    .locals 3

    .prologue
    .line 265
    iget-object v0, p0, Lcom/kingroot/kinguser/akl;->avB:Lcom/kingroot/kinguser/ako;

    const-string v1, "VER:5.2.2_20170815_08:18:10.618"

    invoke-virtual {v0, v1, p1, p2}, Lcom/kingroot/kinguser/ako;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 266
    return-void
.end method

.method public as(J)V
    .locals 3

    .prologue
    .line 273
    iget-object v0, p0, Lcom/kingroot/kinguser/akl;->avB:Lcom/kingroot/kinguser/ako;

    const-string v1, "VER:5.2.2_20170821_05:06:06.753"

    invoke-virtual {v0, v1, p1, p2}, Lcom/kingroot/kinguser/ako;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 274
    return-void
.end method

.method public at(J)V
    .locals 3

    .prologue
    .line 289
    iget-object v0, p0, Lcom/kingroot/kinguser/akl;->avB:Lcom/kingroot/kinguser/ako;

    const-string v1, "VER:5.3.0_20170912_04:26:48.433"

    invoke-virtual {v0, v1, p1, p2}, Lcom/kingroot/kinguser/ako;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 290
    return-void
.end method

.method public at(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lcom/kingroot/kinguser/akl;->avB:Lcom/kingroot/kinguser/ako;

    const-string v1, "VER:5.10_20170320_11:30:20.072"

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/ako;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 112
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/kingroot/kinguser/akl;->avB:Lcom/kingroot/kinguser/ako;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VER:5.10_20170320_11:25:02.781"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/ako;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 114
    iget-object v2, p0, Lcom/kingroot/kinguser/akl;->avB:Lcom/kingroot/kinguser/ako;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VER:5.10_20170320_11:25:02.781"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/kingroot/kinguser/ako;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 112
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/akl;->avB:Lcom/kingroot/kinguser/ako;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ako;->commit()Z

    .line 117
    return-void
.end method

.method public au(J)V
    .locals 3

    .prologue
    .line 346
    iget-object v0, p0, Lcom/kingroot/kinguser/akl;->avB:Lcom/kingroot/kinguser/ako;

    const-string v1, "VER:5.3.0_20171009_08:52:12.640"

    invoke-virtual {v0, v1, p1, p2}, Lcom/kingroot/kinguser/ako;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 347
    return-void
.end method

.method public au(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 121
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x14

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 123
    iget-object v0, p0, Lcom/kingroot/kinguser/akl;->avB:Lcom/kingroot/kinguser/ako;

    const-string v1, "VER:5.10_20170329_05:15:21.441"

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/ako;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 124
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 125
    iget-object v0, p0, Lcom/kingroot/kinguser/akl;->avB:Lcom/kingroot/kinguser/ako;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VER:5.10_20170329_05:12:44.901"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/ako;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 126
    iget-object v3, p0, Lcom/kingroot/kinguser/akl;->avB:Lcom/kingroot/kinguser/ako;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VER:5.10_20170329_05:12:44.901"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Lcom/kingroot/kinguser/ako;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 124
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/akl;->avB:Lcom/kingroot/kinguser/ako;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ako;->commit()Z

    .line 129
    return-void
.end method

.method public av(J)V
    .locals 3

    .prologue
    .line 396
    iget-object v0, p0, Lcom/kingroot/kinguser/akl;->avB:Lcom/kingroot/kinguser/ako;

    const-string v1, "VER:5.3.2_20171113_05:24:43.033"

    invoke-virtual {v0, v1, p1, p2}, Lcom/kingroot/kinguser/ako;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 397
    return-void
.end method

.method public aw(J)V
    .locals 3

    .prologue
    .line 413
    iget-object v0, p0, Lcom/kingroot/kinguser/akl;->avB:Lcom/kingroot/kinguser/ako;

    const-string v1, "VER:5.3.2_20171117_04:21:29.077"

    invoke-virtual {v0, v1, p1, p2}, Lcom/kingroot/kinguser/ako;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 414
    return-void
.end method

.method public ax(J)V
    .locals 3

    .prologue
    .line 423
    iget-object v0, p0, Lcom/kingroot/kinguser/akl;->avB:Lcom/kingroot/kinguser/ako;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VER:5.3.2_20171120_11:39:05.974"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/ako;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 424
    return-void
.end method

.method public ay(J)Z
    .locals 3

    .prologue
    .line 427
    iget-object v0, p0, Lcom/kingroot/kinguser/akl;->avA:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VER:5.3.2_20171120_11:39:05.974"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public az(J)V
    .locals 3

    .prologue
    .line 433
    iget-object v0, p0, Lcom/kingroot/kinguser/akl;->avB:Lcom/kingroot/kinguser/ako;

    const-string v1, "VER:5.3.2_20171120_11:38:00.763"

    invoke-virtual {v0, v1, p1, p2}, Lcom/kingroot/kinguser/ako;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 434
    return-void
.end method

.method public b(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)V
    .locals 3

    .prologue
    .line 297
    iget-object v1, p0, Lcom/kingroot/kinguser/akl;->avB:Lcom/kingroot/kinguser/ako;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VER:_20170912_07:47:48.381"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->pkgName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->jumpUrl4Banner:Ljava/lang/String;

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/akl;->c(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/kingroot/kinguser/ako;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 298
    return-void

    .line 297
    :cond_0
    iget-object v0, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->pkgName:Ljava/lang/String;

    goto :goto_0
.end method

.method public c(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)I
    .locals 3

    .prologue
    .line 306
    iget-object v1, p0, Lcom/kingroot/kinguser/akl;->avA:Landroid/content/SharedPreferences;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VER:_20170912_07:47:48.381"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->pkgName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->jumpUrl4Banner:Ljava/lang/String;

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->pkgName:Ljava/lang/String;

    goto :goto_0
.end method

.method public dY(I)V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/kingroot/kinguser/akl;->avB:Lcom/kingroot/kinguser/ako;

    const-string v1, "VER:5.21_20170613_05:32:16.739"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/ako;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 214
    return-void
.end method

.method public dZ(I)V
    .locals 3

    .prologue
    .line 237
    iget-object v0, p0, Lcom/kingroot/kinguser/akl;->avB:Lcom/kingroot/kinguser/ako;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VER5.2.2:_20170811_10:49:14.213"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/ako;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 238
    return-void
.end method

.method public ea(I)Z
    .locals 3

    .prologue
    .line 241
    iget-object v0, p0, Lcom/kingroot/kinguser/akl;->avA:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VER5.2.2:_20170811_10:49:14.213"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public eb(I)V
    .locals 2

    .prologue
    .line 405
    iget-object v0, p0, Lcom/kingroot/kinguser/akl;->avB:Lcom/kingroot/kinguser/ako;

    const-string v1, "VER:5.3.2_20171113_05:23:46.542"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/ako;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 406
    return-void
.end method

.method public ec(I)V
    .locals 2

    .prologue
    .line 442
    iget-object v0, p0, Lcom/kingroot/kinguser/akl;->avB:Lcom/kingroot/kinguser/ako;

    const-string v1, "VER:5.3.2_20171124_03:56:06.805"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/ako;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 443
    return-void
.end method

.method public ed(I)V
    .locals 2

    .prologue
    .line 459
    iget-object v0, p0, Lcom/kingroot/kinguser/akl;->avB:Lcom/kingroot/kinguser/ako;

    const-string v1, "VER:5.3.2_20171124_03:57:39.646"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/ako;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 460
    return-void
.end method

.method public gK(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 142
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    :goto_0
    return-void

    .line 145
    :cond_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/akl;->AU()Ljava/util/List;

    move-result-object v0

    .line 146
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 148
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 151
    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 152
    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/akl;->au(Ljava/util/List;)V

    goto :goto_0
.end method

.method public gL(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/kingroot/kinguser/akl;->AU()Ljava/util/List;

    move-result-object v0

    .line 157
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 166
    :cond_0
    :goto_0
    return-object v0

    .line 160
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 162
    if-eqz v1, :cond_0

    .line 163
    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/akl;->au(Ljava/util/List;)V

    goto :goto_0
.end method

.method public gM(Ljava/lang/String;)J
    .locals 4

    .prologue
    .line 337
    iget-object v0, p0, Lcom/kingroot/kinguser/akl;->avA:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VER:5.3.0_20171009_08:43:30.586"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public gN(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 354
    iget-object v0, p0, Lcom/kingroot/kinguser/akl;->avA:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VER:5.3.0_20171010_07:41:28.692"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public gO(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 358
    iget-object v0, p0, Lcom/kingroot/kinguser/akl;->avB:Lcom/kingroot/kinguser/ako;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VER:5.3.0_20171010_07:41:28.692"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/akl;->gN(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/ako;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 359
    return-void
.end method

.method public gP(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 362
    iget-object v0, p0, Lcom/kingroot/kinguser/akl;->avA:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VER5.3.0:_20171010_07:51:09.994"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public gQ(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 366
    iget-object v0, p0, Lcom/kingroot/kinguser/akl;->avB:Lcom/kingroot/kinguser/ako;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VER5.3.0:_20171010_07:51:09.994"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/ako;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 367
    return-void
.end method

.method public gR(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 378
    iget-object v0, p0, Lcom/kingroot/kinguser/akl;->avB:Lcom/kingroot/kinguser/ako;

    const-string v1, "VER:5.3.2_20171114_08:38:22.393"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/ako;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 379
    iget-object v0, p0, Lcom/kingroot/kinguser/akl;->avB:Lcom/kingroot/kinguser/ako;

    const-string v1, "VER:5.3.2_20171116_04:56:24.983"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/kingroot/kinguser/ako;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 380
    return-void
.end method

.method public gS(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 526
    iget-object v0, p0, Lcom/kingroot/kinguser/akl;->avA:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VER:5.3.5_20180124_03:48:46.828"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public gT(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 533
    iget-object v0, p0, Lcom/kingroot/kinguser/akl;->avB:Lcom/kingroot/kinguser/ako;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VER:5.3.5_20180124_03:48:46.828"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/ako;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 534
    return-void
.end method

.method public gU(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 555
    iget-object v0, p0, Lcom/kingroot/kinguser/akl;->avA:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VER:5.3.5_20180125_04:59:29.080"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public gV(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 562
    iget-object v0, p0, Lcom/kingroot/kinguser/akl;->avB:Lcom/kingroot/kinguser/ako;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VER:5.3.5_20180125_04:59:29.080"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/ako;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 563
    return-void
.end method

.method public k(Ljava/lang/String;J)V
    .locals 4

    .prologue
    .line 333
    iget-object v0, p0, Lcom/kingroot/kinguser/akl;->avB:Lcom/kingroot/kinguser/ako;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VER:5.3.0_20171009_08:43:30.586"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/kingroot/kinguser/ako;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 334
    return-void
.end method
