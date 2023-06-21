.class public Lcom/kingroot/kinguser/asq;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/asq$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/kingroot/kinguser/aiq;->arY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_AppInstallerHelper"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/asq;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;IJLcom/kingroot/kinguser/asq$a;)V
    .locals 6

    .prologue
    .line 30
    new-instance v0, Lcom/kingroot/kinguser/asq$1;

    move-object v1, p0

    move-object v2, p4

    move v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/kingroot/kinguser/asq$1;-><init>(Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;Lcom/kingroot/kinguser/asq$a;IJ)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wp;->execute(Ljava/lang/Runnable;)V

    .line 92
    return-void
.end method

.method public static a(Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;Lcom/kingroot/kinguser/asq$a;)V
    .locals 4

    .prologue
    .line 25
    const/16 v0, 0x14

    const-wide/16 v2, 0x7530

    invoke-static {p0, v0, v2, v3, p1}, Lcom/kingroot/kinguser/asq;->a(Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;IJLcom/kingroot/kinguser/asq$a;)V

    .line 26
    return-void
.end method
