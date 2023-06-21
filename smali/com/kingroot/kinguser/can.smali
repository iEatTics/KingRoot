.class Lcom/kingroot/kinguser/can;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static bWx:Lcom/kingroot/kinguser/can;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/kingroot/kinguser/can;->bWx:Lcom/kingroot/kinguser/can;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static akp()Lcom/kingroot/kinguser/can;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/kingroot/kinguser/can;->bWx:Lcom/kingroot/kinguser/can;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/kingroot/kinguser/can;

    invoke-direct {v0}, Lcom/kingroot/kinguser/can;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/can;->bWx:Lcom/kingroot/kinguser/can;

    .line 28
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/can;->bWx:Lcom/kingroot/kinguser/can;

    return-object v0
.end method
