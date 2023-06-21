.class Lcom/kingroot/kinguser/aai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/aag;


# static fields
.field private static final NAME:Ljava/lang/String;

.field private static Xy:Lcom/kingroot/kinguser/aai;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "a1"

    invoke-static {v0}, Lcom/kingroot/kinguser/zq;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/aai;->NAME:Ljava/lang/String;

    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/kingroot/kinguser/aai;->Xy:Lcom/kingroot/kinguser/aai;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static G([B)[B
    .locals 1

    .prologue
    .line 101
    invoke-static {p0}, Lcom/kingroot/kinguser/aah;->E([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method static pK()Lcom/kingroot/kinguser/aai;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/kingroot/kinguser/aai;->Xy:Lcom/kingroot/kinguser/aai;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/kingroot/kinguser/aai;

    invoke-direct {v0}, Lcom/kingroot/kinguser/aai;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/aai;->Xy:Lcom/kingroot/kinguser/aai;

    .line 29
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/aai;->Xy:Lcom/kingroot/kinguser/aai;

    return-object v0
.end method


# virtual methods
.method public N(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 41
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/aai;->G([B)[B

    move-result-object v0

    .line 42
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/aai;->encrypt([B[B)[B

    move-result-object v0

    .line 43
    invoke-static {v0}, Lcom/kingroot/kinguser/aab;->w([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public O(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 55
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/aai;->G([B)[B

    move-result-object v0

    .line 56
    invoke-static {p2}, Lcom/kingroot/kinguser/aab;->dJ(Ljava/lang/String;)[B

    move-result-object v1

    .line 57
    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/aai;->decrypt([B[B)[B

    move-result-object v0

    .line 58
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method

.method public decrypt([B[B)[B
    .locals 3

    .prologue
    .line 87
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v1, Lcom/kingroot/kinguser/aai;->NAME:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 88
    sget-object v1, Lcom/kingroot/kinguser/aai;->NAME:Ljava/lang/String;

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 89
    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 90
    invoke-virtual {v1, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 91
    return-object v0
.end method

.method public encrypt([B[B)[B
    .locals 3

    .prologue
    .line 71
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v1, Lcom/kingroot/kinguser/aai;->NAME:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 72
    sget-object v1, Lcom/kingroot/kinguser/aai;->NAME:Ljava/lang/String;

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 73
    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 74
    invoke-virtual {v1, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 75
    return-object v0
.end method
