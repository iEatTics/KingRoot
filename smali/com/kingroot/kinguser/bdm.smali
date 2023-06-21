.class public abstract Lcom/kingroot/kinguser/bdm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected adZ:Ljava/lang/String;

.field protected ads:I

.field protected bjj:Ljava/lang/String;

.field protected bjk:Ljava/lang/String;

.field protected bjl:J

.field protected mVersionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public YE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/kingroot/kinguser/bdm;->bjj:Ljava/lang/String;

    return-object v0
.end method

.method public abstract YF()Ljava/lang/String;
.end method

.method protected abstract YG()[I
.end method

.method public abstract ah(II)V
.end method

.method protected bO(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 32
    invoke-static {p1}, Lcom/kingroot/kinguser/sw;->t(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public kV(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/kingroot/kinguser/bdm;->bjj:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public kW(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/kingroot/kinguser/bdm;->adZ:Ljava/lang/String;

    .line 46
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/bdm;->kX(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method protected kX(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 54
    iput-object p1, p0, Lcom/kingroot/kinguser/bdm;->adZ:Ljava/lang/String;

    .line 56
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v0

    .line 58
    const/16 v1, 0x40

    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 59
    if-eqz v0, :cond_0

    .line 60
    invoke-static {p1}, Lcom/kingroot/kinguser/aaz;->dZ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kingroot/kinguser/bdm;->bjk:Ljava/lang/String;

    .line 61
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v1, p0, Lcom/kingroot/kinguser/bdm;->mVersionName:Ljava/lang/String;

    .line 62
    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v1, p0, Lcom/kingroot/kinguser/bdm;->ads:I

    .line 63
    new-instance v1, Ljava/io/File;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/bdm;->bjl:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected kY(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    const/4 v0, 0x0

    .line 78
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "\\|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected abstract kZ(Ljava/lang/String;)V
.end method
