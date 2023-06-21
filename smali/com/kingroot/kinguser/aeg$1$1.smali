.class Lcom/kingroot/kinguser/aeg$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/aeg$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aeP:Lcom/kingroot/kingmaster/network/updata/CheckResult;

.field final synthetic aeQ:Lcom/kingroot/common/network/download/UpdateInfo;

.field final synthetic aeR:Lcom/kingroot/kinguser/aeg$1;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aeg$1;Lcom/kingroot/kingmaster/network/updata/CheckResult;Lcom/kingroot/common/network/download/UpdateInfo;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/kingroot/kinguser/aeg$1$1;->aeR:Lcom/kingroot/kinguser/aeg$1;

    iput-object p2, p0, Lcom/kingroot/kinguser/aeg$1$1;->aeP:Lcom/kingroot/kingmaster/network/updata/CheckResult;

    iput-object p3, p0, Lcom/kingroot/kinguser/aeg$1$1;->aeQ:Lcom/kingroot/common/network/download/UpdateInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 191
    iget-object v0, p0, Lcom/kingroot/kinguser/aeg$1$1;->aeP:Lcom/kingroot/kingmaster/network/updata/CheckResult;

    iget-object v0, v0, Lcom/kingroot/kingmaster/network/updata/CheckResult;->mMessage:Ljava/lang/String;

    .line 192
    if-nez v0, :cond_0

    .line 193
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f07018f

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 196
    :cond_0
    new-instance v1, Lcom/kingroot/kinguser/bih;

    iget-object v2, p0, Lcom/kingroot/kinguser/aeg$1$1;->aeR:Lcom/kingroot/kinguser/aeg$1;

    iget-object v2, v2, Lcom/kingroot/kinguser/aeg$1;->val$activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/kingroot/kinguser/bih;-><init>(Landroid/content/Context;)V

    .line 197
    invoke-virtual {v1}, Lcom/kingroot/kinguser/bih;->show()V

    .line 198
    const v2, 0x7f020185

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/bih;->jc(I)V

    .line 199
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f0703b0

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/bih;->setTitleText(Ljava/lang/String;)V

    .line 200
    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/bih;->d(Ljava/lang/CharSequence;)V

    .line 203
    new-instance v0, Lcom/kingroot/kinguser/aeg$1$1$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/aeg$1$1$1;-><init>(Lcom/kingroot/kinguser/aeg$1$1;)V

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/bih;->a(Lcom/kingroot/kinguser/bie$a;)V

    .line 216
    iget-object v0, p0, Lcom/kingroot/kinguser/aeg$1$1;->aeQ:Lcom/kingroot/common/network/download/UpdateInfo;

    iget v0, v0, Lcom/kingroot/common/network/download/UpdateInfo;->type:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 217
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/bih;->iX(I)V

    .line 228
    :goto_0
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v2, 0x7f0703ad

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/bih;->lL(Ljava/lang/String;)V

    .line 229
    new-instance v0, Lcom/kingroot/kinguser/aeg$1$1$3;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/aeg$1$1$3;-><init>(Lcom/kingroot/kinguser/aeg$1$1;)V

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/bih;->b(Lcom/kingroot/kinguser/bid$b;)V

    .line 241
    return-void

    .line 219
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v2, 0x7f0700c4

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/bih;->lK(Ljava/lang/String;)V

    .line 220
    new-instance v0, Lcom/kingroot/kinguser/aeg$1$1$2;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/aeg$1$1$2;-><init>(Lcom/kingroot/kinguser/aeg$1$1;)V

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/bih;->a(Lcom/kingroot/kinguser/bid$b;)V

    goto :goto_0
.end method
