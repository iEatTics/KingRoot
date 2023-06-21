.class public Lcom/kingroot/kinguser/gamebox/foreground/GameBoxAddPage$1;
.super Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IOnWifiAutoDownloadListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/atj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/atj;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/atj;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxAddPage$1;->this$0:Lcom/kingroot/kinguser/atj;

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
    .line 86
    iget-object v0, p0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxAddPage$1;->this$0:Lcom/kingroot/kinguser/atj;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/atj;->ah(Ljava/util/List;)V

    .line 87
    return-void
.end method
