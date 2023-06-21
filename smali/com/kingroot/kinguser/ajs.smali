.class public Lcom/kingroot/kinguser/ajs;
.super Lcom/kingroot/kinguser/uo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/ajs$a;
    }
.end annotation


# static fields
.field private static final sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/ajs;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/kingroot/kinguser/ajs$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/ajs$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/ajs;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/kingroot/kinguser/uo;-><init>()V

    .line 30
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/ajs$1;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/kingroot/kinguser/ajs;-><init>()V

    return-void
.end method

.method public static zx()Lcom/kingroot/kinguser/ajs;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/kingroot/kinguser/ajs;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ajs;

    return-object v0
.end method


# virtual methods
.method public aS(Z)V
    .locals 5

    .prologue
    .line 49
    const/4 v0, 0x4

    new-instance v1, Lcom/kingroot/common/ipc/ArgsPack;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/ajs;->a(ILcom/kingroot/common/ipc/ArgsPack;)V

    .line 50
    return-void
.end method

.method public b(Lcom/kingroot/kinguser/model/SuRequestCmdModel;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 34
    new-instance v0, Lcom/kingroot/common/ipc/ArgsPack;

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p0, v3, v0}, Lcom/kingroot/kinguser/ajs;->a(ILcom/kingroot/common/ipc/ArgsPack;)V

    .line 35
    return-void
.end method

.method public gy(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 39
    const/4 v0, 0x2

    new-instance v1, Lcom/kingroot/common/ipc/ArgsPack;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, v2}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/ajs;->a(ILcom/kingroot/common/ipc/ArgsPack;)V

    .line 40
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
    .line 65
    const-class v0, Lcom/kingroot/kinguser/ajs$a;

    return-object v0
.end method
