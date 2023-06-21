.class public Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$6;
.super Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;
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
    .line 435
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$6;->this$0:Lcom/kingroot/kinguser/anl;

    invoke-direct {p0}, Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onState(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 439
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$6$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$6$1;-><init>(Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$6;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 446
    return-void
.end method
