.class public Lcom/kingroot/kinguser/ahc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public anE:Ljava/lang/String;

.field public anF:Ljava/lang/String;

.field public anG:Ljava/lang/String;

.field public anH:Ljava/lang/String;

.field public anI:Ljava/lang/String;

.field public anJ:Ljava/lang/String;

.field public anK:Ljava/lang/String;

.field public anL:Ljava/lang/String;

.field public anM:Ljava/lang/String;

.field public anN:Ljava/lang/String;

.field public anO:Ljava/lang/String;

.field public anP:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, "0"

    iput-object v0, p0, Lcom/kingroot/kinguser/ahc;->anE:Ljava/lang/String;

    .line 24
    const-string v0, "0"

    iput-object v0, p0, Lcom/kingroot/kinguser/ahc;->anF:Ljava/lang/String;

    .line 25
    const-string v0, "0"

    iput-object v0, p0, Lcom/kingroot/kinguser/ahc;->anG:Ljava/lang/String;

    .line 26
    const-string v0, "0"

    iput-object v0, p0, Lcom/kingroot/kinguser/ahc;->anH:Ljava/lang/String;

    .line 27
    const-string v0, "0"

    iput-object v0, p0, Lcom/kingroot/kinguser/ahc;->anI:Ljava/lang/String;

    .line 28
    const-string v0, "0"

    iput-object v0, p0, Lcom/kingroot/kinguser/ahc;->anJ:Ljava/lang/String;

    .line 29
    const-string v0, "0"

    iput-object v0, p0, Lcom/kingroot/kinguser/ahc;->anK:Ljava/lang/String;

    .line 30
    const-string v0, "0"

    iput-object v0, p0, Lcom/kingroot/kinguser/ahc;->anL:Ljava/lang/String;

    .line 31
    const-string v0, "0"

    iput-object v0, p0, Lcom/kingroot/kinguser/ahc;->anM:Ljava/lang/String;

    .line 32
    const-string v0, "0"

    iput-object v0, p0, Lcom/kingroot/kinguser/ahc;->anN:Ljava/lang/String;

    .line 33
    const-string v0, "0"

    iput-object v0, p0, Lcom/kingroot/kinguser/ahc;->anO:Ljava/lang/String;

    .line 34
    const-string v0, "0"

    iput-object v0, p0, Lcom/kingroot/kinguser/ahc;->anP:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public static d(Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;)Lcom/kingroot/kinguser/ahc;
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 42
    if-nez p0, :cond_0

    .line 43
    const/4 v0, 0x0

    .line 86
    :goto_0
    return-object v0

    .line 46
    :cond_0
    new-instance v1, Lcom/kingroot/kinguser/ahc;

    invoke-direct {v1}, Lcom/kingroot/kinguser/ahc;-><init>()V

    .line 47
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->anE:Ljava/lang/String;

    iput-object v0, v1, Lcom/kingroot/kinguser/ahc;->anE:Ljava/lang/String;

    .line 50
    const-string v0, "unknown"

    iget-object v2, v1, Lcom/kingroot/kinguser/ahc;->anE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.android.shell"

    iget-object v2, v1, Lcom/kingroot/kinguser/ahc;->anE:Ljava/lang/String;

    .line 51
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 53
    iget-object v0, v1, Lcom/kingroot/kinguser/ahc;->anE:Ljava/lang/String;

    invoke-static {v0}, Lcom/kingroot/kinguser/aaz;->dZ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/kingroot/kinguser/ahc;->anF:Ljava/lang/String;

    .line 56
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v0

    iget-object v2, v1, Lcom/kingroot/kinguser/ahc;->anE:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/zh;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 57
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 58
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/kingroot/kinguser/ahc;->anG:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 63
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->anH:Ljava/lang/String;

    iput-object v0, v1, Lcom/kingroot/kinguser/ahc;->anH:Ljava/lang/String;

    .line 64
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->anI:Ljava/lang/String;

    iput-object v0, v1, Lcom/kingroot/kinguser/ahc;->anI:Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->anJ:Ljava/lang/String;

    iput-object v0, v1, Lcom/kingroot/kinguser/ahc;->anJ:Ljava/lang/String;

    .line 67
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->anK:Ljava/lang/String;

    iput-object v0, v1, Lcom/kingroot/kinguser/ahc;->anK:Ljava/lang/String;

    .line 68
    iget-object v0, v1, Lcom/kingroot/kinguser/ahc;->anK:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 69
    new-instance v0, Ljava/io/File;

    iget-object v2, v1, Lcom/kingroot/kinguser/ahc;->anK:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 71
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "%d"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/kingroot/kinguser/ahc;->anN:Ljava/lang/String;

    .line 72
    invoke-static {v0}, Lcom/kingroot/kinguser/rs;->getFileMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/kingroot/kinguser/ahc;->anM:Ljava/lang/String;

    .line 78
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->anL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "0"

    :goto_3
    iput-object v0, v1, Lcom/kingroot/kinguser/ahc;->anL:Ljava/lang/String;

    .line 79
    iget v0, p0, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->mState:I

    if-ne v0, v9, :cond_5

    const-string v0, "2"

    :goto_4
    iput-object v0, v1, Lcom/kingroot/kinguser/ahc;->anO:Ljava/lang/String;

    .line 81
    :try_start_1
    iget v0, p0, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->apM:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/kingroot/kinguser/ahc;->anP:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_5
    move-object v0, v1

    .line 86
    goto/16 :goto_0

    .line 75
    :cond_3
    const-string v0, "0"

    iput-object v0, v1, Lcom/kingroot/kinguser/ahc;->anK:Ljava/lang/String;

    goto :goto_2

    .line 78
    :cond_4
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;->anL:Ljava/lang/String;

    goto :goto_3

    .line 79
    :cond_5
    const-string v0, "1"

    goto :goto_4

    .line 82
    :catch_0
    move-exception v0

    goto :goto_5

    .line 59
    :catch_1
    move-exception v0

    goto :goto_1
.end method
