.class public Lcom/kingroot/kinguser/page/ExaminationRecommendAppPage$12;
.super Lcom/kingroot/kinguser/distribution/net/download/NetworkChangedRemoteListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/axi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/axi;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/axi;)V
    .locals 0

    .prologue
    .line 538
    iput-object p1, p0, Lcom/kingroot/kinguser/page/ExaminationRecommendAppPage$12;->this$0:Lcom/kingroot/kinguser/axi;

    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/net/download/NetworkChangedRemoteListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onTurnIntoMobileNetwork()V
    .locals 2

    .prologue
    .line 542
    invoke-static {}, Lcom/kingroot/kinguser/aoq;->Ks()Lcom/kingroot/kinguser/aoq;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/page/ExaminationRecommendAppPage$12;->this$0:Lcom/kingroot/kinguser/axi;

    invoke-static {v1}, Lcom/kingroot/kinguser/axi;->a(Lcom/kingroot/kinguser/axi;)Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aoq;->hK(Ljava/lang/String;)V

    .line 543
    iget-object v0, p0, Lcom/kingroot/kinguser/page/ExaminationRecommendAppPage$12;->this$0:Lcom/kingroot/kinguser/axi;

    const/16 v1, 0x9

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/axi;->a(Lcom/kingroot/kinguser/axi;I)V

    .line 544
    return-void
.end method
