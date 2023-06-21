.class public Lcom/kingroot/kinguser/aoq;
.super Lcom/kingroot/kinguser/aou;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/aoq$a;
    }
.end annotation


# static fields
.field private static final sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/aoq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/kingroot/kinguser/aoq$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/aoq$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/aoq;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/kingroot/kinguser/aou;-><init>()V

    .line 28
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/aoq$1;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/kingroot/kinguser/aoq;-><init>()V

    return-void
.end method

.method public static Ks()Lcom/kingroot/kinguser/aoq;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/kingroot/kinguser/aoq;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aoq;

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
    .line 32
    const-class v0, Lcom/kingroot/kinguser/aoq$a;

    return-object v0
.end method
