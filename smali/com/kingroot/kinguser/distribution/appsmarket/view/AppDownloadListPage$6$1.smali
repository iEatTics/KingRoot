.class Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$6;->onState(Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aBQ:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$6;

.field final synthetic awy:I

.field final synthetic val$pkg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$6;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 439
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$6$1;->aBQ:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$6;

    iput p2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$6$1;->awy:I

    iput-object p3, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$6$1;->val$pkg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 443
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$6$1;->aBQ:Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$6;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$6;->this$0:Lcom/kingroot/kinguser/anl;

    iget-object v0, v0, Lcom/kingroot/kinguser/anl;->aBC:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$6$1;->val$pkg:Ljava/lang/String;

    iget v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppDownloadListPage$6$1;->awy:I

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/and;->b(Ljava/util/List;Ljava/lang/String;I)V

    .line 444
    return-void
.end method
