.class public Lcom/kingroot/kinguser/bfw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static bnd:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/bfw;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final Lc:Landroid/content/SharedPreferences$Editor;

.field private final avA:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/kingroot/kinguser/bfw$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bfw$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bfw;->bnd:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v0

    .line 50
    const-string v1, "urlcheck_setting_dao"

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/rv;->i(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bfw;->avA:Landroid/content/SharedPreferences;

    .line 51
    iget-object v0, p0, Lcom/kingroot/kinguser/bfw;->avA:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bfw;->Lc:Landroid/content/SharedPreferences$Editor;

    .line 52
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/bfw$1;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/kingroot/kinguser/bfw;-><init>()V

    return-void
.end method

.method public static aaS()Lcom/kingroot/kinguser/bfw;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/kingroot/kinguser/bfw;->bnd:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bfw;

    return-object v0
.end method


# virtual methods
.method public aaT()J
    .locals 4

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingroot/kinguser/bfw;->avA:Landroid/content/SharedPreferences;

    const-string v1, "VER:5.3.0_20170922_12:04:38.145"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public aaU()Z
    .locals 3

    .prologue
    .line 67
    iget-object v0, p0, Lcom/kingroot/kinguser/bfw;->avA:Landroid/content/SharedPreferences;

    const-string v1, "VER:5.3.0_20170925_02:44:56.721"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public aaV()Z
    .locals 3

    .prologue
    .line 75
    iget-object v0, p0, Lcom/kingroot/kinguser/bfw;->avA:Landroid/content/SharedPreferences;

    const-string v1, "VER:5.3.0_20170925_05:14:42.603"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public aaW()Z
    .locals 3

    .prologue
    .line 83
    iget-object v0, p0, Lcom/kingroot/kinguser/bfw;->avA:Landroid/content/SharedPreferences;

    const-string v1, "VER:5.3.0_20170925_06:33:37.590"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public aaX()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 91
    iget-object v1, p0, Lcom/kingroot/kinguser/bfw;->avA:Landroid/content/SharedPreferences;

    const-string v2, "VER:5.3.0_20170929_09:11:54.845"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 92
    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    .line 96
    :goto_0
    return v0

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bfw;->Lc:Landroid/content/SharedPreferences$Editor;

    const-string v2, "VER:5.3.0_20170929_09:11:54.845"

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 96
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public aaY()J
    .locals 4

    .prologue
    .line 104
    iget-object v0, p0, Lcom/kingroot/kinguser/bfw;->avA:Landroid/content/SharedPreferences;

    const-string v1, "VER:5.3.0_20170929_09:12:10.024"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public aaZ()Z
    .locals 3

    .prologue
    .line 108
    iget-object v0, p0, Lcom/kingroot/kinguser/bfw;->avA:Landroid/content/SharedPreferences;

    const-string v1, "VER:5.3.0_20171008_04:55:16.002"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 109
    return v0
.end method

.method public aba()V
    .locals 3

    .prologue
    .line 113
    iget-object v0, p0, Lcom/kingroot/kinguser/bfw;->Lc:Landroid/content/SharedPreferences$Editor;

    const-string v1, "VER:5.3.0_20171008_04:55:16.002"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 114
    return-void
.end method

.method public abb()Z
    .locals 3

    .prologue
    .line 117
    iget-object v0, p0, Lcom/kingroot/kinguser/bfw;->avA:Landroid/content/SharedPreferences;

    const-string v1, "VER:5.3.0_20171009_11:47:58.871"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public abc()J
    .locals 4

    .prologue
    .line 129
    iget-object v0, p0, Lcom/kingroot/kinguser/bfw;->avA:Landroid/content/SharedPreferences;

    const-string v1, "VER:5.3.0_20171010_10:29:06.688"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public abd()J
    .locals 4

    .prologue
    .line 137
    iget-object v0, p0, Lcom/kingroot/kinguser/bfw;->avA:Landroid/content/SharedPreferences;

    const-string v1, "VER:5.3.0_20171011_11:28:46.229"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public abe()Z
    .locals 3

    .prologue
    .line 169
    iget-object v0, p0, Lcom/kingroot/kinguser/bfw;->avA:Landroid/content/SharedPreferences;

    const-string v1, "VER:5.3.0_20171025_03:23:44.521"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public abf()Z
    .locals 3

    .prologue
    .line 181
    iget-object v0, p0, Lcom/kingroot/kinguser/bfw;->avA:Landroid/content/SharedPreferences;

    const-string v1, "VER:5.3.0_20171107_03:50:25.270"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public abg()I
    .locals 3

    .prologue
    .line 185
    iget-object v0, p0, Lcom/kingroot/kinguser/bfw;->avA:Landroid/content/SharedPreferences;

    const-string v1, "VER:5.3.3_20180111_11:10:35.354"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public abh()V
    .locals 3

    .prologue
    .line 189
    iget-object v0, p0, Lcom/kingroot/kinguser/bfw;->avA:Landroid/content/SharedPreferences;

    const-string v1, "VER:5.3.3_20180111_11:10:35.354"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 191
    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 197
    :goto_0
    return-void

    .line 195
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 196
    iget-object v1, p0, Lcom/kingroot/kinguser/bfw;->Lc:Landroid/content/SharedPreferences$Editor;

    const-string v2, "VER:5.3.3_20180111_11:10:35.354"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public cu(J)V
    .locals 3

    .prologue
    .line 63
    iget-object v0, p0, Lcom/kingroot/kinguser/bfw;->Lc:Landroid/content/SharedPreferences$Editor;

    const-string v1, "VER:5.3.0_20170922_12:04:38.145"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 64
    return-void
.end method

.method public cv(J)V
    .locals 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/kingroot/kinguser/bfw;->Lc:Landroid/content/SharedPreferences$Editor;

    const-string v1, "VER:5.3.0_20170929_09:12:10.024"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 101
    return-void
.end method

.method public cw(J)V
    .locals 3

    .prologue
    .line 125
    iget-object v0, p0, Lcom/kingroot/kinguser/bfw;->Lc:Landroid/content/SharedPreferences$Editor;

    const-string v1, "VER:5.3.0_20171010_10:29:06.688"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 126
    return-void
.end method

.method public cx(J)V
    .locals 3

    .prologue
    .line 133
    iget-object v0, p0, Lcom/kingroot/kinguser/bfw;->Lc:Landroid/content/SharedPreferences$Editor;

    const-string v1, "VER:5.3.0_20171011_11:28:46.229"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 134
    return-void
.end method

.method public dS(Z)V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/kingroot/kinguser/bfw;->Lc:Landroid/content/SharedPreferences$Editor;

    const-string v1, "VER:5.3.0_20170925_02:44:56.721"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 72
    return-void
.end method

.method public dT(Z)V
    .locals 3

    .prologue
    .line 79
    iget-object v0, p0, Lcom/kingroot/kinguser/bfw;->Lc:Landroid/content/SharedPreferences$Editor;

    const-string v1, "VER:5.3.0_20170925_05:14:42.603"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 80
    return-void
.end method

.method public dU(Z)V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/kingroot/kinguser/bfw;->Lc:Landroid/content/SharedPreferences$Editor;

    const-string v1, "VER:5.3.0_20170925_06:33:37.590"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 88
    return-void
.end method

.method public dV(Z)V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/kingroot/kinguser/bfw;->Lc:Landroid/content/SharedPreferences$Editor;

    const-string v1, "VER:5.3.0_20171009_11:47:58.871"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 122
    return-void
.end method

.method public dW(Z)V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/kingroot/kinguser/bfw;->Lc:Landroid/content/SharedPreferences$Editor;

    const-string v1, "VER:5.3.0_20171107_03:50:25.270"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 178
    return-void
.end method

.method public lk(Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 149
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/kingroot/kinguser/bfw;->avA:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VER:5.3.0_20171016_05:55:12.131"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public ll(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 156
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/bfw;->lk(Ljava/lang/String;)I

    move-result v0

    .line 161
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/kingroot/kinguser/bfw;->Lc:Landroid/content/SharedPreferences$Editor;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VER:5.3.0_20171016_05:55:12.131"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method
