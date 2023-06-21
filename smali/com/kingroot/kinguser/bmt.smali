.class public final Lcom/kingroot/kinguser/bmt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final bCu:Ljava/lang/Object;


# instance fields
.field private bCv:Ljava/lang/String;

.field private bCw:Ljava/util/Properties;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bmt;->bCu:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {}, Lcloudsdk/CloudSdk;->getInstance()Lcloudsdk/CloudSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcloudsdk/CloudSdk;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bmt;->mContext:Landroid/content/Context;

    .line 29
    iput-object p1, p0, Lcom/kingroot/kinguser/bmt;->bCv:Ljava/lang/String;

    .line 31
    iget-object v0, p0, Lcom/kingroot/kinguser/bmt;->bCv:Ljava/lang/String;

    invoke-static {v0}, Lcom/kingroot/kinguser/bmu;->mk(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bmt;->bCw:Ljava/util/Properties;

    .line 45
    return-void
.end method


# virtual methods
.method public final getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 48
    sget-object v1, Lcom/kingroot/kinguser/bmt;->bCu:Ljava/lang/Object;

    monitor-enter v1

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bmt;->bCw:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    if-eqz v0, :cond_0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    const-string v0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
