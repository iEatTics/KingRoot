.class public Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$8;
.super Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IReqSuggWordListener$Stub;
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
    .line 578
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$8;->this$0:Lcom/kingroot/kinguser/anq;

    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IReqSuggWordListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(ILjava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 581
    if-eqz p1, :cond_0

    .line 582
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$8;->this$0:Lcom/kingroot/kinguser/anq;

    invoke-static {v0}, Lcom/kingroot/kinguser/anq;->n(Lcom/kingroot/kinguser/anq;)Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f07040c

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/zj;->c(Ljava/lang/CharSequence;I)V

    .line 587
    :goto_0
    return-void

    .line 586
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppSearchPage$8;->this$0:Lcom/kingroot/kinguser/anq;

    invoke-static {v0, p3}, Lcom/kingroot/kinguser/anq;->c(Lcom/kingroot/kinguser/anq;Ljava/util/List;)V

    goto :goto_0
.end method
