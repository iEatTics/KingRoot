.class public final Lcom/kingroot/kinguser/bmr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final bCq:Ljava/lang/String;

.field private static volatile bCr:Lcom/kingroot/kinguser/bmr$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Ljava/lang/String;

    const-string v1, "6B752E636F6E66"

    invoke-static {v1}, Lcom/kingroot/kinguser/bmu;->mp(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/bmr;->bCq:Ljava/lang/String;

    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/kingroot/kinguser/bmr;->bCr:Lcom/kingroot/kinguser/bmr$1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method static synthetic afZ()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/kingroot/kinguser/bmr;->bCq:Ljava/lang/String;

    return-object v0
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 43
    sget-object v0, Lcom/kingroot/kinguser/bmr;->bCr:Lcom/kingroot/kinguser/bmr$1;

    if-nez v0, :cond_1

    .line 44
    const-class v1, Lcom/kingroot/kinguser/bmr;

    monitor-enter v1

    .line 45
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/bmr;->bCr:Lcom/kingroot/kinguser/bmr$1;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/kingroot/kinguser/bmr$1;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/kingroot/kinguser/bmr$1;-><init>(B)V

    sput-object v0, Lcom/kingroot/kinguser/bmr;->bCr:Lcom/kingroot/kinguser/bmr$1;

    .line 48
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/bmr;->bCr:Lcom/kingroot/kinguser/bmr$1;

    invoke-static {v0, p0}, Lcom/kingroot/kinguser/bmr$1;->a(Lcom/kingroot/kinguser/bmr$1;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
