.class Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$10$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$10;->onShowNormal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aBK:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$10;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$10;)V
    .locals 0

    .prologue
    .line 544
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$10$4;->aBK:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 547
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$10$4;->aBK:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$10;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$10;->this$0:Lcom/kingroot/kinguser/anl;

    invoke-static {v0}, Lcom/kingroot/kinguser/anl;->c(Lcom/kingroot/kinguser/anl;)Lcom/kingroot/kinguser/ano;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ano;->Jo()Lcom/kingroot/kinguser/anx;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/anx;->fK(I)V

    .line 548
    return-void
.end method
