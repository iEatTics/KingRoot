.class public Lcom/kingroot/kinguser/bkd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static byW:Lcom/kingroot/kinguser/bkc;

.field private static final byX:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final byY:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 32
    sput-object v0, Lcom/kingroot/kinguser/bkd;->a:Landroid/content/Context;

    .line 37
    sput-object v0, Lcom/kingroot/kinguser/bkd;->byW:Lcom/kingroot/kinguser/bkc;

    .line 39
    sput-boolean v1, Lcom/kingroot/kinguser/bkd;->c:Z

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/kingroot/kinguser/bkd;->byX:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/kingroot/kinguser/bkd;->byY:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private static a()V
    .locals 2

    .prologue
    .line 72
    const-class v0, Lcom/kingroot/loader/sdk/service/IKlPackageManager;

    new-instance v1, Lcom/kingroot/kinguser/bkd$1;

    invoke-direct {v1}, Lcom/kingroot/kinguser/bkd$1;-><init>()V

    invoke-static {v0, v1}, Lcom/kingroot/loader/common/KlServiceManager;->registerService(Ljava/lang/Class;Lcom/kingroot/loader/common/KlServiceManager$a;)V

    .line 79
    const-class v0, Lcom/kingroot/loader/sdk/service/IKlApplicationManager;

    new-instance v1, Lcom/kingroot/kinguser/bkd$2;

    invoke-direct {v1}, Lcom/kingroot/kinguser/bkd$2;-><init>()V

    invoke-static {v0, v1}, Lcom/kingroot/loader/common/KlServiceManager;->registerService(Ljava/lang/Class;Lcom/kingroot/loader/common/KlServiceManager$a;)V

    .line 86
    const-class v0, Lcom/kingroot/loader/sdk/service/IKlConnectionManager;

    new-instance v1, Lcom/kingroot/kinguser/bkd$3;

    invoke-direct {v1}, Lcom/kingroot/kinguser/bkd$3;-><init>()V

    invoke-static {v0, v1}, Lcom/kingroot/loader/common/KlServiceManager;->registerService(Ljava/lang/Class;Lcom/kingroot/loader/common/KlServiceManager$a;)V

    .line 93
    const-class v0, Lcom/kingroot/loader/sdk/service/IKlFragmentManager;

    new-instance v1, Lcom/kingroot/kinguser/bkd$4;

    invoke-direct {v1}, Lcom/kingroot/kinguser/bkd$4;-><init>()V

    invoke-static {v0, v1}, Lcom/kingroot/loader/common/KlServiceManager;->registerService(Ljava/lang/Class;Lcom/kingroot/loader/common/KlServiceManager$a;)V

    .line 100
    const-class v0, Lcom/kingroot/loader/sdk/service/IKlNotificationManager;

    new-instance v1, Lcom/kingroot/kinguser/bkd$5;

    invoke-direct {v1}, Lcom/kingroot/kinguser/bkd$5;-><init>()V

    invoke-static {v0, v1}, Lcom/kingroot/loader/common/KlServiceManager;->registerService(Ljava/lang/Class;Lcom/kingroot/loader/common/KlServiceManager$a;)V

    .line 109
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/kingroot/kinguser/bkc;)V
    .locals 1

    .prologue
    .line 60
    const-string v0, "KlSdk init"

    invoke-static {v0}, Lcom/kingroot/kinguser/bkq;->i(Ljava/lang/String;)V

    .line 61
    sput-object p0, Lcom/kingroot/kinguser/bkd;->a:Landroid/content/Context;

    .line 62
    sput-object p1, Lcom/kingroot/kinguser/bkd;->byW:Lcom/kingroot/kinguser/bkc;

    .line 64
    invoke-static {}, Lcom/kingroot/kinguser/bkd;->a()V

    .line 67
    invoke-static {}, Lcom/kingroot/kinguser/bkd;->isCoreProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/kingroot/loader/sdk/service/IKlPackageManager;

    invoke-static {v0}, Lcom/kingroot/loader/common/KlServiceManager;->getKService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 68
    :cond_0
    return-void
.end method

.method public static aeF()Z
    .locals 1

    .prologue
    .line 56
    sget-boolean v0, Lcom/kingroot/kinguser/bkd;->c:Z

    return v0
.end method

.method public static aeG()Landroid/content/Context;
    .locals 2

    .prologue
    .line 128
    sget-object v0, Lcom/kingroot/kinguser/bkd;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 129
    const-string v0, "Must set host application context first!"

    invoke-static {v0}, Lcom/kingroot/kinguser/bkq;->e(Ljava/lang/String;)V

    .line 130
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Must set host application context first!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/bkd;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static aeH()Lcom/kingroot/kinguser/bkc;
    .locals 1

    .prologue
    .line 137
    sget-object v0, Lcom/kingroot/kinguser/bkd;->byW:Lcom/kingroot/kinguser/bkc;

    return-object v0
.end method

.method public static el(Z)V
    .locals 0

    .prologue
    .line 52
    sput-boolean p0, Lcom/kingroot/kinguser/bkd;->c:Z

    .line 53
    return-void
.end method

.method public static em(Z)V
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/kingroot/kinguser/bkd;->byX:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 113
    return-void
.end method

.method public static en(Z)V
    .locals 1

    .prologue
    .line 120
    sget-object v0, Lcom/kingroot/kinguser/bkd;->byY:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 121
    return-void
.end method

.method public static isCoreProcess()Z
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lcom/kingroot/kinguser/bkd;->byX:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public static vt()Landroid/app/Activity;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 143
    invoke-static {}, Lcom/kingroot/kinguser/bjz;->aeC()Landroid/app/Activity;

    move-result-object v0

    .line 144
    if-eqz v0, :cond_0

    .line 147
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/bkd;->byW:Lcom/kingroot/kinguser/bkc;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/bkd;->byW:Lcom/kingroot/kinguser/bkc;

    invoke-interface {v0}, Lcom/kingroot/kinguser/bkc;->US()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0
.end method
