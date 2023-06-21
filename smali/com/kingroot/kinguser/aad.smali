.class Lcom/kingroot/kinguser/aad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/aaf;


# static fields
.field private static Xo:Lcom/kingroot/kinguser/aad;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-object v0, Lcom/kingroot/kinguser/aad;->Xo:Lcom/kingroot/kinguser/aad;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static pJ()Lcom/kingroot/kinguser/aad;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/kingroot/kinguser/aad;->Xo:Lcom/kingroot/kinguser/aad;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/kingroot/kinguser/aad;

    invoke-direct {v0}, Lcom/kingroot/kinguser/aad;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/aad;->Xo:Lcom/kingroot/kinguser/aad;

    .line 22
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/aad;->Xo:Lcom/kingroot/kinguser/aad;

    return-object v0
.end method


# virtual methods
.method public C([B)[B
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/kingroot/kinguser/aac;->encode([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public D([B)[B
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/kingroot/kinguser/aac;->decode([BI)[B

    move-result-object v0

    return-object v0
.end method
