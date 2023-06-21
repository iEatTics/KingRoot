.class public final Lcom/kingroot/kinguser/akc;
.super Lcom/kingroot/kinguser/akd;
.source "SourceFile"


# static fields
.field private static volatile ave:Lcom/kingroot/kinguser/akc;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/kingroot/kinguser/akd;-><init>()V

    return-void
.end method

.method public static Ai()Lcom/kingroot/kinguser/akc;
    .locals 2

    .prologue
    .line 8
    sget-object v0, Lcom/kingroot/kinguser/akc;->ave:Lcom/kingroot/kinguser/akc;

    if-nez v0, :cond_1

    .line 9
    const-class v1, Lcom/kingroot/kinguser/akc;

    monitor-enter v1

    .line 10
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/akc;->ave:Lcom/kingroot/kinguser/akc;

    if-nez v0, :cond_0

    .line 11
    new-instance v0, Lcom/kingroot/kinguser/akc;

    invoke-direct {v0}, Lcom/kingroot/kinguser/akc;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/akc;->ave:Lcom/kingroot/kinguser/akc;

    .line 13
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/akc;->ave:Lcom/kingroot/kinguser/akc;

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
.method protected Aj()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    const-string v0, "packages"

    return-object v0
.end method
