.class public Lcom/kingroot/kinguser/np;
.super Lcom/kingroot/kinguser/nh;
.source "SourceFile"


# instance fields
.field private final xr:Ljava/lang/String;

.field private final xs:Ljava/util/Properties;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Properties;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/kingroot/kinguser/nh;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/kingroot/kinguser/np;->xr:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/kingroot/kinguser/np;->xs:Ljava/util/Properties;

    .line 40
    return-void
.end method

.method public static g(Ljava/lang/String;Z)Lcom/kingroot/kinguser/np;
    .locals 2

    .prologue
    .line 25
    if-nez p1, :cond_0

    .line 28
    const-string v0, "ps"

    invoke-static {p0, v0}, Lcom/kingroot/kinguser/np;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v0

    .line 34
    :goto_0
    new-instance v1, Lcom/kingroot/kinguser/np;

    invoke-direct {v1, p0, v0}, Lcom/kingroot/kinguser/np;-><init>(Ljava/lang/String;Ljava/util/Properties;)V

    return-object v1

    .line 31
    :cond_0
    const-string v0, "ps"

    invoke-static {p0, v0}, Lcom/kingroot/kinguser/np;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public fm()V
    .locals 4

    .prologue
    .line 64
    iget-object v1, p0, Lcom/kingroot/kinguser/np;->xs:Ljava/util/Properties;

    monitor-enter v1

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/np;->xr:Ljava/lang/String;

    iget-object v2, p0, Lcom/kingroot/kinguser/np;->xs:Ljava/util/Properties;

    const-string v3, "ps"

    invoke-virtual {p0, v0, v2, v3}, Lcom/kingroot/kinguser/np;->a(Ljava/lang/String;Ljava/util/Properties;Ljava/lang/String;)V

    .line 66
    monitor-exit v1

    .line 67
    return-void

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    iget-object v1, p0, Lcom/kingroot/kinguser/np;->xs:Ljava/util/Properties;

    monitor-enter v1

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/np;->xs:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    if-nez v0, :cond_0

    .line 48
    :cond_0
    if-eqz v0, :cond_1

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 53
    iget-object v1, p0, Lcom/kingroot/kinguser/np;->xs:Ljava/util/Properties;

    monitor-enter v1

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/np;->xs:Ljava/util/Properties;

    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 55
    monitor-exit v1

    .line 56
    return-void

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
