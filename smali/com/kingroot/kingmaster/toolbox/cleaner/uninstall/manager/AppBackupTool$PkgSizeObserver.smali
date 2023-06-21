.class Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$PkgSizeObserver;
.super Landroid/content/pm/IPackageStatsObserver$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PkgSizeObserver"
.end annotation


# instance fields
.field mFinished:Z

.field mStats:Landroid/content/pm/PackageStats;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1623
    invoke-direct {p0}, Landroid/content/pm/IPackageStatsObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$1;)V
    .locals 0

    .prologue
    .line 1623
    invoke-direct {p0}, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$PkgSizeObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public getStats()Landroid/content/pm/PackageStats;
    .locals 1

    .prologue
    .line 1629
    iget-object v0, p0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$PkgSizeObserver;->mStats:Landroid/content/pm/PackageStats;

    return-object v0
.end method

.method public onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .locals 1

    .prologue
    .line 1635
    monitor-enter p0

    .line 1636
    if-eqz p2, :cond_0

    .line 1637
    :try_start_0
    iput-object p1, p0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$PkgSizeObserver;->mStats:Landroid/content/pm/PackageStats;

    .line 1639
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$PkgSizeObserver;->mFinished:Z

    .line 1640
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1641
    monitor-exit p0

    .line 1642
    return-void

    .line 1641
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
