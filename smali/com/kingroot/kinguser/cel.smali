.class public Lcom/kingroot/kinguser/cel;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final bOM:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/cel;->bOM:[C

    return-void
.end method

.method public static C([B)[B
    .locals 1

    .prologue
    .line 28
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 29
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 30
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 36
    :goto_0
    return-object v0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 36
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static Y([B)Ljava/lang/String;
    .locals 6

    .prologue
    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x3

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 45
    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-byte v3, p0, v0

    .line 46
    and-int/lit16 v3, v3, 0xff

    .line 47
    sget-object v4, Lcom/kingroot/kinguser/cel;->bOM:[C

    shr-int/lit8 v5, v3, 0x4

    aget-char v4, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    sget-object v4, Lcom/kingroot/kinguser/cel;->bOM:[C

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v4, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static Z([B)Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    invoke-static {p0}, Lcom/kingroot/kinguser/cel;->C([B)[B

    move-result-object v0

    .line 59
    invoke-static {v0}, Lcom/kingroot/kinguser/cel;->Y([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
