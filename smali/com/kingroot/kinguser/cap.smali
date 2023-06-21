.class Lcom/kingroot/kinguser/cap;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static bWz:Lcom/kingroot/kinguser/cap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/kingroot/kinguser/cap;->bWz:Lcom/kingroot/kinguser/cap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static akr()Lcom/kingroot/kinguser/cap;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/kingroot/kinguser/cap;->bWz:Lcom/kingroot/kinguser/cap;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/kingroot/kinguser/cap;

    invoke-direct {v0}, Lcom/kingroot/kinguser/cap;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/cap;->bWz:Lcom/kingroot/kinguser/cap;

    .line 25
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/cap;->bWz:Lcom/kingroot/kinguser/cap;

    return-object v0
.end method
