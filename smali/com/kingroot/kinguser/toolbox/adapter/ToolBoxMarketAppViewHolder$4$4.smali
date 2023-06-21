.class Lcom/kingroot/kinguser/toolbox/adapter/ToolBoxMarketAppViewHolder$4$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/toolbox/adapter/ToolBoxMarketAppViewHolder$4;->onFailed(Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bmr:Lcom/kingroot/kinguser/toolbox/adapter/ToolBoxMarketAppViewHolder$4;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/toolbox/adapter/ToolBoxMarketAppViewHolder$4;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/kingroot/kinguser/toolbox/adapter/ToolBoxMarketAppViewHolder$4$4;->bmr:Lcom/kingroot/kinguser/toolbox/adapter/ToolBoxMarketAppViewHolder$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 194
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    .line 195
    iget-object v1, p0, Lcom/kingroot/kinguser/toolbox/adapter/ToolBoxMarketAppViewHolder$4$4;->bmr:Lcom/kingroot/kinguser/toolbox/adapter/ToolBoxMarketAppViewHolder$4;

    iget-object v1, v1, Lcom/kingroot/kinguser/toolbox/adapter/ToolBoxMarketAppViewHolder$4;->this$0:Lcom/kingroot/kinguser/bff;

    invoke-static {v1}, Lcom/kingroot/kinguser/bff;->a(Lcom/kingroot/kinguser/bff;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/toolbox/adapter/ToolBoxMarketAppViewHolder$4$4;->bmr:Lcom/kingroot/kinguser/toolbox/adapter/ToolBoxMarketAppViewHolder$4;

    iget-object v2, v2, Lcom/kingroot/kinguser/toolbox/adapter/ToolBoxMarketAppViewHolder$4;->this$0:Lcom/kingroot/kinguser/bff;

    invoke-static {v2}, Lcom/kingroot/kinguser/bff;->e(Lcom/kingroot/kinguser/bff;)Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    move-result-object v2

    .line 196
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v3

    const v4, 0x7f0703e8

    invoke-virtual {v3, v4}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 195
    invoke-static {v1, v2, v3}, Lcom/kingroot/kinguser/and;->a(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Lcom/kingcore/uilib/TextRoundCornerProgressBar;Ljava/lang/String;)V

    .line 197
    const v1, 0x7f070151

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/zj;->b(Ljava/lang/CharSequence;)V

    .line 198
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/vb;->O(Landroid/content/Context;)B

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 199
    const v1, 0x7f070152

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/zj;->b(Ljava/lang/CharSequence;)V

    .line 201
    :cond_0
    return-void
.end method
