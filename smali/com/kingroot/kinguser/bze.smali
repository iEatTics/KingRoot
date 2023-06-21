.class public Lcom/kingroot/kinguser/bze;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static bVa:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private static bVb:Lcom/kingroot/kinguser/bzf;

.field public static volatile bVc:Lcom/kingroot/kinguser/cgh;

.field private static bVd:Landroid/os/MemoryFile;

.field private static bVe:Z

.field private static bVf:Lcom/kingroot/kinguser/cgg;

.field private static bVg:Lcom/kingroot/kinguser/cem;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bze;->bVa:Ljava/util/List;

    .line 41
    sput-object v1, Lcom/kingroot/kinguser/bze;->bVc:Lcom/kingroot/kinguser/cgh;

    .line 134
    sput-object v1, Lcom/kingroot/kinguser/bze;->bVf:Lcom/kingroot/kinguser/cgg;

    .line 146
    sput-object v1, Lcom/kingroot/kinguser/bze;->bVg:Lcom/kingroot/kinguser/cem;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method

.method public static ajX()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 64
    const-class v0, Ltmsdk/common/TMSDKContext;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 65
    new-array v1, v6, [B

    array-length v2, v0

    int-to-byte v2, v2

    aput-byte v2, v1, v5

    .line 67
    new-instance v2, Landroid/os/MemoryFile;

    const-string v3, "tmsdk2-jni-context"

    const/16 v4, 0x200

    invoke-direct {v2, v3, v4}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    .line 70
    sput-object v2, Lcom/kingroot/kinguser/bze;->bVd:Landroid/os/MemoryFile;

    invoke-virtual {v2, v1, v5, v5, v6}, Landroid/os/MemoryFile;->writeBytes([BIII)V

    .line 71
    sget-object v1, Lcom/kingroot/kinguser/bze;->bVd:Landroid/os/MemoryFile;

    array-length v2, v0

    invoke-virtual {v1, v0, v5, v6, v2}, Landroid/os/MemoryFile;->writeBytes([BIII)V

    .line 73
    invoke-static {}, Lcom/kingroot/kinguser/bze;->ajY()V

    .line 74
    return-void
.end method

.method public static ajY()V
    .locals 2

    .prologue
    .line 77
    sget-boolean v0, Lcom/kingroot/kinguser/bze;->bVe:Z

    if-eqz v0, :cond_0

    .line 83
    :goto_0
    return-void

    .line 80
    :cond_0
    const-string v0, "sdk_libname"

    invoke-static {v0}, Ltmsdk/common/TMSDKContext;->nG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-static {}, Ltmsdk/common/TMSDKContext;->akS()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/kingroot/kinguser/cek;->Z(Landroid/content/Context;Ljava/lang/String;)Z

    .line 82
    const/4 v0, 0x1

    sput-boolean v0, Lcom/kingroot/kinguser/bze;->bVe:Z

    goto :goto_0
.end method

.method public static ajZ()Lcom/kingroot/kinguser/bzf;
    .locals 5

    .prologue
    .line 115
    sget-object v0, Lcom/kingroot/kinguser/bze;->bVb:Lcom/kingroot/kinguser/bzf;

    if-nez v0, :cond_1

    .line 116
    const-class v1, Lcom/kingroot/kinguser/bze;

    monitor-enter v1

    .line 117
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/bze;->bVb:Lcom/kingroot/kinguser/bzf;

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Lcom/kingroot/kinguser/bzf;

    invoke-static {}, Lcom/kingroot/kinguser/bze;->fs()J

    move-result-wide v2

    const-string v4, "com.tmsdk.common"

    invoke-direct {v0, v2, v3, v4}, Lcom/kingroot/kinguser/bzf;-><init>(JLjava/lang/String;)V

    sput-object v0, Lcom/kingroot/kinguser/bze;->bVb:Lcom/kingroot/kinguser/bzf;

    .line 120
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/bze;->bVb:Lcom/kingroot/kinguser/bzf;

    return-object v0

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static fs()J
    .locals 4

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 159
    invoke-static {}, Ltmsdk/common/TMSDKContext;->akT()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 167
    :goto_0
    const-wide v2, 0x100000000L

    invoke-static {v0, v2, v3}, Lcom/kingroot/kinguser/cdx;->p(IJ)J

    move-result-wide v0

    .line 168
    return-wide v0

    .line 162
    :cond_0
    invoke-static {}, Ltmsdk/common/TMSDKContext;->akT()I

    move-result v0

    if-ne v1, v0, :cond_1

    move v0, v1

    .line 163
    goto :goto_0

    .line 165
    :cond_1
    const/4 v0, 0x3

    goto :goto_0
.end method
