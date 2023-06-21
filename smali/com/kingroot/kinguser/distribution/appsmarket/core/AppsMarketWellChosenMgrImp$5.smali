.class public Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketWellChosenMgrImp$5;
.super Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/aly;->a(ILcom/kingroot/kinguser/distribution/appsmarket/interfaces/IRequestResultListener;ILjava/util/List;ILcom/kingroot/kinguser/alz;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/aly;

.field final synthetic val$cid:I

.field final synthetic val$fetchOffset:I

.field final synthetic val$fetchTime:I

.field final synthetic val$keeper:Lcom/kingroot/kinguser/alz;

.field final synthetic val$listener:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IRequestResultListener;

.field final synthetic val$ret:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/aly;Ljava/util/List;ILcom/kingroot/kinguser/distribution/appsmarket/interfaces/IRequestResultListener;IILcom/kingroot/kinguser/alz;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketWellChosenMgrImp$5;->this$0:Lcom/kingroot/kinguser/aly;

    iput-object p2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketWellChosenMgrImp$5;->val$ret:Ljava/util/List;

    iput p3, p0, Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketWellChosenMgrImp$5;->val$fetchTime:I

    iput-object p4, p0, Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketWellChosenMgrImp$5;->val$listener:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IRequestResultListener;

    iput p5, p0, Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketWellChosenMgrImp$5;->val$fetchOffset:I

    iput p6, p0, Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketWellChosenMgrImp$5;->val$cid:I

    iput-object p7, p0, Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketWellChosenMgrImp$5;->val$keeper:Lcom/kingroot/kinguser/alz;

    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 254
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketWellChosenMgrImp$5$1;

    invoke-direct {v1, p0, p2}, Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketWellChosenMgrImp$5$1;-><init>(Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketWellChosenMgrImp$5;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->b(Lcom/kingroot/kinguser/bek;)V

    .line 287
    return-void
.end method
