.class final Lcom/kingroot/kinguser/asq$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/asq;->a(Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;IJLcom/kingroot/kinguser/asq$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic aNk:Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;

.field final synthetic aNm:Lcom/kingroot/kinguser/asq$a;

.field final synthetic aNn:I

.field final synthetic aNo:J


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;Lcom/kingroot/kinguser/asq$a;IJ)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/kingroot/kinguser/asq$1;->aNk:Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;

    iput-object p2, p0, Lcom/kingroot/kinguser/asq$1;->aNm:Lcom/kingroot/kinguser/asq$a;

    iput p3, p0, Lcom/kingroot/kinguser/asq$1;->aNn:I

    iput-wide p4, p0, Lcom/kingroot/kinguser/asq$1;->aNo:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 34
    iget-object v2, p0, Lcom/kingroot/kinguser/asq$1;->aNk:Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;

    iget-object v2, v2, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->pkgName:Ljava/lang/String;

    .line 35
    iget-object v3, p0, Lcom/kingroot/kinguser/asq$1;->aNk:Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;

    iget-boolean v3, v3, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->isUpdate:Z

    if-eqz v3, :cond_0

    .line 36
    iget-object v3, p0, Lcom/kingroot/kinguser/asq$1;->aNk:Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;

    iget v3, v3, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->versionCode:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 37
    iget-object v3, p0, Lcom/kingroot/kinguser/asq$1;->aNm:Lcom/kingroot/kinguser/asq$a;

    if-eqz v3, :cond_0

    .line 40
    iget-object v3, p0, Lcom/kingroot/kinguser/asq$1;->aNm:Lcom/kingroot/kinguser/asq$a;

    invoke-interface {v3, v0}, Lcom/kingroot/kinguser/asq$a;->ad(Z)V

    .line 45
    :cond_0
    iget v3, p0, Lcom/kingroot/kinguser/asq$1;->aNn:I

    if-nez v3, :cond_1

    .line 46
    iget-object v3, p0, Lcom/kingroot/kinguser/asq$1;->aNm:Lcom/kingroot/kinguser/asq$a;

    if-eqz v3, :cond_1

    .line 49
    iget-object v3, p0, Lcom/kingroot/kinguser/asq$1;->aNm:Lcom/kingroot/kinguser/asq$a;

    invoke-interface {v3, v0}, Lcom/kingroot/kinguser/asq$a;->ad(Z)V

    .line 55
    :cond_1
    iget-object v3, p0, Lcom/kingroot/kinguser/asq$1;->aNk:Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;

    iget-boolean v3, v3, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->isUpdate:Z

    if-eqz v3, :cond_4

    .line 57
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/kingroot/kinguser/zh;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 58
    if-eqz v2, :cond_2

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    iget-object v3, p0, Lcom/kingroot/kinguser/asq$1;->aNk:Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;

    iget v3, v3, Lcom/kingroot/kinguser/gamebox/common/ApkInstallRequest;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, v3, :cond_2

    move v0, v1

    .line 74
    :cond_2
    :goto_0
    if-eqz v0, :cond_5

    .line 75
    iget-object v0, p0, Lcom/kingroot/kinguser/asq$1;->aNm:Lcom/kingroot/kinguser/asq$a;

    if-eqz v0, :cond_3

    .line 76
    iget-object v0, p0, Lcom/kingroot/kinguser/asq$1;->aNm:Lcom/kingroot/kinguser/asq$a;

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/asq$a;->ad(Z)V

    .line 90
    :cond_3
    :goto_1
    return-void

    .line 67
    :cond_4
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v0

    .line 68
    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/zh;->du(Ljava/lang/String;)Z

    move-result v0

    .line 69
    if-eqz v0, :cond_2

    goto :goto_0

    .line 80
    :cond_5
    new-instance v0, Lcom/kingroot/kinguser/asq$1$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/asq$1$1;-><init>(Lcom/kingroot/kinguser/asq$1;)V

    iget-wide v2, p0, Lcom/kingroot/kinguser/asq$1;->aNo:J

    invoke-static {v0, v2, v3}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;J)V

    goto :goto_1

    .line 63
    :catch_0
    move-exception v2

    goto :goto_0
.end method
