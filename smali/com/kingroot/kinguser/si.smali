.class Lcom/kingroot/kinguser/si;
.super Lcom/kingroot/kinguser/sg;
.source "SourceFile"


# static fields
.field private static GE:Lcom/kingroot/kinguser/si;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    const/4 v0, 0x0

    sput-object v0, Lcom/kingroot/kinguser/si;->GE:Lcom/kingroot/kinguser/si;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/kingroot/kinguser/sg;-><init>()V

    return-void
.end method

.method public static jn()Lcom/kingroot/kinguser/si;
    .locals 2

    .prologue
    .line 8
    sget-object v0, Lcom/kingroot/kinguser/si;->GE:Lcom/kingroot/kinguser/si;

    if-nez v0, :cond_1

    .line 9
    const-class v1, Lcom/kingroot/kinguser/si;

    monitor-enter v1

    .line 10
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/si;->GE:Lcom/kingroot/kinguser/si;

    if-nez v0, :cond_0

    .line 11
    new-instance v0, Lcom/kingroot/kinguser/si;

    invoke-direct {v0}, Lcom/kingroot/kinguser/si;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/si;->GE:Lcom/kingroot/kinguser/si;

    .line 13
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/si;->GE:Lcom/kingroot/kinguser/si;

    return-object v0

    .line 13
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method protected cF(Ljava/lang/String;)Lcom/kingroot/kinguser/sf;
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/kingroot/kinguser/sh;

    invoke-direct {v0, p1}, Lcom/kingroot/kinguser/sh;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
