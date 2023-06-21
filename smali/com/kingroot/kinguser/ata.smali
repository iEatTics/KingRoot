.class Lcom/kingroot/kinguser/ata;
.super Lcom/kingroot/kinguser/uo;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/ate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/ata$a;
    }
.end annotation


# static fields
.field private static final aNI:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/ata;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/kingroot/kinguser/ata$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/ata$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/ata;->aNI:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/kingroot/kinguser/uo;-><init>()V

    return-void
.end method

.method public static OO()Lcom/kingroot/kinguser/ata;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/kingroot/kinguser/ata;->aNI:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ata;

    return-object v0
.end method


# virtual methods
.method public OH()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/ata;->aY(I)Lcom/kingroot/common/ipc/IpcResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/common/ipc/IpcResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public OI()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/ata;->aY(I)Lcom/kingroot/common/ipc/IpcResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/common/ipc/IpcResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public OP()J
    .locals 2

    .prologue
    .line 114
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/ata;->aY(I)Lcom/kingroot/common/ipc/IpcResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/common/ipc/IpcResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public av(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 74
    const/4 v0, 0x3

    new-instance v1, Lcom/kingroot/common/ipc/ArgsPack;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-direct {v1, v2}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/ata;->a(ILcom/kingroot/common/ipc/ArgsPack;)V

    .line 75
    return-void
.end method

.method public aw(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 79
    const/4 v0, 0x4

    new-instance v1, Lcom/kingroot/common/ipc/ArgsPack;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-direct {v1, v2}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/ata;->a(ILcom/kingroot/common/ipc/ArgsPack;)V

    .line 80
    return-void
.end method

.method public bW(J)V
    .locals 5

    .prologue
    .line 109
    const/16 v0, 0xd

    new-instance v1, Lcom/kingroot/common/ipc/ArgsPack;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/ata;->a(ILcom/kingroot/common/ipc/ArgsPack;)V

    .line 110
    return-void
.end method

.method public d(Ljava/util/List;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 54
    new-instance v0, Lcom/kingroot/common/ipc/ArgsPack;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    invoke-direct {v0, v1}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p0, v3, v0}, Lcom/kingroot/kinguser/ata;->a(ILcom/kingroot/common/ipc/ArgsPack;)V

    .line 55
    return-void
.end method

.method public e(Ljava/util/List;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    .line 59
    new-instance v0, Lcom/kingroot/common/ipc/ArgsPack;

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-direct {v0, v1}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p0, v3, v0}, Lcom/kingroot/kinguser/ata;->a(ILcom/kingroot/common/ipc/ArgsPack;)V

    .line 60
    return-void
.end method

.method public iW(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 84
    const/4 v0, 0x7

    new-instance v1, Lcom/kingroot/common/ipc/ArgsPack;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, v2}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/ata;->a(ILcom/kingroot/common/ipc/ArgsPack;)V

    .line 85
    return-void
.end method

.method public iX(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 89
    const/16 v0, 0x8

    new-instance v1, Lcom/kingroot/common/ipc/ArgsPack;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, v2}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/ata;->a(ILcom/kingroot/common/ipc/ArgsPack;)V

    .line 90
    return-void
.end method

.method public iY(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    const/16 v0, 0x9

    new-instance v1, Lcom/kingroot/common/ipc/ArgsPack;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, v2}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/ata;->b(ILcom/kingroot/common/ipc/ArgsPack;)Lcom/kingroot/common/ipc/IpcResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/common/ipc/IpcResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public iZ(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 99
    const/16 v0, 0xa

    new-instance v1, Lcom/kingroot/common/ipc/ArgsPack;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, v2}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/ata;->a(ILcom/kingroot/common/ipc/ArgsPack;)V

    .line 100
    return-void
.end method

.method public ja(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 104
    const/16 v0, 0xb

    new-instance v1, Lcom/kingroot/common/ipc/ArgsPack;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, v2}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/ata;->b(ILcom/kingroot/common/ipc/ArgsPack;)Lcom/kingroot/common/ipc/IpcResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/common/ipc/IpcResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public jb(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 119
    const/16 v0, 0xc

    new-instance v1, Lcom/kingroot/common/ipc/ArgsPack;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, v2}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/ata;->a(ILcom/kingroot/common/ipc/ArgsPack;)V

    .line 120
    return-void
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
    .line 49
    const-class v0, Lcom/kingroot/kinguser/ata$a;

    return-object v0
.end method
