.class public Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$13;
.super Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppStatusListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/ank;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/ank;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/ank;)V
    .locals 0

    .prologue
    .line 802
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$13;->this$0:Lcom/kingroot/kinguser/ank;

    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppStatusListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onShowDot()V
    .locals 1

    .prologue
    .line 828
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$13$3;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$13$3;-><init>(Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$13;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 834
    return-void
.end method

.method public onShowDownloadCount(I)V
    .locals 1

    .prologue
    .line 805
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$13$1;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$13$1;-><init>(Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$13;I)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 813
    return-void
.end method

.method public onShowNormal()V
    .locals 1

    .prologue
    .line 838
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$13$4;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$13$4;-><init>(Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$13;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 844
    return-void
.end method

.method public onShowWaitDownloadCount(I)V
    .locals 1

    .prologue
    .line 817
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$13$2;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$13$2;-><init>(Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$13;I)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 824
    return-void
.end method
