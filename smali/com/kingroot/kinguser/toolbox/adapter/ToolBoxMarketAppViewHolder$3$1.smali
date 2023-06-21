.class Lcom/kingroot/kinguser/toolbox/adapter/ToolBoxMarketAppViewHolder$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/toolbox/adapter/ToolBoxMarketAppViewHolder$3;->onState(Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bmq:Lcom/kingroot/kinguser/toolbox/adapter/ToolBoxMarketAppViewHolder$3;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/toolbox/adapter/ToolBoxMarketAppViewHolder$3;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/kingroot/kinguser/toolbox/adapter/ToolBoxMarketAppViewHolder$3$1;->bmq:Lcom/kingroot/kinguser/toolbox/adapter/ToolBoxMarketAppViewHolder$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 127
    iget-object v0, p0, Lcom/kingroot/kinguser/toolbox/adapter/ToolBoxMarketAppViewHolder$3$1;->bmq:Lcom/kingroot/kinguser/toolbox/adapter/ToolBoxMarketAppViewHolder$3;

    iget-object v0, v0, Lcom/kingroot/kinguser/toolbox/adapter/ToolBoxMarketAppViewHolder$3;->this$0:Lcom/kingroot/kinguser/bff;

    invoke-static {v0}, Lcom/kingroot/kinguser/bff;->a(Lcom/kingroot/kinguser/bff;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/toolbox/adapter/ToolBoxMarketAppViewHolder$3$1;->bmq:Lcom/kingroot/kinguser/toolbox/adapter/ToolBoxMarketAppViewHolder$3;

    iget-object v1, v1, Lcom/kingroot/kinguser/toolbox/adapter/ToolBoxMarketAppViewHolder$3;->this$0:Lcom/kingroot/kinguser/bff;

    invoke-static {v1}, Lcom/kingroot/kinguser/bff;->e(Lcom/kingroot/kinguser/bff;)Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    move-result-object v1

    .line 128
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f0703e8

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 127
    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/and;->a(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Lcom/kingcore/uilib/TextRoundCornerProgressBar;Ljava/lang/String;)V

    .line 129
    return-void
.end method
