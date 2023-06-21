.class public Lcom/kingroot/kinguser/aso;
.super Lcom/kingroot/kinguser/uo;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/asy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/aso$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static axU:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/aso;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/kingroot/kinguser/aiq;->arY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_ApkInstaller"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/aso;->TAG:Ljava/lang/String;

    .line 40
    new-instance v0, Lcom/kingroot/kinguser/aso$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/aso$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/aso;->axU:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/kingroot/kinguser/uo;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/aso$1;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/kingroot/kinguser/aso;-><init>()V

    return-void
.end method

.method public static Ol()Lcom/kingroot/kinguser/aso;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/kingroot/kinguser/aso;->axU:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aso;

    return-object v0
.end method


# virtual methods
.method public GT()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 185
    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/aso;->aY(I)Lcom/kingroot/common/ipc/IpcResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/common/ipc/IpcResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public GU()Z
    .locals 1

    .prologue
    .line 190
    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/aso;->aY(I)Lcom/kingroot/common/ipc/IpcResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/common/ipc/IpcResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 191
    if-nez v0, :cond_0

    .line 192
    const/4 v0, 0x0

    .line 194
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public a(Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;)V
    .locals 5
    .param p1    # Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 127
    const/16 v1, 0x11

    new-instance v2, Lcom/kingroot/common/ipc/ArgsPack;

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, v3, v0

    const/4 v4, 0x1

    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 128
    :goto_0
    aput-object v0, v3, v4

    invoke-direct {v2, v3}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    .line 127
    invoke-virtual {p0, v1, v2}, Lcom/kingroot/kinguser/aso;->a(ILcom/kingroot/common/ipc/ArgsPack;)V

    .line 129
    return-void

    .line 128
    :cond_0
    invoke-interface {p2}, Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/kingroot/kinguser/gamebox/common/IAppChangedListener;)V
    .locals 4

    .prologue
    .line 159
    const/4 v0, 0x5

    new-instance v1, Lcom/kingroot/common/ipc/ArgsPack;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, v2}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/aso;->a(ILcom/kingroot/common/ipc/ArgsPack;)V

    .line 160
    return-void
.end method

.method public a(Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;)V
    .locals 4

    .prologue
    .line 138
    const/16 v0, 0x12

    new-instance v1, Lcom/kingroot/common/ipc/ArgsPack;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, v2}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/aso;->a(ILcom/kingroot/common/ipc/ArgsPack;)V

    .line 139
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener;)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 133
    new-instance v0, Lcom/kingroot/common/ipc/ArgsPack;

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-direct {v0, v1}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p0, v3, v0}, Lcom/kingroot/kinguser/aso;->a(ILcom/kingroot/common/ipc/ArgsPack;)V

    .line 134
    return-void
.end method

.method public b(Lcom/kingroot/kinguser/gamebox/common/IAppChangedListener;)V
    .locals 4

    .prologue
    .line 165
    const/16 v0, 0x13

    new-instance v1, Lcom/kingroot/common/ipc/ArgsPack;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, v2}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/aso;->a(ILcom/kingroot/common/ipc/ArgsPack;)V

    .line 166
    return-void
.end method

.method public iA(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 175
    const/16 v0, 0x15

    new-instance v1, Lcom/kingroot/common/ipc/ArgsPack;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, v2}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/aso;->a(ILcom/kingroot/common/ipc/ArgsPack;)V

    .line 176
    return-void
.end method

.method public iB(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 180
    const/16 v0, 0x16

    new-instance v1, Lcom/kingroot/common/ipc/ArgsPack;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, v2}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/aso;->a(ILcom/kingroot/common/ipc/ArgsPack;)V

    .line 181
    return-void
.end method

.method public ix(Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 148
    const/16 v0, 0x10

    new-instance v1, Lcom/kingroot/common/ipc/ArgsPack;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, v2}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/aso;->b(ILcom/kingroot/common/ipc/ArgsPack;)Lcom/kingroot/common/ipc/IpcResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/common/ipc/IpcResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public iy(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 153
    const/4 v0, 0x3

    new-instance v1, Lcom/kingroot/common/ipc/ArgsPack;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, v2}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/aso;->a(ILcom/kingroot/common/ipc/ArgsPack;)V

    .line 154
    return-void
.end method

.method public iz(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 170
    const/16 v0, 0x14

    new-instance v1, Lcom/kingroot/common/ipc/ArgsPack;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, v2}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/aso;->a(ILcom/kingroot/common/ipc/ArgsPack;)V

    .line 171
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
    .line 121
    const-class v0, Lcom/kingroot/kinguser/aso$a;

    return-object v0
.end method
