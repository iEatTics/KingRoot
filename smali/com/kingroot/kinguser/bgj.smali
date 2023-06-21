.class public Lcom/kingroot/kinguser/bgj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static boM:Lcom/kingroot/kinguser/bgj;


# instance fields
.field private boN:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-object v0, Lcom/kingroot/kinguser/bgj;->boM:Lcom/kingroot/kinguser/bgj;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized abB()Lcom/kingroot/kinguser/bgj;
    .locals 2

    .prologue
    .line 48
    const-class v1, Lcom/kingroot/kinguser/bgj;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/bgj;->boM:Lcom/kingroot/kinguser/bgj;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/kingroot/kinguser/bgj;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bgj;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bgj;->boM:Lcom/kingroot/kinguser/bgj;

    .line 51
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/bgj;->boM:Lcom/kingroot/kinguser/bgj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static ln(Ljava/lang/String;)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 72
    move v1, v0

    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    .line 73
    const-string v2, "/sys/devices/system/cpu/cpu%d/cpufreq/"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 74
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kingroot/kinguser/rs;->cA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 75
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 76
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 77
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 80
    :cond_0
    return v0

    .line 72
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public abC()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/kingroot/kinguser/bgj;->boN:I

    if-nez v0, :cond_0

    .line 65
    const-string v0, "cpuinfo_max_freq"

    invoke-static {v0}, Lcom/kingroot/kinguser/bgj;->ln(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/bgj;->boN:I

    .line 67
    :cond_0
    iget v0, p0, Lcom/kingroot/kinguser/bgj;->boN:I

    return v0
.end method

.method public abD()I
    .locals 1

    .prologue
    .line 108
    const-string v0, "scaling_cur_freq"

    invoke-static {v0}, Lcom/kingroot/kinguser/bgj;->ln(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
