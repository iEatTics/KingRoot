.class Lcom/kingroot/kinguser/bam;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/bam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final avz:Ljava/lang/Object;

.field protected mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/kingroot/kinguser/bam$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bam$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bam;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bam;->avz:Ljava/lang/Object;

    .line 41
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bam;->mContext:Landroid/content/Context;

    .line 42
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/bam$1;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/kingroot/kinguser/bam;-><init>()V

    return-void
.end method

.method public static VA()Lcom/kingroot/kinguser/bam;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/kingroot/kinguser/bam;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bam;

    return-object v0
.end method

.method private VB()Landroid/content/SharedPreferences;
    .locals 4

    .prologue
    .line 45
    iget-object v1, p0, Lcom/kingroot/kinguser/bam;->avz:Ljava/lang/Object;

    monitor-enter v1

    .line 46
    :try_start_0
    new-instance v0, Lcom/kingroot/kinguser/vm$b;

    iget-object v2, p0, Lcom/kingroot/kinguser/bam;->mContext:Landroid/content/Context;

    const-string v3, "CTP_ReportData_Common"

    invoke-static {v2, v3}, Lcom/kingroot/kinguser/rv;->i(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/kingroot/kinguser/vm$b;-><init>(Landroid/content/SharedPreferences;)V

    monitor-exit v1

    return-object v0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public VC()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v1, p0, Lcom/kingroot/kinguser/bam;->avz:Ljava/lang/Object;

    monitor-enter v1

    .line 78
    :try_start_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/bam;->VB()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public aI(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 90
    iget-object v1, p0, Lcom/kingroot/kinguser/bam;->avz:Ljava/lang/Object;

    monitor-enter v1

    .line 91
    :try_start_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/bam;->VB()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 92
    monitor-exit v1

    .line 93
    return-void

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public kl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 103
    iget-object v1, p0, Lcom/kingroot/kinguser/bam;->avz:Ljava/lang/Object;

    monitor-enter v1

    .line 104
    :try_start_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/bam;->VB()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, ""

    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
