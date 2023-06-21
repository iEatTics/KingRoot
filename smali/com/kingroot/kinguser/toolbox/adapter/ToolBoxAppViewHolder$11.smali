.class public Lcom/kingroot/kinguser/toolbox/adapter/ToolBoxAppViewHolder$11;
.super Lcom/kingroot/kinguser/distribution/net/download/NetworkChangedRemoteListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bfd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/bfd;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/bfd;)V
    .locals 0

    .prologue
    .line 446
    iput-object p1, p0, Lcom/kingroot/kinguser/toolbox/adapter/ToolBoxAppViewHolder$11;->this$0:Lcom/kingroot/kinguser/bfd;

    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/net/download/NetworkChangedRemoteListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onTurnIntoMobileNetwork()V
    .locals 2

    .prologue
    .line 449
    invoke-static {}, Lcom/kingroot/kinguser/aoq;->Ks()Lcom/kingroot/kinguser/aoq;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/toolbox/adapter/ToolBoxAppViewHolder$11;->this$0:Lcom/kingroot/kinguser/bfd;

    invoke-static {v1}, Lcom/kingroot/kinguser/bfd;->a(Lcom/kingroot/kinguser/bfd;)Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aoq;->hM(Ljava/lang/String;)Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->KJ()Lcom/kingroot/kinguser/boq;

    move-result-object v0

    .line 451
    sget-object v1, Lcom/kingroot/kinguser/boq;->bFC:Lcom/kingroot/kinguser/boq;

    if-ne v0, v1, :cond_0

    .line 452
    invoke-static {}, Lcom/kingroot/kinguser/aoq;->Ks()Lcom/kingroot/kinguser/aoq;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/toolbox/adapter/ToolBoxAppViewHolder$11;->this$0:Lcom/kingroot/kinguser/bfd;

    invoke-static {v1}, Lcom/kingroot/kinguser/bfd;->a(Lcom/kingroot/kinguser/bfd;)Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/base/RecommendAppSimpleInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aoq;->hK(Ljava/lang/String;)V

    .line 453
    iget-object v0, p0, Lcom/kingroot/kinguser/toolbox/adapter/ToolBoxAppViewHolder$11;->this$0:Lcom/kingroot/kinguser/bfd;

    const/16 v1, 0xb

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bfd;->b(Lcom/kingroot/kinguser/bfd;I)V

    .line 455
    :cond_0
    return-void
.end method
