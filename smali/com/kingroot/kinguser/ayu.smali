.class public Lcom/kingroot/kinguser/ayu;
.super Lcom/kingroot/kinguser/aou;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/ayu$a;,
        Lcom/kingroot/kinguser/ayu$b;
    }
.end annotation


# static fields
.field private static bdf:Lcom/kingroot/kinguser/bed;

.field private static final sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/ayu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 35
    new-instance v0, Lcom/kingroot/kinguser/ayu$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/ayu$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/ayu;->sInstance:Lcom/kingroot/kinguser/cce;

    .line 122
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->bll:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v3, 0x1

    new-instance v4, Lcom/kingroot/kinguser/ayu$2;

    invoke-direct {v4}, Lcom/kingroot/kinguser/ayu$2;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    sput-object v0, Lcom/kingroot/kinguser/ayu;->bdf:Lcom/kingroot/kinguser/bed;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/kingroot/kinguser/aou;-><init>()V

    .line 47
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/ayu$1;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/kingroot/kinguser/ayu;-><init>()V

    return-void
.end method

.method public static Vh()Lcom/kingroot/kinguser/ayu;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/kingroot/kinguser/ayu;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ayu;

    return-object v0
.end method

.method static synthetic Vi()Lcom/kingroot/kinguser/bed;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/kingroot/kinguser/ayu;->bdf:Lcom/kingroot/kinguser/bed;

    return-object v0
.end method


# virtual methods
.method public IK()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/kingroot/kinguser/aov;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    const-class v0, Lcom/kingroot/kinguser/ayu$b;

    return-object v0
.end method
