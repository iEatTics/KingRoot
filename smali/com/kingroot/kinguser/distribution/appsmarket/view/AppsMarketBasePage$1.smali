.class public Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketBasePage$1;
.super Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IOnWifiAutoDownloadListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/ans;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/ans;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/ans;)V
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketBasePage$1;->this$0:Lcom/kingroot/kinguser/ans;

    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IOnWifiAutoDownloadListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onTriggerWifiAutoDownload(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketBasePage$1;->this$0:Lcom/kingroot/kinguser/ans;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/ans;->ah(Ljava/util/List;)V

    .line 21
    return-void
.end method
