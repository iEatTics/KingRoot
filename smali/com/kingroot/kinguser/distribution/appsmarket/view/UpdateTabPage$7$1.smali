.class Lcom/kingroot/kinguser/distribution/appsmarket/view/UpdateTabPage$7$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/distribution/appsmarket/view/UpdateTabPage$7;->onState(Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aAn:Ljava/lang/String;

.field final synthetic aGc:Lcom/kingroot/kinguser/distribution/appsmarket/view/UpdateTabPage$7;

.field final synthetic awy:I

.field final synthetic val$pkg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/distribution/appsmarket/view/UpdateTabPage$7;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 685
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/UpdateTabPage$7$1;->aGc:Lcom/kingroot/kinguser/distribution/appsmarket/view/UpdateTabPage$7;

    iput p2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/UpdateTabPage$7$1;->awy:I

    iput-object p3, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/UpdateTabPage$7$1;->aAn:Ljava/lang/String;

    iput-object p4, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/UpdateTabPage$7$1;->val$pkg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 690
    iget v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/UpdateTabPage$7$1;->awy:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 691
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f0704d6

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/UpdateTabPage$7$1;->aAn:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/zj;->b(Ljava/lang/CharSequence;)V

    .line 696
    :goto_0
    return-void

    .line 694
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/UpdateTabPage$7$1;->aGc:Lcom/kingroot/kinguser/distribution/appsmarket/view/UpdateTabPage$7;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/UpdateTabPage$7;->this$0:Lcom/kingroot/kinguser/aoj;

    invoke-static {v0}, Lcom/kingroot/kinguser/aoj;->a(Lcom/kingroot/kinguser/aoj;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/UpdateTabPage$7$1;->val$pkg:Ljava/lang/String;

    iget v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/UpdateTabPage$7$1;->awy:I

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/and;->b(Ljava/util/List;Ljava/lang/String;I)V

    goto :goto_0
.end method
