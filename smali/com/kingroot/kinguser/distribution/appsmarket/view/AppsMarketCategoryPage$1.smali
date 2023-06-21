.class public Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketCategoryPage$1;
.super Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadCategoryListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/ant;->sb()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/ant;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/ant;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketCategoryPage$1;->this$0:Lcom/kingroot/kinguser/ant;

    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadCategoryListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/CategoryEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketCategoryPage$1$1;

    invoke-direct {v0, p0, p2}, Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketCategoryPage$1$1;-><init>(Lcom/kingroot/kinguser/distribution/appsmarket/view/AppsMarketCategoryPage$1;Ljava/util/List;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 86
    return-void
.end method
