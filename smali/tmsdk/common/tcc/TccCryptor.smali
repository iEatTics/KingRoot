.class public Ltmsdk/common/tcc/TccCryptor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static cen:Lcom/kingroot/kinguser/cgj;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    const/4 v0, 0x0

    :try_start_0
    const-class v1, Ltmsdk/common/tcc/TccCryptor;

    invoke-static {v0, v1}, Ltmsdk/common/TMSDKContext;->a(ILjava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    :goto_0
    const/4 v0, 0x0

    sput-object v0, Ltmsdk/common/tcc/TccCryptor;->cen:Lcom/kingroot/kinguser/cgj;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/kingroot/kinguser/cgj;)V
    .locals 0

    .prologue
    .line 24
    sput-object p0, Ltmsdk/common/tcc/TccCryptor;->cen:Lcom/kingroot/kinguser/cgj;

    .line 25
    return-void
.end method

.method public static a(Landroid/content/Context;[B[B)[B
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 163
    invoke-static {p1, p2}, Ltmsdk/common/tcc/TccCryptor;->f([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static native decrypt([B[B)[B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static native encrypt([B[B)[B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static f([B[B)[B
    .locals 1

    .prologue
    .line 64
    sget-object v0, Ltmsdk/common/tcc/TccCryptor;->cen:Lcom/kingroot/kinguser/cgj;

    if-eqz v0, :cond_0

    .line 65
    sget-object v0, Ltmsdk/common/tcc/TccCryptor;->cen:Lcom/kingroot/kinguser/cgj;

    invoke-interface {v0, p0, p1}, Lcom/kingroot/kinguser/cgj;->encrypt([B[B)[B

    move-result-object v0

    .line 67
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Ltmsdk/common/tcc/TccCryptor;->encrypt([B[B)[B

    move-result-object v0

    goto :goto_0
.end method

.method public static g([B[B)[B
    .locals 1

    .prologue
    .line 83
    sget-object v0, Ltmsdk/common/tcc/TccCryptor;->cen:Lcom/kingroot/kinguser/cgj;

    if-eqz v0, :cond_0

    .line 84
    sget-object v0, Ltmsdk/common/tcc/TccCryptor;->cen:Lcom/kingroot/kinguser/cgj;

    invoke-interface {v0, p0, p1}, Lcom/kingroot/kinguser/cgj;->decrypt([B[B)[B

    move-result-object v0

    .line 86
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Ltmsdk/common/tcc/TccCryptor;->decrypt([B[B)[B

    move-result-object v0

    goto :goto_0
.end method
