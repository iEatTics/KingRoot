.class Lcom/kingroot/kinguser/aol$1;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/aol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/aol;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aol;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/kingroot/kinguser/aol$1;->this$0:Lcom/kingroot/kinguser/aol;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 65
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 67
    iget-object v0, p0, Lcom/kingroot/kinguser/aol$1;->this$0:Lcom/kingroot/kinguser/aol;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aol;->JY()Ljava/util/List;

    move-result-object v0

    .line 68
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;

    .line 69
    if-eqz v0, :cond_0

    .line 72
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v2

    iget-object v3, v0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/aks;->hj(Ljava/lang/String;)I

    move-result v2

    .line 75
    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    .line 78
    iget-object v2, p0, Lcom/kingroot/kinguser/aol$1;->this$0:Lcom/kingroot/kinguser/aol;

    invoke-static {v2, v0}, Lcom/kingroot/kinguser/aol;->a(Lcom/kingroot/kinguser/aol;Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;)V

    .line 81
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/apv;->LO()Lcom/kingroot/kinguser/apv;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/apv;->e(Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;)V

    goto :goto_0

    .line 83
    :cond_2
    return-void
.end method
