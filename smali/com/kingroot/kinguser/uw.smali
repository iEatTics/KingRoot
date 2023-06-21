.class Lcom/kingroot/kinguser/uw;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/uw$a;,
        Lcom/kingroot/kinguser/uw$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final Jj:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final Jk:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static final Jl:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final Jm:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private Jn:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private Jo:Ljava/lang/annotation/Annotation;

.field private Jp:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/uw;->Jj:Ljava/util/Map;

    .line 30
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/uw;->Jk:Ljava/util/Map;

    .line 31
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/uw;->Jl:Ljava/util/Map;

    .line 32
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/uw;->Jm:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/uw$1;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/kingroot/kinguser/uw;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/uw;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/kingroot/kinguser/uw;->Jp:Ljava/lang/Class;

    return-object p1
.end method

.method static synthetic a(Lcom/kingroot/kinguser/uw;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/kingroot/kinguser/uw;->Jn:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic a(Lcom/kingroot/kinguser/uw;Ljava/lang/annotation/Annotation;)Ljava/lang/annotation/Annotation;
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/kingroot/kinguser/uw;->Jo:Ljava/lang/annotation/Annotation;

    return-object p1
.end method

.method static synthetic a(Lcom/kingroot/kinguser/uw;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/kingroot/kinguser/uw;->mMethod:Ljava/lang/reflect/Method;

    return-object p1
.end method

.method private b([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 47
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/kingroot/kinguser/uw;->Jn:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/kingroot/kinguser/uw;->mMethod:Ljava/lang/reflect/Method;

    .line 48
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/kingroot/kinguser/uw;->Jp:Ljava/lang/Class;

    .line 49
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 50
    invoke-static {v0, p1}, Lcom/kingroot/kinguser/yv;->a([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .line 51
    const/4 v0, 0x0

    .line 53
    iget-object v2, p0, Lcom/kingroot/kinguser/uw;->Jo:Ljava/lang/annotation/Annotation;

    instance-of v2, v2, Lcom/kingroot/kinguser/us;

    if-eqz v2, :cond_1

    .line 54
    invoke-static {}, Lcom/kingroot/kinguser/uq;->kH()Lcom/kingroot/kinguser/uq;

    move-result-object v2

    const-class v3, Lcom/kingroot/kinguser/uw$b;

    new-instance v4, Lcom/kingroot/common/ipc/ArgsPack;

    invoke-direct {v4, v1}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    invoke-virtual {v2, v3, v5, v4}, Lcom/kingroot/kinguser/uq;->a(Ljava/lang/Class;ILcom/kingroot/common/ipc/ArgsPack;)V

    .line 61
    :cond_0
    :goto_0
    return-object v0

    .line 56
    :cond_1
    iget-object v2, p0, Lcom/kingroot/kinguser/uw;->Jo:Ljava/lang/annotation/Annotation;

    instance-of v2, v2, Lcom/kingroot/kinguser/uu;

    if-eqz v2, :cond_0

    .line 57
    invoke-static {}, Lcom/kingroot/kinguser/uq;->kH()Lcom/kingroot/kinguser/uq;

    move-result-object v0

    const-class v2, Lcom/kingroot/kinguser/uw$b;

    new-instance v3, Lcom/kingroot/common/ipc/ArgsPack;

    invoke-direct {v3, v1}, Lcom/kingroot/common/ipc/ArgsPack;-><init>([Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v5, v3}, Lcom/kingroot/kinguser/uq;->b(Ljava/lang/Class;ILcom/kingroot/common/ipc/ArgsPack;)Lcom/kingroot/common/ipc/IpcResult;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lcom/kingroot/common/ipc/IpcResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic kO()Ljava/util/Map;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/kingroot/kinguser/uw;->Jj:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic kP()Ljava/util/Map;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/kingroot/kinguser/uw;->Jm:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic kQ()Ljava/util/Map;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/kingroot/kinguser/uw;->Jk:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic kR()Ljava/util/Map;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/kingroot/kinguser/uw;->Jl:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public varargs a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/uw;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
