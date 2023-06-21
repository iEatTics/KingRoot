.class public final Lcom/kingroot/kinguser/zq;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/zq$a;
    }
.end annotation


# static fields
.field private static final WR:Ljava/lang/String;

.field private static volatile WS:Lcom/kingroot/kinguser/zq$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Ljava/lang/String;

    const-string v1, "6B752E636F6E66"

    invoke-static {v1}, Lcom/kingroot/kinguser/aab;->dJ(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/zq;->WR:Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/kingroot/kinguser/zq;->WS:Lcom/kingroot/kinguser/zq$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 44
    sget-object v0, Lcom/kingroot/kinguser/zq;->WS:Lcom/kingroot/kinguser/zq$a;

    if-nez v0, :cond_1

    .line 45
    const-class v1, Lcom/kingroot/kinguser/zq;

    monitor-enter v1

    .line 46
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/zq;->WS:Lcom/kingroot/kinguser/zq$a;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/kingroot/kinguser/zq$a;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/kingroot/kinguser/zq$a;-><init>(Lcom/kingroot/kinguser/zq$1;)V

    sput-object v0, Lcom/kingroot/kinguser/zq;->WS:Lcom/kingroot/kinguser/zq$a;

    .line 49
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/zq;->WS:Lcom/kingroot/kinguser/zq$a;

    invoke-static {v0, p0}, Lcom/kingroot/kinguser/zq$a;->a(Lcom/kingroot/kinguser/zq$a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 49
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic pC()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/kingroot/kinguser/zq;->WR:Ljava/lang/String;

    return-object v0
.end method
