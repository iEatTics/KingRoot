.class public Lcom/kingroot/kinguser/bdz;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CORE_POOL_SIZE:I

.field public static final MAXIMUM_POOL_SIZE:I

.field public static MW:I

.field public static final bkf:I

.field public static final bkg:I

.field public static final bkh:Ljava/util/concurrent/TimeUnit;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/kingroot/kinguser/bdz;->MW:I

    .line 14
    invoke-static {}, Lcom/kingroot/kinguser/bdz;->YY()I

    move-result v0

    sput v0, Lcom/kingroot/kinguser/bdz;->CORE_POOL_SIZE:I

    .line 15
    sget v0, Lcom/kingroot/kinguser/bdz;->CORE_POOL_SIZE:I

    add-int/lit8 v0, v0, 0x2

    sput v0, Lcom/kingroot/kinguser/bdz;->MAXIMUM_POOL_SIZE:I

    .line 16
    const/4 v0, 0x1

    sget v1, Lcom/kingroot/kinguser/bdz;->CORE_POOL_SIZE:I

    div-int/lit8 v1, v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/kingroot/kinguser/bdz;->bkf:I

    .line 17
    sget v0, Lcom/kingroot/kinguser/bdz;->bkf:I

    add-int/lit8 v0, v0, 0x2

    sget v1, Lcom/kingroot/kinguser/bdz;->MAXIMUM_POOL_SIZE:I

    div-int/lit8 v1, v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/kingroot/kinguser/bdz;->bkg:I

    .line 19
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Lcom/kingroot/kinguser/bdz;->bkh:Ljava/util/concurrent/TimeUnit;

    return-void
.end method

.method private static YY()I
    .locals 2

    .prologue
    const/16 v0, 0x10

    .line 35
    sget v1, Lcom/kingroot/kinguser/bdz;->MW:I

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x2

    .line 36
    if-le v1, v0, :cond_0

    .line 39
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
