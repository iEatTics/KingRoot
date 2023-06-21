.class public Lcom/kingroot/kinguser/abr;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/abr$a;
    }
.end annotation


# static fields
.field private static final sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/abr;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ZH:Lcom/kingroot/kinguser/wo;

.field private ZI:Lcom/kingroot/kinguser/wo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/kingroot/kinguser/abr$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/abr$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/abr;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/kingroot/kinguser/abr$2;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/abr$2;-><init>(Lcom/kingroot/kinguser/abr;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/abr;->ZH:Lcom/kingroot/kinguser/wo;

    .line 49
    new-instance v0, Lcom/kingroot/kinguser/abr$3;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/abr$3;-><init>(Lcom/kingroot/kinguser/abr;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/abr;->ZI:Lcom/kingroot/kinguser/wo;

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/abr;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/kingroot/kinguser/abr;->rn()V

    return-void
.end method

.method private static ai(Z)V
    .locals 1

    .prologue
    .line 89
    invoke-static {}, Lcom/kingroot/kinguser/abq;->qY()Lcom/kingroot/kinguser/abq;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/kingroot/kinguser/abq;->ag(Z)V

    .line 90
    return-void
.end method

.method static synthetic al(Z)V
    .locals 0

    .prologue
    .line 19
    invoke-static {p0}, Lcom/kingroot/kinguser/abr;->ai(Z)V

    return-void
.end method

.method static synthetic b(Lcom/kingroot/kinguser/abr;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/kingroot/kinguser/abr;->ro()V

    return-void
.end method

.method public static rk()Lcom/kingroot/kinguser/abr;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/kingroot/kinguser/abr;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/abr;

    return-object v0
.end method

.method private static rm()V
    .locals 1

    .prologue
    .line 94
    invoke-static {}, Lcom/kingroot/kinguser/abq;->qY()Lcom/kingroot/kinguser/abq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/abq;->ra()V

    .line 95
    return-void
.end method

.method private rn()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 125
    const-class v0, Lcom/kingroot/kinguser/abr$a;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "android.intent.action.SCREEN_OFF"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "android.intent.action.SCREEN_ON"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "android.intent.action.USER_PRESENT"

    aput-object v3, v1, v2

    invoke-static {v4, v0, v1}, Lcom/kingroot/kinguser/tf;->a(ILjava/lang/Class;[Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method private ro()V
    .locals 1

    .prologue
    .line 134
    const-class v0, Lcom/kingroot/kinguser/abr$a;

    invoke-static {v0}, Lcom/kingroot/kinguser/tf;->b(Ljava/lang/Class;)V

    .line 135
    return-void
.end method

.method static synthetic rp()V
    .locals 0

    .prologue
    .line 19
    invoke-static {}, Lcom/kingroot/kinguser/abr;->rm()V

    return-void
.end method


# virtual methods
.method public aj(Z)V
    .locals 1

    .prologue
    .line 99
    invoke-static {}, Lcom/kingroot/kinguser/abq;->qY()Lcom/kingroot/kinguser/abq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/abq;->af(Z)V

    .line 100
    return-void
.end method

.method public ak(Z)V
    .locals 2

    .prologue
    .line 107
    if-eqz p1, :cond_1

    .line 109
    invoke-static {}, Lcom/kingroot/kinguser/abq;->qY()Lcom/kingroot/kinguser/abq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/abq;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-static {}, Lcom/kingroot/kinguser/abq;->qY()Lcom/kingroot/kinguser/abq;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/abq;->setEnable(Z)V

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/abp;->qW()Lcom/kingroot/kinguser/abp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/abp;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-static {}, Lcom/kingroot/kinguser/abq;->qY()Lcom/kingroot/kinguser/abq;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/abq;->setEnable(Z)V

    .line 117
    invoke-static {}, Lcom/kingroot/kinguser/abq;->qY()Lcom/kingroot/kinguser/abq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/abq;->qZ()V

    goto :goto_0
.end method

.method public rl()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/kingroot/kinguser/abr;->ZH:Lcom/kingroot/kinguser/wo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/wo;->X(Z)Z

    .line 78
    return-void
.end method
