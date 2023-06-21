.class public Lcom/kingroot/kinguser/distribution/base/AbsKAppDistCloudEngine$4;
.super Lcom/kingroot/kinguser/distribution/net/download/NetworkChangedRemoteListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/aol;->a(Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/aol;

.field final synthetic val$appInfo:Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/aol;Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/base/AbsKAppDistCloudEngine$4;->this$0:Lcom/kingroot/kinguser/aol;

    iput-object p2, p0, Lcom/kingroot/kinguser/distribution/base/AbsKAppDistCloudEngine$4;->val$appInfo:Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;

    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/net/download/NetworkChangedRemoteListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onTurnIntoMobileNetwork()V
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/base/AbsKAppDistCloudEngine$4;->val$appInfo:Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;

    if-nez v0, :cond_0

    .line 253
    :goto_0
    return-void

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/base/AbsKAppDistCloudEngine$4;->this$0:Lcom/kingroot/kinguser/aol;

    invoke-static {v0}, Lcom/kingroot/kinguser/aol;->a(Lcom/kingroot/kinguser/aol;)Lcom/kingroot/kinguser/aot;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/base/AbsKAppDistCloudEngine$4;->val$appInfo:Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aot;->hK(Ljava/lang/String;)V

    goto :goto_0
.end method
