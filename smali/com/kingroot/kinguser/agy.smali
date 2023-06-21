.class public Lcom/kingroot/kinguser/agy;
.super Lcom/kingroot/kinguser/uo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/agy$a;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/agy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/kingroot/kinguser/agy$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/agy$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/agy;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/kingroot/kinguser/uo;-><init>()V

    .line 40
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/agy$1;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/kingroot/kinguser/agy;-><init>()V

    return-void
.end method

.method public static wk()Lcom/kingroot/kinguser/agy;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/kingroot/kinguser/agy;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/agy;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/advance/manager/IPermChangedListener;)V
    .locals 4

    .prologue
    .line 113
    const/4 v0, 0x5

    new-instance v1, Lcom/kingroot/common/ipc/ArgsPack;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, v2}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/agy;->a(ILcom/kingroot/common/ipc/ArgsPack;)V

    .line 114
    return-void
.end method

.method public a(Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;)V
    .locals 4

    .prologue
    .line 108
    const/4 v0, 0x4

    new-instance v1, Lcom/kingroot/common/ipc/ArgsPack;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, v2}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/agy;->a(ILcom/kingroot/common/ipc/ArgsPack;)V

    .line 109
    return-void
.end method

.method public a(Lcom/kingroot/kinguser/root/log/ILogsChangeListener;)V
    .locals 4

    .prologue
    .line 124
    const/16 v0, 0xe

    new-instance v1, Lcom/kingroot/common/ipc/ArgsPack;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, v2}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/agy;->a(ILcom/kingroot/common/ipc/ArgsPack;)V

    .line 125
    return-void
.end method

.method public a(Ljava/util/List;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;IJ)V"
        }
    .end annotation

    .prologue
    .line 83
    const/16 v0, 0xc

    new-instance v1, Lcom/kingroot/common/ipc/ArgsPack;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/agy;->a(ILcom/kingroot/common/ipc/ArgsPack;)V

    .line 84
    return-void
.end method

.method public ah(J)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    const/4 v0, 0x2

    new-instance v1, Lcom/kingroot/common/ipc/ArgsPack;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/agy;->b(ILcom/kingroot/common/ipc/ArgsPack;)Lcom/kingroot/common/ipc/IpcResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/common/ipc/IpcResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public ai(J)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/advance/model/SilentInstallLogInfo;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 88
    const/16 v0, 0x8

    new-instance v1, Lcom/kingroot/common/ipc/ArgsPack;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/agy;->b(ILcom/kingroot/common/ipc/ArgsPack;)Lcom/kingroot/common/ipc/IpcResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/common/ipc/IpcResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public b(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 78
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/kingroot/kinguser/agy;->a(Ljava/util/List;IJ)V

    .line 79
    return-void
.end method

.method public d(Ljava/lang/String;IJ)V
    .locals 5

    .prologue
    .line 74
    const/16 v0, 0xa

    new-instance v1, Lcom/kingroot/common/ipc/ArgsPack;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/agy;->a(ILcom/kingroot/common/ipc/ArgsPack;)V

    .line 75
    return-void
.end method

.method public fG(Ljava/lang/String;)Lcom/kingroot/kinguser/advance/model/SilentInstallPermInfo;
    .locals 4

    .prologue
    .line 93
    const/4 v0, 0x3

    new-instance v1, Lcom/kingroot/common/ipc/ArgsPack;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, v2}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/agy;->b(ILcom/kingroot/common/ipc/ArgsPack;)Lcom/kingroot/common/ipc/IpcResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/common/ipc/IpcResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/advance/model/SilentInstallPermInfo;

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
    .line 135
    const-class v0, Lcom/kingroot/kinguser/agy$a;

    return-object v0
.end method

.method public p(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 69
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/kingroot/kinguser/agy;->d(Ljava/lang/String;IJ)V

    .line 70
    return-void
.end method

.method public wl()V
    .locals 1

    .prologue
    .line 65
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/agy;->aX(I)V

    .line 66
    return-void
.end method
