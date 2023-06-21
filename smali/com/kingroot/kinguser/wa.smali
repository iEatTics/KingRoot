.class public Lcom/kingroot/kinguser/wa;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static W(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/kingroot/kinguser/wa;->a(Landroid/content/Context;[Ljava/io/File;)V

    .line 87
    return-void
.end method

.method public static a(Landroid/content/Context;[Ljava/io/File;)V
    .locals 1
    .param p1    # [Ljava/io/File;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 99
    new-instance v0, Lcom/kingroot/kinguser/wa$1;

    invoke-direct {v0, p1, p0}, Lcom/kingroot/kinguser/wa$1;-><init>([Ljava/io/File;Landroid/content/Context;)V

    .line 135
    invoke-virtual {v0}, Lcom/kingroot/kinguser/wa$1;->ny()Z

    .line 137
    return-void
.end method

.method public static initCrashReport(Landroid/content/Context;Z)V
    .locals 1

    .prologue
    .line 51
    invoke-static {p0, p1}, Lcom/tencent/feedback/eup/CrashReport;->initCrashReport(Landroid/content/Context;Z)V

    .line 52
    invoke-static {}, Lcom/kingroot/kinguser/wa;->mZ()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tencent/feedback/eup/CrashReport;->setProductVersion(Landroid/content/Context;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method private static mZ()Ljava/lang/String;
    .locals 3

    .prologue
    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/kingroot/common/app/KApplication;->dG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 145
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ij()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 146
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->hZ()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v0, ""

    .line 147
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->in()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    return-object v0

    .line 147
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/kingroot/common/app/KApplication;->in()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static startANRMonitor(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 155
    invoke-static {p0}, Lcom/tencent/feedback/anr/ANRReport;->startANRMonitor(Landroid/content/Context;)V

    .line 156
    return-void
.end method
