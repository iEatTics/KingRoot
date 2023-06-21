.class public Lcom/kingroot/kinguser/aki;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/aki$a;
    }
.end annotation


# static fields
.field private static final sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/aki;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private avo:Landroid/app/INotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/kingroot/kinguser/aki$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/aki$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/aki;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method private constructor <init>(Landroid/app/INotificationManager;)V
    .locals 4

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-class v0, Lcom/kingroot/kinguser/aki$a;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/app/INotificationManager;

    aput-object v3, v1, v2

    new-instance v2, Lcom/kingroot/kinguser/aki$a;

    invoke-direct {v2, p1}, Lcom/kingroot/kinguser/aki$a;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/INotificationManager;

    iput-object v0, p0, Lcom/kingroot/kinguser/aki;->avo:Landroid/app/INotificationManager;

    .line 49
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/INotificationManager;Lcom/kingroot/kinguser/aki$1;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/aki;-><init>(Landroid/app/INotificationManager;)V

    return-void
.end method

.method public static Ax()Lcom/kingroot/kinguser/aki;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/kingroot/kinguser/aki;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aki;

    return-object v0
.end method

.method private Ay()Landroid/app/INotificationManager;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/kingroot/kinguser/aki;->avo:Landroid/app/INotificationManager;

    return-object v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/aki;)Landroid/app/INotificationManager;
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/kingroot/kinguser/aki;->Ay()Landroid/app/INotificationManager;

    move-result-object v0

    return-object v0
.end method
