.class public final Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ConnectType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static bPS:[Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ConnectType;

.field public static final bPT:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ConnectType;

.field public static final bPU:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ConnectType;

.field public static final bPV:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ConnectType;

.field public static final bPW:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ConnectType;

.field public static final bPX:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ConnectType;

.field public static final bPY:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ConnectType;

.field static final synthetic lo:Z


# instance fields
.field private __T:Ljava/lang/String;

.field private __value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 10
    const-class v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ConnectType;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ConnectType;->lo:Z

    .line 12
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ConnectType;

    sput-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ConnectType;->bPS:[Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ConnectType;

    .line 17
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ConnectType;

    const-string v3, "CT_NONE"

    invoke-direct {v0, v2, v2, v3}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ConnectType;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ConnectType;->bPT:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ConnectType;

    .line 19
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ConnectType;

    const-string v2, "CT_GPRS"

    invoke-direct {v0, v1, v1, v2}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ConnectType;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ConnectType;->bPU:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ConnectType;

    .line 21
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ConnectType;

    const-string v1, "CT_WIFI"

    invoke-direct {v0, v4, v4, v1}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ConnectType;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ConnectType;->bPV:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ConnectType;

    .line 23
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ConnectType;

    const-string v1, "CT_GPRS_WAP"

    invoke-direct {v0, v5, v5, v1}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ConnectType;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ConnectType;->bPW:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ConnectType;

    .line 25
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ConnectType;

    const-string v1, "CT_GPRS_NET"

    invoke-direct {v0, v6, v6, v1}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ConnectType;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ConnectType;->bPX:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ConnectType;

    .line 27
    new-instance v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ConnectType;

    const/4 v1, 0x5

    const/4 v2, 0x5

    const-string v3, "CT_3G_NET"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ConnectType;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ConnectType;->bPY:Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ConnectType;

    return-void

    :cond_0
    move v0, v2

    .line 10
    goto :goto_0
.end method

.method private constructor <init>(IILjava/lang/String;)V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ConnectType;->__T:Ljava/lang/String;

    .line 67
    iput-object p3, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ConnectType;->__T:Ljava/lang/String;

    .line 68
    iput p2, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ConnectType;->__value:I

    .line 69
    sget-object v0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ConnectType;->bPS:[Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ConnectType;

    aput-object p0, v0, p1

    .line 70
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ConnectType;->__T:Ljava/lang/String;

    return-object v0
.end method

.method public value()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/ConnectType;->__value:I

    return v0
.end method
