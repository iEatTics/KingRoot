.class public Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager;
.super Lcom/kingroot/kinguser/avj;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;
    }
.end annotation


# static fields
.field private static volatile bum:Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager;


# instance fields
.field private amT:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private aoL:Lcom/kingroot/kinguser/bed;

.field private bun:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private buo:Lcom/kingroot/kinguser/bed;

.field private bup:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 52
    const v0, 0x9e2b

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/avj;-><init>(I)V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager;->bun:Ljava/util/HashMap;

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager;->mLock:Ljava/lang/Object;

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager;->amT:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 56
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$1;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$1;-><init>(Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager;->buo:Lcom/kingroot/kinguser/bed;

    .line 219
    new-instance v0, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$2;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$2;-><init>(Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager;->bup:Ljava/util/Comparator;

    .line 226
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$3;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$3;-><init>(Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager;->aoL:Lcom/kingroot/kinguser/bed;

    .line 53
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager;->buo:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 54
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager;->refresh()V

    return-void
.end method

.method public static adg()Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager;
    .locals 2

    .prologue
    .line 67
    sget-object v0, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager;->bum:Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager;

    if-nez v0, :cond_1

    .line 68
    const-class v1, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager;

    monitor-enter v1

    .line 69
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager;->bum:Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager;

    invoke-direct {v0}, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager;->bum:Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager;

    .line 72
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager;->bum:Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager;

    return-object v0

    .line 72
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private adi()Ljava/lang/String;
    .locals 4

    .prologue
    .line 113
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 115
    sget-object v1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    const-string v0, "zh"

    .line 120
    :goto_0
    return-object v0

    .line 117
    :cond_0
    sget-object v1, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/Locale;

    const-string v2, "zh"

    const-string v3, "HK"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 118
    :cond_1
    const-string v0, "zn"

    goto :goto_0

    .line 120
    :cond_2
    const-string v0, "en"

    goto :goto_0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager;)Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager;->bup:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic c(Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic d(Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager;->bun:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic e(Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager;->amT:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private refresh()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager;->amT:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    :goto_0
    return-void

    .line 92
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager;->aoL:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    goto :goto_0
.end method


# virtual methods
.method public adh()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager;->refresh()V

    .line 98
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 100
    iget-object v2, p0, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 101
    :try_start_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager;->adi()Ljava/lang/String;

    move-result-object v0

    .line 103
    iget-object v3, p0, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager;->bun:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 104
    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 107
    :cond_0
    monitor-exit v2

    .line 109
    return-object v1

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected uy()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager;->amT:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 80
    invoke-direct {p0}, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager;->refresh()V

    .line 81
    return-void
.end method
