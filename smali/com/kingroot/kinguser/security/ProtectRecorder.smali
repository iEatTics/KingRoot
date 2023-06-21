.class public Lcom/kingroot/kinguser/security/ProtectRecorder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/rr;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/security/ProtectRecorder$RiskApkDeniedRootAuth;,
        Lcom/kingroot/kinguser/security/ProtectRecorder$SafeApk;,
        Lcom/kingroot/kinguser/security/ProtectRecorder$TrustRiskInfo;,
        Lcom/kingroot/kinguser/security/ProtectRecorder$Time;,
        Lcom/kingroot/kinguser/security/ProtectRecorder$LRUCache;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/security/ProtectRecorder;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mTrustRiskInfo:Lcom/kingroot/kinguser/security/ProtectRecorder$LRUCache;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/kingroot/kinguser/aiq;->asc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_ProtectRecorder"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/security/ProtectRecorder;->TAG:Ljava/lang/String;

    .line 36
    new-instance v0, Lcom/kingroot/kinguser/security/ProtectRecorder$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/security/ProtectRecorder$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/security/ProtectRecorder;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v0, "s_p_trust_log.dat"

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/security/ProtectRecorder;->O(Ljava/lang/String;I)Lcom/kingroot/kinguser/security/ProtectRecorder$LRUCache;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/security/ProtectRecorder;->mTrustRiskInfo:Lcom/kingroot/kinguser/security/ProtectRecorder$LRUCache;

    .line 45
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/security/ProtectRecorder$1;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/kingroot/kinguser/security/ProtectRecorder;-><init>()V

    return-void
.end method

.method private O(Ljava/lang/String;I)Lcom/kingroot/kinguser/security/ProtectRecorder$LRUCache;
    .locals 2

    .prologue
    .line 48
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 49
    invoke-static {v0}, Lcom/kingroot/kinguser/sq;->u(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/security/ProtectRecorder$LRUCache;

    .line 50
    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/kingroot/kinguser/security/ProtectRecorder$LRUCache;

    invoke-direct {v0, p0, p2}, Lcom/kingroot/kinguser/security/ProtectRecorder$LRUCache;-><init>(Lcom/kingroot/kinguser/security/ProtectRecorder;I)V

    .line 53
    :cond_0
    return-object v0
.end method

.method public static XX()Lcom/kingroot/kinguser/security/ProtectRecorder;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/kingroot/kinguser/security/ProtectRecorder;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/security/ProtectRecorder;

    return-object v0
.end method

.method private declared-synchronized a(Lcom/kingroot/kinguser/security/ProtectRecorder$LRUCache;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 165
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 166
    invoke-static {p1, v0}, Lcom/kingroot/kinguser/sq;->a(Ljava/lang/Object;Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    monitor-exit p0

    return-void

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public P(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 129
    iget-object v0, p0, Lcom/kingroot/kinguser/security/ProtectRecorder;->mTrustRiskInfo:Lcom/kingroot/kinguser/security/ProtectRecorder$LRUCache;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/kingroot/kinguser/security/ProtectRecorder$TrustRiskInfo;

    invoke-direct {v2, p0, p1, p2}, Lcom/kingroot/kinguser/security/ProtectRecorder$TrustRiskInfo;-><init>(Lcom/kingroot/kinguser/security/ProtectRecorder;Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/security/ProtectRecorder$LRUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v0, p0, Lcom/kingroot/kinguser/security/ProtectRecorder;->mTrustRiskInfo:Lcom/kingroot/kinguser/security/ProtectRecorder$LRUCache;

    const-string v1, "s_p_trust_log.dat"

    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/security/ProtectRecorder;->a(Lcom/kingroot/kinguser/security/ProtectRecorder$LRUCache;Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method public XY()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/kingroot/kinguser/security/ProtectRecorder$TrustRiskInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/kingroot/kinguser/security/ProtectRecorder;->mTrustRiskInfo:Lcom/kingroot/kinguser/security/ProtectRecorder$LRUCache;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/security/ProtectRecorder$LRUCache;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public XZ()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/kingroot/kinguser/security/ProtectRecorder$SafeApk;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    const-string v0, "s_p_safe_apk_log.dat"

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/security/ProtectRecorder;->O(Ljava/lang/String;I)Lcom/kingroot/kinguser/security/ProtectRecorder$LRUCache;

    move-result-object v0

    .line 136
    new-instance v1, Ljava/util/HashSet;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/security/ProtectRecorder$LRUCache;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public Ya()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/kingroot/kinguser/security/ProtectRecorder$RiskApkDeniedRootAuth;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    const-string v0, "s_p_risk_auth_log.dat"

    const/16 v1, 0xc8

    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/security/ProtectRecorder;->O(Ljava/lang/String;I)Lcom/kingroot/kinguser/security/ProtectRecorder$LRUCache;

    move-result-object v0

    .line 149
    new-instance v1, Ljava/util/HashSet;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/security/ProtectRecorder$LRUCache;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public j(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 153
    const-string v0, "s_p_risk_auth_log.dat"

    const/16 v1, 0xc8

    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/security/ProtectRecorder;->O(Ljava/lang/String;I)Lcom/kingroot/kinguser/security/ProtectRecorder$LRUCache;

    move-result-object v1

    .line 154
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 155
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/kingroot/kinguser/zh;->du(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 160
    new-instance v3, Lcom/kingroot/kinguser/security/ProtectRecorder$RiskApkDeniedRootAuth;

    invoke-direct {v3, p0, v0}, Lcom/kingroot/kinguser/security/ProtectRecorder$RiskApkDeniedRootAuth;-><init>(Lcom/kingroot/kinguser/security/ProtectRecorder;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v3}, Lcom/kingroot/kinguser/security/ProtectRecorder$LRUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 162
    :cond_1
    const-string v0, "s_p_risk_auth_log.dat"

    invoke-direct {p0, v1, v0}, Lcom/kingroot/kinguser/security/ProtectRecorder;->a(Lcom/kingroot/kinguser/security/ProtectRecorder$LRUCache;Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public kH(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 141
    const-string v0, "s_p_safe_apk_log.dat"

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/security/ProtectRecorder;->O(Ljava/lang/String;I)Lcom/kingroot/kinguser/security/ProtectRecorder$LRUCache;

    move-result-object v0

    .line 142
    new-instance v1, Lcom/kingroot/kinguser/security/ProtectRecorder$SafeApk;

    invoke-direct {v1, p0, p1}, Lcom/kingroot/kinguser/security/ProtectRecorder$SafeApk;-><init>(Lcom/kingroot/kinguser/security/ProtectRecorder;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/kingroot/kinguser/security/ProtectRecorder$LRUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const-string v1, "s_p_safe_apk_log.dat"

    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/security/ProtectRecorder;->a(Lcom/kingroot/kinguser/security/ProtectRecorder$LRUCache;Ljava/lang/String;)V

    .line 144
    return-void
.end method
