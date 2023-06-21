.class public Lcom/kingroot/kinguser/page/MainPage$27;
.super Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppStatusListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/axm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/axm;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/axm;)V
    .locals 0

    .prologue
    .line 1495
    iput-object p1, p0, Lcom/kingroot/kinguser/page/MainPage$27;->this$0:Lcom/kingroot/kinguser/axm;

    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppStatusListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onShowDot()V
    .locals 1

    .prologue
    .line 1519
    new-instance v0, Lcom/kingroot/kinguser/page/MainPage$27$3;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/page/MainPage$27$3;-><init>(Lcom/kingroot/kinguser/page/MainPage$27;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 1525
    return-void
.end method

.method public onShowDownloadCount(I)V
    .locals 1

    .prologue
    .line 1498
    new-instance v0, Lcom/kingroot/kinguser/page/MainPage$27$1;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/page/MainPage$27$1;-><init>(Lcom/kingroot/kinguser/page/MainPage$27;I)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 1505
    return-void
.end method

.method public onShowNormal()V
    .locals 1

    .prologue
    .line 1529
    new-instance v0, Lcom/kingroot/kinguser/page/MainPage$27$4;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/page/MainPage$27$4;-><init>(Lcom/kingroot/kinguser/page/MainPage$27;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 1535
    return-void
.end method

.method public onShowWaitDownloadCount(I)V
    .locals 1

    .prologue
    .line 1509
    new-instance v0, Lcom/kingroot/kinguser/page/MainPage$27$2;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/page/MainPage$27$2;-><init>(Lcom/kingroot/kinguser/page/MainPage$27;I)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 1515
    return-void
.end method
