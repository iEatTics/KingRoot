.class public Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$29;
.super Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppStatusListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/atm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/atm;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/atm;)V
    .locals 0

    .prologue
    .line 1395
    iput-object p1, p0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$29;->this$0:Lcom/kingroot/kinguser/atm;

    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppStatusListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onShowDot()V
    .locals 1

    .prologue
    .line 1420
    new-instance v0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$29$3;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$29$3;-><init>(Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$29;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 1426
    return-void
.end method

.method public onShowDownloadCount(I)V
    .locals 1

    .prologue
    .line 1398
    new-instance v0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$29$1;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$29$1;-><init>(Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$29;I)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 1405
    return-void
.end method

.method public onShowNormal()V
    .locals 1

    .prologue
    .line 1430
    new-instance v0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$29$4;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$29$4;-><init>(Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$29;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 1436
    return-void
.end method

.method public onShowWaitDownloadCount(I)V
    .locals 1

    .prologue
    .line 1409
    new-instance v0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$29$2;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$29$2;-><init>(Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainPage$29;I)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 1416
    return-void
.end method
