.class Lcom/kingroot/kinguser/cal;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/cam;


# static fields
.field private static bWw:Lcom/kingroot/kinguser/cal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-object v0, Lcom/kingroot/kinguser/cal;->bWw:Lcom/kingroot/kinguser/cal;

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

.method public static ako()Lcom/kingroot/kinguser/cal;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/kingroot/kinguser/cal;->bWw:Lcom/kingroot/kinguser/cal;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/kingroot/kinguser/cal;

    invoke-direct {v0}, Lcom/kingroot/kinguser/cal;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/cal;->bWw:Lcom/kingroot/kinguser/cal;

    .line 22
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/cal;->bWw:Lcom/kingroot/kinguser/cal;

    return-object v0
.end method


# virtual methods
.method public a([B)[B
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/kingroot/kinguser/cak;->i([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public al(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 32
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/cak;->h([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 42
    const/4 v1, 0x0

    .line 44
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/kingroot/kinguser/cak;->a(Ljava/lang/String;I)[B

    move-result-object v2

    const-string v3, "US-ASCII"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :goto_0
    return-object v0

    .line 45
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public b([B)[B
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/kingroot/kinguser/cak;->a([BI)[B

    move-result-object v0

    return-object v0
.end method
