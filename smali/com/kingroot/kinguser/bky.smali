.class public Lcom/kingroot/kinguser/bky;
.super Lcom/kingroot/kinguser/bkw;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/kingroot/kinguser/bkw;-><init>()V

    return-void
.end method


# virtual methods
.method public iv()Lcom/kingroot/kinguser/rh;
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public iw()I
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 25
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bky;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/wa;->initCrashReport(Landroid/content/Context;Z)V

    .line 26
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bky;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/wa;->W(Landroid/content/Context;)V

    .line 27
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bky;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/wa;->startANRMonitor(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :goto_0
    return-void

    .line 28
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onTerminate()V
    .locals 0

    .prologue
    .line 36
    return-void
.end method
