.class public Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$7;
.super Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ISearchAppsListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/anq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/anq;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/anq;)V
    .locals 0

    .prologue
    .line 531
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$7;->this$0:Lcom/kingroot/kinguser/anq;

    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ISearchAppsListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(ILjava/lang/String;IIILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 536
    if-eqz p1, :cond_0

    .line 537
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$7;->this$0:Lcom/kingroot/kinguser/anq;

    invoke-static {v0}, Lcom/kingroot/kinguser/anq;->n(Lcom/kingroot/kinguser/anq;)Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f07040c

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/zj;->c(Ljava/lang/CharSequence;I)V

    .line 543
    :goto_0
    invoke-static {}, Lcom/kingroot/kinguser/amz;->II()Lcom/kingroot/kinguser/amz;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$7$1;

    invoke-direct {v1, p0, p6}, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$7$1;-><init>(Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$7;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/amz;->a(Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppHistoryListener;)V

    .line 575
    return-void

    .line 540
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$7;->this$0:Lcom/kingroot/kinguser/anq;

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$7;->this$0:Lcom/kingroot/kinguser/anq;

    invoke-static {v1}, Lcom/kingroot/kinguser/anq;->o(Lcom/kingroot/kinguser/anq;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1e

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/anq;->c(Lcom/kingroot/kinguser/anq;I)I

    goto :goto_0
.end method
