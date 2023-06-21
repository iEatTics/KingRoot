.class Lcom/kingroot/kinguser/aeg$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/aeg;->a(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aeO:Lcom/kingroot/kinguser/aeg;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aeg;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/kingroot/kinguser/aeg$1;->aeO:Lcom/kingroot/kinguser/aeg;

    iput-object p2, p0, Lcom/kingroot/kinguser/aeg$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 172
    iget-object v0, p0, Lcom/kingroot/kinguser/aeg$1;->aeO:Lcom/kingroot/kinguser/aeg;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aeg;->tc()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/aeg$1;->aeO:Lcom/kingroot/kinguser/aeg;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aeg;->ue()Lcom/kingroot/kingmaster/network/updata/CheckResult;

    move-result-object v1

    .line 177
    if-eqz v1, :cond_0

    .line 178
    iget-object v0, v1, Lcom/kingroot/kingmaster/network/updata/CheckResult;->mUpdateInfoList:Ljava/util/List;

    .line 179
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 180
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/network/download/UpdateInfo;

    .line 181
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/kingroot/common/network/download/UpdateInfo;->url:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 185
    iget v2, v0, Lcom/kingroot/common/network/download/UpdateInfo;->type:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    iget v2, v0, Lcom/kingroot/common/network/download/UpdateInfo;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 187
    :cond_2
    iget-object v2, p0, Lcom/kingroot/kinguser/aeg$1;->val$activity:Landroid/app/Activity;

    new-instance v3, Lcom/kingroot/kinguser/aeg$1$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/kingroot/kinguser/aeg$1$1;-><init>(Lcom/kingroot/kinguser/aeg$1;Lcom/kingroot/kingmaster/network/updata/CheckResult;Lcom/kingroot/common/network/download/UpdateInfo;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
