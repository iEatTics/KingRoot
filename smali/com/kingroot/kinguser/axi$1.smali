.class Lcom/kingroot/kinguser/axi$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/axi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/axi;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axi;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/kingroot/kinguser/axi$1;->this$0:Lcom/kingroot/kinguser/axi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 100
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/axi$1;->this$0:Lcom/kingroot/kinguser/axi;

    invoke-static {v1}, Lcom/kingroot/kinguser/axi;->a(Lcom/kingroot/kinguser/axi;)Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zh;->du(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/kingroot/kinguser/axi$1;->this$0:Lcom/kingroot/kinguser/axi;

    invoke-static {v0}, Lcom/kingroot/kinguser/axi;->a(Lcom/kingroot/kinguser/axi;)Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->pkgName:Ljava/lang/String;

    iget-object v1, p0, Lcom/kingroot/kinguser/axi$1;->this$0:Lcom/kingroot/kinguser/axi;

    invoke-static {v1}, Lcom/kingroot/kinguser/axi;->b(Lcom/kingroot/kinguser/axi;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/apd;->ar(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/axi$1;->this$0:Lcom/kingroot/kinguser/axi;

    invoke-static {v0}, Lcom/kingroot/kinguser/axi;->c(Lcom/kingroot/kinguser/axi;)Lcom/kingroot/kinguser/tk;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/kingroot/kinguser/axi$1;->this$0:Lcom/kingroot/kinguser/axi;

    invoke-static {v0}, Lcom/kingroot/kinguser/axi;->c(Lcom/kingroot/kinguser/axi;)Lcom/kingroot/kinguser/tk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/tk;->release()V

    .line 106
    :cond_1
    return-void
.end method
