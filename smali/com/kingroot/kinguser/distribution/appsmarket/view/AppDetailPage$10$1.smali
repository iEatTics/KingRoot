.class Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$10$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$10;->onState(Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aBq:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$10;

.field final synthetic awy:I


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$10;I)V
    .locals 0

    .prologue
    .line 690
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$10$1;->aBq:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$10;

    iput p2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$10$1;->awy:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 694
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$10$1;->aBq:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$10;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$10;->this$0:Lcom/kingroot/kinguser/ank;

    invoke-static {v0}, Lcom/kingroot/kinguser/ank;->h(Lcom/kingroot/kinguser/ank;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$10$1;->aBq:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$10;

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$10;->this$0:Lcom/kingroot/kinguser/ank;

    iget-object v1, v1, Lcom/kingroot/kinguser/ank;->aBc:Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f0703f6

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/and;->a(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Lcom/kingcore/uilib/TextRoundCornerProgressBar;Ljava/lang/String;)V

    .line 696
    iget v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$10$1;->awy:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$10$1;->awy:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$10$1;->aBq:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$10;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$10;->this$0:Lcom/kingroot/kinguser/ank;

    .line 697
    invoke-static {v0}, Lcom/kingroot/kinguser/ank;->g(Lcom/kingroot/kinguser/ank;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 698
    invoke-static {}, Lcom/kingroot/kinguser/akl;->AS()Lcom/kingroot/kinguser/akl;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$10$1;->aBq:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$10;

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDetailPage$10;->this$0:Lcom/kingroot/kinguser/ank;

    invoke-static {v1}, Lcom/kingroot/kinguser/ank;->h(Lcom/kingroot/kinguser/ank;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    move-result-object v1

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/akl;->gT(Ljava/lang/String;)V

    .line 701
    :cond_1
    return-void
.end method
