.class public Lcom/kingroot/kinguser/bhh;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/bhh$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 48
    new-instance v0, Lcom/kingroot/kinguser/bhh$a;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/bhh$a;-><init>(Lcom/kingroot/kinguser/bhh;)V

    .line 50
    :try_start_0
    const-string v1, "utf-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "ILOVESEANYULEI"

    .line 51
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 50
    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/bhh$a;->encrypt([B[B)[B

    move-result-object v0

    .line 52
    invoke-static {v0}, Lcom/kingroot/kinguser/bgo;->M([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 57
    :goto_0
    return-object v0

    .line 54
    :catch_0
    move-exception v0

    .line 57
    const-string v0, ""

    goto :goto_0
.end method
