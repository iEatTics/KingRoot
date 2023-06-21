.class Lcom/kingroot/kinguser/bjr$2;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bjr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic byr:Lcom/kingroot/kinguser/bjr;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bjr;)V
    .locals 0

    .prologue
    .line 918
    iput-object p1, p0, Lcom/kingroot/kinguser/bjr$2;->byr:Lcom/kingroot/kinguser/bjr;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v2, 0x0

    .line 921
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 923
    sget-object v0, Lcom/kingroot/kinguser/bjs;->byC:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 925
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v7

    .line 926
    sget-object v0, Lcom/kingroot/kinguser/bjs;->byC:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v1, v2

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    .line 927
    iget v6, v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->enable:I

    .line 928
    const/4 v3, 0x0

    .line 930
    :try_start_0
    iget-object v9, v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->packageName:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v11, v3

    move v3, v6

    move-object v6, v11

    .line 934
    :goto_1
    if-eqz v6, :cond_0

    .line 935
    const/4 v3, -0x1

    .line 937
    :try_start_1
    iget-object v9, v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v9}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 941
    :goto_2
    if-gez v3, :cond_2

    move v3, v4

    .line 949
    :cond_0
    :goto_3
    iget v9, v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->enable:I

    if-eq v9, v3, :cond_8

    .line 950
    iput v3, v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->enable:I

    .line 951
    if-eqz v6, :cond_1

    iget-object v1, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_1

    .line 952
    iget v1, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v1, v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->versionCode:I

    .line 953
    iget-object v1, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v1, v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->versionName:Ljava/lang/String;

    .line 954
    iget-object v1, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v1, v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->appSourceDir:Ljava/lang/String;

    .line 955
    iget-object v1, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_4

    move v1, v5

    :goto_4
    iput-boolean v1, v0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->isPersonApp:Z

    :cond_1
    move v0, v5

    :goto_5
    move v1, v0

    .line 959
    goto :goto_0

    .line 931
    :catch_0
    move-exception v6

    move-object v6, v3

    move v3, v4

    .line 932
    goto :goto_1

    .line 943
    :cond_2
    if-ne v3, v4, :cond_3

    move v3, v5

    .line 944
    goto :goto_3

    :cond_3
    move v3, v2

    .line 946
    goto :goto_3

    :cond_4
    move v1, v2

    .line 955
    goto :goto_4

    .line 960
    :cond_5
    if-eqz v1, :cond_6

    .line 961
    sget-object v0, Lcom/kingroot/kinguser/bjs;->byC:Ljava/util/List;

    invoke-static {v0}, Lcom/kingroot/kinguser/afg;->aa(Ljava/util/List;)V

    .line 963
    :cond_6
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr$2;->byr:Lcom/kingroot/kinguser/bjr;

    invoke-static {v0, v4}, Lcom/kingroot/kinguser/bjr;->a(Lcom/kingroot/kinguser/bjr;I)I

    .line 964
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr$2;->byr:Lcom/kingroot/kinguser/bjr;

    invoke-static {v0, v2, v2}, Lcom/kingroot/kinguser/bjr;->a(Lcom/kingroot/kinguser/bjr;ZZ)V

    .line 966
    :cond_7
    return-void

    .line 938
    :catch_1
    move-exception v9

    goto :goto_2

    :cond_8
    move v0, v1

    goto :goto_5
.end method
