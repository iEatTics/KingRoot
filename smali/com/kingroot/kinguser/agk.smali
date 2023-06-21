.class public Lcom/kingroot/kinguser/agk;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final PACKAGE_NAME:Ljava/lang/String;

.field public static final amQ:Ljava/lang/String;

.field public static final amR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/agk;->PACKAGE_NAME:Ljava/lang/String;

    .line 21
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/agk;->amQ:Ljava/lang/String;

    .line 27
    invoke-static {}, Lcom/kingroot/kinguser/agk;->qO()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "libbpm.arm64"

    :goto_0
    sput-object v0, Lcom/kingroot/kinguser/agk;->amR:Ljava/lang/String;

    return-void

    :cond_0
    const-string v0, "libbpm"

    goto :goto_0
.end method

.method public static qO()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 31
    const-string v1, "ro.product.cpu.abi"

    const-string v2, "arm"

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/ze;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "x86"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 41
    :cond_0
    :goto_0
    return v0

    .line 35
    :cond_1
    const-string v1, "ro.product.cpu.abilist64"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/ze;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 36
    const/4 v0, 0x1

    goto :goto_0

    .line 38
    :cond_2
    const-string v1, "ro.product.cpu.abilist32"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/ze;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    goto :goto_0
.end method
