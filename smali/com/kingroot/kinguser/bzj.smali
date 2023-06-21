.class public Lcom/kingroot/kinguser/bzj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static bVE:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Thread;",
            "Lcom/kingroot/kinguser/cgd$c;",
            ">;"
        }
    .end annotation
.end field

.field private static bVF:Lcom/kingroot/kinguser/cgd$a;

.field private static bVG:Lcom/kingroot/kinguser/bzk$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bzj;->bVE:Ljava/util/HashMap;

    .line 42
    new-instance v0, Lcom/kingroot/kinguser/bzj$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bzj$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bzj;->bVG:Lcom/kingroot/kinguser/bzk$a;

    return-void
.end method

.method public static activeCount()I
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/kingroot/kinguser/bzj;->bVE:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method private static akj()V
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/kingroot/kinguser/bzj;->bVF:Lcom/kingroot/kinguser/cgd$a;

    if-nez v0, :cond_0

    .line 25
    invoke-static {}, Lcom/kingroot/kinguser/bzi;->akg()Lcom/kingroot/kinguser/cgd$a;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/bzj;->bVF:Lcom/kingroot/kinguser/cgd$a;

    .line 27
    :cond_0
    return-void
.end method

.method public static akk()Lcom/kingroot/kinguser/bzk$a;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/kingroot/kinguser/bzj;->bVG:Lcom/kingroot/kinguser/bzk$a;

    return-object v0
.end method

.method static synthetic akl()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/kingroot/kinguser/bzj;->bVE:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic akm()Lcom/kingroot/kinguser/cgd$a;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/kingroot/kinguser/bzj;->bVF:Lcom/kingroot/kinguser/cgd$a;

    return-object v0
.end method

.method public static e(Ljava/lang/String;IJ)Landroid/os/HandlerThread;
    .locals 2

    .prologue
    .line 30
    new-instance v0, Lcom/kingroot/kinguser/cgc;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/kingroot/kinguser/cgc;-><init>(Ljava/lang/String;IJ)V

    .line 31
    return-object v0
.end method

.method static synthetic jK()V
    .locals 0

    .prologue
    .line 17
    invoke-static {}, Lcom/kingroot/kinguser/bzj;->akj()V

    return-void
.end method
