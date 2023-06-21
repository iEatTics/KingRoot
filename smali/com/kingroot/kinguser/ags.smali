.class public Lcom/kingroot/kinguser/ags;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static amY:Lcom/kingroot/kinguser/bed;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 75
    new-instance v0, Lcom/kingroot/kinguser/bed;

    new-instance v1, Lcom/kingroot/kinguser/ags$1;

    invoke-direct {v1}, Lcom/kingroot/kinguser/ags$1;-><init>()V

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bek;)V

    sput-object v0, Lcom/kingroot/kinguser/ags;->amY:Lcom/kingroot/kinguser/bed;

    return-void
.end method

.method public static aF(Z)V
    .locals 4

    .prologue
    .line 62
    if-eqz p0, :cond_0

    .line 63
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    sget-object v1, Lcom/kingroot/kinguser/ags;->amY:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 73
    :goto_0
    return-void

    .line 66
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    .line 67
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 66
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static vZ()Z
    .locals 7
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    const/16 v6, 0xa

    const/4 v0, 0x0

    .line 40
    const-class v1, Lcom/kingroot/kinguser/advance/install/ui/QuickPackageInstallerActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 41
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 44
    invoke-static {v6}, Lcom/kingroot/kinguser/ala;->eW(I)Ljava/lang/String;

    move-result-object v3

    .line 46
    invoke-static {v1}, Lcom/kingroot/kinguser/cgx;->nl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 43
    invoke-static {v3, v2, v1}, Lcom/kingroot/kinguser/aja;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/kingroot/kinguser/abc;->el(Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/common/utils/system/VTCmdResult;->success()Z

    move-result v1

    if-nez v1, :cond_1

    .line 57
    :cond_0
    :goto_0
    return v0

    .line 52
    :cond_1
    const-wide/16 v4, 0x3e8

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_1
    invoke-static {v6}, Lcom/kingroot/kinguser/ahg;->dm(I)Lcom/kingroot/kinguser/ahg$a;

    move-result-object v1

    .line 57
    iget-object v3, v1, Lcom/kingroot/kinguser/ahg$a;->apm:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v1, v1, Lcom/kingroot/kinguser/ahg$a;->apn:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 53
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method static synthetic wa()Z
    .locals 1

    .prologue
    .line 28
    invoke-static {}, Lcom/kingroot/kinguser/ags;->vZ()Z

    move-result v0

    return v0
.end method
