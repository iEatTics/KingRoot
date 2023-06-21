.class public Lcom/kingroot/kinguser/blf;
.super Lcom/kingroot/kinguser/bkw;
.source "SourceFile"


# instance fields
.field private bzK:Lcom/kingroot/kinguser/rh;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/kingroot/kinguser/bkw;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/blf;->bzK:Lcom/kingroot/kinguser/rh;

    return-void
.end method


# virtual methods
.method public iv()Lcom/kingroot/kinguser/rh;
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method public iw()I
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x3

    return v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 21
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/blf;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/wa;->initCrashReport(Landroid/content/Context;Z)V

    .line 22
    invoke-virtual {p0}, Lcom/kingroot/kinguser/blf;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/wa;->W(Landroid/content/Context;)V

    .line 23
    invoke-virtual {p0}, Lcom/kingroot/kinguser/blf;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/wa;->startANRMonitor(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    :goto_0
    return-void

    .line 24
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onTerminate()V
    .locals 0

    .prologue
    .line 32
    return-void
.end method
