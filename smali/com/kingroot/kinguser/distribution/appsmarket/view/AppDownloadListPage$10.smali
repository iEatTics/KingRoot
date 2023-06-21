.class public Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$10;
.super Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppStatusListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/anl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/anl;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/anl;)V
    .locals 0

    .prologue
    .line 508
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$10;->this$0:Lcom/kingroot/kinguser/anl;

    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppStatusListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onShowDot()V
    .locals 1

    .prologue
    .line 534
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$10$3;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$10$3;-><init>(Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$10;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 540
    return-void
.end method

.method public onShowDownloadCount(I)V
    .locals 1

    .prologue
    .line 511
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$10$1;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$10$1;-><init>(Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$10;I)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 519
    return-void
.end method

.method public onShowNormal()V
    .locals 1

    .prologue
    .line 544
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$10$4;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$10$4;-><init>(Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$10;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 550
    return-void
.end method

.method public onShowWaitDownloadCount(I)V
    .locals 1

    .prologue
    .line 523
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$10$2;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$10$2;-><init>(Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$10;I)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 530
    return-void
.end method
