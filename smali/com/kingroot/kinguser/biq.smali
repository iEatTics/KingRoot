.class public Lcom/kingroot/kinguser/biq;
.super Lcom/kingroot/kinguser/uo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/biq$a;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/biq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/kingroot/kinguser/biq$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/biq$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/biq;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/kingroot/kinguser/uo;-><init>()V

    .line 38
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/biq$1;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/kingroot/kinguser/biq;-><init>()V

    return-void
.end method

.method public static ada()Lcom/kingroot/kinguser/biq;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/kingroot/kinguser/biq;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/biq;

    return-object v0
.end method


# virtual methods
.method public adb()Z
    .locals 2

    .prologue
    .line 71
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/biq;->aY(I)Lcom/kingroot/common/ipc/IpcResult;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcom/kingroot/common/ipc/IpcResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/kingroot/common/ipc/IpcResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public adc()I
    .locals 1

    .prologue
    .line 87
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/biq;->aY(I)Lcom/kingroot/common/ipc/IpcResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/common/ipc/IpcResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public eh(Z)V
    .locals 5

    .prologue
    .line 77
    const/4 v0, 0x6

    new-instance v1, Lcom/kingroot/common/ipc/ArgsPack;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/biq;->a(ILcom/kingroot/common/ipc/ArgsPack;)V

    .line 78
    return-void
.end method

.method public jf(I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    const/4 v0, 0x7

    new-instance v1, Lcom/kingroot/common/ipc/ArgsPack;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/biq;->b(ILcom/kingroot/common/ipc/ArgsPack;)Lcom/kingroot/common/ipc/IpcResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/common/ipc/IpcResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public kD()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/kingroot/kinguser/up;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    const-class v0, Lcom/kingroot/kinguser/biq$a;

    return-object v0
.end method

.method public start()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/biq;->aX(I)V

    .line 62
    return-void
.end method
