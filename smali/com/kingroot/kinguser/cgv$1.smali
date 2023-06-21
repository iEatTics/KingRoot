.class final Lcom/kingroot/kinguser/cgv$1;
.super Ltmsdk/common/BaseTMSReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/cgv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Ltmsdk/common/BaseTMSReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final f(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 131
    if-nez p2, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    const-string v0, "pidky"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 135
    invoke-static {}, Lcom/kingroot/kinguser/cgv;->access$000()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 139
    const-string v0, "root_change_action"

    invoke-static {v0}, Ltmsdk/common/TMSDKContext;->nG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 142
    const-string v0, "rtstky"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 143
    invoke-static {v0}, Lcom/kingroot/kinguser/cgv;->bF(I)I

    goto :goto_0

    .line 146
    :cond_2
    const-string v0, "tms.scripthelper.create"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    invoke-static {}, Ltmsdk/common/TMSDKContext;->akT()I

    move-result v0

    .line 148
    if-ne v2, v0, :cond_0

    .line 151
    invoke-static {}, Lcom/kingroot/kinguser/cgv;->Vb()V

    goto :goto_0
.end method
