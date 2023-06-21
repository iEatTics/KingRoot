.class Lcom/kingroot/kinguser/bfj;
.super Lcom/kingroot/kinguser/akm;
.source "SourceFile"


# static fields
.field private static sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/bfj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/kingroot/kinguser/bfj$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bfj$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bfj;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "king_turingmm_config"

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/akm;-><init>(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/bfj$1;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/kingroot/kinguser/bfj;-><init>()V

    return-void
.end method

.method public static ZX()Lcom/kingroot/kinguser/bfj;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/kingroot/kinguser/bfj;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bfj;

    return-object v0
.end method


# virtual methods
.method public ZY()J
    .locals 4

    .prologue
    .line 47
    iget-object v0, p0, Lcom/kingroot/kinguser/bfj;->avA:Landroid/content/SharedPreferences;

    const-string v1, "VER:5.2.1_20170901_06:00:26.974"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public ZZ()V
    .locals 4

    .prologue
    .line 51
    iget-object v0, p0, Lcom/kingroot/kinguser/bfj;->avB:Lcom/kingroot/kinguser/ako;

    const-string v1, "VER:5.2.1_20170901_06:00:26.974"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/kingroot/kinguser/ako;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 52
    return-void
.end method

.method public aaa()Z
    .locals 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/kingroot/kinguser/bfj;->avA:Landroid/content/SharedPreferences;

    const-string v1, "VER:5.2.2_20170913_04:46:56.599"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public aab()I
    .locals 3

    .prologue
    .line 63
    iget-object v0, p0, Lcom/kingroot/kinguser/bfj;->avA:Landroid/content/SharedPreferences;

    const-string v1, "VER:5.3.0_20171010_03:04:43.596"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public aac()V
    .locals 5

    .prologue
    .line 71
    iget-object v0, p0, Lcom/kingroot/kinguser/bfj;->avA:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 72
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 73
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 76
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 77
    iget-object v2, p0, Lcom/kingroot/kinguser/bfj;->avB:Lcom/kingroot/kinguser/ako;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/kingroot/kinguser/ako;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 79
    :catch_0
    move-exception v0

    goto :goto_0

    .line 83
    :cond_0
    return-void
.end method

.method public aj(II)V
    .locals 3

    .prologue
    .line 43
    iget-object v0, p0, Lcom/kingroot/kinguser/bfj;->avB:Lcom/kingroot/kinguser/ako;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/kingroot/kinguser/ako;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 44
    return-void
.end method

.method public dN(Z)V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingroot/kinguser/bfj;->avB:Lcom/kingroot/kinguser/ako;

    const-string v1, "VER:5.2.2_20170913_04:46:56.599"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/ako;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 60
    return-void
.end method

.method public ix(I)I
    .locals 3

    .prologue
    .line 39
    iget-object v0, p0, Lcom/kingroot/kinguser/bfj;->avA:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public iy(I)V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/kingroot/kinguser/bfj;->avB:Lcom/kingroot/kinguser/ako;

    const-string v1, "VER:5.3.0_20171010_03:04:43.596"

    invoke-virtual {v0, v1, p1}, Lcom/kingroot/kinguser/ako;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 68
    return-void
.end method
