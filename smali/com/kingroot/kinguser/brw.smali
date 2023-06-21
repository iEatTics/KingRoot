.class public Lcom/kingroot/kinguser/brw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/brg;


# static fields
.field private static bLe:Lcom/kingroot/kinguser/brw;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private bLf:Lcom/kingroot/kinguser/brg;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, "FeatureReportProxy"

    iput-object v0, p0, Lcom/kingroot/kinguser/brw;->TAG:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public static ahO()Lcom/kingroot/kinguser/brw;
    .locals 2

    .prologue
    .line 24
    sget-object v0, Lcom/kingroot/kinguser/brw;->bLe:Lcom/kingroot/kinguser/brw;

    if-nez v0, :cond_1

    .line 25
    const-class v1, Lcom/kingroot/kinguser/brw;

    monitor-enter v1

    .line 26
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/brw;->bLe:Lcom/kingroot/kinguser/brw;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/kingroot/kinguser/brw;

    invoke-direct {v0}, Lcom/kingroot/kinguser/brw;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/brw;->bLe:Lcom/kingroot/kinguser/brw;

    .line 25
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/brw;->bLe:Lcom/kingroot/kinguser/brw;

    return-object v0

    .line 25
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private ahP()Z
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/kingroot/kinguser/brw;->bLf:Lcom/kingroot/kinguser/brg;

    if-nez v0, :cond_0

    .line 36
    const-string v0, "FeatureReportProxy"

    const-string v1, "please implement IFeatureReport interface,then set into DiscoverySdk"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    const/4 v0, 0x0

    .line 39
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public b(Lcom/kingroot/kinguser/brg;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/kingroot/kinguser/brw;->bLf:Lcom/kingroot/kinguser/brg;

    .line 21
    return-void
.end method

.method public c(ILjava/lang/String;I)V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/kingroot/kinguser/brw;->ahP()Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/brw;->bLf:Lcom/kingroot/kinguser/brg;

    invoke-interface {v0, p1, p2, p3}, Lcom/kingroot/kinguser/brg;->c(ILjava/lang/String;I)V

    goto :goto_0
.end method
