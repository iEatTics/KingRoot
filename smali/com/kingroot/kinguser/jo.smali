.class public final Lcom/kingroot/kinguser/jo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Ljava/lang/String;

    const-string v1, "414553"

    invoke-static {v1}, Lcom/kingroot/kinguser/mi;->bs(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/kingroot/kinguser/jo;->NAME:Ljava/lang/String;

    return-void
.end method

.method public static a([B[B)[B
    .locals 3

    .prologue
    .line 65
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v1, Lcom/kingroot/kinguser/jo;->NAME:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 66
    sget-object v1, Lcom/kingroot/kinguser/jo;->NAME:Ljava/lang/String;

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 67
    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 68
    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static b([B[B)[B
    .locals 3

    .prologue
    .line 79
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v1, Lcom/kingroot/kinguser/jo;->NAME:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 80
    sget-object v1, Lcom/kingroot/kinguser/jo;->NAME:Ljava/lang/String;

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 81
    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 82
    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static c([B)[B
    .locals 1

    .prologue
    .line 54
    invoke-static {p0}, Lcom/kingroot/kinguser/jn;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public static k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 29
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/jo;->c([B)[B

    move-result-object v0

    .line 30
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/jo;->a([B[B)[B

    move-result-object v0

    .line 31
    invoke-static {v0}, Lcom/kingroot/kinguser/mi;->r([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 41
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/jo;->c([B)[B

    move-result-object v0

    .line 42
    invoke-static {p1}, Lcom/kingroot/kinguser/mi;->bs(Ljava/lang/String;)[B

    move-result-object v1

    .line 43
    invoke-static {v0, v1}, Lcom/kingroot/kinguser/jo;->b([B[B)[B

    move-result-object v0

    .line 44
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method
