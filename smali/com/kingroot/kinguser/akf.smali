.class public Lcom/kingroot/kinguser/akf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final avg:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final avh:Ljava/lang/Object;

.field private static volatile avi:Ljava/lang/String;

.field private static final avj:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 32
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lcom/kingroot/kinguser/akf;->avg:Ljava/util/HashSet;

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/akf;->avh:Ljava/lang/Object;

    .line 59
    const/4 v0, 0x0

    sput-object v0, Lcom/kingroot/kinguser/akf;->avi:Ljava/lang/String;

    .line 80
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lcom/kingroot/kinguser/akf;->avj:Ljava/util/HashSet;

    return-void
.end method

.method private static Am()Ljava/util/HashSet;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    sget-object v1, Lcom/kingroot/kinguser/akf;->avg:Ljava/util/HashSet;

    monitor-enter v1

    .line 36
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/akf;->avg:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/kingroot/kinguser/akf;->avg:Ljava/util/HashSet;

    monitor-exit v1

    .line 46
    :goto_0
    return-object v0

    .line 39
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/akf;->avg:Ljava/util/HashSet;

    invoke-static {}, Lcom/kingroot/kinguser/akf;->Ao()Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 40
    sget-object v0, Lcom/kingroot/kinguser/akf;->avg:Ljava/util/HashSet;

    const-string v2, "com.kingroot.master"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v0, Lcom/kingroot/kinguser/akf;->avg:Ljava/util/HashSet;

    const-string v2, "com.kingstudio.purify"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 42
    sget-object v0, Lcom/kingroot/kinguser/akf;->avg:Ljava/util/HashSet;

    const-string v2, "com.kingroot.RushRoot"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v0, Lcom/kingroot/kinguser/akf;->avg:Ljava/util/HashSet;

    const-string v2, "com.cafeteam.installer"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 44
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    sget-object v0, Lcom/kingroot/kinguser/akf;->avg:Ljava/util/HashSet;

    goto :goto_0

    .line 44
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static An()Ljava/lang/String;
    .locals 2

    .prologue
    .line 61
    sget-object v0, Lcom/kingroot/kinguser/akf;->avi:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/kingroot/kinguser/akf;->avi:Ljava/lang/String;

    .line 69
    :goto_0
    return-object v0

    .line 62
    :cond_0
    sget-object v1, Lcom/kingroot/kinguser/akf;->avh:Ljava/lang/Object;

    monitor-enter v1

    .line 63
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/akf;->avi:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/kingroot/kinguser/akf;->avi:Ljava/lang/String;

    monitor-exit v1

    goto :goto_0

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 65
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/akf;->avi:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 69
    sget-object v0, Lcom/kingroot/kinguser/akf;->avi:Ljava/lang/String;

    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private static Ao()Ljava/util/HashSet;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    sget-object v1, Lcom/kingroot/kinguser/akf;->avj:Ljava/util/HashSet;

    monitor-enter v1

    .line 84
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/akf;->avj:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/kingroot/kinguser/akf;->avj:Ljava/util/HashSet;

    monitor-exit v1

    .line 92
    :goto_0
    return-object v0

    .line 87
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/akf;->avj:Ljava/util/HashSet;

    const-string v2, "com.kingroot.kinguser"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 88
    sget-object v0, Lcom/kingroot/kinguser/akf;->avj:Ljava/util/HashSet;

    const-string v2, "com.cafeteam.user"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 89
    sget-object v0, Lcom/kingroot/kinguser/akf;->avj:Ljava/util/HashSet;

    const-string v2, "com.cafeteam.user.pro"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 90
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    sget-object v0, Lcom/kingroot/kinguser/akf;->avj:Ljava/util/HashSet;

    goto :goto_0

    .line 90
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static gG(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 55
    invoke-static {}, Lcom/kingroot/kinguser/akf;->Am()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static gH(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 76
    invoke-static {}, Lcom/kingroot/kinguser/akf;->An()Ljava/lang/String;

    move-result-object v0

    .line 77
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static gI(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 101
    invoke-static {}, Lcom/kingroot/kinguser/akf;->Ao()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
