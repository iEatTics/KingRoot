.class public Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$25;
.super Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppStatusListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/anu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/anu;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/anu;)V
    .locals 0

    .prologue
    .line 998
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$25;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppStatusListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onShowDot()V
    .locals 1

    .prologue
    .line 1023
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$25$3;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$25$3;-><init>(Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$25;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 1029
    return-void
.end method

.method public onShowDownloadCount(I)V
    .locals 1

    .prologue
    .line 1001
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$25$1;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$25$1;-><init>(Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$25;I)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 1008
    return-void
.end method

.method public onShowNormal()V
    .locals 1

    .prologue
    .line 1033
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$25$4;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$25$4;-><init>(Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$25;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 1039
    return-void
.end method

.method public onShowWaitDownloadCount(I)V
    .locals 1

    .prologue
    .line 1012
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$25$2;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$25$2;-><init>(Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketMainPage$25;I)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 1019
    return-void
.end method
