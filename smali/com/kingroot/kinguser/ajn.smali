.class public Lcom/kingroot/kinguser/ajn;
.super Lcom/kingroot/kinguser/uo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/ajn$a;
    }
.end annotation


# static fields
.field private static final sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/ajn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/kingroot/kinguser/ajn$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/ajn$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/ajn;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/kingroot/kinguser/uo;-><init>()V

    .line 37
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/ajn$1;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/kingroot/kinguser/ajn;-><init>()V

    return-void
.end method

.method public static zp()Lcom/kingroot/kinguser/ajn;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/kingroot/kinguser/ajn;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ajn;

    return-object v0
.end method


# virtual methods
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
    .line 58
    const-class v0, Lcom/kingroot/kinguser/ajn$a;

    return-object v0
.end method

.method public zq()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/ajn;->aX(I)V

    .line 47
    return-void
.end method
