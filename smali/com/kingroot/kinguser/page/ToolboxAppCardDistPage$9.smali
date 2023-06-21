.class public Lcom/kingroot/kinguser/page/ToolboxAppCardDistPage$9;
.super Lcom/kingroot/kinguser/distribution/net/download/NetworkChangedRemoteListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/ayb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/ayb;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/ayb;)V
    .locals 0

    .prologue
    .line 528
    iput-object p1, p0, Lcom/kingroot/kinguser/page/ToolboxAppCardDistPage$9;->this$0:Lcom/kingroot/kinguser/ayb;

    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/net/download/NetworkChangedRemoteListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onTurnIntoMobileNetwork()V
    .locals 2

    .prologue
    .line 532
    invoke-static {}, Lcom/kingroot/kinguser/amz;->II()Lcom/kingroot/kinguser/amz;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/page/ToolboxAppCardDistPage$9;->this$0:Lcom/kingroot/kinguser/ayb;

    invoke-static {v1}, Lcom/kingroot/kinguser/ayb;->d(Lcom/kingroot/kinguser/ayb;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    move-result-object v1

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/amz;->hK(Ljava/lang/String;)V

    .line 533
    iget-object v0, p0, Lcom/kingroot/kinguser/page/ToolboxAppCardDistPage$9;->this$0:Lcom/kingroot/kinguser/ayb;

    const/16 v1, 0x9

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/ayb;->a(Lcom/kingroot/kinguser/ayb;I)V

    .line 534
    return-void
.end method
