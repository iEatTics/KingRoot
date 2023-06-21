.class public Lcom/kingroot/kinguser/toolbox/adapter/ToolBoxMarketAppViewHolder$3;
.super Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/bff;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/bff;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/kingroot/kinguser/toolbox/adapter/ToolBoxMarketAppViewHolder$3;->this$0:Lcom/kingroot/kinguser/bff;

    invoke-direct {p0}, Lcom/kingroot/kinguser/gamebox/common/IAppInstallListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onState(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 123
    new-instance v0, Lcom/kingroot/kinguser/toolbox/adapter/ToolBoxMarketAppViewHolder$3$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/toolbox/adapter/ToolBoxMarketAppViewHolder$3$1;-><init>(Lcom/kingroot/kinguser/toolbox/adapter/ToolBoxMarketAppViewHolder$3;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 132
    const/16 v0, 0xa

    if-eq p2, v0, :cond_0

    const/16 v0, 0xb

    if-ne p2, v0, :cond_1

    .line 133
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/akl;->AS()Lcom/kingroot/kinguser/akl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/akl;->Bq()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    invoke-static {}, Lcom/kingroot/kinguser/akl;->AS()Lcom/kingroot/kinguser/akl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/akl;->Br()V

    .line 138
    :cond_1
    return-void
.end method
